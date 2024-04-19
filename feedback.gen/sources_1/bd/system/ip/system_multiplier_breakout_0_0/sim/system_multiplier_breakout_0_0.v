// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:module_ref:multiplier_breakout:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_multiplier_breakout_0_0 (
  aclk,
  trigger_in,
  trigger_out,
  input_select,
  sel,
  S_AXIS_ADC1_tdata,
  S_AXIS_ADC1_tvalid,
  S_AXIS_ADC2_tdata,
  S_AXIS_ADC2_tvalid,
  S_AXIS_RNG_tdata,
  S_AXIS_RNG_tvalid,
  S_AXIS_CFG_tdata,
  S_AXIS_CFG_tvalid,
  OP1,
  OP2,
  OP3,
  OP4,
  OP5,
  OP6,
  OP7,
  OFFSET
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF S_AXIS_ADC1:S_AXIS_ADC2:S_AXIS_CFG:S_AXIS_RNG, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_pll_0_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
input wire trigger_in;
output wire trigger_out;
input wire input_select;
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
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_RNG TDATA" *)
input wire [15 : 0] S_AXIS_RNG_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_RNG, FREQ_HZ 125000000, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.0, CLK_DOMAIN system_pll_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_RNG TVALID" *)
input wire S_AXIS_RNG_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CFG TDATA" *)
input wire [191 : 0] S_AXIS_CFG_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_CFG, FREQ_HZ 125000000, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, PHASE 0.0, CLK_DOMAIN system_pll_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_CFG TVALID" *)
input wire S_AXIS_CFG_tvalid;
output wire [31 : 0] OP1;
output wire [31 : 0] OP2;
output wire [31 : 0] OP3;
output wire [31 : 0] OP4;
output wire [31 : 0] OP5;
output wire [47 : 0] OP6;
output wire [63 : 0] OP7;
output wire [31 : 0] OFFSET;

  multiplier_breakout #(
    .CFG_WIDTH(192),
    .PARAM_WIDTH(32),
    .PARAM_A_OFFSET(0),
    .PARAM_B_OFFSET(32),
    .PARAM_C_OFFSET(64),
    .PARAM_D_OFFSET(96),
    .PARAM_E_OFFSET(128),
    .PARAM_F_OFFSET(160),
    .ADC_BUS_WIDTH(16),
    .ADC_REAL_DATA_WIDTH(16),
    .DDS_WIDTH(16),
    .RNG_WIDTH(16),
    .OPERAND_WIDTH(32),
    .OPERAND_WIDTH_LONG(64),
    .SEL_WIDTH(4)
  ) inst (
    .aclk(aclk),
    .trigger_in(trigger_in),
    .trigger_out(trigger_out),
    .input_select(input_select),
    .sel(sel),
    .S_AXIS_ADC1_tdata(S_AXIS_ADC1_tdata),
    .S_AXIS_ADC1_tvalid(S_AXIS_ADC1_tvalid),
    .S_AXIS_ADC2_tdata(S_AXIS_ADC2_tdata),
    .S_AXIS_ADC2_tvalid(S_AXIS_ADC2_tvalid),
    .S_AXIS_RNG_tdata(S_AXIS_RNG_tdata),
    .S_AXIS_RNG_tvalid(S_AXIS_RNG_tvalid),
    .S_AXIS_CFG_tdata(S_AXIS_CFG_tdata),
    .S_AXIS_CFG_tvalid(S_AXIS_CFG_tvalid),
    .OP1(OP1),
    .OP2(OP2),
    .OP3(OP3),
    .OP4(OP4),
    .OP5(OP5),
    .OP6(OP6),
    .OP7(OP7),
    .OFFSET(OFFSET)
  );
endmodule
