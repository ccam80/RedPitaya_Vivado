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
    parameter PARAM_WIDTH = 32,
    
    //CFG parameters included for future(sweep) implementations, although some are currently unused
    parameter PARAM_A_OFFSET = 0,
    parameter PARAM_B_OFFSET = 32,
    parameter PARAM_C_OFFSET = 64,
    parameter PARAM_D_OFFSET = 96,
    parameter PARAM_E_OFFSET = 128,
    parameter PARAM_F_OFFSET = 160,
    parameter PARAM_G_OFFSET = 192,
    parameter PARAM_H_OFFSET = 224,
    
    parameter PRODUCT_1_WIDTH = 56,
    parameter PRODUCT_2_WIDTH = 43,
    parameter PRODUCT_3_WIDTH = 56,
    parameter PRODUCT_4_WIDTH = 64,
    
    parameter integer DAC_DATA_WIDTH = 14,
    parameter CFG_WIDTH = 256,
    parameter AXIS_TDATA_WIDTH = 16,
    parameter SELECT_WIDTH = 3,
    parameter CONTINUOUS_OUTPUT = 0
)
(
    input  wire                                 aclk,
    input  wire                                 trig_in,
    input [SELECT_WIDTH - 1:0]                  sel,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [CFG_WIDTH-1:0]                       S_AXIS_CFG_tdata,
    input                                       S_AXIS_CFG_tvalid,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [ADC_DATA_WIDTH-1:0]                  S_AXIS_ADC1_tdata,
    input                                       S_AXIS_ADC1_tvalid,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [ADC_DATA_WIDTH-1:0]                  S_AXIS_ADC2_tdata,
    input                                       S_AXIS_ADC2_tvalid,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    output reg [AXIS_TDATA_WIDTH-1:0]           M_AXIS_tdata,
    output wire                                 M_AXIS_tvalid,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    output reg [DDS_OUT_WIDTH-1:0]              M_AXIS_DDS_tdata,
    output wire                                 M_AXIS_DDS_tvalid,
    output reg                                  trig_out,
    
    input [PRODUCT_1_WIDTH-1:0]             product_1,
    input [PRODUCT_2_WIDTH-1:0]             product_2,
    input [PRODUCT_3_WIDTH-1:0]             product_3,
    input [PRODUCT_4_WIDTH-1:0]             product_4,
    input [PARAM_WIDTH-1:0]                 offset
);

////////////////////////
////Local Parameter////
///////////////////////

    //localparam PADDING_WIDTH = ADC_DATA_WIDTH - DAC_DATA_WIDTH;
    localparam RESULT_WIDTH = 64;
    localparam PHASE_WIDTH = 30;
    localparam PADDING_WIDTH = 32-ADC_DATA_WIDTH;

////////////////////    
////Declarations////
////////////////////

    // input registers
    
    reg signed [PARAM_WIDTH-1:0] Param_A_in, Param_B_in, Param_C_in, Param_D_in, Param_E_in, Param_F_in, Param_G_in, Param_H_in;
    reg signed [ADC_DATA_WIDTH-1:0] ADC1, ADC2;
    reg [PRODUCT_1_WIDTH-1:0] PRODUCT_1_in;
    reg [PRODUCT_2_WIDTH-1:0] PRODUCT_2_in;
    reg [PRODUCT_3_WIDTH-1:0] PRODUCT_3_in;
    reg [PRODUCT_4_WIDTH-1:0] PRODUCT_4_in;
    reg [PARAM_WIDTH-1:0] OFFSET_in;
       
    // state machine variables
    reg trigger;                       // 0 - trig output off, 1 - trig output on   
    reg [SELECT_WIDTH-1:0] state;  
       
    localparam fixed = 0, sweep = 1, lin = 2, parametric = 3,  A_x_plus_B = 4, random = 5, polynomial = 6, CBC=7; 
    
    //Signals for freq_counter
    reg freq_counter_en = 1'b1;
    reg freq_counter_nreset = 1'b1;
    reg [31:0] freq_counter_interval = 32'b0;
    wire freq_counter_thresh;

    
    
    //Signals for I/O from DDS
    reg [PHASE_WIDTH - 1:0] dds_phase_in; 
    wire signed [AXIS_TDATA_WIDTH - 1:0] dds_out;
    reg signed [AXIS_TDATA_WIDTH - 1:0] dds_out_last;
    wire dds_M_AXIS_tvalid;
    
    // Math variables
    reg signed [RESULT_WIDTH - 1:0] result_A, result_A_last, result_B, result_B_last, result_C, result_C_last,
    result_D, result_D_last, result_D_total, result_D_total_last,
    result_E, result_E_last, result_E_total, result_E_total_last;
    reg signed [31:0] phase_next, phase = 32'b0;
    
    
    
    
////////////////////////////////////
////Instantiate further IP Cores////
////////////////////////////////////
    
    rollover_counter sweep_counter (
    .aclk(aclk),
    .en(freq_counter_en),      
    .nRST(freq_counter_nreset),  
    .MOD(freq_counter_interval),
    .THRESH(freq_counter_thresh)        
    ); 
    
    // Instantiate DDS compiler  
    dds_compiler_1 dds(
      .aclk(aclk),                                // input wire aclk
      .s_axis_phase_tvalid(S_AXIS_CFG_tvalid),  // input wire s_axis_phase_tvalid
      .s_axis_phase_tdata(dds_phase_in),    // input wire [31 : 0] s_axis_phase_tdata
      .m_axis_data_tvalid(dds_M_AXIS_tvalid),    // output wire m_axis_data_tvalid
      .m_axis_data_tdata(dds_out)      // output wire [15 : 0] m_axis_data_tdata
    );
    
