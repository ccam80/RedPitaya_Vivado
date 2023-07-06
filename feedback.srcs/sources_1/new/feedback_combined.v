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
    parameter CH_PRODUCT_1_WIDTH = 64,
    parameter CH_PRODUCT_2_WIDTH = 43,

    parameter SHARED_PRODUCT_1_WIDTH = 56,
    parameter SHARED_PRODUCT_2_WIDTH = 56,
    parameter SHARED_PRODUCT_3_WIDTH = 56,
    parameter SHARED_PRODUCT_4_WIDTH = 43,
    parameter SHARED_PRODUCT_5_WIDTH = 56,
    
    parameter OFFSET_WIDTH = 32,
    
    parameter CBC_PRODUCT_A_WIDTH = 48,
    parameter CBC_PRODUCT_B_WIDTH = 48,

    
    parameter AXIS_TDATA_WIDTH = 32,
    parameter OUTPUT_CHANNEL_WIDTH = 16,
    parameter SELECT_WIDTH = 4
)
(
    input  wire                             aclk,
    input  wire                             trig_in_channels,
    input  wire                             trig_in_CBC,
    input  wire                             continuous_output_in,
    input [SELECT_WIDTH - 1:0]              CH1_sel,
    input [SELECT_WIDTH - 1:0]              CH2_sel,

    
    input [CH_PRODUCT_1_WIDTH-1:0]          CH1_product_1,
    input [CH_PRODUCT_2_WIDTH-1:0]          CH1_product_2,
    
    input [CH_PRODUCT_1_WIDTH-1:0]          CH2_product_1,

    input [OFFSET_WIDTH-1:0]                CH2_offset,
    input [OFFSET_WIDTH-1:0]                CBC_offset,
    input [OFFSET_WIDTH-1:0]                CH1_offset,

    
    input [SHARED_PRODUCT_1_WIDTH-1:0]      Shared_product_1,
    input [SHARED_PRODUCT_2_WIDTH-1:0]      Shared_product_2,
    input [SHARED_PRODUCT_3_WIDTH-1:0]      Shared_product_3,
    input [SHARED_PRODUCT_4_WIDTH-1:0]      Shared_product_4,
    input [SHARED_PRODUCT_5_WIDTH-1:0]      Shared_product_5,
    
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    output reg [AXIS_TDATA_WIDTH-1:0]       M_AXIS_tdata,
    output wire                             M_AXIS_tvalid,
    output reg                              trig_out
);

////////////////////////
////Local Parameter////
///////////////////////

    localparam RESULT_WIDTH = 64;
    
    // Give products sensible names while allowing one customisable width parameter per multiplier
    localparam CH_PRODUCT_A_WIDTH = SHARED_PRODUCT_1_WIDTH;
    localparam CH_PRODUCT_B_WIDTH = SHARED_PRODUCT_2_WIDTH;
    localparam CH_PRODUCT_C_WIDTH = CH_PRODUCT_1_WIDTH;
    localparam CH_PRODUCT_D_WIDTH = CH_PRODUCT_2_WIDTH;
    
    
    localparam CBC_PRODUCT_C_WIDTH = SHARED_PRODUCT_4_WIDTH;
    localparam CBC_PRODUCT_D_WIDTH = SHARED_PRODUCT_5_WIDTH;
    localparam CBC_PRODUCT_E_WIDTH = SHARED_PRODUCT_3_WIDTH;

////////////////////    
////Declarations////
////////////////////

    // input registers

    
    reg [CH_PRODUCT_A_WIDTH-1:0]            CH1_PRODUCT_A_in;
    reg [CH_PRODUCT_B_WIDTH-1:0]            CH1_PRODUCT_B_in;
    reg [CH_PRODUCT_C_WIDTH-1:0]            CH1_PRODUCT_C_in;
    reg [CH_PRODUCT_D_WIDTH-1:0]            CH1_PRODUCT_D_in;
    reg [OFFSET_WIDTH-1:0]                  CH1_OFFSET_in;
    
    reg [CH_PRODUCT_A_WIDTH-1:0]            CH2_PRODUCT_A_in;
    reg [CH_PRODUCT_B_WIDTH-1:0]            CH2_PRODUCT_B_in;
    reg [CH_PRODUCT_C_WIDTH-1:0]            CH2_PRODUCT_C_in;
    reg [CH_PRODUCT_D_WIDTH-1:0]            CH2_PRODUCT_D_in;
    reg [OFFSET_WIDTH-1:0]                  CH2_OFFSET_in;
    
    reg [CBC_PRODUCT_A_WIDTH-1:0]           CBC_PRODUCT_A_in;
    reg [CBC_PRODUCT_B_WIDTH-1:0]           CBC_PRODUCT_B_in;
    reg [CBC_PRODUCT_C_WIDTH-1:0]           CBC_PRODUCT_C_in;
    reg [CBC_PRODUCT_D_WIDTH-1:0]           CBC_PRODUCT_D_in;
    reg [CBC_PRODUCT_E_WIDTH-1:0]           CBC_PRODUCT_E_in;
    reg [OFFSET_WIDTH-1:0]                  CBC_OFFSET_in;
       
    // state machine variables
    reg                                     trigger;                       // 0 - trig output off, 1 - trig output on   
    reg [SELECT_WIDTH-1:0]                  CH1_state, CH2_state;  
    reg                                     CONTINUOUS_OUTPUT;
       
    localparam fixed = 0, sweep = 1, lin = 2, parametric = 3,  A_x_plus_B = 4, random = 5, polynomial = 6, CBC=7, OFF=15; 

    // Math variables
    reg signed [RESULT_WIDTH - 1:0]         CH1_result, CH2_result, CBC_result;


