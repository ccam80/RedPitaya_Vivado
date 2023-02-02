`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Chris Cameron
// 
// Create Date: 26.01.2023 08:47:40
// Design Name: Inferred premultiplication for narrow 16x16 multiplications
// Module Name: narrow_premultiplications
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


module narrow_premultiplications #
(
parameter ADC_DATA_WIDTH = 16,
parameter DDS_WIDTH = 16,
parameter OUTPUT_WIDTH = 32
    )
(
    input wire aclk,
    // Narrow inputs
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [ADC_DATA_WIDTH-1:0]                  S_AXIS_ADC1_tdata,
    input                                       S_AXIS_ADC1_tvalid,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [ADC_DATA_WIDTH-1:0]                  S_AXIS_ADC2_tdata,
    input                                       S_AXIS_ADC2_tvalid,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [ADC_DATA_WIDTH-1:0]                  S_AXIS_ADC2_tdata,
    input                                       S_AXIS_ADC2_tvalid,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [ADC_DATA_WIDTH-1:0]                  S_AXIS_DDS_tdata,
    input                                       S_AXIS_DDS_tvalid,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    output reg [OUTPUT_WIDTH-1:0]               M_AXIS_ADC1_squared_tdata,
    output wire                                 M_AXIS_ADC1_squared_tvalid,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    output reg [OUTPUT_WIDTH-1:0]               M_AXIS_ADC1_ADC2_tdata,
    output wire                                 M_AXIS_ADC1_ADC2_tvalid,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    output reg [OUTPUT_WIDTH-1:0]               M_AXIS_ADC1_DDS_tdata,
    output wire                                 M_AXIS_ADC1_DDS_tvalid
    );
    
    reg signed [ADC_DATA_WIDTH-1:0] ADC1, ADC2;
    reg signed [DDS_WIDTH-1:0] DDS;
    reg signed [OUTPUT_WIDTH-1:0] ADC1_squared, ADC1_ADC2, ADC1_DDS,
                                  ADC1_squared_result, ADC1_ADC2_result, ADC1_DDS_result;    
                                   
    // Pipeline stage one
    always @(posedge aclk)
    begin
        ADC1 <= S_AXIS_ADC1_tdata;
        ADC2 <= S_AXIS_ADC2_tdata;
        DDS <= S_AXIS_DDS_tdata;
    end
    
    always @(negedge aclk)
    begin
//        ADC1_squared <= ADC1 * ADC1;
//        ADC1_ADC2 <= ADC1 * ADC2;
//        ADC1_DDS <= ADC1 * DDS;
        //Use these to cut out final pipeline stage
        ADC1_squared_result <= ADC1 * ADC1;
        ADC1_ADC2_result <= ADC1 * ADC2;
        ADC1_DDS_result <= ADC1 * DDS;
    end
    
    //Output pipeline stage (remove if timing is fine!)
//    always @(posedge aclk)
//    begin
//        ADC1_squared_result <= ADC1_squared;
//        ADC1_ADC2_result <= ADC1_ADC2;
//        ADC1_DDS_result <= ADC1_DDS;
//    end
    
    always@(*)
    begin
        M_AXIS_ADC1_DDS_tdata <= ADC1_DDS_result;
        M_AXIS_ADC1_squared_tdata <= ADC1_squared_result;
        M_AXIS_ADC1_ADC2_tdata <= ADC1_ADC2_result;
    end    
    
    assign M_AXIS_ADC1_DDS_tvalid = S_AXIS_DDS_tvalid & S_AXIS_ADC1_tvalid;
    assign M_AXIS_ADC1_squared_tvalid = S_AXIS_ADC1_tvalid;
    assign M_AXIS_ADC1_ADC2_tvalid = S_AXIS_ADC2_tvalid & S_AXIS_ADC1_tvalid;

endmodule