//////////////////
////Data input////
//////////////////  

    // Bring in, break up, and store input data in registers as first pipeline stage.
    // All inputs stored, non-blocking, run in any state/
    always @(posedge aclk)
    begin
        ADC1 <= S_AXIS_ADC1_tdata;
        ADC2 <= S_AXIS_ADC2_tdata;
        state <= sel;
        trigger <= trig_in;
        
        //Configuration Parameters
        Param_A_in <= S_AXIS_CFG_tdata[PARAM_A_OFFSET + PARAM_WIDTH - 1: PARAM_A_OFFSET]; 
        Param_B_in <= S_AXIS_CFG_tdata[PARAM_B_OFFSET + PARAM_WIDTH - 1: PARAM_B_OFFSET]; 
        Param_C_in <= S_AXIS_CFG_tdata[PARAM_C_OFFSET + PARAM_WIDTH - 1: PARAM_C_OFFSET]; 
        Param_D_in <= S_AXIS_CFG_tdata[PARAM_D_OFFSET + PARAM_WIDTH - 1: PARAM_D_OFFSET]; 
        Param_E_in <= S_AXIS_CFG_tdata[PARAM_E_OFFSET + PARAM_WIDTH - 1: PARAM_E_OFFSET]; 
        Param_F_in <= S_AXIS_CFG_tdata[PARAM_F_OFFSET + PARAM_WIDTH - 1: PARAM_F_OFFSET]; 
        Param_G_in <= S_AXIS_CFG_tdata[PARAM_G_OFFSET + PARAM_WIDTH - 1: PARAM_G_OFFSET]; 
        Param_H_in <= S_AXIS_CFG_tdata[PARAM_H_OFFSET + PARAM_WIDTH - 1: PARAM_H_OFFSET];
        
        //Premultiplied inputs
        PRODUCT_1_in <= product_1;
        PRODUCT_2_in <= product_2;
        PRODUCT_3_in <= product_3;
        PRODUCT_4_in <= product_4;
        OFFSET_in <= offset;
    
        //sweep incrementer
        if (state == sweep)
            freq_counter_interval <=  Param_B_in[31:31] ? (~Param_B_in+1'b1) : Param_B_in; //use absolut value of Param_B_in
        else
            freq_counter_interval <= 32'b10000000;
            
        
            
                  
        //mult incrementer        
    end

//////////// 
////Math////
////////////
    
     

    //Sum multiplier outputs
    always @(posedge aclk) 
    begin
        case(state)
            A_x_plus_B: result_A <= {{34{PRODUCT_1_in[PRODUCT_1_WIDTH - 1]}}, PRODUCT_1_in[47:20]};
            default: result_A <= PRODUCT_1_in + PRODUCT_2_in + PRODUCT_3_in + PRODUCT_4_in + OFFSET_in;
        endcase
    end
// Results pipeline commented out due to math happening in premultiplier

//    always @(negedge aclk) 
//    begin
//        case (state)
//            fixed:   result_B_last <= result_B;
//            lin : 
//            begin
//                result_B_last <= result_B;
//                result_C_last <= result_C;
//                result_D_last <= result_D;
//                result_E_last <= result_E;
//            end
//            parametric:   
//            begin
//                result_B_last <= result_B;
//                result_C_last <= result_C;
//                result_D_last <= result_D;
//                result_E_last <= result_E;
//            end
//        endcase
//    end 
    
//////////////////////////
////Mux DDS, counter and output////
//////////////////////////
   
    // Mux input to DDS compiler - fixed phase or output from phase counter 
    always @(posedge aclk)
        case (state)
            fixed: dds_phase_in <= Param_A_in[29:0];
            lin: dds_phase_in <= 0;
            sweep:
            begin
                if (~trigger) begin
                    phase_next <= Param_A_in;
                    dds_phase_in <= Param_A_in[29:0];
                    freq_counter_nreset <= 0;
                    freq_counter_en <= 0;
                end
                else begin 
                    if (freq_counter_thresh)
                        phase_next <= (Param_B_in[31:31]) ? (phase - 1) :  (phase + 1); //add 1 if Param_B is positiv and -1 if negativ
                    dds_phase_in <= phase[29:0];
                    freq_counter_nreset <= 1;
                    freq_counter_en <= 1;
                end
            end
            parametric: dds_phase_in <= Param_F_in[29:0];//30'd43;
            default: dds_phase_in <= 0;
        endcase
        
    always @(negedge aclk)
    begin
        //Increment DDS phase
        phase <= phase_next;
        //Pipeline DDS output
        dds_out_last <= dds_out;
    end
    
    always @(*) 
    begin
        // Pass trigger through for output to external devices
        trig_out <= trigger;
        
        // Mux outpout on/off using trigger signal
        if (trigger || CONTINUOUS_OUTPUT)
        begin
            M_AXIS_tdata <= result_A[32] ? (result_A[31:28]==4'b1111 ? result_A[AXIS_TDATA_WIDTH-1+15:15] : -16'd8191) : (result_A[31:28]==4'b0000 ? result_A[AXIS_TDATA_WIDTH-1+15:15] : 16'd8191); //Take result devided by 32768 (2^15) for 14bit output
            M_AXIS_DDS_tdata <= dds_out_last;
         end    
    end                    
    
    assign M_AXIS_DDS_tvalid = dds_M_AXIS_tvalid;
    
    //Valid output if input is valid
    assign M_AXIS_tvalid = S_AXIS_ADC1_tvalid & S_AXIS_ADC1_tvalid & S_AXIS_CFG_tvalid;// & dds_M_AXIS_tvalid;
    
endmodule