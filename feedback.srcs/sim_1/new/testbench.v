`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2021 15:32:46
// Design Name: 
// Module Name: testbench
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


module testbench();

    reg clock_p;
    reg clock_n;
    reg [15:0] adc_in;
    reg [15:0] adc_in2;
    wire [13:0] dac_out;
    reg [15:0] sine [0:24];
    reg [7:0] i;
    
    system_wrapper sw (.adc_clk_p_i(clock_p),
                       .adc_clk_n_i(clock_n),
                       .adc_dat_a_i(adc_in),
                       .adc_dat_b_i(adc_in2),
                       .dac_dat_o(dac_out)
                       );
initial
begin
    clock_p = 1'b0;
    clock_n = 1'b1;
    adc_in = 0;
    adc_in2 = 0;
    i=0;
    
    sine[0] = 8192;        sine[1] = 8727;        sine[2] = 9261;        sine[3] = 9789;        sine[4] = 10311;   
    sine[5] = 10824;       sine[6] = 11326;        sine[7] = 11814;        sine[8] = 12287;        sine[9] = 12742;
    sine[10] = 13178;      sine[11] = 13592;      sine[12] = 13983;      sine[13] = 14350;      sine[14] = 14690;
    sine[15] = 15002;     sine[16] = 15285;      sine[17] = 15538;      sine[18] = 15759;      sine[19] = 15948;   
    sine[20] = 16103;     sine[21] = 16225;      sine[22] = 16312;      sine[23] = 16365;      sine[24] = 16383;
end

always 
begin
    clock_p = 1'b1; 
    clock_n = 1'b0;
    #4; // high for 4 * timescale = 4 ns

    clock_p = 1'b0; 
    clock_n = 1'b1;
    #4; // low for 4 * timescale = 4 ns
end

always @(posedge clock_p)
begin
    // values for a and b
    if ( i < 24 )
       begin
       adc_in = sine[i];
       adc_in2 = sine[24 - i];
       end
    else if ( i < 49 )
       begin
       adc_in = sine[48 - i];
       adc_in2 = 16384 - sine[i-24];
       end
    else if  ( i < 74 )
       begin
       adc_in = 16384 - sine[i-49];
       adc_in2 = 16384 - sine[73 - i];
       end
    else 
       begin
       adc_in = 16384 - sine[98 - i];
       adc_in2 = sine[i - 74];
       end
    i = i+ 1;
    if(i == 100)
       i = 0;

    
end
endmodule