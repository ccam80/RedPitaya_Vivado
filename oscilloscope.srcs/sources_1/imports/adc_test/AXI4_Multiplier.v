`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Anton Potocnik
// 
// Create Date: 19.11.2016 22:45:53
// Design Name: 
// Module Name: signal_split
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


module AXI4_multi_adder # 
(
    parameter ADC_DATA_WIDTH = 16,
    parameter MULT_CONST_WIDTH  = 32,
    parameter ADD_CONST_WIDTH = 16,
    parameter integer DAC_DATA_WIDTH = 14,
    parameter AXIS_TDATA_WIDTH = 16,
    parameter SELECT_WIDTH = 2
)
(
    input  wire                                 aclk,
    input [SELECT_WIDTH - 1:0]                  sel,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [MULT_CONST_WIDTH-1:0]         S_AXIS_MULT_tdata,
    input                                       S_AXIS_MULT_tvalid,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [ADD_CONST_WIDTH-1:0]          S_AXIS_ADD_tdata,
    input                                       S_AXIS_ADD_tvalid,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [ADC_DATA_WIDTH-1:0]           S_AXIS_ADC_tdata,
    input                                       S_AXIS_ADC_tvalid,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    output reg [AXIS_TDATA_WIDTH-1:0]    M_AXIS_tdata,
    output wire                                 M_AXIS_tvalid

);
    localparam PADDING_WIDTH = ADC_DATA_WIDTH - DAC_DATA_WIDTH;
    localparam RESULT_WIDTH = 2 * MULT_CONST_WIDTH;
    reg [MULT_CONST_WIDTH * 2 - 2:0] mul;
    wire [MULT_CONST_WIDTH * 2 - 2:0] cmpmul;
    wire [MULT_CONST_WIDTH * 2 - 1:0] result;
    reg [MULT_CONST_WIDTH - 1:0] ADC_in, MULT_in;
    wire [MULT_CONST_WIDTH-1:0] a, b;
    wire sign;
    
    always @*
    begin
        ADC_in <= {S_AXIS_ADC_tdata, 16'b0};
        MULT_in <=  S_AXIS_MULT_tdata;
    end
    
    assign sign = ADC_in[MULT_CONST_WIDTH - 1] ^ MULT_in[MULT_CONST_WIDTH - 1];
    assign a = ADC_in[MULT_CONST_WIDTH - 1]==0 ? ADC_in:~ADC_in + 1'b1;
    assign b = MULT_in[MULT_CONST_WIDTH - 1]==0 ? MULT_in:~MULT_in + 1'b1; 
    
    always @ (posedge aclk)
    begin
        mul <= a * b; 
    end
    
    assign cmpmul = ~mul + 1'b1;   
    assign result = (sign==0) ? {1'b0,mul}:{1'b1, cmpmul};
    
    always @* 
    begin
        case (sel)  
            2'b00 : M_AXIS_tdata = {{(PADDING_WIDTH - 1){result[RESULT_WIDTH - 1]}}, result[MULT_CONST_WIDTH + DAC_DATA_WIDTH - 1:MULT_CONST_WIDTH]} + S_AXIS_ADD_tdata;       
            2'b01 : M_AXIS_tdata = {16'b0};      
            2'b10 : M_AXIS_tdata = {16'b1};      
            2'b11 : M_AXIS_tdata = {8'b0, 8'b1};      
        endcase
    end                    
    
    assign M_AXIS_tvalid = S_AXIS_ADC_tvalid & S_AXIS_ADD_tvalid & S_AXIS_MULT_tvalid;
  
    
endmodule