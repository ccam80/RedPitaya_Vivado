`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2021 11:46:27
// Design Name: 
// Module Name: AXI_mux
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


module AXI_mux #
(
    parameter AXIS_TDATA_WIDTH = 32,
    parameter SELECT_WIDTH = 1
)
(
    input [SELECT_WIDTH-1:0] sel,
    input aclk,
      
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [AXIS_TDATA_WIDTH-1:0]        S_AXIS_FAST_tdata,
    input                               S_AXIS_FAST_tvalid,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [AXIS_TDATA_WIDTH-1:0]        S_AXIS_SLOW_tdata,
    input                               S_AXIS_SLOW_tvalid,

    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    output reg [AXIS_TDATA_WIDTH-1:0]  M_AXIS_tdata,
    output reg                         M_AXIS_tvalid 
);
   
    localparam fast=1, slow=0;
    
    always@(posedge aclk)
    
    case(sel)
         fast: begin
                    M_AXIS_tdata <= S_AXIS_FAST_tdata;
                    M_AXIS_tvalid <= S_AXIS_FAST_tvalid;
                end
                
         slow :begin
                    M_AXIS_tdata <= S_AXIS_SLOW_tdata;
                    M_AXIS_tvalid <= S_AXIS_SLOW_tvalid;
                end
                
                        
        default : begin
                    M_AXIS_tdata <= 32'b0;
                    M_AXIS_tvalid <= 0;
                end            
    endcase

endmodule
   