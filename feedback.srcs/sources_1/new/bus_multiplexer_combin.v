`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.06.2023 14:14:22
// Design Name: 
// Module Name: bus_multiplexer_combin
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


module bus_multiplexer_combin #
(
    parameter A_WIDTH = 32,
    parameter B_WIDTH = 32,
    parameter SELECT_WIDTH = 4
)
     
(
    input [A_WIDTH-1:0]       CBC_input_A, 
    input [A_WIDTH-1:0]       Channel_input_A,
    input [B_WIDTH-1:0]       CBC_input_B, 
    input [B_WIDTH-1:0]       Channel_input_B,
    input [SELECT_WIDTH-1:0]  sel,  
        
    output reg [A_WIDTH-1:0]      mult_output_A,
    output reg [B_WIDTH-1:0]      mult_output_B        
 );
 
 localparam fixed = 0, sweep = 1, lin = 2, parametric = 3,  A_x_plus_B = 4, random = 5, polynomial = 6, CBC=7, OFF=15; 
 
 always@(*)
     begin
        case(sel)
        CBC: 
            begin
                mult_output_A <= CBC_input_A;
                mult_output_B <= CBC_input_B;
            end
        default:
            begin
                mult_output_A <= Channel_input_A;
                mult_output_B <= Channel_input_B;
            end
        endcase
    end                                
endmodule
