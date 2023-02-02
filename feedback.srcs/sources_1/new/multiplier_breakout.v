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

module multiplier_breakout #
(
parameter CFG_WIDTH = 256,
parameter PARAM_WIDTH = 32,
parameter PARAM_A_OFFSET = 0,
parameter PARAM_B_OFFSET = 32,
parameter PARAM_C_OFFSET = 64,
parameter PARAM_D_OFFSET = 96,
parameter PARAM_E_OFFSET = 128,
parameter PARAM_F_OFFSET = 160,
parameter PARAM_G_OFFSET = 192,
parameter PARAM_H_OFFSET = 224,


parameter ADC_WIDTH = 16,
parameter DDS_WIDTH = 16,
parameter RNG_WIDTH = 16,
parameter OPERAND_WIDTH = 32,    
parameter SEL_WIDTH=3
    )
(
    input wire aclk,
    input [SEL_WIDTH-1:0] sel,
    //Narrow inputs
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [ADC_WIDTH-1:0]                       S_AXIS_ADC1_tdata,
    input                                       S_AXIS_ADC1_tvalid,
    
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [ADC_WIDTH-1:0]                       S_AXIS_ADC2_tdata,
    input                                       S_AXIS_ADC2_tvalid,
      
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [DDS_WIDTH-1:0]                       S_AXIS_DDS_tdata,
    input                                       S_AXIS_DDS_tvalid,
    
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [RNG_WIDTH-1:0]                       S_AXIS_RNG_tdata,
    input                                       S_AXIS_RNG_tvalid,
    
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
    output reg [63:0]                           LONG_7F, 
    output reg [OPERAND_WIDTH-1:0]              OFFSET
    );
    
    reg signed [PARAM_WIDTH-1:0] Param_A_in, Param_B_in, Param_C_in, Param_D_in, Param_E_in, Param_F_in, Param_G_in, Param_H_in;
    reg signed [OPERAND_WIDTH-1:0] Operand_1_out, Operand_2_out, Operand_3_out, Operand_4_out, Operand_5_out, Operand_7_out, Offset_out;   
    reg signed [ADC_WIDTH * 3 - 1:0] Operand_6_out;   
    reg [SEL_WIDTH-1:0] state;  

    localparam fixed = 0, sweep = 1, lin = 2, parametric = 3, random = 4, parameter_sweep = 5, A_x_plus_B = 6; 
    
    reg signed [ADC_WIDTH-1:0] ADC1, ADC2;
    reg signed [DDS_WIDTH-1:0] DDS;
    reg signed [RNG_WIDTH-1:0] RNG;
    reg signed [OPERAND_WIDTH-1:0] ADC1_squared_result, ADC1_ADC2_result, ADC1_DDS_result;    
    
    
    //**************************NARROW (Inferred) Multiplier ***************************** //                               
    // Store variable inputs in first stage of pipeline
    always @(posedge aclk)
    begin
        ADC1 <= S_AXIS_ADC1_tdata;
        ADC2 <= S_AXIS_ADC2_tdata;
        DDS <= S_AXIS_DDS_tdata;
        RNG <= S_AXIS_RNG_tdata;
    end
    
    // Carry out narrow 16x16 multiplications using inferred multipliers
    always @(posedge aclk)
    begin
        ADC1_squared_result <= ADC1 * ADC1;
        ADC1_ADC2_result <= ADC1 * ADC2;
        ADC1_DDS_result <= ADC1 * DDS;
    end  
    
    
    // ####################  Multiplier outputs  ################ //
    
    //input pipeline stage for config parameters
    always @(posedge aclk)
    begin
        state <= sel;
        
        //Configuration Parameters
        Param_A_in <= S_AXIS_CFG_tdata[PARAM_A_OFFSET + PARAM_WIDTH - 1: PARAM_A_OFFSET]; 
        Param_B_in <= S_AXIS_CFG_tdata[PARAM_B_OFFSET + PARAM_WIDTH - 1: PARAM_B_OFFSET]; 
        Param_C_in <= S_AXIS_CFG_tdata[PARAM_C_OFFSET + PARAM_WIDTH - 1: PARAM_C_OFFSET]; 
        Param_D_in <= S_AXIS_CFG_tdata[PARAM_D_OFFSET + PARAM_WIDTH - 1: PARAM_D_OFFSET]; 
        Param_E_in <= S_AXIS_CFG_tdata[PARAM_E_OFFSET + PARAM_WIDTH - 1: PARAM_E_OFFSET]; 
        Param_F_in <= S_AXIS_CFG_tdata[PARAM_F_OFFSET + PARAM_WIDTH - 1: PARAM_F_OFFSET]; 
        Param_G_in <= S_AXIS_CFG_tdata[PARAM_G_OFFSET + PARAM_WIDTH - 1: PARAM_G_OFFSET]; 
        Param_H_in <= S_AXIS_CFG_tdata[PARAM_H_OFFSET + PARAM_WIDTH - 1: PARAM_H_OFFSET];
    
    end
    
    //Assign multipliers to operand outputs 
    //Applied equation: V_out = (OP1 * OP2)[63:8] + (OP3 * OP4)[63:8] + (OP5 * OP6)[63:21] + (OP7*LONG_F)[63:0] + OFFSET
    //Operand table given in readme.md
    always@(posedge aclk)
    begin
        case(state)
            fixed: 
            begin
                Operand_1_out <= { {8{DDS[15]}}, DDS, 8'b0}; // shift left 8'b to compensate for output slicing 
                Operand_2_out <= Param_B_in;
                Operand_3_out <= 32'b0;
                Operand_4_out <= 32'b0;
                Operand_5_out <= 32'b0;
                Operand_6_out <= 48'b0;
                Operand_7_out <= 32'b0;
                Offset_out <= Param_C_in;
                LONG_7F <= 64'b0;
            end
                
            sweep: 
            begin
                Operand_1_out <= { {8{DDS[15]}}, DDS, 8'b0}; // shift left 8'b to compensate for output slicing 
                Operand_2_out <= Param_C_in;
                Operand_3_out <= 32'b0;
                Operand_4_out <= 32'b0;
                Operand_5_out <= 32'b0;
                Operand_6_out <= 48'b0;
                Operand_7_out <= 32'b0;
                Offset_out <= Param_D_in;
                LONG_7F <= 64'b0;
            end
            
            lin: 
            begin
                Operand_1_out <= ADC1_DDS_result;
                Operand_2_out <= Param_C_in;
                Operand_3_out <= Param_D_in;
                Operand_4_out <= ADC1_squared_result;
                Operand_5_out <= Param_E_in;
                Operand_6_out <= ADC1_squared_result * ADC1;
                Operand_7_out <= Param_A_in;
                Offset_out <= 32'b0;
                LONG_7F <= 64'h7FFF;
            end
                    
            parametric: 
            begin 
                Operand_1_out <= ADC1_DDS_result;
                Operand_2_out <= Param_C_in;
                Operand_3_out <= Param_D_in;
                Operand_4_out <= ADC1_squared_result;
                Operand_5_out <= Param_E_in;
                Operand_6_out <= ADC1_squared_result * ADC1;
                Operand_7_out <= Param_A_in;
                Offset_out <= 32'b0;
                LONG_7F <= 64'h7FFF;
            end
            
            random: 
            begin
                Operand_1_out <= { {8{RNG[15]}}, RNG, 8'b0}; // shift left 8'b to compensate for output slicing 
                Operand_2_out <= Param_C_in;
                Operand_3_out <= 32'b0;
                Operand_4_out <= 32'b0;
                Operand_5_out <= 32'b0;
                Operand_6_out <= 48'b0;
                Operand_7_out <= 32'b0;
                Offset_out <= Param_D_in;
                LONG_7F <= 64'b0;
            end
            
            default: //Zero out for any un-implemented states
            begin
                Operand_1_out <= 32'b0;
                Operand_2_out <= 32'b0;
                Operand_3_out <= 32'b0;
                Operand_4_out <= 32'b0;
                Operand_5_out <= 32'b0;
                Operand_6_out <= 32'b0;
                Operand_7_out <= 48'b0;   
                Offset_out <= 32'b0; 
            end        
        endcase
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
        OFFSET <= Offset_out;
        end  
        
       
endmodule