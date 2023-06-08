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

    parameter PRODUCT_1_WIDTH = 56,
    parameter PRODUCT_2_WIDTH = 56,
    parameter PRODUCT_3_WIDTH = 43,
    parameter PRODUCT_4_WIDTH = 64,
    parameter PRODUCT_5_WIDTH = 43,
    parameter PRODUCT_6_WIDTH = 64,
    parameter OFFSET_WIDTH = 32,
    
    parameter AXIS_TDATA_WIDTH = 32,
    parameter OUTPUT_CHANNEL_WIDTH = 16,
    parameter SELECT_WIDTH = 4
)
(
    input  wire                                 aclk,
    input  wire                                 trig_in,
    input  wire                                 continuous_output_in,
    input [SELECT_WIDTH - 1:0]                  CH1_sel,
    input [SELECT_WIDTH - 1:0]                  CH2_sel,

    
    input [PRODUCT_1_WIDTH-1:0]             CH1_product_1,
    input [PRODUCT_2_WIDTH-1:0]             CH1_product_2,
    input [PRODUCT_3_WIDTH-1:0]             CH1_product_3,
    input [PRODUCT_4_WIDTH-1:0]             CH1_product_4,
    input [OFFSET_WIDTH-1:0]                CH1_offset,
    
    input [PRODUCT_1_WIDTH-1:0]             CH2_product_1,
    input [PRODUCT_2_WIDTH-1:0]             CH2_product_2,
    input [PRODUCT_3_WIDTH-1:0]             CH2_product_3,
    input [PRODUCT_4_WIDTH-1:0]             CH2_product_4,
    input [OFFSET_WIDTH-1:0]                CH2_offset,
    
    input [PRODUCT_1_WIDTH-1:0]             CBC_product_1,
    input [PRODUCT_2_WIDTH-1:0]             CBC_product_2,
    input [PRODUCT_3_WIDTH-1:0]             CBC_product_3,
    input [PRODUCT_4_WIDTH-1:0]             CBC_product_4,
    input [PRODUCT_3_WIDTH-1:0]             CBC_product_5,
    input [PRODUCT_4_WIDTH-1:0]             CBC_product_6,
    input [OFFSET_WIDTH-1:0]                CBC_offset,
    
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    output reg [AXIS_TDATA_WIDTH-1:0]           M_AXIS_tdata,
    output wire                                 M_AXIS_tvalid,
    output reg                                  trig_out
);

////////////////////////
////Local Parameter////
///////////////////////

    localparam RESULT_WIDTH = 64;
    
////////////////////    
////Declarations////
////////////////////

    // input registers
    
    reg [PRODUCT_1_WIDTH-1:0] CH1_PRODUCT_1_in;
    reg [PRODUCT_2_WIDTH-1:0] CH1_PRODUCT_2_in;
    reg [PRODUCT_3_WIDTH-1:0] CH1_PRODUCT_3_in;
    reg [PRODUCT_4_WIDTH-1:0] CH1_PRODUCT_4_in;
    reg [OFFSET_WIDTH-1:0] CH1_OFFSET_in;
    
    reg [PRODUCT_1_WIDTH-1:0] CH2_PRODUCT_1_in;
    reg [PRODUCT_2_WIDTH-1:0] CH2_PRODUCT_2_in;
    reg [PRODUCT_3_WIDTH-1:0] CH2_PRODUCT_3_in;
    reg [PRODUCT_4_WIDTH-1:0] CH2_PRODUCT_4_in;
    reg [OFFSET_WIDTH-1:0] CH2_OFFSET_in;
       
    // state machine variables
    reg trigger;                       // 0 - trig output off, 1 - trig output on   
    reg [SELECT_WIDTH-1:0] CH1_state, CH2_state;  
    reg CONTINUOUS_OUTPUT;
       
    localparam fixed = 0, sweep = 1, lin = 2, parametric = 3,  A_x_plus_B = 4, random = 5, polynomial = 6, CBC=7, OFF=15; 

    // Math variables
    reg signed [RESULT_WIDTH - 1:0] CH1_result, CH2_result;


//////////////////
////Data input////
//////////////////  

    // Bring in, break up, and store input data in registers as first pipeline stage.
    // All inputs stored, non-blocking, run in any state/
    always @(posedge aclk)
    begin
        CH1_state <= CH1_sel;
        CH2_state <= CH2_sel;
        trigger <= trig_in;
        
        CONTINUOUS_OUTPUT = continuous_output_in;
        
        //Premultiplied inputs
        CH1_PRODUCT_1_in <= CH1_product_1;
        CH1_PRODUCT_2_in <= CH1_product_2;
        CH1_PRODUCT_3_in <= CH1_product_3;
        CH1_PRODUCT_4_in <= CH1_product_4;
        CH1_OFFSET_in <= CH1_offset;
        
        CH2_PRODUCT_1_in <= CH2_product_1;
        CH2_PRODUCT_2_in <= CH2_product_2;
        CH2_PRODUCT_3_in <= CH2_product_3;
        CH2_PRODUCT_4_in <= CH2_product_4;
        CH2_OFFSET_in <= CH2_offset;
    end

//////////// 
////Math////
////////////    

    //Sum multiplier outputs according to state
    always @(posedge aclk) 
    begin
        case(CH1_state)
            A_x_plus_B: CH1_result <= {{18{CH1_PRODUCT_1_in[PRODUCT_1_WIDTH - 1]}}, CH1_PRODUCT_1_in[PRODUCT_1_WIDTH - 2:9]} + CH1_OFFSET_in;
            default: CH1_result <= CH1_PRODUCT_1_in + CH1_PRODUCT_2_in + CH1_PRODUCT_3_in + CH1_PRODUCT_4_in + CH1_OFFSET_in;
        endcase
        
        case(CH2_state)
            A_x_plus_B: CH2_result <= {{18{CH2_PRODUCT_1_in[PRODUCT_1_WIDTH - 1]}}, CH2_PRODUCT_1_in[PRODUCT_1_WIDTH - 2:9]} + CH2_OFFSET_in;
            default: CH2_result <= CH2_PRODUCT_1_in + CH2_PRODUCT_2_in + CH2_PRODUCT_3_in + CH2_PRODUCT_4_in + CH2_OFFSET_in;
        endcase
    end
    


    
    always @(*) 
    begin
        // Pass trigger through for output to external devices
        trig_out <= trigger;
        // Mux outpout on/off using trigger signal or keep on if in continuous mode
        if (trigger || CONTINUOUS_OUTPUT)
            M_AXIS_tdata <= {CH2_result[32] ? (CH2_result[31:28]==4'b1111 ? CH2_result[OUTPUT_CHANNEL_WIDTH-1+15:15] : -16'd8191) : (CH2_result[31:28]==4'b0000 ? CH2_result[OUTPUT_CHANNEL_WIDTH-1+15:15] : 16'd8191),
                            CH1_result[32] ? (CH1_result[31:28]==4'b1111 ? CH1_result[OUTPUT_CHANNEL_WIDTH-1+15:15] : -16'd8191) : (CH1_result[31:28]==4'b0000 ? CH1_result[OUTPUT_CHANNEL_WIDTH-1+15:15] : 16'd8191)}; //Take result devided by 32768 (2^15) for 14bit output
        else
            M_AXIS_tdata <= 32'h0;
    end                    
    
   
    //No input to check - consider inputs valid at all times
    assign M_AXIS_tvalid = 1'b1;
    
endmodule