//////////////////
////Data input////
//////////////////  

    // Bring in, break up, and store input data in registers as first pipeline stage.
    // Muxing due to sharing of multipliers between CBC and CH modules
    // Numbering of product inputs is now a little arbitrary due to shared vs solo multipliers
    // Order of registers A-E reflects output order of multiplier breakout modules
    // All inputs stored, non-blocking, run in any state/
    always @(posedge aclk)
    begin
        CH1_state <= CH1_sel;
        CH2_state <= CH2_sel;
        trigger <= (trig_in_channels | trig_in_CBC);
        
        CONTINUOUS_OUTPUT = continuous_output_in;
        
        //Premultiplied inputs
        case(CH1_state)
            CBC:
                begin
                CBC_PRODUCT_A_in <= Shared_product_1[CBC_PRODUCT_A_WIDTH - 1:0];
                CBC_PRODUCT_B_in <= Shared_product_2[CBC_PRODUCT_B_WIDTH - 1:0];
                CBC_PRODUCT_C_in <= Shared_product_4;
                CBC_PRODUCT_D_in <= Shared_product_5;
                CBC_PRODUCT_E_in <= Shared_product_3;
                CBC_OFFSET_in <= CBC_offset;
                end
            default:
                begin            
                CH1_PRODUCT_A_in <= Shared_product_1;
                CH1_PRODUCT_B_in <= Shared_product_2;
                CH1_PRODUCT_C_in <= CH1_product_1;
                CH1_PRODUCT_D_in <= CH1_product_2;
                CH1_OFFSET_in <= CH1_offset;
                
                CH2_PRODUCT_A_in <= Shared_product_5;
                CH2_PRODUCT_B_in <= Shared_product_3;
                CH2_PRODUCT_C_in <= Shared_product_1;
                CH2_PRODUCT_D_in <= CH2_product_1;
                CH2_OFFSET_in <= CH2_offset;
                end
                
        endcase            

    end

//////////// 
////Math////
////////////    

    //Sum multiplier outputs according to state
    always @(posedge aclk) 
    begin
        case(CH1_state)
            A_x_plus_B: CH1_result <= {{18{CH1_PRODUCT_A_in[CH_PRODUCT_A_WIDTH - 1]}}, CH1_PRODUCT_A_in[CH_PRODUCT_A_WIDTH - 2:9]} + CH1_OFFSET_in;
            CBC: 
            begin
                CH1_result <= {{18{CBC_PRODUCT_A_in[CBC_PRODUCT_A_WIDTH - 1]}}, CBC_PRODUCT_A_in[CBC_PRODUCT_A_WIDTH - 2:9]} << 16 +
                               {{18{CBC_PRODUCT_B_in[CBC_PRODUCT_B_WIDTH - 1]}}, CBC_PRODUCT_B_in[CBC_PRODUCT_B_WIDTH - 2:9]} << 16;
                
                CH2_result <= CBC_PRODUCT_C_in + CBC_PRODUCT_D_in + CBC_PRODUCT_E_in + CBC_OFFSET_in;
            end
            default: CH1_result <= CH1_PRODUCT_A_in + CH1_PRODUCT_B_in + CH1_PRODUCT_C_in + CH1_PRODUCT_D_in + CH1_OFFSET_in;
        endcase

        if (CH1_state != CBC)        
        begin
            case(CH2_state)
    
                A_x_plus_B: CH2_result <= {{18{CH2_PRODUCT_A_in[CH_PRODUCT_A_WIDTH - 1]}}, CH2_PRODUCT_A_in[CH_PRODUCT_A_WIDTH - 2:9]} + CH2_OFFSET_in;
                default: CH2_result <= CH2_PRODUCT_A_in + CH2_PRODUCT_B_in + CH2_PRODUCT_C_in + CH2_PRODUCT_D_in + CH2_OFFSET_in;
            endcase
        end
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