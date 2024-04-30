`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2023 10:08:23
// Design Name: 
// Module Name: multiplier_breakout
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

module CBC #
(
parameter CFG_WIDTH = 448,
parameter PARAM_WIDTH = 32,
parameter RHAT_START_OFFSET = 0,
parameter RHAT_INTERVAL_OFFSET = 32,
parameter FREQ_START_OFFSET = 64,
parameter FREQ_INTERVAL_OFFSET = 96,
parameter KP_OFFSET = 128,
parameter KD_OFFSET = 160,
parameter A_START_OFFSET = 192,
parameter A_INTERVAL_OFFSET = 224,
parameter B_START_OFFSET = 256,
parameter B_INTERVAL_OFFSET = 288,
parameter C_START_OFFSET = 320,
parameter C_INTERVAL_OFFSET = 352,
parameter D_START_OFFSET = 384,
parameter D_INTERVAL_OFFSET = 416,

parameter ADC_WIDTH = 16,
parameter DDS_WIDTH = 16,
parameter RNG_WIDTH = 16,
parameter OPERAND_WIDTH = 32,    
parameter SEL_WIDTH=4
    )
(
    input wire aclk,
    input wire trigger_in,
    output reg trigger_out,  
    
    input wire                                  input_select,                       //1: displaecment ADC1, velocity ADC2
    input wire                                  velocity_int_ext,                   // 1 external velocity, 0 differentiate displacement
    input wire                                  displacement_int_ext,               // 1 external displacement, 0 integrate veloci
    input wire                                  polynomial_target,                  //1 velocity, 0 displacement
    
    input [SEL_WIDTH-1:0] sel,
    //Narrow inputs
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [ADC_WIDTH-1:0]                       S_AXIS_ADC1_tdata,
    input                                       S_AXIS_ADC1_tvalid,
    
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [ADC_WIDTH-1:0]                       S_AXIS_ADC2_tdata,
    input                                       S_AXIS_ADC2_tvalid,
    
    //Parameter bus input
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [CFG_WIDTH-1:0]                       S_AXIS_CFG_tdata,
    input                                       S_AXIS_CFG_tvalid,
    

    //Outputs for multipliers
    output reg [OPERAND_WIDTH-1:0]              OP1,    
    output reg [OPERAND_WIDTH-1:0]              OP2,    
    output reg [OPERAND_WIDTH-1:0]              OP3,  
    output reg [OPERAND_WIDTH-1:0]              OP4,   
    output reg [OPERAND_WIDTH-1:0]              OP5,  
    output reg [(ADC_WIDTH * 3) - 1:0]          OP6,
    output reg [OPERAND_WIDTH-1:0]              OP7,   
    output reg [OPERAND_WIDTH-1:0]              OP8, 
    output reg [OPERAND_WIDTH-1:0]              OP9,    
    output reg [OPERAND_WIDTH-1:0]              OP10, 
    
    output reg [OPERAND_WIDTH-1:0]              OFFSET
    );
    
    localparam DISP_1_VEL_2 = 1'b1, DISP_2_VEL_1 = 1'b0, INTERNAL = 1'b0, EXTERNAL = 1'b1;
    
    reg trigger;
    reg trigger_1;
    reg trigger_2;
    reg trigger_3;
    reg trigger_4;
    reg trigger_5;  
    reg trigger_6; 
    reg trigger_7; 
 
    reg velocity_external;
    reg displacement_external;
    
    reg signed [PARAM_WIDTH-1:0] rhat_start, freq_start, A_start, B_start, C_start, D_start,
                                 rhat_interval_in, freq_interval_in, A_interval_in, B_interval_in, C_interval_in, D_interval_in,
                                 rhat_interval, freq_interval, A_interval, B_interval, C_interval, D_interval,
                                 rhat, freq, A, B, C, D,
                                 rhat_next, freq_next, A_next, B_next, C_next, D_next,
                                 KP, KD;
                                 
                                 
    reg signed [OPERAND_WIDTH-1:0] Operand_1_out, Operand_3_out, Operand_5_out, Operand_7_out, Operand_8_out, Operand_9_out, Offset_out;  
    reg signed [OPERAND_WIDTH-1: 0]    Operand_2_out, Operand_4_out, Operand_10_out;                           
    reg signed [ADC_WIDTH*3-1:0]   Operand_6_out;   
    reg [SEL_WIDTH-1:0] state;  

    
    reg signed [ADC_WIDTH-1:0] displacement, velocity, polynomial_var;
    reg signed [ADC_WIDTH-1:0] displacement_last, velocity_last;
        
    reg signed [ADC_WIDTH * 2 -1:0] polynomial_var_squared_result;
    reg signed [ADC_WIDTH * 3 -1:0] polynomial_var_cubed_result;
    
    localparam CBC=7; 
    
    //Signals for rhat_counter
    reg rhat_counter_en = 1'b1;
    reg rhat_counter_nreset = 1'b1;
    wire rhat_counter_thresh;
    
    //Signals for freq_counter
    reg freq_counter_en = 1'b1;
    reg freq_counter_nreset = 1'b1;
    wire freq_counter_thresh;   

    
    //Signals for A_counter
    reg A_counter_en = 1'b1;
    reg A_counter_nreset = 1'b1;
    wire A_counter_thresh;
    
    
    //Signals for add_counter
    reg B_counter_en = 1'b1;
    reg B_counter_nreset = 1'b1;
    wire B_counter_thresh;
    
    //Signals for add_counter
    reg C_counter_en = 1'b1;
    reg C_counter_nreset = 1'b1;
    wire C_counter_thresh;
    
        //Signals for add_counter
    reg D_counter_en = 1'b1;
    reg D_counter_nreset = 1'b1;
    wire D_counter_thresh;
    
    
    //Signals for I/O from DDS
    wire signed [DDS_WIDTH - 1:0] ref_dds;
    wire dds_M_AXIS_tvalid;       
    reg resync_dds;

    wire signed [DDS_WIDTH-1:0] ref_master;
    reg signed [DDS_WIDTH - 1:0] ref_master_last,
                                 ref_displacement, ref_velocity;
    reg signed [DDS_WIDTH - 1:0] error, error_dot, error_last;    
    
////////////////////////////////////
////Instantiate further IP Cores////
////////////////////////////////////
    
    //Counter for phase increment for frequency sweep    
    rollover_counter freq_counter (
    .aclk(aclk),
    .en(freq_counter_en),      
    .nRST(freq_counter_nreset),  
    .MOD(freq_interval),
    .THRESH(freq_counter_thresh)        
    ); 
    
    //Counter for phase increment for r_hat sweep    
    rollover_counter rhat_counter (
    .aclk(aclk),
    .en(rhat_counter_en),      
    .nRST(rhat_counter_nreset),  
    .MOD(rhat_interval),
    .THRESH(rhat_counter_thresh)        
    ); 

    //Counter for phase increment for frequency sweep    
    rollover_counter A_counter (
    .aclk(aclk),
    .en(A_counter_en),      
    .nRST(A_counter_nreset),  
    .MOD(A_interval),
    .THRESH(A_counter_thresh)        
    ); 
    
    //Counter for phase increment for frequency sweep    
    rollover_counter B_counter (
    .aclk(aclk),
    .en(B_counter_en),      
    .nRST(B_counter_nreset),  
    .MOD(B_interval),
    .THRESH(B_counter_thresh)        
    ); 
    
    //Counter for phase increment for frequency sweep    
    rollover_counter C_counter (
    .aclk(aclk),
    .en(C_counter_en),      
    .nRST(C_counter_nreset),  
    .MOD(C_interval),
    .THRESH(C_counter_thresh)        
    ); 
    
    //Counter for phase increment for frequency sweep    
    rollover_counter D_counter (
    .aclk(aclk),
    .en(D_counter_en),      
    .nRST(D_counter_nreset),  
    .MOD(D_interval),
    .THRESH(D_counter_thresh)        
    ); 
    
    // DDS compiler for sinusoidal output
    dds_compiler_0 reference_sinusoids (
    .aclk(aclk),                                // input wire aclk
    .s_axis_phase_tvalid(S_AXIS_CFG_tvalid),  // input wire s_axis_phase_tvalid
    .s_axis_phase_tdata({7'b0,resync_dds, 2'b0, freq[29:0]}),    // input wire [39 : 0] s_axis_phase_tdata
    .m_axis_data_tvalid(m_axis_data_tvalid),    // output wire m_axis_data_tvalid
    .m_axis_data_tdata(ref_dds)      // output wire [31 : 0] m_axis_data_tdata
    );
    
    // 3-cycle_delay fixed-point multiplication of ref sinusoid by Q32 fractional rhat
    mult_gen_0 Reference_multiplier (
    .CLK(aclk),  // input wire CLK
    .A(ref_dds),      // input wire [13 : 0] A
    .B(rhat),      // input wire [31 : 0] B
    .P(ref_master)      // output wire [13 : 0] P
    );
    
    //**************************NARROW (Inferred) Multiplier ***************************** //                               
        //input pipeline stage for config parameters
    always @(posedge aclk)
    begin
        state <= sel;
        
        KP <= S_AXIS_CFG_tdata[KP_OFFSET + PARAM_WIDTH - 1: KP_OFFSET]; 
        KD <= S_AXIS_CFG_tdata[KD_OFFSET + PARAM_WIDTH - 1: KD_OFFSET];
        
        //Configuration Parameters
        rhat_start <= S_AXIS_CFG_tdata[RHAT_START_OFFSET + PARAM_WIDTH - 1: RHAT_START_OFFSET]; 
        freq_start <= S_AXIS_CFG_tdata[FREQ_START_OFFSET + PARAM_WIDTH - 1: FREQ_START_OFFSET];    
        A_start <= S_AXIS_CFG_tdata[A_START_OFFSET + PARAM_WIDTH - 1: A_START_OFFSET]; 
        B_start <= S_AXIS_CFG_tdata[B_START_OFFSET + PARAM_WIDTH - 1: B_START_OFFSET]; 
        C_start <= S_AXIS_CFG_tdata[C_START_OFFSET + PARAM_WIDTH - 1: C_START_OFFSET]; 
        D_start <= S_AXIS_CFG_tdata[D_START_OFFSET + PARAM_WIDTH - 1: D_START_OFFSET]; 
        
        rhat_interval_in <= S_AXIS_CFG_tdata[RHAT_INTERVAL_OFFSET + PARAM_WIDTH - 1: RHAT_INTERVAL_OFFSET]; 
        freq_interval_in <= S_AXIS_CFG_tdata[FREQ_INTERVAL_OFFSET + PARAM_WIDTH - 1: FREQ_INTERVAL_OFFSET]; 
        A_interval_in <= S_AXIS_CFG_tdata[A_INTERVAL_OFFSET + PARAM_WIDTH - 1: A_INTERVAL_OFFSET]; 
        B_interval_in <= S_AXIS_CFG_tdata[B_INTERVAL_OFFSET + PARAM_WIDTH - 1: B_INTERVAL_OFFSET]; 
        C_interval_in <= S_AXIS_CFG_tdata[C_INTERVAL_OFFSET + PARAM_WIDTH - 1: C_INTERVAL_OFFSET]; 
        D_interval_in <= S_AXIS_CFG_tdata[D_INTERVAL_OFFSET + PARAM_WIDTH - 1: D_INTERVAL_OFFSET]; 
           
    end
    
   
    // Store variable inputs in first stage of pipeline - assign displacement, velocity, based on memory toggles.
    // Input order could be handled more elegantly but I want to avoid adding another pipeline stage here unintentionally.
    always @(posedge aclk)
    begin
        case (input_select)   
        DISP_1_VEL_2:
        
            begin
                case({displacement_external, velocity_external})
                {EXTERNAL, EXTERNAL}: 
                    begin
                    displacement <= S_AXIS_ADC1_tdata;
                    velocity <= S_AXIS_ADC2_tdata;
                    end
                {EXTERNAL, INTERNAL}:
                    begin
                    displacement <= S_AXIS_ADC1_tdata;
                    velocity <= S_AXIS_ADC1_tdata - displacement_last;
                    end                
                {INTERNAL, EXTERNAL}:
                    begin
                    velocity <= S_AXIS_ADC2_tdata;
                    displacement <= displacement + (S_AXIS_ADC2_tdata << 8); // This shift/scaling is arbitrary and will likely not work
                    end
                {INTERNAL, INTERNAL}:
                    begin
                    velocity = -ref_velocity;
                    displacement = -ref_displacement;
                    end
                endcase                                
            end
            
        DISP_2_VEL_1:
            begin
                case({displacement_external, velocity_external})
                {EXTERNAL, EXTERNAL}: 
                    begin
                    displacement <= S_AXIS_ADC2_tdata;
                    velocity <= S_AXIS_ADC1_tdata;
                    end
                {EXTERNAL, INTERNAL}:
                    begin
                    displacement <= S_AXIS_ADC2_tdata;
                    velocity <= S_AXIS_ADC2_tdata - displacement_last;
                    end                
                {INTERNAL, EXTERNAL}:
                    begin
                    velocity <= S_AXIS_ADC1_tdata;
                    displacement <= displacement + (S_AXIS_ADC1_tdata << 8); // This shift/scaling is arbitrary and will likely not work
                    end
                {INTERNAL, INTERNAL}:
                    begin
                    velocity = -ref_velocity;
                    displacement = -ref_displacement;
                    end
                endcase                                
            end
        
        endcase 
                   
        trigger <= trigger_in;
        velocity_external <= velocity_int_ext;
        displacement_external <= displacement_int_ext;
    end
    
    // set polynomial target based on toggle, get "last" values of variables
    always @(posedge aclk)
    begin
        
        //Save "lasts" for anything that's quick (1/2 cycle) to work out
        displacement_last <= displacement;
        velocity_last <= velocity;
        ref_master_last <= ref_master;
               
        // Assign reference signals from multiplied master
        ref_velocity <= ref_master - ref_master_last; // Shift to account for freq
        ref_displacement <= ref_master;                                            
    end
    
    
    always @ (posedge aclk)
    begin
            // Set target variable for polynomial feedback
        if (polynomial_target)
            polynomial_var <= velocity;
        else
            polynomial_var <= displacement;   
    end

    always @ (posedge aclk)
    begin
        error <= ref_displacement - displacement;
        error_last <= error;
        error_dot  <= (error - error_last); 
        //Shift externally measured x_dot_n velocity sample back half a sample (linear interpolation) to be at the same time point
        // as calculated by the ref signal.
//        case(velocity_external)
//            INTERNAL: error_dot <= ((velocity + velocity_last) << 1) - ref_velocity;
//            EXTERNAL: error_dot <= velocity - ref_velocity;              
//        endcase   
    end    
        
    // Carry out narrow 16x16 multiplication using inferred multipliers
    always @(posedge aclk)
    begin
        polynomial_var_squared_result <= polynomial_var * polynomial_var;
        polynomial_var_cubed_result <= polynomial_var_squared_result * polynomial_var;
    end      
    
  
    // ####################  Multiplier outputs  ################ //
    always @(posedge aclk)
    begin
        //Control outputs
        Operand_1_out <= KP;        // Q16.16  Useful (integer) output will be left-shifted 16 bits
        Operand_2_out <= {{8{error[15]}},error, 8'b0};     // extend to 32 bit to use shared mult, shift up 8b to compensate for shared mult slicing
        Operand_3_out <= KD;        // Q16.16
        Operand_4_out <= {{8{error_dot[15]}},error_dot, 8'b0}; // extend to 32 bit to use shared mult
        
        //Polynomial outputs
        Operand_5_out <= A;
        Operand_6_out <= polynomial_var_cubed_result;
        Operand_7_out <= B;
        Operand_8_out <= polynomial_var_squared_result;
        Operand_9_out <= C; 
        Operand_10_out <= {polynomial_var, 16'b0}; // extend to 32 bit to use shared mult
        Offset_out <= D;
    
    end  
                
    //Output pipeline stage
    always@(*)
        begin
        OP1 <= Operand_1_out;    
        OP2 <= Operand_2_out;  
        OP3 <= Operand_3_out;
        OP4 <= Operand_4_out;
        OP5 <= Operand_5_out;
        OP6 <= Operand_6_out;
        OP7 <= Operand_7_out;
        OP8 <= Operand_8_out;
        OP9 <= Operand_9_out;
        OP10 <= Operand_10_out;
        OFFSET <= Offset_out;
        end  
        
  //Control logic and trigger delay chain. Delay is 3 cycles for internal multiplier, 4 for external multipliers.
  
  always @(posedge(aclk))
        begin
            
            if (!trigger_1 && trigger)
            begin
                resync_dds <= 1;             
            end
            else
            begin
                resync_dds <= 0;
            end
                            
            trigger_1 <= trigger;
            trigger_2 <= trigger_1;
            trigger_3 <= trigger_2;
            trigger_4 <= trigger_3;
            trigger_5 <= trigger_4;
            trigger_6 <= trigger_5;
            trigger_7 <= trigger_6;

            trigger_out <= trigger_7;
        end       
        
// ####################  Sweep logic  ################ //    
           
         
    always @(posedge aclk)
    begin
        // Parameter sweep setup and execution 
        if (state==CBC)           
        begin
            // Reset to init values, counter reset
            if (~trigger) 
                begin
                    rhat_next <= rhat_start;
                    freq_next <= freq_start;
                    A_next <= A_start;
                    B_next <= B_start;
                    C_next <= C_start;
                    D_next <= D_start;
                    
                    rhat_interval <= rhat_interval_in[31:31] ? (~rhat_interval_in+1'b1) : rhat_interval_in;
                    freq_interval <= freq_interval_in[31:31] ? (~freq_interval_in+1'b1) : freq_interval_in;
                    A_interval <= A_interval_in[31:31] ? (~A_interval_in+1'b1) : A_interval_in;
                    B_interval <= B_interval_in[31:31] ? (~B_interval_in+1'b1) : B_interval_in;
                    C_interval <= C_interval_in[31:31] ? (~C_interval_in+1'b1) : C_interval_in;
                    D_interval <= D_interval_in[31:31] ? (~D_interval_in+1'b1) : D_interval_in;
                      
                    rhat_counter_nreset <= 0;
                    rhat_counter_en <= 0;
                    freq_counter_nreset <= 0;
                    freq_counter_en <= 0;
                    A_counter_nreset <= 0;
                    A_counter_en <= 0;
                    B_counter_nreset <= 0;
                    B_counter_en <= 0;
                    C_counter_nreset <= 0;
                    C_counter_en <= 0;
                    D_counter_nreset <= 0;
                    D_counter_en <= 0;
                end 
            
            else
                // If triggered, check whether a sweep is required by seeing if there's a value in interval 
                if (freq_interval != 32'b0) begin
                    freq_counter_nreset <= 1;
                    freq_counter_en <= 1;
                    if (freq_counter_thresh)
                        freq_next <= (freq_interval[31:31]) ? (freq - 1) :  (freq + 1); //add 1 if RHAT_INTERVAL is positiv and -1 if negativ
                end

                if (rhat_interval != 32'b0) begin
                    rhat_counter_nreset <= 1;
                    rhat_counter_en <= 1;
                    if (rhat_counter_thresh)
                        rhat_next <= (rhat_interval[31:31]) ? (rhat - 1) :  (rhat + 1); //add 1 if RHAT_INTERVAL is positiv and -1 if negativ
                end
                
                if (A_interval != 32'b0) begin
                    A_counter_nreset <= 1;
                    A_counter_en <= 1;
                    if (A_counter_thresh)
                        A_next <= (A_interval[31:31]) ? (A - 1) :  (A + 1); //add 1 if RHAT_INTERVAL is positiv and -1 if negativ
                end
                
                if (B_interval != 32'b0) begin
                    B_counter_nreset <= 1;
                    B_counter_en <= 1;
                    if (B_counter_thresh)
                        B_next <= (B_interval[31:31]) ? (B - 1) :  (B + 1); //add 1 if RHAT_INTERVAL is positiv and -1 if negativ
                end
                
                if (C_interval != 32'b0) begin
                    C_counter_nreset <= 1;
                    C_counter_en <= 1;
                    if (C_counter_thresh)
                        C_next <= (C_interval[31:31]) ? (C - 1) :  (C + 1); //add 1 if RHAT_INTERVAL is positiv and -1 if negativ
                end
                
                if (D_interval != 32'b0) begin
                    D_counter_nreset <= 1;
                    D_counter_en <= 1;
                    if (D_counter_thresh)
                        D_next <= (D_interval[31:31]) ? (D - 1) :  (D + 1); //add 1 if RHAT_INTERVAL is positiv and -1 if negativ
                end
                

                    
            end           
        else
            begin
                rhat_counter_nreset <= 0;
                rhat_counter_en <= 0;
                freq_counter_nreset <= 0;
                freq_counter_en <= 0;
                A_counter_nreset <= 0;
                A_counter_en <= 0;
                B_counter_nreset <= 0;
                B_counter_en <= 0;
                C_counter_nreset <= 0;
                C_counter_en <= 0;
                D_counter_nreset <= 0;
                D_counter_en <= 0;
            end    

    end
    
    //Swept output pipeline
    always @(posedge aclk)
        begin
            //Increment feedback constant
            freq <= freq_next;
            rhat <= rhat_next;
            A <= A_next;
            B <= B_next;
            C <= C_next;
            D <= D_next;
        end
        
             
            
endmodule