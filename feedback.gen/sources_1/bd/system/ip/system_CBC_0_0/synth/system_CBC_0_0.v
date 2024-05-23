// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:CBC:1.0
// IP Revision: 1

(* X_CORE_INFO = "CBC,Vivado 2020.2" *)
(* CHECK_LICENSE_TYPE = "system_CBC_0_0,CBC,{}" *)
(* CORE_GENERATION_INFO = "system_CBC_0_0,CBC,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=CBC,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,CFG_WIDTH=448,PARAM_WIDTH=32,RHAT_START_OFFSET=0,RHAT_INTERVAL_OFFSET=32,FREQ_START_OFFSET=64,FREQ_INTERVAL_OFFSET=96,KP_OFFSET=128,KD_OFFSET=160,A_START_OFFSET=192,A_INTERVAL_OFFSET=224,B_START_OFFSET=256,B_INTERVAL_OFFSET=288,C_START_OFFSET=320,C_INTERVAL_OFFSET=352,D_START_OFFSET=384,D_INTERVAL_OFFSET=416,ADC_WIDT\
H=16,DDS_WIDTH=16,RNG_WIDTH=16,OPERAND_WIDTH=32,SEL_WIDTH=4}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_CBC_0_0 (
  aclk,
  trigger_in,
  trigger_out,
  input_select,
  velocity_int_ext,
  displacement_int_ext,
  polynomial_target,
  sel,
  S_AXIS_ADC1_tdata,
  S_AXIS_ADC1_tvalid,
  S_AXIS_ADC2_tdata,
  S_AXIS_ADC2_tvalid,
  S_AXIS_CFG_tdata,
  S_AXIS_CFG_tvalid,
  OP1,
  OP2,
  OP3,
  OP4,
  OP5,
  OP6,
  OP7,
  OP8,
  OP9,
  OP10,
  OFFSET
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF S_AXIS_ADC1:S_AXIS_ADC2:S_AXIS_CFG, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_pll_0_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
input wire trigger_in;
output wire trigger_out;
input wire input_select;
input wire velocity_int_ext;
input wire displacement_int_ext;
input wire polynomial_target;
input wire [3 : 0] sel;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_ADC1 TDATA" *)
input wire [15 : 0] S_AXIS_ADC1_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_ADC1, FREQ_HZ 125000000, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.0, CLK_DOMAIN system_pll_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_ADC1 TVALID" *)
input wire S_AXIS_ADC1_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_ADC2 TDATA" *)
input wire [15 : 0] S_AXIS_ADC2_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_ADC2, FREQ_HZ 125000000, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.0, CLK_DOMAIN system_pll_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_ADC2 TVALID" *)
input wire S_AXIS_ADC2_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CFG TDATA" *)
input wire [447 : 0] S_AXIS_CFG_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_CFG, FREQ_HZ 125000000, TDATA_NUM_BYTES 56, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.0, CLK_DOMAIN system_pll_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CFG TVALID" *)
input wire S_AXIS_CFG_tvalid;
output wire [31 : 0] OP1;
output wire [31 : 0] OP2;
output wire [31 : 0] OP3;
output wire [31 : 0] OP4;
output wire [31 : 0] OP5;
output wire [47 : 0] OP6;
output wire [31 : 0] OP7;
output wire [31 : 0] OP8;
output wire [31 : 0] OP9;
output wire [31 : 0] OP10;
output wire [31 : 0] OFFSET;

  CBC #(
    .CFG_WIDTH(448),
    .PARAM_WIDTH(32),
    .RHAT_START_OFFSET(0),
    .RHAT_INTERVAL_OFFSET(32),
    .FREQ_START_OFFSET(64),
    .FREQ_INTERVAL_OFFSET(96),
    .KP_OFFSET(128),
    .KD_OFFSET(160),
    .A_START_OFFSET(192),
    .A_INTERVAL_OFFSET(224),
    .B_START_OFFSET(256),
    .B_INTERVAL_OFFSET(288),
    .C_START_OFFSET(320),
    .C_INTERVAL_OFFSET(352),
    .D_START_OFFSET(384),
    .D_INTERVAL_OFFSET(416),
    .ADC_WIDTH(16),
    .DDS_WIDTH(16),
    .RNG_WIDTH(16),
    .OPERAND_WIDTH(32),
    .SEL_WIDTH(4)
  ) inst (
    .aclk(aclk),
    .trigger_in(trigger_in),
    .trigger_out(trigger_out),
    .input_select(input_select),
    .velocity_int_ext(velocity_int_ext),
    .displacement_int_ext(displacement_int_ext),
    .polynomial_target(polynomial_target),
    .sel(sel),
    .S_AXIS_ADC1_tdata(S_AXIS_ADC1_tdata),
    .S_AXIS_ADC1_tvalid(S_AXIS_ADC1_tvalid),
    .S_AXIS_ADC2_tdata(S_AXIS_ADC2_tdata),
    .S_AXIS_ADC2_tvalid(S_AXIS_ADC2_tvalid),
    .S_AXIS_CFG_tdata(S_AXIS_CFG_tdata),
    .S_AXIS_CFG_tvalid(S_AXIS_CFG_tvalid),
    .OP1(OP1),
    .OP2(OP2),
    .OP3(OP3),
    .OP4(OP4),
    .OP5(OP5),
    .OP6(OP6),
    .OP7(OP7),
    .OP8(OP8),
    .OP9(OP9),
    .OP10(OP10),
    .OFFSET(OFFSET)
  );
endmodule
