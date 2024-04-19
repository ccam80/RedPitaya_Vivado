

module AXI_mux #
(
    parameter FAST_AXIS_TDATA_WIDTH = 64,
    parameter SLOW_AXIS_TDATA_WIDTH = 160,
    parameter SLOW_SHIFT = 21,
    parameter CHANNEL_WIDTH_OUT = 16,
    parameter CHANNEL_WIDTH_IN_SLOW = 40,
    parameter CHANNEL_WIDTH_IN_FAST = 16,
    parameter FAST_SHIFT = 0,
    parameter S_AXIS_TDATA_WIDTH = 64,
    parameter SEL_WIDTH = 1
)
(
    input [SEL_WIDTH - 1:00]               sel,
    input aclk,
      
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [FAST_AXIS_TDATA_WIDTH-1:0]        S_AXIS_FAST_tdata,
    input                               S_AXIS_FAST_tvalid,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    input [SLOW_AXIS_TDATA_WIDTH-1:0]        S_AXIS_SLOW_tdata,
    input                               S_AXIS_SLOW_tvalid,

    (* X_INTERFACE_PARAMETER = "FREQ_HZ 125000000" *)
    output reg [S_AXIS_TDATA_WIDTH-1:0]  M_AXIS_tdata,
    output reg                         M_AXIS_tvalid 
);
   
    localparam fast=1, slow=0;
    
    always@(posedge aclk)
    
    case(sel)
         fast: begin
                    M_AXIS_tdata <= {S_AXIS_FAST_tdata[4*CHANNEL_WIDTH_IN_FAST - FAST_SHIFT - 1: 4*CHANNEL_WIDTH_IN_FAST - FAST_SHIFT - CHANNEL_WIDTH_OUT],
                                    S_AXIS_FAST_tdata[3*CHANNEL_WIDTH_IN_FAST - FAST_SHIFT - 1: 3*CHANNEL_WIDTH_IN_FAST - FAST_SHIFT - CHANNEL_WIDTH_OUT],
                                    S_AXIS_FAST_tdata[2*CHANNEL_WIDTH_IN_FAST - FAST_SHIFT - 1: 2*CHANNEL_WIDTH_IN_FAST - FAST_SHIFT - CHANNEL_WIDTH_OUT],
                                    S_AXIS_FAST_tdata[1*CHANNEL_WIDTH_IN_FAST - FAST_SHIFT - 1: 1*CHANNEL_WIDTH_IN_FAST - FAST_SHIFT - CHANNEL_WIDTH_OUT]};
                    M_AXIS_tvalid <= S_AXIS_FAST_tvalid;
                end
                
         slow :begin
                    M_AXIS_tdata <= {S_AXIS_SLOW_tdata[4*CHANNEL_WIDTH_IN_SLOW - SLOW_SHIFT - 1: 4*CHANNEL_WIDTH_IN_SLOW - SLOW_SHIFT - CHANNEL_WIDTH_OUT],
                                    S_AXIS_SLOW_tdata[3*CHANNEL_WIDTH_IN_SLOW - SLOW_SHIFT - 1: 3*CHANNEL_WIDTH_IN_SLOW - SLOW_SHIFT - CHANNEL_WIDTH_OUT],
                                    S_AXIS_SLOW_tdata[2*CHANNEL_WIDTH_IN_SLOW - SLOW_SHIFT - 1: 2*CHANNEL_WIDTH_IN_SLOW - SLOW_SHIFT - CHANNEL_WIDTH_OUT],
                                    S_AXIS_SLOW_tdata[1*CHANNEL_WIDTH_IN_SLOW - SLOW_SHIFT - 1: 1*CHANNEL_WIDTH_IN_SLOW - SLOW_SHIFT - CHANNEL_WIDTH_OUT]};
                    M_AXIS_tvalid <= S_AXIS_SLOW_tvalid;
                end
                
                        
        default : begin
                    M_AXIS_tdata <= 32'b0;
                    M_AXIS_tvalid <= 0;
                end            
    endcase

endmodule
   