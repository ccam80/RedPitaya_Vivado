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
    parameter PRODUCT_2_WIDTH = 43,
    parameter PRODUCT_3_WIDTH = 56,
    parameter PRODUCT_4_WIDTH = 64,
    parameter OFFSET_WIDTH = 32,
    
    parameter AXIS_TDATA_WIDTH = 16,
    parameter SELECT_WIDTH = 3
)
(
    input  wire                                 aclk,
    input  wire                                 trig_in,
    input  wire                                 continuous_output_in,
    input [SELECT_WIDTH - 1:0]                  sel,
    
    input [PRODUCT_1_WIDTH-1:0]             product_1,
    input [PRODUCT_2_WIDTH-1:0]             product_2,
    input [PRODUCT_3_WIDTH-1:0]             product_3,
    input [PRODUCT_4_WIDTH-1:0]             product_4,
    input [OFFSET_WIDTH-1:0]                offset,
    
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
    
    reg [PRODUCT_1_WIDTH-1:0] PRODUCT_1_in;
    reg [PRODUCT_2_WIDTH-1:0] PRODUCT_2_in;
    reg [PRODUCT_3_WIDTH-1:0] PRODUCT_3_in;
    reg [PRODUCT_4_WIDTH-1:0] PRODUCT_4_in;
    reg [OFFSET_WIDTH-1:0] OFFSET_in;
       
    // state machine variables
    reg trigger;                       // 0 - trig output off, 1 - trig output on   
    reg [SELECT_WIDTH-1:0] state;  
    reg CONTINUOUS_OUTPUT;
       
    localparam fixed = 0, sweep = 1, lin = 2, parametric = 3,  A_x_plus_B = 4, random = 5, polynomial = 6, CBC=7; 

    // Math variables
    reg signed [RESULT_WIDTH - 1:0] result;


//////////////////
////Data input////
//////////////////  

    // Bring in, break up, and store input data in registers as first pipeline stage.
    // All inputs stored, non-blocking, run in any state/
    always @(posedge aclk)
    begin
        state <= sel;
        trigger <= trig_in;
        
        CONTINUOUS_OUTPUT = continuous_output_in;
        
        //Premultiplied inputs
        PRODUCT_1_in <= product_1;
        PRODUCT_2_in <= product_2;
        PRODUCT_3_in <= product_3;
        PRODUCT_4_in <= product_4;
        OFFSET_in <= offset;
    end

//////////// 
////Math////
////////////    

    //Sum multiplier outputs according to state
    always @(posedge aclk) 
    begin
        case(state)
            A_x_plus_B: result <= {{18{PRODUCT_1_in[PRODUCT_1_WIDTH - 1]}}, PRODUCT_1_in[PRODUCT_1_WIDTH - 2:9]} + OFFSET_in;
            default: result <= PRODUCT_1_in + PRODUCT_2_in + PRODUCT_3_in + PRODUCT_4_in + OFFSET_in;
        endcase
    end
    


    
    always @(*) 
    begin
        // Pass trigger through for output to external devices
        trig_out <= trigger;
        // Mux outpout on/off using trigger signal or keep on if in continuous mode
        if (trigger || CONTINUOUS_OUTPUT)
            M_AXIS_tdata <= result[32] ? (result[31:28]==4'b1111 ? result[AXIS_TDATA_WIDTH-1+15:15] : -16'd8191) : (result[31:28]==4'b0000 ? result[AXIS_TDATA_WIDTH-1+15:15] : 16'd8191); //Take result devided by 32768 (2^15) for 14bit output
        else
            M_AXIS_tdata <= 32'h0;
    end                    
    
   
    //No input to check - consider inputs valid at all times
    assign M_AXIS_tvalid = 1'b1;
    
endmodule