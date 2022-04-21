`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Chris Cameron
// 
// Create Date: 04.11.2021 13:50:12
// Design Name: Combined signal gen and feedback module
// Module Name: feedback_combined
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module feedback_combined # 
(
    parameter ADC_DATA_WIDTH = 16,
    parameter DDS_OUT_WIDTH = 16,
    parameter MULT_CONST_OFFSET = 32,
    parameter MULT_CONST_WIDTH  = 32,
    parameter FIXED_PHASE_OFFSET = 0,
    parameter FIXED_PHASE_WIDTH = 32,
    parameter ADD_CONST_WIDTH = 16,
    parameter ADD_CONST_OFFSET = 80,
    parameter FREQ_WIDTH = 32,
    parameter START_FREQ_OFFSET = 0,
    parameter STOP_FREQ_OFFSET = 32,
    parameter INTERVAL_OFFSET = 64,
    parameter INTERVAL_WIDTH = 32,
    parameter integer DAC_DATA_WIDTH = 14,
    parameter CFG_WIDTH = 96,
    parameter AXIS_TDATA_WIDTH = 16,
    parameter SELECT_WIDTH = 2
)
(
    input  wire                                 aclk,
    input  wire                                 trig_in,
    input [SELECT_WIDTH - 1:0]                  sel,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [CFG_WIDTH-1:0]                       S_AXIS_CFG_tdata,
    input                                       S_AXIS_CFG_tvalid,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [ADC_DATA_WIDTH-1:0]                  S_AXIS_ADC_tdata,
    input                                       S_AXIS_ADC_tvalid,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    output reg [AXIS_TDATA_WIDTH-1:0]           M_AXIS_tdata,
    output wire                                 M_AXIS_tvalid,
    output reg                                  trig_out
);

    localparam PADDING_WIDTH = ADC_DATA_WIDTH - DAC_DATA_WIDTH;
    localparam RESULT_WIDTH = 2 * MULT_CONST_WIDTH;
    localparam PHASE_WIDTH = 30;
    localparam FCLK = 125000000;
    
    // input registers    
    reg [MULT_CONST_WIDTH - 1:0] ADC_in, MULT_in;
    reg [ADD_CONST_WIDTH - 1:0] ADD_in;
    reg [FREQ_WIDTH - 1:0] START_FREQ_in, STOP_FREQ_in;
    reg [FIXED_PHASE_WIDTH - 1:0] FIXED_PHASE_in;
    reg [INTERVAL_WIDTH - 1:0]  INTERVAL_in;

    
    // state machine variables
    reg fb_or_sweep;                   // 0 - Ax+b,            1 - Freq Sweep mode
    reg fix_sweep;                     // 0 - fixed phase,     1 - phase from sweep module
    reg trigger;                       // 0 - trig output off, 1 - trig output on   
    reg delayed_trigger;
    reg output_en;
    reg [1:0] state;  
       
    parameter fixed = 0, sweep = 1, lin = 2, fancy = 3;
    
    // Intermediate holders for Ax+b math
    reg [MULT_CONST_WIDTH * 2 - 2:0] mul = 0;
    wire [MULT_CONST_WIDTH * 2 - 2:0] cmpmul;
    wire [MULT_CONST_WIDTH * 2 - 1:0] result;
    reg [MULT_CONST_WIDTH-1:0] a, b;
    reg sign;
        
        
    // config parameters for frequency sweep    
    reg [PHASE_WIDTH - 1:0] phase = 1;
    reg [PHASE_WIDTH - 1:0] start_phase;
    reg [PHASE_WIDTH - 1:0] stop_phase;
//    reg sweep_active;
    
    
    //Signals for I/O from DDS
    reg [PHASE_WIDTH - 1:0] dds_phase_in; 
    wire [AXIS_TDATA_WIDTH - 1:0] dds_out;
    wire dds_M_AXIS_tvalid;
    
    reg counter_en = 1;
    reg counter_reset = 0;
    wire [31:0] counter;
    reg phase_direction = 0;
    reg sweep_finished = 1;
    reg sweep_active_next = 0;
    reg sweep_active_current = 0;
    
    c_counter_binary_0 bin_counter (
    .CLK(aclk),    // input wire CLK
    .CE(counter_en),      // input wire CE
    .SCLR(counter_reset),  // input wire SCLR
    .Q(counter)        // output wire [31 : 0] Q
    ); 
    // Instantiate DDS compiler  
    dds_compiler_1 dds(
      .aclk(aclk),                                // input wire aclk
      .s_axis_phase_tvalid(S_AXIS_CFG_tvalid),  // input wire s_axis_phase_tvalid
      .s_axis_phase_tdata(dds_phase_in),    // input wire [31 : 0] s_axis_phase_tdata
      .m_axis_data_tvalid(dds_M_AXIS_tvalid),    // output wire m_axis_data_tvalid
      .m_axis_data_tdata(dds_out)      // output wire [15 : 0] m_axis_data_tdata
    );

    // Calculate phase sweep parameters when config changes
    always @*
    begin
        // to avoid divide in start/stop phase, swap [freq << 30 / 125000000] for [freq * (2^38 / 125000000)] (rounded to an int), then shift result back 8 bits
        // == [freq * 2199 >> 8]
        start_phase <= (START_FREQ_in * 2199) >> 8;        // Convert to phase increment for DDS. 
        stop_phase <= (STOP_FREQ_in * 2199) >> 8;          // Convert to phase increment for DDS
        
                
    end

        
    // Mux input to DDS compiler - fixed phase or output from phase counter 
    always @*
        case (state)
            fixed: dds_phase_in <= FIXED_PHASE_in;
            sweep: dds_phase_in <= phase;
            default: dds_phase_in <= 0;
        endcase
          
    // Bring in, break up, and store input data in registers as first pipeline stage.
    // All inputs stored, non-blocking, run in any state/
    always @(posedge aclk)
    begin
        ADC_in <= {S_AXIS_ADC_tdata, 16'b0};                                                                //Import ADC val, pad with zeroes for fixed point math
        MULT_in <=  S_AXIS_CFG_tdata[MULT_CONST_OFFSET + MULT_CONST_WIDTH - 1: MULT_CONST_OFFSET];          // a constant, [63:42]
        ADD_in <= S_AXIS_CFG_tdata[ADD_CONST_OFFSET + ADD_CONST_WIDTH - 1: ADD_CONST_OFFSET];               // b constant, [95:80]
        START_FREQ_in <= S_AXIS_CFG_tdata[START_FREQ_OFFSET + FREQ_WIDTH - 1:START_FREQ_OFFSET];            // start freq (bitspace shared with constant phase) [15:0]
        STOP_FREQ_in <= S_AXIS_CFG_tdata[STOP_FREQ_OFFSET + FREQ_WIDTH - 1:STOP_FREQ_OFFSET];               // stop freq (bitspace shared with constant phase) [31:16]
        FIXED_PHASE_in <= S_AXIS_CFG_tdata[FIXED_PHASE_OFFSET + FIXED_PHASE_WIDTH - 1:FIXED_PHASE_OFFSET];  // fixed phase (shared bitspace with sweep freqs) [31:0]
        INTERVAL_in <= S_AXIS_CFG_tdata[INTERVAL_OFFSET + INTERVAL_WIDTH - 1:INTERVAL_OFFSET];              // sweep interval [79:64]
        state <= sel;
        trigger <= trig_in;
        
        // Assign phase direction inside a clocked loop rather than in always * block to try to reduce slack
        phase_direction <= (start_phase < stop_phase);   
         
        // Get mult inputs sorted for sign conversion - can incorporate into one step with input if this takes too long
        sign <= ADC_in[MULT_CONST_WIDTH - 1] ^ MULT_in[MULT_CONST_WIDTH - 1];
        a <= ADC_in[MULT_CONST_WIDTH - 1]==0 ? ADC_in:~ADC_in + 1'b1;
        b <= MULT_in[MULT_CONST_WIDTH - 1]==0 ? MULT_in:~MULT_in + 1'b1;       
    end
    
    
    // Multiplier
    always @ (posedge aclk)
    begin
        mul <= a * b;
    end
    
    // Process and store rising edge of trigger from server to initiate stimulation and output. Note: Output will
    // continue after a frequency sweep until it receives a trigger off from the server.    
    always @(posedge aclk) 
    begin
        delayed_trigger <= trigger;
        output_en <= trigger;
    end
              
    // DDS Phase selection and incrementing
    always @ (posedge aclk)
    begin
    
        case(state)
        
            fixed : phase <= FIXED_PHASE_in;
            
            sweep: 
            begin
                // Initiate sweep on trigger rising edge
                if (trigger & ~delayed_trigger & ~sweep_active_current)
                    sweep_active_next <= 1;
                
                // Falling edge of sweep_active - reset counter 
//                if (sweep_active_current & ~sweep_active_next)
//                        begin
//                            counter_reset <= 1;
//                        end
                
                sweep_active_current <= sweep_active_next;
                
                // Turn off counter reset if it was turned on last clock cycle
                if (counter_reset)    
                    counter_reset <= 0;
                
                case(sweep_active_current)
                
                    1'b0: 
                    begin
                        phase <= start_phase;                                  
                    end    
                    
                    1'b1:
                    begin
                        // At end of sweep, reset counter and set phase to starting position 
                        sweep_active_next <= ~((phase_direction > 0) ? (phase > stop_phase) : (phase < stop_phase));     
                                
                        if (counter >= INTERVAL_in) 
                        begin
                            phase <= phase_direction ? (phase + 1) : (phase - 1);
                            if (!counter_reset)  
                                counter_reset <= 1;
                        end         
                    end
                endcase
            end            
                 
            default: phase<=0;
        endcase    
        
        
    end
                        
       
    //concurrent assignments to take care of sign in Ax+b mode
    assign cmpmul = ~mul + 1'b1;   
    assign result = (sign==0) ? {1'b0,mul}:{1'b1, cmpmul};
    
    always @(*) 
    begin
        // Pass trigger through for output to external devices
        trig_out <= trigger;
        
        // Mux outpout on/off using trigger signal
        if (output_en)
        begin
        
        // Mux output depending on feedback state
        case (state)  
            // Ax + b (duplicated for lin and fancy modes, until fancy is implemented)
            lin : M_AXIS_tdata <= {{(PADDING_WIDTH - 1){result[RESULT_WIDTH - 1]}}, result[MULT_CONST_WIDTH + DAC_DATA_WIDTH - 1:MULT_CONST_WIDTH]} + ADD_in;       
            fancy: M_AXIS_tdata <= {{(PADDING_WIDTH - 1){result[RESULT_WIDTH - 1]}}, result[MULT_CONST_WIDTH + DAC_DATA_WIDTH - 1:MULT_CONST_WIDTH]} + ADD_in;       
            
            // Connect to DDS compiler0
            fixed : M_AXIS_tdata <= {{(PADDING_WIDTH){dds_out[DDS_OUT_WIDTH - 1]}}, dds_out[DDS_OUT_WIDTH - 1:PADDING_WIDTH]};       
            sweep : M_AXIS_tdata <= {{(PADDING_WIDTH){dds_out[DDS_OUT_WIDTH - 1]}}, dds_out[DDS_OUT_WIDTH - 1:PADDING_WIDTH]};           
        endcase
        end
        
        else
            // output 0 if disconnected
            M_AXIS_tdata <= 16'b0;
            
    end                    
    
    
    // Add mux here for trigger on/off maybe?
    assign M_AXIS_tvalid = S_AXIS_ADC_tvalid & S_AXIS_CFG_tvalid;
  
    
endmodule