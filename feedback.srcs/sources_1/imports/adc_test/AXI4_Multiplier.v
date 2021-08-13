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
    parameter AXIS_TDATA_WIDTH = 32,
    parameter SELECT_WIDTH = 2
)
(
    input  wire                         aclk,
    input [SELECT_WIDTH - 1:0]          select,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [MULT_CONST_WIDTH-1:0]        S_AXIS_MULT_tdata,
    input                               S_AXIS_MULT_tvalid,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [ADD_CONST_WIDTH-1:0]        S_AXIS_ADD_tdata,
    input                               S_AXIS_ADD_tvalid,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [ADC_DATA_WIDTH-1:0]        S_AXIS_ADC_tdata,
    input                               S_AXIS_ADC_tvalid,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    output reg [AXIS_TDATA_WIDTH-1:0]   M_AXIS_tdata,
    output wire                         M_AXIS_tvalid

);
    reg [MULT_CONST_WIDTH-1:0] ADC_shifted;
    reg [MULT_CONST_WIDTH * 2 - 1:0] result;
    
    
    always @ (posedge aclk)
    begin
        ADC_shifted <= {2'b0, S_AXIS_ADC_tdata[13:0]} << 16;
        result = ADC_shifted[MULT_CONST_WIDTH-1:0] * S_AXIS_MULT_tdata[MULT_CONST_WIDTH-1:0];
    end
             
    
    always @* 
    begin
        case (select)  
            2'b00 : M_AXIS_tdata = {2'b0,result[45:32]} + S_AXIS_ADD_tdata;       
            2'b01 : M_AXIS_tdata = {16'b0};      
            2'b10 : M_AXIS_tdata = {16'b1};      
            2'b11 : M_AXIS_tdata = {8'b0, 8'b1};      
        endcase
    end                    
    
    assign M_AXIS_tvalid = S_AXIS_ADC_tvalid & S_AXIS_ADD_tvalid & S_AXIS_MULT_tvalid;
  
    
endmodule