//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Fri Apr 19 23:29:37 2024
//Host        : acoustics-VirtualBox running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target system.bd
//Design      : system
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module CBC_config_imp_3DYLP
   (Din1,
    Dout11,
    Dout12,
    Dout13,
    Dout14,
    M_AXIS_tdata,
    M_AXIS_tvalid,
    aclk,
    cfg_data);
  input [511:0]Din1;
  output [0:0]Dout11;
  output [0:0]Dout12;
  output [0:0]Dout13;
  output [0:0]Dout14;
  output [447:0]M_AXIS_tdata;
  output M_AXIS_tvalid;
  input aclk;
  input [447:0]cfg_data;

  wire [447:0]Conn1_TDATA;
  wire Conn1_TVALID;
  wire [511:0]Din1_1;
  wire [0:0]Displacement_int_ext_Dout;
  wire [0:0]Polynomial_target_Dout;
  wire [0:0]Velocity_int_ext_Dout;
  wire aclk_1;
  wire [447:0]cfg_data_1;
  wire [0:0]input_order_Dout;

  assign Din1_1 = Din1[511:0];
  assign Dout11[0] = input_order_Dout;
  assign Dout12[0] = Velocity_int_ext_Dout;
  assign Dout13[0] = Polynomial_target_Dout;
  assign Dout14[0] = Displacement_int_ext_Dout;
  assign M_AXIS_tdata[447:0] = Conn1_TDATA;
  assign M_AXIS_tvalid = Conn1_TVALID;
  assign aclk_1 = aclk;
  assign cfg_data_1 = cfg_data[447:0];
  system_axis_constant_0_0 ALL_Feedback_Params
       (.aclk(aclk_1),
        .cfg_data(cfg_data_1),
        .m_axis_tdata(Conn1_TDATA),
        .m_axis_tvalid(Conn1_TVALID));
  system_input_select_2_0 Displacement_int_ext
       (.Din(Din1_1),
        .Dout(Displacement_int_ext_Dout));
  system_input_select_2_1 Polynomial_target
       (.Din(Din1_1),
        .Dout(Polynomial_target_Dout));
  system_Feedback_State_1_0 Velocity_int_ext
       (.Din(Din1_1),
        .Dout(Velocity_int_ext_Dout));
  system_input_select_3_0 input_order
       (.Din(Din1_1),
        .Dout(input_order_Dout));
endmodule

module CH1_Config_imp_WASEI3
   (Din1,
    Dout,
    Dout7,
    M_AXIS3_tdata,
    M_AXIS3_tvalid,
    aclk,
    cfg_data);
  input [511:0]Din1;
  output [3:0]Dout;
  output [0:0]Dout7;
  output [191:0]M_AXIS3_tdata;
  output M_AXIS3_tvalid;
  input aclk;
  input [191:0]cfg_data;

  wire [191:0]Conn1_TDATA;
  wire Conn1_TVALID;
  wire [511:0]Din1_1;
  wire [3:0]Feedback_State_Dout;
  wire aclk_1;
  wire [191:0]cfg_data_1;
  wire [0:0]input_select_Dout;

  assign Din1_1 = Din1[511:0];
  assign Dout[3:0] = Feedback_State_Dout;
  assign Dout7[0] = input_select_Dout;
  assign M_AXIS3_tdata[191:0] = Conn1_TDATA;
  assign M_AXIS3_tvalid = Conn1_TVALID;
  assign aclk_1 = aclk;
  assign cfg_data_1 = cfg_data[191:0];
  system_ALL_Feedback_Params_0 CH1_Feedback_Params_1
       (.aclk(aclk_1),
        .cfg_data(cfg_data_1),
        .m_axis_tdata(Conn1_TDATA),
        .m_axis_tvalid(Conn1_TVALID));
  system_Feedback_State_0 Feedback_State
       (.Din(Din1_1),
        .Dout(Feedback_State_Dout));
  system_Feedback_State_1 input_select
       (.Din(Din1_1),
        .Dout(input_select_Dout));
endmodule

module CH2_config_imp_4I2YBS
   (Din1,
    Dout10,
    Dout9,
    M_AXIS2_tdata,
    M_AXIS2_tvalid,
    aclk,
    cfg_data);
  input [511:0]Din1;
  output [0:0]Dout10;
  output [3:0]Dout9;
  output [191:0]M_AXIS2_tdata;
  output M_AXIS2_tvalid;
  input aclk;
  input [191:0]cfg_data;

  wire [191:0]Conn1_TDATA;
  wire Conn1_TVALID;
  wire [511:0]Din1_1;
  wire [3:0]Feedback_State_1_Dout;
  wire aclk_1;
  wire [191:0]cfg_data_1;
  wire [0:0]input_select_2_Dout;

  assign Din1_1 = Din1[511:0];
  assign Dout10[0] = input_select_2_Dout;
  assign Dout9[3:0] = Feedback_State_1_Dout;
  assign M_AXIS2_tdata[191:0] = Conn1_TDATA;
  assign M_AXIS2_tvalid = Conn1_TVALID;
  assign aclk_1 = aclk;
  assign cfg_data_1 = cfg_data[191:0];
  system_ALL_Feedback_Params_1 CH2_Feedback_Params_2
       (.aclk(aclk_1),
        .cfg_data(cfg_data_1),
        .m_axis_tdata(Conn1_TDATA),
        .m_axis_tvalid(Conn1_TVALID));
  system_Feedback_State_3 Feedback_State_1
       (.Din(Din1_1),
        .Dout(Feedback_State_1_Dout));
  system_input_select_0 input_select_2
       (.Din(Din1_1),
        .Dout(input_select_2_Dout));
endmodule

module Core_imp_1JF9L0S
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wvalid,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ARESETN,
    S_AXI_ACP_awaddr,
    S_AXI_ACP_awburst,
    S_AXI_ACP_awcache,
    S_AXI_ACP_awid,
    S_AXI_ACP_awlen,
    S_AXI_ACP_awready,
    S_AXI_ACP_awsize,
    S_AXI_ACP_awvalid,
    S_AXI_ACP_bready,
    S_AXI_ACP_bvalid,
    S_AXI_ACP_wdata,
    S_AXI_ACP_wid,
    S_AXI_ACP_wlast,
    S_AXI_ACP_wready,
    S_AXI_ACP_wstrb,
    S_AXI_ACP_wvalid,
    adc_clk_n_i,
    adc_clk_p_i,
    clk_out1,
    clk_out2,
    clk_out3,
    ext_reset_in,
    locked);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output M00_AXI_wvalid;
  output [31:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  output [0:0]S00_ARESETN;
  input [31:0]S_AXI_ACP_awaddr;
  input [1:0]S_AXI_ACP_awburst;
  input [3:0]S_AXI_ACP_awcache;
  input [2:0]S_AXI_ACP_awid;
  input [3:0]S_AXI_ACP_awlen;
  output S_AXI_ACP_awready;
  input [2:0]S_AXI_ACP_awsize;
  input S_AXI_ACP_awvalid;
  input S_AXI_ACP_bready;
  output S_AXI_ACP_bvalid;
  input [63:0]S_AXI_ACP_wdata;
  input [2:0]S_AXI_ACP_wid;
  input S_AXI_ACP_wlast;
  output S_AXI_ACP_wready;
  input [7:0]S_AXI_ACP_wstrb;
  input S_AXI_ACP_wvalid;
  input adc_clk_n_i;
  input adc_clk_p_i;
  output clk_out1;
  output clk_out2;
  output clk_out3;
  input [31:0]ext_reset_in;
  output locked;

  wire adc_clk_n_i_1;
  wire adc_clk_p_i_1;
  wire [31:0]const_0_dout;
  wire pll_0_clk_out1;
  wire pll_0_clk_out2;
  wire pll_0_clk_out3;
  wire pll_0_locked;
  wire [14:0]ps_0_DDR_ADDR;
  wire [2:0]ps_0_DDR_BA;
  wire ps_0_DDR_CAS_N;
  wire ps_0_DDR_CKE;
  wire ps_0_DDR_CK_N;
  wire ps_0_DDR_CK_P;
  wire ps_0_DDR_CS_N;
  wire [3:0]ps_0_DDR_DM;
  wire [31:0]ps_0_DDR_DQ;
  wire [3:0]ps_0_DDR_DQS_N;
  wire [3:0]ps_0_DDR_DQS_P;
  wire ps_0_DDR_ODT;
  wire ps_0_DDR_RAS_N;
  wire ps_0_DDR_RESET_N;
  wire ps_0_DDR_WE_N;
  wire ps_0_FIXED_IO_DDR_VRN;
  wire ps_0_FIXED_IO_DDR_VRP;
  wire [53:0]ps_0_FIXED_IO_MIO;
  wire ps_0_FIXED_IO_PS_CLK;
  wire ps_0_FIXED_IO_PS_PORB;
  wire ps_0_FIXED_IO_PS_SRSTB;
  wire [31:0]ps_0_M_AXI_GP0_ARADDR;
  wire [1:0]ps_0_M_AXI_GP0_ARBURST;
  wire [3:0]ps_0_M_AXI_GP0_ARCACHE;
  wire [11:0]ps_0_M_AXI_GP0_ARID;
  wire [3:0]ps_0_M_AXI_GP0_ARLEN;
  wire [1:0]ps_0_M_AXI_GP0_ARLOCK;
  wire [2:0]ps_0_M_AXI_GP0_ARPROT;
  wire [3:0]ps_0_M_AXI_GP0_ARQOS;
  wire ps_0_M_AXI_GP0_ARREADY;
  wire [2:0]ps_0_M_AXI_GP0_ARSIZE;
  wire ps_0_M_AXI_GP0_ARVALID;
  wire [31:0]ps_0_M_AXI_GP0_AWADDR;
  wire [1:0]ps_0_M_AXI_GP0_AWBURST;
  wire [3:0]ps_0_M_AXI_GP0_AWCACHE;
  wire [11:0]ps_0_M_AXI_GP0_AWID;
  wire [3:0]ps_0_M_AXI_GP0_AWLEN;
  wire [1:0]ps_0_M_AXI_GP0_AWLOCK;
  wire [2:0]ps_0_M_AXI_GP0_AWPROT;
  wire [3:0]ps_0_M_AXI_GP0_AWQOS;
  wire ps_0_M_AXI_GP0_AWREADY;
  wire [2:0]ps_0_M_AXI_GP0_AWSIZE;
  wire ps_0_M_AXI_GP0_AWVALID;
  wire [11:0]ps_0_M_AXI_GP0_BID;
  wire ps_0_M_AXI_GP0_BREADY;
  wire [1:0]ps_0_M_AXI_GP0_BRESP;
  wire ps_0_M_AXI_GP0_BVALID;
  wire [31:0]ps_0_M_AXI_GP0_RDATA;
  wire [11:0]ps_0_M_AXI_GP0_RID;
  wire ps_0_M_AXI_GP0_RLAST;
  wire ps_0_M_AXI_GP0_RREADY;
  wire [1:0]ps_0_M_AXI_GP0_RRESP;
  wire ps_0_M_AXI_GP0_RVALID;
  wire [31:0]ps_0_M_AXI_GP0_WDATA;
  wire [11:0]ps_0_M_AXI_GP0_WID;
  wire ps_0_M_AXI_GP0_WLAST;
  wire ps_0_M_AXI_GP0_WREADY;
  wire [3:0]ps_0_M_AXI_GP0_WSTRB;
  wire ps_0_M_AXI_GP0_WVALID;
  wire [31:0]ps_0_axi_periph_M00_AXI_ARADDR;
  wire ps_0_axi_periph_M00_AXI_ARREADY;
  wire ps_0_axi_periph_M00_AXI_ARVALID;
  wire [31:0]ps_0_axi_periph_M00_AXI_AWADDR;
  wire ps_0_axi_periph_M00_AXI_AWREADY;
  wire ps_0_axi_periph_M00_AXI_AWVALID;
  wire ps_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]ps_0_axi_periph_M00_AXI_BRESP;
  wire ps_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]ps_0_axi_periph_M00_AXI_RDATA;
  wire ps_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]ps_0_axi_periph_M00_AXI_RRESP;
  wire ps_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]ps_0_axi_periph_M00_AXI_WDATA;
  wire ps_0_axi_periph_M00_AXI_WREADY;
  wire ps_0_axi_periph_M00_AXI_WVALID;
  wire [31:0]ps_0_axi_periph_M01_AXI_ARADDR;
  wire ps_0_axi_periph_M01_AXI_ARREADY;
  wire ps_0_axi_periph_M01_AXI_ARVALID;
  wire [31:0]ps_0_axi_periph_M01_AXI_AWADDR;
  wire ps_0_axi_periph_M01_AXI_AWREADY;
  wire ps_0_axi_periph_M01_AXI_AWVALID;
  wire ps_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]ps_0_axi_periph_M01_AXI_BRESP;
  wire ps_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]ps_0_axi_periph_M01_AXI_RDATA;
  wire ps_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]ps_0_axi_periph_M01_AXI_RRESP;
  wire ps_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]ps_0_axi_periph_M01_AXI_WDATA;
  wire ps_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]ps_0_axi_periph_M01_AXI_WSTRB;
  wire ps_0_axi_periph_M01_AXI_WVALID;
  wire [0:0]rst_0_peripheral_aresetn;
  wire [31:0]writer_0_M_AXI_AWADDR;
  wire [1:0]writer_0_M_AXI_AWBURST;
  wire [3:0]writer_0_M_AXI_AWCACHE;
  wire [2:0]writer_0_M_AXI_AWID;
  wire [3:0]writer_0_M_AXI_AWLEN;
  wire writer_0_M_AXI_AWREADY;
  wire [2:0]writer_0_M_AXI_AWSIZE;
  wire writer_0_M_AXI_AWVALID;
  wire writer_0_M_AXI_BREADY;
  wire writer_0_M_AXI_BVALID;
  wire [63:0]writer_0_M_AXI_WDATA;
  wire [2:0]writer_0_M_AXI_WID;
  wire writer_0_M_AXI_WLAST;
  wire writer_0_M_AXI_WREADY;
  wire [7:0]writer_0_M_AXI_WSTRB;
  wire writer_0_M_AXI_WVALID;

  assign M00_AXI_araddr[31:0] = ps_0_axi_periph_M00_AXI_ARADDR;
  assign M00_AXI_arvalid = ps_0_axi_periph_M00_AXI_ARVALID;
  assign M00_AXI_awaddr[31:0] = ps_0_axi_periph_M00_AXI_AWADDR;
  assign M00_AXI_awvalid = ps_0_axi_periph_M00_AXI_AWVALID;
  assign M00_AXI_bready = ps_0_axi_periph_M00_AXI_BREADY;
  assign M00_AXI_rready = ps_0_axi_periph_M00_AXI_RREADY;
  assign M00_AXI_wdata[31:0] = ps_0_axi_periph_M00_AXI_WDATA;
  assign M00_AXI_wvalid = ps_0_axi_periph_M00_AXI_WVALID;
  assign M01_AXI_araddr[31:0] = ps_0_axi_periph_M01_AXI_ARADDR;
  assign M01_AXI_arvalid = ps_0_axi_periph_M01_AXI_ARVALID;
  assign M01_AXI_awaddr[31:0] = ps_0_axi_periph_M01_AXI_AWADDR;
  assign M01_AXI_awvalid = ps_0_axi_periph_M01_AXI_AWVALID;
  assign M01_AXI_bready = ps_0_axi_periph_M01_AXI_BREADY;
  assign M01_AXI_rready = ps_0_axi_periph_M01_AXI_RREADY;
  assign M01_AXI_wdata[31:0] = ps_0_axi_periph_M01_AXI_WDATA;
  assign M01_AXI_wstrb[3:0] = ps_0_axi_periph_M01_AXI_WSTRB;
  assign M01_AXI_wvalid = ps_0_axi_periph_M01_AXI_WVALID;
  assign S00_ARESETN[0] = rst_0_peripheral_aresetn;
  assign S_AXI_ACP_awready = writer_0_M_AXI_AWREADY;
  assign S_AXI_ACP_bvalid = writer_0_M_AXI_BVALID;
  assign S_AXI_ACP_wready = writer_0_M_AXI_WREADY;
  assign adc_clk_n_i_1 = adc_clk_n_i;
  assign adc_clk_p_i_1 = adc_clk_p_i;
  assign clk_out1 = pll_0_clk_out1;
  assign clk_out2 = pll_0_clk_out2;
  assign clk_out3 = pll_0_clk_out3;
  assign const_0_dout = ext_reset_in[31:0];
  assign locked = pll_0_locked;
  assign ps_0_axi_periph_M00_AXI_ARREADY = M00_AXI_arready;
  assign ps_0_axi_periph_M00_AXI_AWREADY = M00_AXI_awready;
  assign ps_0_axi_periph_M00_AXI_BRESP = M00_AXI_bresp[1:0];
  assign ps_0_axi_periph_M00_AXI_BVALID = M00_AXI_bvalid;
  assign ps_0_axi_periph_M00_AXI_RDATA = M00_AXI_rdata[31:0];
  assign ps_0_axi_periph_M00_AXI_RRESP = M00_AXI_rresp[1:0];
  assign ps_0_axi_periph_M00_AXI_RVALID = M00_AXI_rvalid;
  assign ps_0_axi_periph_M00_AXI_WREADY = M00_AXI_wready;
  assign ps_0_axi_periph_M01_AXI_ARREADY = M01_AXI_arready;
  assign ps_0_axi_periph_M01_AXI_AWREADY = M01_AXI_awready;
  assign ps_0_axi_periph_M01_AXI_BRESP = M01_AXI_bresp[1:0];
  assign ps_0_axi_periph_M01_AXI_BVALID = M01_AXI_bvalid;
  assign ps_0_axi_periph_M01_AXI_RDATA = M01_AXI_rdata[31:0];
  assign ps_0_axi_periph_M01_AXI_RRESP = M01_AXI_rresp[1:0];
  assign ps_0_axi_periph_M01_AXI_RVALID = M01_AXI_rvalid;
  assign ps_0_axi_periph_M01_AXI_WREADY = M01_AXI_wready;
  assign writer_0_M_AXI_AWADDR = S_AXI_ACP_awaddr[31:0];
  assign writer_0_M_AXI_AWBURST = S_AXI_ACP_awburst[1:0];
  assign writer_0_M_AXI_AWCACHE = S_AXI_ACP_awcache[3:0];
  assign writer_0_M_AXI_AWID = S_AXI_ACP_awid[2:0];
  assign writer_0_M_AXI_AWLEN = S_AXI_ACP_awlen[3:0];
  assign writer_0_M_AXI_AWSIZE = S_AXI_ACP_awsize[2:0];
  assign writer_0_M_AXI_AWVALID = S_AXI_ACP_awvalid;
  assign writer_0_M_AXI_BREADY = S_AXI_ACP_bready;
  assign writer_0_M_AXI_WDATA = S_AXI_ACP_wdata[63:0];
  assign writer_0_M_AXI_WID = S_AXI_ACP_wid[2:0];
  assign writer_0_M_AXI_WLAST = S_AXI_ACP_wlast;
  assign writer_0_M_AXI_WSTRB = S_AXI_ACP_wstrb[7:0];
  assign writer_0_M_AXI_WVALID = S_AXI_ACP_wvalid;
  system_pll_0_0 pll_0
       (.clk_in1_n(adc_clk_n_i_1),
        .clk_in1_p(adc_clk_p_i_1),
        .clk_out1(pll_0_clk_out1),
        .clk_out2(pll_0_clk_out2),
        .clk_out3(pll_0_clk_out3),
        .locked(pll_0_locked));
  system_ps_0_0 ps_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .GPIO_I({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(pll_0_clk_out1),
        .M_AXI_GP0_ARADDR(ps_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(ps_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(ps_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(ps_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(ps_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(ps_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(ps_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(ps_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(ps_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(ps_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(ps_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(ps_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(ps_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(ps_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(ps_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(ps_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(ps_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(ps_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(ps_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(ps_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(ps_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(ps_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(ps_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(ps_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(ps_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(ps_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(ps_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(ps_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(ps_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(ps_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(ps_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(ps_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(ps_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(ps_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(ps_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(ps_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(ps_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(ps_0_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .SPI0_MISO_I(1'b0),
        .SPI0_MOSI_I(1'b0),
        .SPI0_SCLK_I(1'b0),
        .SPI0_SS_I(1'b0),
        .S_AXI_ACP_ACLK(pll_0_clk_out1),
        .S_AXI_ACP_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_ACP_ARBURST({1'b0,1'b1}),
        .S_AXI_ACP_ARCACHE({1'b0,1'b0,1'b1,1'b1}),
        .S_AXI_ACP_ARID({1'b0,1'b0,1'b0}),
        .S_AXI_ACP_ARLEN({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_ACP_ARLOCK({1'b0,1'b0}),
        .S_AXI_ACP_ARPROT({1'b0,1'b0,1'b0}),
        .S_AXI_ACP_ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_ACP_ARSIZE({1'b0,1'b1,1'b1}),
        .S_AXI_ACP_ARUSER({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_ACP_ARVALID(1'b0),
        .S_AXI_ACP_AWADDR(writer_0_M_AXI_AWADDR),
        .S_AXI_ACP_AWBURST(writer_0_M_AXI_AWBURST),
        .S_AXI_ACP_AWCACHE(writer_0_M_AXI_AWCACHE),
        .S_AXI_ACP_AWID(writer_0_M_AXI_AWID),
        .S_AXI_ACP_AWLEN(writer_0_M_AXI_AWLEN),
        .S_AXI_ACP_AWLOCK({1'b0,1'b0}),
        .S_AXI_ACP_AWPROT({1'b0,1'b0,1'b0}),
        .S_AXI_ACP_AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_ACP_AWREADY(writer_0_M_AXI_AWREADY),
        .S_AXI_ACP_AWSIZE(writer_0_M_AXI_AWSIZE),
        .S_AXI_ACP_AWUSER({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_ACP_AWVALID(writer_0_M_AXI_AWVALID),
        .S_AXI_ACP_BREADY(writer_0_M_AXI_BREADY),
        .S_AXI_ACP_BVALID(writer_0_M_AXI_BVALID),
        .S_AXI_ACP_RREADY(1'b0),
        .S_AXI_ACP_WDATA(writer_0_M_AXI_WDATA),
        .S_AXI_ACP_WID(writer_0_M_AXI_WID),
        .S_AXI_ACP_WLAST(writer_0_M_AXI_WLAST),
        .S_AXI_ACP_WREADY(writer_0_M_AXI_WREADY),
        .S_AXI_ACP_WSTRB(writer_0_M_AXI_WSTRB),
        .S_AXI_ACP_WVALID(writer_0_M_AXI_WVALID),
        .USB0_VBUS_PWRFAULT(1'b0));
  system_ps_0_axi_periph_0 ps_0_axi_periph
       (.ACLK(pll_0_clk_out1),
        .ARESETN(rst_0_peripheral_aresetn),
        .M00_ACLK(pll_0_clk_out1),
        .M00_ARESETN(rst_0_peripheral_aresetn),
        .M00_AXI_araddr(ps_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(ps_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(ps_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ps_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(ps_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(ps_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(ps_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(ps_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(ps_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(ps_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(ps_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(ps_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(ps_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(ps_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(ps_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wvalid(ps_0_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(pll_0_clk_out1),
        .M01_ARESETN(rst_0_peripheral_aresetn),
        .M01_AXI_araddr(ps_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arready(ps_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(ps_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(ps_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awready(ps_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(ps_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(ps_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(ps_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(ps_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(ps_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(ps_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(ps_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(ps_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(ps_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(ps_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(ps_0_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(ps_0_axi_periph_M01_AXI_WVALID),
        .S00_ACLK(pll_0_clk_out1),
        .S00_ARESETN(rst_0_peripheral_aresetn),
        .S00_AXI_araddr(ps_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(ps_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(ps_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(ps_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(ps_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(ps_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(ps_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(ps_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(ps_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(ps_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(ps_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(ps_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(ps_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(ps_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(ps_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(ps_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(ps_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(ps_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(ps_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(ps_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(ps_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(ps_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(ps_0_M_AXI_GP0_BID),
        .S00_AXI_bready(ps_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(ps_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(ps_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(ps_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(ps_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(ps_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(ps_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(ps_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(ps_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(ps_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(ps_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(ps_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(ps_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(ps_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(ps_0_M_AXI_GP0_WVALID));
  system_rst_0_0 rst_0
       (.aux_reset_in(1'b1),
        .dcm_locked(pll_0_locked),
        .ext_reset_in(const_0_dout[0]),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_0_peripheral_aresetn),
        .slowest_sync_clk(pll_0_clk_out1));
endmodule

module Memory_IO_imp_19T7DMV
   (M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bvalid,
    M_AXI_wdata,
    M_AXI_wid,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_AXI1_araddr,
    S_AXI1_arready,
    S_AXI1_arvalid,
    S_AXI1_awaddr,
    S_AXI1_awready,
    S_AXI1_awvalid,
    S_AXI1_bready,
    S_AXI1_bresp,
    S_AXI1_bvalid,
    S_AXI1_rdata,
    S_AXI1_rready,
    S_AXI1_rresp,
    S_AXI1_rvalid,
    S_AXI1_wdata,
    S_AXI1_wready,
    S_AXI1_wvalid,
    S_AXIS_tdata,
    S_AXIS_tvalid,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    aclk,
    aresetn,
    aresetn1,
    cfg_data,
    cfg_data1,
    sts_data,
    sts_data1);
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [2:0]M_AXI_awid;
  output [3:0]M_AXI_awlen;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input M_AXI_bvalid;
  output [63:0]M_AXI_wdata;
  output [2:0]M_AXI_wid;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input [31:0]S_AXI1_araddr;
  output S_AXI1_arready;
  input S_AXI1_arvalid;
  input [31:0]S_AXI1_awaddr;
  output S_AXI1_awready;
  input S_AXI1_awvalid;
  input S_AXI1_bready;
  output [1:0]S_AXI1_bresp;
  output S_AXI1_bvalid;
  output [31:0]S_AXI1_rdata;
  input S_AXI1_rready;
  output [1:0]S_AXI1_rresp;
  output S_AXI1_rvalid;
  input [31:0]S_AXI1_wdata;
  output S_AXI1_wready;
  input S_AXI1_wvalid;
  input [63:0]S_AXIS_tdata;
  input S_AXIS_tvalid;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input aclk;
  input aresetn;
  input aresetn1;
  output [511:0]cfg_data;
  input [31:0]cfg_data1;
  input [127:0]sts_data;
  output [17:0]sts_data1;

  wire [31:0]S_AXI1_1_ARADDR;
  wire S_AXI1_1_ARREADY;
  wire S_AXI1_1_ARVALID;
  wire [31:0]S_AXI1_1_AWADDR;
  wire S_AXI1_1_AWREADY;
  wire S_AXI1_1_AWVALID;
  wire S_AXI1_1_BREADY;
  wire [1:0]S_AXI1_1_BRESP;
  wire S_AXI1_1_BVALID;
  wire [31:0]S_AXI1_1_RDATA;
  wire S_AXI1_1_RREADY;
  wire [1:0]S_AXI1_1_RRESP;
  wire S_AXI1_1_RVALID;
  wire [31:0]S_AXI1_1_WDATA;
  wire S_AXI1_1_WREADY;
  wire S_AXI1_1_WVALID;
  wire [63:0]S_AXIS_1_TDATA;
  wire S_AXIS_1_TVALID;
  wire [31:0]S_AXI_1_ARADDR;
  wire S_AXI_1_ARREADY;
  wire S_AXI_1_ARVALID;
  wire [31:0]S_AXI_1_AWADDR;
  wire S_AXI_1_AWREADY;
  wire S_AXI_1_AWVALID;
  wire S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [31:0]S_AXI_1_RDATA;
  wire S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [31:0]S_AXI_1_WDATA;
  wire S_AXI_1_WREADY;
  wire [3:0]S_AXI_1_WSTRB;
  wire S_AXI_1_WVALID;
  wire aresetn1_1;
  wire [511:0]axi_cfg_register_0_cfg_data;
  wire [31:0]axis_ram_writer_1_m_axi_AWADDR;
  wire [1:0]axis_ram_writer_1_m_axi_AWBURST;
  wire [3:0]axis_ram_writer_1_m_axi_AWCACHE;
  wire [2:0]axis_ram_writer_1_m_axi_AWID;
  wire [3:0]axis_ram_writer_1_m_axi_AWLEN;
  wire axis_ram_writer_1_m_axi_AWREADY;
  wire [2:0]axis_ram_writer_1_m_axi_AWSIZE;
  wire axis_ram_writer_1_m_axi_AWVALID;
  wire axis_ram_writer_1_m_axi_BREADY;
  wire axis_ram_writer_1_m_axi_BVALID;
  wire [63:0]axis_ram_writer_1_m_axi_WDATA;
  wire [2:0]axis_ram_writer_1_m_axi_WID;
  wire axis_ram_writer_1_m_axi_WLAST;
  wire axis_ram_writer_1_m_axi_WREADY;
  wire [7:0]axis_ram_writer_1_m_axi_WSTRB;
  wire axis_ram_writer_1_m_axi_WVALID;
  wire [17:0]axis_ram_writer_1_sts_data;
  wire [31:0]cfg_data1_1;
  wire pll_0_clk_out1;
  wire rst_0_peripheral_aresetn;
  wire [127:0]sts_data_1;
  wire [17:0]xlconstant_0_dout;

  assign M_AXI_awaddr[31:0] = axis_ram_writer_1_m_axi_AWADDR;
  assign M_AXI_awburst[1:0] = axis_ram_writer_1_m_axi_AWBURST;
  assign M_AXI_awcache[3:0] = axis_ram_writer_1_m_axi_AWCACHE;
  assign M_AXI_awid[2:0] = axis_ram_writer_1_m_axi_AWID;
  assign M_AXI_awlen[3:0] = axis_ram_writer_1_m_axi_AWLEN;
  assign M_AXI_awsize[2:0] = axis_ram_writer_1_m_axi_AWSIZE;
  assign M_AXI_awvalid = axis_ram_writer_1_m_axi_AWVALID;
  assign M_AXI_bready = axis_ram_writer_1_m_axi_BREADY;
  assign M_AXI_wdata[63:0] = axis_ram_writer_1_m_axi_WDATA;
  assign M_AXI_wid[2:0] = axis_ram_writer_1_m_axi_WID;
  assign M_AXI_wlast = axis_ram_writer_1_m_axi_WLAST;
  assign M_AXI_wstrb[7:0] = axis_ram_writer_1_m_axi_WSTRB;
  assign M_AXI_wvalid = axis_ram_writer_1_m_axi_WVALID;
  assign S_AXI1_1_ARADDR = S_AXI1_araddr[31:0];
  assign S_AXI1_1_ARVALID = S_AXI1_arvalid;
  assign S_AXI1_1_AWADDR = S_AXI1_awaddr[31:0];
  assign S_AXI1_1_AWVALID = S_AXI1_awvalid;
  assign S_AXI1_1_BREADY = S_AXI1_bready;
  assign S_AXI1_1_RREADY = S_AXI1_rready;
  assign S_AXI1_1_WDATA = S_AXI1_wdata[31:0];
  assign S_AXI1_1_WVALID = S_AXI1_wvalid;
  assign S_AXI1_arready = S_AXI1_1_ARREADY;
  assign S_AXI1_awready = S_AXI1_1_AWREADY;
  assign S_AXI1_bresp[1:0] = S_AXI1_1_BRESP;
  assign S_AXI1_bvalid = S_AXI1_1_BVALID;
  assign S_AXI1_rdata[31:0] = S_AXI1_1_RDATA;
  assign S_AXI1_rresp[1:0] = S_AXI1_1_RRESP;
  assign S_AXI1_rvalid = S_AXI1_1_RVALID;
  assign S_AXI1_wready = S_AXI1_1_WREADY;
  assign S_AXIS_1_TDATA = S_AXIS_tdata[63:0];
  assign S_AXIS_1_TVALID = S_AXIS_tvalid;
  assign S_AXI_1_ARADDR = S_AXI_araddr[31:0];
  assign S_AXI_1_ARVALID = S_AXI_arvalid;
  assign S_AXI_1_AWADDR = S_AXI_awaddr[31:0];
  assign S_AXI_1_AWVALID = S_AXI_awvalid;
  assign S_AXI_1_BREADY = S_AXI_bready;
  assign S_AXI_1_RREADY = S_AXI_rready;
  assign S_AXI_1_WDATA = S_AXI_wdata[31:0];
  assign S_AXI_1_WSTRB = S_AXI_wstrb[3:0];
  assign S_AXI_1_WVALID = S_AXI_wvalid;
  assign S_AXI_arready = S_AXI_1_ARREADY;
  assign S_AXI_awready = S_AXI_1_AWREADY;
  assign S_AXI_bresp[1:0] = S_AXI_1_BRESP;
  assign S_AXI_bvalid = S_AXI_1_BVALID;
  assign S_AXI_rdata[31:0] = S_AXI_1_RDATA;
  assign S_AXI_rresp[1:0] = S_AXI_1_RRESP;
  assign S_AXI_rvalid = S_AXI_1_RVALID;
  assign S_AXI_wready = S_AXI_1_WREADY;
  assign aresetn1_1 = aresetn1;
  assign axis_ram_writer_1_m_axi_AWREADY = M_AXI_awready;
  assign axis_ram_writer_1_m_axi_BVALID = M_AXI_bvalid;
  assign axis_ram_writer_1_m_axi_WREADY = M_AXI_wready;
  assign cfg_data[511:0] = axi_cfg_register_0_cfg_data;
  assign cfg_data1_1 = cfg_data1[31:0];
  assign pll_0_clk_out1 = aclk;
  assign rst_0_peripheral_aresetn = aresetn;
  assign sts_data1[17:0] = axis_ram_writer_1_sts_data;
  assign sts_data_1 = sts_data[127:0];
  system_axi_cfg_register_0_0 axi_cfg_register_0
       (.aclk(pll_0_clk_out1),
        .aresetn(rst_0_peripheral_aresetn),
        .cfg_data(axi_cfg_register_0_cfg_data),
        .s_axi_araddr(S_AXI_1_ARADDR),
        .s_axi_arready(S_AXI_1_ARREADY),
        .s_axi_arvalid(S_AXI_1_ARVALID),
        .s_axi_awaddr(S_AXI_1_AWADDR),
        .s_axi_awready(S_AXI_1_AWREADY),
        .s_axi_awvalid(S_AXI_1_AWVALID),
        .s_axi_bready(S_AXI_1_BREADY),
        .s_axi_bresp(S_AXI_1_BRESP),
        .s_axi_bvalid(S_AXI_1_BVALID),
        .s_axi_rdata(S_AXI_1_RDATA),
        .s_axi_rready(S_AXI_1_RREADY),
        .s_axi_rresp(S_AXI_1_RRESP),
        .s_axi_rvalid(S_AXI_1_RVALID),
        .s_axi_wdata(S_AXI_1_WDATA),
        .s_axi_wready(S_AXI_1_WREADY),
        .s_axi_wstrb(S_AXI_1_WSTRB),
        .s_axi_wvalid(S_AXI_1_WVALID));
  system_axi_sts_register_0_0 axi_sts_register_0
       (.aclk(pll_0_clk_out1),
        .aresetn(rst_0_peripheral_aresetn),
        .s_axi_araddr(S_AXI1_1_ARADDR),
        .s_axi_arready(S_AXI1_1_ARREADY),
        .s_axi_arvalid(S_AXI1_1_ARVALID),
        .s_axi_awaddr(S_AXI1_1_AWADDR),
        .s_axi_awready(S_AXI1_1_AWREADY),
        .s_axi_awvalid(S_AXI1_1_AWVALID),
        .s_axi_bready(S_AXI1_1_BREADY),
        .s_axi_bresp(S_AXI1_1_BRESP),
        .s_axi_bvalid(S_AXI1_1_BVALID),
        .s_axi_rdata(S_AXI1_1_RDATA),
        .s_axi_rready(S_AXI1_1_RREADY),
        .s_axi_rresp(S_AXI1_1_RRESP),
        .s_axi_rvalid(S_AXI1_1_RVALID),
        .s_axi_wdata(S_AXI1_1_WDATA),
        .s_axi_wready(S_AXI1_1_WREADY),
        .s_axi_wvalid(S_AXI1_1_WVALID),
        .sts_data(sts_data_1));
  system_axis_ram_writer_1_0 axis_ram_writer_1
       (.aclk(pll_0_clk_out1),
        .aresetn(aresetn1_1),
        .cfg_data(xlconstant_0_dout),
        .m_axi_awaddr(axis_ram_writer_1_m_axi_AWADDR),
        .m_axi_awburst(axis_ram_writer_1_m_axi_AWBURST),
        .m_axi_awcache(axis_ram_writer_1_m_axi_AWCACHE),
        .m_axi_awid(axis_ram_writer_1_m_axi_AWID),
        .m_axi_awlen(axis_ram_writer_1_m_axi_AWLEN),
        .m_axi_awready(axis_ram_writer_1_m_axi_AWREADY),
        .m_axi_awsize(axis_ram_writer_1_m_axi_AWSIZE),
        .m_axi_awvalid(axis_ram_writer_1_m_axi_AWVALID),
        .m_axi_bready(axis_ram_writer_1_m_axi_BREADY),
        .m_axi_bvalid(axis_ram_writer_1_m_axi_BVALID),
        .m_axi_wdata(axis_ram_writer_1_m_axi_WDATA),
        .m_axi_wid(axis_ram_writer_1_m_axi_WID),
        .m_axi_wlast(axis_ram_writer_1_m_axi_WLAST),
        .m_axi_wready(axis_ram_writer_1_m_axi_WREADY),
        .m_axi_wstrb(axis_ram_writer_1_m_axi_WSTRB),
        .m_axi_wvalid(axis_ram_writer_1_m_axi_WVALID),
        .min_addr(cfg_data1_1),
        .s_axis_tdata(S_AXIS_1_TDATA),
        .s_axis_tvalid(S_AXIS_1_TVALID),
        .sts_data(axis_ram_writer_1_sts_data));
  system_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule

module Reg_Brakeout_imp_H22Q4C
   (Din,
    Dout,
    Dout10,
    Dout11,
    Dout12,
    Dout13,
    Dout14,
    Dout15,
    Dout7,
    Dout8,
    Dout9,
    In2,
    M_AXIS1_tdata,
    M_AXIS1_tvalid,
    M_AXIS2_tdata,
    M_AXIS2_tvalid,
    M_AXIS3_tdata,
    M_AXIS3_tvalid,
    M_AXIS4_tdata,
    M_AXIS4_tvalid,
    M_AXIS5_tdata,
    M_AXIS5_tvalid,
    aclk,
    aresetn,
    dout1,
    dout2,
    dout3,
    dout4,
    dout5,
    dout6);
  input [511:0]Din;
  output [3:0]Dout;
  output [0:0]Dout10;
  output [0:0]Dout11;
  output [0:0]Dout12;
  output [0:0]Dout13;
  output [0:0]Dout14;
  output [0:0]Dout15;
  output [0:0]Dout7;
  output [0:0]Dout8;
  output [3:0]Dout9;
  input [17:0]In2;
  output [447:0]M_AXIS1_tdata;
  output M_AXIS1_tvalid;
  output [191:0]M_AXIS2_tdata;
  output M_AXIS2_tvalid;
  output [191:0]M_AXIS3_tdata;
  output M_AXIS3_tvalid;
  output [15:0]M_AXIS4_tdata;
  output M_AXIS4_tvalid;
  output [15:0]M_AXIS5_tdata;
  output M_AXIS5_tvalid;
  input aclk;
  input aresetn;
  output [31:0]dout1;
  output [31:0]dout2;
  output [127:0]dout3;
  output [0:0]dout4;
  output [0:0]dout5;
  output [0:0]dout6;

  wire [0:0]CBC_config_Dout11;
  wire [0:0]CBC_config_Dout12;
  wire [0:0]CBC_config_Dout13;
  wire [0:0]CBC_config_Dout14;
  wire [3:0]CH1_Config_Dout;
  wire [191:0]CH1_Config_M_AXIS3_TDATA;
  wire CH1_Config_M_AXIS3_TVALID;
  wire [191:0]CH1_params_Dout;
  wire [0:0]CH2_config_Dout10;
  wire [3:0]CH2_config_Dout9;
  wire [191:0]CH2_config_M_AXIS2_TDATA;
  wire CH2_config_M_AXIS2_TVALID;
  wire [191:0]CH2_params_Dout;
  wire [447:0]Conn2_TDATA;
  wire Conn2_TVALID;
  wire [511:0]Din1_1;
  wire [447:0]Feedback_config_bus_Dout;
  wire [17:0]In2_1;
  wire [31:0]RAM_addres_Dout;
  wire [31:0]const_0_dout;
  wire [0:0]continuous_output_Dout;
  wire [56:0]dna_reader_0_dna_data;
  wire [0:0]feedback_trigger_Dout;
  wire [15:0]gng_0_M_AXIS1_TDATA;
  wire gng_0_M_AXIS1_TVALID;
  wire [15:0]gng_0_M_AXIS2_TDATA;
  wire gng_0_M_AXIS2_TVALID;
  wire [0:0]input_select_Dout;
  wire pll_0_clk_out1;
  wire [0:0]pre_memory_reset_Dout;
  wire [0:0]ram_writer_reset_Dout;
  wire rst_0_peripheral_aresetn;
  wire [127:0]status_concat_1_dout;
  wire [0:0]system_params_Dout15;

  assign Din1_1 = Din[511:0];
  assign Dout[3:0] = CH1_Config_Dout;
  assign Dout10[0] = CH2_config_Dout10;
  assign Dout11[0] = CBC_config_Dout11;
  assign Dout12[0] = CBC_config_Dout12;
  assign Dout13[0] = CBC_config_Dout13;
  assign Dout14[0] = CBC_config_Dout14;
  assign Dout15[0] = system_params_Dout15;
  assign Dout7[0] = input_select_Dout;
  assign Dout8[0] = continuous_output_Dout;
  assign Dout9[3:0] = CH2_config_Dout9;
  assign In2_1 = In2[17:0];
  assign M_AXIS1_tdata[447:0] = Conn2_TDATA;
  assign M_AXIS1_tvalid = Conn2_TVALID;
  assign M_AXIS2_tdata[191:0] = CH2_config_M_AXIS2_TDATA;
  assign M_AXIS2_tvalid = CH2_config_M_AXIS2_TVALID;
  assign M_AXIS3_tdata[191:0] = CH1_Config_M_AXIS3_TDATA;
  assign M_AXIS3_tvalid = CH1_Config_M_AXIS3_TVALID;
  assign M_AXIS4_tdata[15:0] = gng_0_M_AXIS1_TDATA;
  assign M_AXIS4_tvalid = gng_0_M_AXIS1_TVALID;
  assign M_AXIS5_tdata[15:0] = gng_0_M_AXIS2_TDATA;
  assign M_AXIS5_tvalid = gng_0_M_AXIS2_TVALID;
  assign dout1[31:0] = RAM_addres_Dout;
  assign dout2[31:0] = const_0_dout;
  assign dout3[127:0] = status_concat_1_dout;
  assign dout4[0] = feedback_trigger_Dout;
  assign dout5[0] = ram_writer_reset_Dout;
  assign dout6[0] = pre_memory_reset_Dout;
  assign pll_0_clk_out1 = aclk;
  assign rst_0_peripheral_aresetn = aresetn;
  CBC_config_imp_3DYLP CBC_config
       (.Din1(Din1_1),
        .Dout11(CBC_config_Dout11),
        .Dout12(CBC_config_Dout12),
        .Dout13(CBC_config_Dout13),
        .Dout14(CBC_config_Dout14),
        .M_AXIS_tdata(Conn2_TDATA),
        .M_AXIS_tvalid(Conn2_TVALID),
        .aclk(pll_0_clk_out1),
        .cfg_data(Feedback_config_bus_Dout));
  CH1_Config_imp_WASEI3 CH1_Config
       (.Din1(Din1_1),
        .Dout(CH1_Config_Dout),
        .Dout7(input_select_Dout),
        .M_AXIS3_tdata(CH1_Config_M_AXIS3_TDATA),
        .M_AXIS3_tvalid(CH1_Config_M_AXIS3_TVALID),
        .aclk(pll_0_clk_out1),
        .cfg_data(CH1_params_Dout));
  system_Feedback_config_bus_1 CH1_params
       (.Din(Din1_1),
        .Dout(CH1_params_Dout));
  CH2_config_imp_4I2YBS CH2_config
       (.Din1(Din1_1),
        .Dout10(CH2_config_Dout10),
        .Dout9(CH2_config_Dout9),
        .M_AXIS2_tdata(CH2_config_M_AXIS2_TDATA),
        .M_AXIS2_tvalid(CH2_config_M_AXIS2_TVALID),
        .aclk(pll_0_clk_out1),
        .cfg_data(CH2_params_Dout));
  system_Feedback_config_bus_1_0 CH2_params
       (.Din(Din1_1),
        .Dout(CH2_params_Dout));
  system_Feedback_config_bus_0 Feedback_config_bus
       (.Din(Din1_1),
        .Dout(Feedback_config_bus_Dout));
  system_dna_reader_0_0 dna_reader_0
       (.aclk(pll_0_clk_out1),
        .aresetn(rst_0_peripheral_aresetn),
        .dna_data(dna_reader_0_dna_data));
  system_external_reset_fake_0 external_reset_fake
       (.dout(const_0_dout));
  system_gng_0_0 gng_0
       (.M_AXIS1_tdata(gng_0_M_AXIS1_TDATA),
        .M_AXIS1_tvalid(gng_0_M_AXIS1_TVALID),
        .M_AXIS2_tdata(gng_0_M_AXIS2_TDATA),
        .M_AXIS2_tvalid(gng_0_M_AXIS2_TVALID),
        .clk(pll_0_clk_out1),
        .rstn(rst_0_peripheral_aresetn));
  system_status_concat_1_0 status_concat_1
       (.In0(const_0_dout),
        .In1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dna_reader_0_dna_data}),
        .In2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,In2_1}),
        .dout(status_concat_1_dout));
  system_params_imp_1MROCIH system_params
       (.Din1(Din1_1),
        .Dout15(system_params_Dout15),
        .Dout8(continuous_output_Dout),
        .dout1(RAM_addres_Dout),
        .dout4(feedback_trigger_Dout),
        .dout5(ram_writer_reset_Dout),
        .dout6(pre_memory_reset_Dout));
endmodule

module Shared_mult_1_imp_1T6BSX2
   (CBC_input_A,
    CBC_input_B,
    Channel_input_A,
    Channel_input_B,
    P,
    aclk,
    sel);
  input [31:0]CBC_input_A;
  input [31:0]CBC_input_B;
  input [31:0]Channel_input_A;
  input [31:0]Channel_input_B;
  output [55:0]P;
  input aclk;
  input [3:0]sel;

  wire [31:0]CBC_0_OP1;
  wire [31:0]CBC_0_OP2;
  wire [31:0]CH1_OP1;
  wire [31:0]CH1_OP2;
  wire [55:0]CH1_mult1_P;
  wire [31:0]bus_multiplexer_comb_4_mult_output_A;
  wire [31:0]bus_multiplexer_comb_4_mult_output_B;
  wire pll_0_clk_out1;
  wire [3:0]sel_1;

  assign CBC_0_OP1 = CBC_input_A[31:0];
  assign CBC_0_OP2 = CBC_input_B[31:0];
  assign CH1_OP1 = Channel_input_A[31:0];
  assign CH1_OP2 = Channel_input_B[31:0];
  assign P[55:0] = CH1_mult1_P;
  assign pll_0_clk_out1 = aclk;
  assign sel_1 = sel[3:0];
  system_mult_gen_0_0 Shared_mult1
       (.A(bus_multiplexer_comb_4_mult_output_A),
        .B(bus_multiplexer_comb_4_mult_output_B),
        .CLK(pll_0_clk_out1),
        .P(CH1_mult1_P));
  system_bus_multiplexer_comb_2_0 bus_multiplexer_comb1
       (.CBC_input_A(CBC_0_OP1),
        .CBC_input_B(CBC_0_OP2),
        .Channel_input_A(CH1_OP1),
        .Channel_input_B(CH1_OP2),
        .mult_output_A(bus_multiplexer_comb_4_mult_output_A),
        .mult_output_B(bus_multiplexer_comb_4_mult_output_B),
        .sel(sel_1));
endmodule

module Shared_mult_2_imp_1OS2GFV
   (CBC_input_A,
    CBC_input_B,
    Channel_input_A,
    Channel_input_B,
    P,
    aclk,
    sel);
  input [31:0]CBC_input_A;
  input [31:0]CBC_input_B;
  input [31:0]Channel_input_A;
  input [31:0]Channel_input_B;
  output [55:0]P;
  input aclk;
  input [3:0]sel;

  wire [31:0]CBC_0_OP3;
  wire [31:0]CBC_0_OP4;
  wire [31:0]CH1_OP3;
  wire [31:0]CH1_OP4;
  wire [55:0]CH1_mult2_P;
  wire [31:0]bus_multiplexer_comb_5_mult_output_A;
  wire [31:0]bus_multiplexer_comb_5_mult_output_B;
  wire pll_0_clk_out1;
  wire [3:0]sel_1;

  assign CBC_0_OP3 = CBC_input_A[31:0];
  assign CBC_0_OP4 = CBC_input_B[31:0];
  assign CH1_OP3 = Channel_input_A[31:0];
  assign CH1_OP4 = Channel_input_B[31:0];
  assign P[55:0] = CH1_mult2_P;
  assign pll_0_clk_out1 = aclk;
  assign sel_1 = sel[3:0];
  system_mult_gen_0_4 Shared_mult2
       (.A(bus_multiplexer_comb_5_mult_output_A),
        .B(bus_multiplexer_comb_5_mult_output_B),
        .CLK(pll_0_clk_out1),
        .P(CH1_mult2_P));
  system_bus_multiplexer_comb_4_0 bus_multiplexer_comb2
       (.CBC_input_A(CBC_0_OP3),
        .CBC_input_B(CBC_0_OP4),
        .Channel_input_A(CH1_OP3),
        .Channel_input_B(CH1_OP4),
        .mult_output_A(bus_multiplexer_comb_5_mult_output_A),
        .mult_output_B(bus_multiplexer_comb_5_mult_output_B),
        .sel(sel_1));
endmodule

module Shared_mult_3_imp_YTDO27
   (CBC_input_A,
    CBC_input_B,
    Channel_input_A,
    Channel_input_B,
    P,
    aclk,
    sel);
  input [31:0]CBC_input_A;
  input [31:0]CBC_input_B;
  input [31:0]Channel_input_A;
  input [31:0]Channel_input_B;
  output [55:0]P;
  input aclk;
  input [3:0]sel;

  wire [31:0]CBC_0_OP10;
  wire [31:0]CBC_0_OP9;
  wire [31:0]CH2_OP3;
  wire [31:0]CH2_OP4;
  wire [55:0]CH2_mult2_P;
  wire [31:0]bus_multiplexer_comb_0_mult_output_A;
  wire [31:0]bus_multiplexer_comb_0_mult_output_B;
  wire pll_0_clk_out1;
  wire [3:0]sel_1;

  assign CBC_0_OP10 = CBC_input_B[31:0];
  assign CBC_0_OP9 = CBC_input_A[31:0];
  assign CH2_OP3 = Channel_input_A[31:0];
  assign CH2_OP4 = Channel_input_B[31:0];
  assign P[55:0] = CH2_mult2_P;
  assign pll_0_clk_out1 = aclk;
  assign sel_1 = sel[3:0];
  system_CH1_mult2_0 Shared_mult3
       (.A(bus_multiplexer_comb_0_mult_output_A),
        .B(bus_multiplexer_comb_0_mult_output_B),
        .CLK(pll_0_clk_out1),
        .P(CH2_mult2_P));
  system_bus_multiplexer_comb_0_0 bus_multiplexer_comb3
       (.CBC_input_A(CBC_0_OP9),
        .CBC_input_B(CBC_0_OP10),
        .Channel_input_A(CH2_OP3),
        .Channel_input_B(CH2_OP4),
        .mult_output_A(bus_multiplexer_comb_0_mult_output_A),
        .mult_output_B(bus_multiplexer_comb_0_mult_output_B),
        .sel(sel_1));
endmodule

module Shared_mult_4_imp_1FAL475
   (CBC_input_A,
    CBC_input_B,
    Channel_input_A,
    Channel_input_B,
    P,
    aclk,
    sel);
  input [31:0]CBC_input_A;
  input [47:0]CBC_input_B;
  input [31:0]Channel_input_A;
  input [47:0]Channel_input_B;
  output [42:0]P;
  input aclk;
  input [3:0]sel;

  wire [31:0]CBC_0_OP5;
  wire [47:0]CBC_0_OP6;
  wire [42:0]CH2_mult3_P;
  wire [31:0]CH2_multiplier_breakout_OP5;
  wire [47:0]CH2_multiplier_breakout_OP6;
  wire [31:0]bus_multiplexer_comb_3_mult_output_A;
  wire [47:0]bus_multiplexer_comb_3_mult_output_B;
  wire pll_0_clk_out1;
  wire [3:0]sel_1;

  assign CBC_0_OP5 = CBC_input_A[31:0];
  assign CBC_0_OP6 = CBC_input_B[47:0];
  assign CH2_multiplier_breakout_OP5 = Channel_input_A[31:0];
  assign CH2_multiplier_breakout_OP6 = Channel_input_B[47:0];
  assign P[42:0] = CH2_mult3_P;
  assign pll_0_clk_out1 = aclk;
  assign sel_1 = sel[3:0];
  system_CH1_mult3_0 Shared_mult4
       (.A(bus_multiplexer_comb_3_mult_output_A),
        .B(bus_multiplexer_comb_3_mult_output_B),
        .CLK(pll_0_clk_out1),
        .P(CH2_mult3_P));
  system_bus_multiplexer_comb_0_1 bus_multiplexer_comb4
       (.CBC_input_A(CBC_0_OP5),
        .CBC_input_B(CBC_0_OP6),
        .Channel_input_A(CH2_multiplier_breakout_OP5),
        .Channel_input_B(CH2_multiplier_breakout_OP6),
        .mult_output_A(bus_multiplexer_comb_3_mult_output_A),
        .mult_output_B(bus_multiplexer_comb_3_mult_output_B),
        .sel(sel_1));
endmodule

module Shared_mult_5_imp_8IBYGL
   (CBC_input_A,
    CBC_input_B,
    Channel_input_A,
    Channel_input_B,
    P,
    aclk,
    sel);
  input [31:0]CBC_input_A;
  input [31:0]CBC_input_B;
  input [31:0]Channel_input_A;
  input [31:0]Channel_input_B;
  output [55:0]P;
  input aclk;
  input [3:0]sel;

  wire [31:0]CBC_0_OP7;
  wire [31:0]CBC_0_OP8;
  wire [55:0]CH2_mult1_P;
  wire [31:0]CH2_multiplier_breakout_OP1;
  wire [31:0]CH2_multiplier_breakout_OP2;
  wire [31:0]bus_multiplexer_comb_1_mult_output_A;
  wire [31:0]bus_multiplexer_comb_1_mult_output_B;
  wire pll_0_clk_out1;
  wire [3:0]sel_1;

  assign CBC_0_OP7 = CBC_input_A[31:0];
  assign CBC_0_OP8 = CBC_input_B[31:0];
  assign CH2_multiplier_breakout_OP1 = Channel_input_A[31:0];
  assign CH2_multiplier_breakout_OP2 = Channel_input_B[31:0];
  assign P[55:0] = CH2_mult1_P;
  assign pll_0_clk_out1 = aclk;
  assign sel_1 = sel[3:0];
  system_CH1_mult1_0 Shared_mult5
       (.A(bus_multiplexer_comb_1_mult_output_A),
        .B(bus_multiplexer_comb_1_mult_output_B),
        .CLK(pll_0_clk_out1),
        .P(CH2_mult1_P));
  system_bus_multiplexer_comb_0_2 bus_multiplexer_comb5
       (.CBC_input_A(CBC_0_OP7),
        .CBC_input_B(CBC_0_OP8),
        .Channel_input_A(CH2_multiplier_breakout_OP1),
        .Channel_input_B(CH2_multiplier_breakout_OP2),
        .mult_output_A(bus_multiplexer_comb_1_mult_output_A),
        .mult_output_B(bus_multiplexer_comb_1_mult_output_B),
        .sel(sel_1));
endmodule

module downsampling_imp_1CFV2HL
   (M_AXIS_tdata,
    M_AXIS_tvalid,
    S00_AXIS1_tdata,
    S00_AXIS1_tvalid,
    S01_AXIS1_tdata,
    S01_AXIS1_tvalid,
    S01_AXIS_tdata,
    S01_AXIS_tvalid,
    aclk,
    aresetn,
    select1);
  output [63:0]M_AXIS_tdata;
  output M_AXIS_tvalid;
  input [15:0]S00_AXIS1_tdata;
  input [0:0]S00_AXIS1_tvalid;
  input [15:0]S01_AXIS1_tdata;
  input [0:0]S01_AXIS1_tvalid;
  input [31:0]S01_AXIS_tdata;
  input [0:0]S01_AXIS_tvalid;
  input aclk;
  input aresetn;
  input [0:0]select1;

  wire [63:0]AXI_mux_0_M_AXIS_TDATA;
  wire AXI_mux_0_M_AXIS_TVALID;
  wire [15:0]Conn1_TDATA;
  wire [0:0]Conn1_TVALID;
  wire [15:0]Conn2_TDATA;
  wire [0:0]Conn2_TVALID;
  wire [31:0]Conn3_TDATA;
  wire [0:0]Conn3_TVALID;
  wire [63:0]axis_broadcaster_0_M00_AXIS_TDATA;
  wire axis_broadcaster_0_M00_AXIS_TREADY;
  wire [0:0]axis_broadcaster_0_M00_AXIS_TVALID;
  wire [127:64]axis_broadcaster_0_M01_AXIS_TDATA;
  wire axis_broadcaster_0_M01_AXIS_TREADY;
  wire [1:1]axis_broadcaster_0_M01_AXIS_TVALID;
  wire [63:0]axis_combiner_1_M_AXIS_TDATA;
  wire axis_combiner_1_M_AXIS_TREADY;
  wire axis_combiner_1_M_AXIS_TVALID;
  wire [31:0]axis_combiner_2_M_AXIS_TDATA;
  wire [0:0]axis_combiner_2_M_AXIS_TREADY;
  wire axis_combiner_2_M_AXIS_TVALID;
  wire [159:0]fir_compiler_0_M_AXIS_DATA_TDATA;
  wire fir_compiler_0_M_AXIS_DATA_TVALID;
  wire [63:0]fir_compiler_1_M_AXIS_DATA_TDATA;
  wire fir_compiler_1_M_AXIS_DATA_TVALID;
  wire pll_0_clk_out1;
  wire [0:0]select1_1;
  wire slice_0_dout;

  assign Conn1_TDATA = S00_AXIS1_tdata[15:0];
  assign Conn1_TVALID = S00_AXIS1_tvalid[0];
  assign Conn2_TDATA = S01_AXIS1_tdata[15:0];
  assign Conn2_TVALID = S01_AXIS1_tvalid[0];
  assign Conn3_TDATA = S01_AXIS_tdata[31:0];
  assign Conn3_TVALID = S01_AXIS_tvalid[0];
  assign M_AXIS_tdata[63:0] = AXI_mux_0_M_AXIS_TDATA;
  assign M_AXIS_tvalid = AXI_mux_0_M_AXIS_TVALID;
  assign pll_0_clk_out1 = aclk;
  assign select1_1 = select1[0];
  assign slice_0_dout = aresetn;
  system_AXI_mux_0_0 AXI_mux_0
       (.M_AXIS_tdata(AXI_mux_0_M_AXIS_TDATA),
        .M_AXIS_tvalid(AXI_mux_0_M_AXIS_TVALID),
        .S_AXIS_FAST_tdata(fir_compiler_1_M_AXIS_DATA_TDATA),
        .S_AXIS_FAST_tvalid(fir_compiler_1_M_AXIS_DATA_TVALID),
        .S_AXIS_SLOW_tdata(fir_compiler_0_M_AXIS_DATA_TDATA),
        .S_AXIS_SLOW_tvalid(fir_compiler_0_M_AXIS_DATA_TVALID),
        .aclk(pll_0_clk_out1),
        .sel(select1_1));
  system_axis_broadcaster_0_1 axis_broadcaster_0
       (.aclk(pll_0_clk_out1),
        .aresetn(slice_0_dout),
        .m_axis_tdata({axis_broadcaster_0_M01_AXIS_TDATA,axis_broadcaster_0_M00_AXIS_TDATA}),
        .m_axis_tready({axis_broadcaster_0_M01_AXIS_TREADY,axis_broadcaster_0_M00_AXIS_TREADY}),
        .m_axis_tvalid({axis_broadcaster_0_M01_AXIS_TVALID,axis_broadcaster_0_M00_AXIS_TVALID}),
        .s_axis_tdata(axis_combiner_1_M_AXIS_TDATA),
        .s_axis_tready(axis_combiner_1_M_AXIS_TREADY),
        .s_axis_tvalid(axis_combiner_1_M_AXIS_TVALID));
  system_axis_combiner_0_1 axis_combiner_1
       (.aclk(pll_0_clk_out1),
        .aresetn(slice_0_dout),
        .m_axis_tdata(axis_combiner_1_M_AXIS_TDATA),
        .m_axis_tready(axis_combiner_1_M_AXIS_TREADY),
        .m_axis_tvalid(axis_combiner_1_M_AXIS_TVALID),
        .s_axis_tdata({Conn3_TDATA,axis_combiner_2_M_AXIS_TDATA}),
        .s_axis_tready(axis_combiner_2_M_AXIS_TREADY),
        .s_axis_tvalid({Conn3_TVALID,axis_combiner_2_M_AXIS_TVALID}));
  system_axis_combiner_1_0 axis_combiner_2
       (.aclk(pll_0_clk_out1),
        .aresetn(slice_0_dout),
        .m_axis_tdata(axis_combiner_2_M_AXIS_TDATA),
        .m_axis_tready(axis_combiner_2_M_AXIS_TREADY),
        .m_axis_tvalid(axis_combiner_2_M_AXIS_TVALID),
        .s_axis_tdata({Conn2_TDATA,Conn1_TDATA}),
        .s_axis_tvalid({Conn2_TVALID,Conn1_TVALID}));
  system_fir_compiler_0_0 fir_compiler_0
       (.aclk(pll_0_clk_out1),
        .aresetn(slice_0_dout),
        .m_axis_data_tdata(fir_compiler_0_M_AXIS_DATA_TDATA),
        .m_axis_data_tvalid(fir_compiler_0_M_AXIS_DATA_TVALID),
        .s_axis_data_tdata(axis_broadcaster_0_M01_AXIS_TDATA),
        .s_axis_data_tready(axis_broadcaster_0_M01_AXIS_TREADY),
        .s_axis_data_tvalid(axis_broadcaster_0_M01_AXIS_TVALID));
  system_fir_compiler_0_1 fir_compiler_1
       (.aclk(pll_0_clk_out1),
        .aresetn(slice_0_dout),
        .m_axis_data_tdata(fir_compiler_1_M_AXIS_DATA_TDATA),
        .m_axis_data_tvalid(fir_compiler_1_M_AXIS_DATA_TVALID),
        .s_axis_data_tdata(axis_broadcaster_0_M00_AXIS_TDATA),
        .s_axis_data_tready(axis_broadcaster_0_M00_AXIS_TREADY),
        .s_axis_data_tvalid(axis_broadcaster_0_M00_AXIS_TVALID));
endmodule

module feedback_and_generation_imp_GDMTQL
   (CH2_sel,
    M00_AXIS_tdata,
    M00_AXIS_tvalid,
    M01_AXIS_tdata,
    M01_AXIS_tvalid,
    S_AXIS_ADC1_tdata,
    S_AXIS_ADC1_tvalid,
    S_AXIS_ADC2_tdata,
    S_AXIS_ADC2_tvalid,
    S_AXIS_ADC3_tdata,
    S_AXIS_ADC3_tvalid,
    S_AXIS_ADC4_tdata,
    S_AXIS_ADC4_tvalid,
    S_AXIS_ADC5_tdata,
    S_AXIS_ADC5_tvalid,
    S_AXIS_ADC6_tdata,
    S_AXIS_ADC6_tvalid,
    S_AXIS_CFG1_tdata,
    S_AXIS_CFG1_tvalid,
    S_AXIS_CFG2_tdata,
    S_AXIS_CFG2_tvalid,
    S_AXIS_CFG_tdata,
    S_AXIS_CFG_tvalid,
    S_AXIS_RNG1_tdata,
    S_AXIS_RNG1_tvalid,
    S_AXIS_RNG2_tdata,
    S_AXIS_RNG2_tvalid,
    aclk,
    aresetn,
    continuous_output_in,
    displacement_int_ext,
    exp_p_tri_io,
    input_select,
    input_select1,
    input_select2,
    polynomial_target,
    sel,
    trig_in,
    velocity_int_ext);
  input [3:0]CH2_sel;
  output [31:0]M00_AXIS_tdata;
  output [0:0]M00_AXIS_tvalid;
  output [31:0]M01_AXIS_tdata;
  output M01_AXIS_tvalid;
  input [15:0]S_AXIS_ADC1_tdata;
  input S_AXIS_ADC1_tvalid;
  input [15:0]S_AXIS_ADC2_tdata;
  input S_AXIS_ADC2_tvalid;
  input [15:0]S_AXIS_ADC3_tdata;
  input S_AXIS_ADC3_tvalid;
  input [15:0]S_AXIS_ADC4_tdata;
  input S_AXIS_ADC4_tvalid;
  input [15:0]S_AXIS_ADC5_tdata;
  input S_AXIS_ADC5_tvalid;
  input [15:0]S_AXIS_ADC6_tdata;
  input S_AXIS_ADC6_tvalid;
  input [191:0]S_AXIS_CFG1_tdata;
  input S_AXIS_CFG1_tvalid;
  input [447:0]S_AXIS_CFG2_tdata;
  input S_AXIS_CFG2_tvalid;
  input [191:0]S_AXIS_CFG_tdata;
  input S_AXIS_CFG_tvalid;
  input [15:0]S_AXIS_RNG1_tdata;
  input S_AXIS_RNG1_tvalid;
  input [15:0]S_AXIS_RNG2_tdata;
  input S_AXIS_RNG2_tvalid;
  input aclk;
  input aresetn;
  input [0:0]continuous_output_in;
  input displacement_int_ext;
  output exp_p_tri_io;
  input input_select;
  input input_select1;
  input input_select2;
  input polynomial_target;
  input [3:0]sel;
  input trig_in;
  input velocity_int_ext;

  wire [31:0]CBC_0_OP1;
  wire [31:0]CBC_0_OP10;
  wire [31:0]CBC_0_OP2;
  wire [31:0]CBC_0_OP3;
  wire [31:0]CBC_0_OP4;
  wire [31:0]CBC_0_OP5;
  wire [47:0]CBC_0_OP6;
  wire [31:0]CBC_0_OP7;
  wire [31:0]CBC_0_OP8;
  wire [31:0]CBC_0_OP9;
  wire [31:0]CBC_OFFSET;
  wire CBC_trigger_out;
  wire [31:0]CH1_OP1;
  wire [31:0]CH1_OP2;
  wire [31:0]CH1_OP3;
  wire [31:0]CH1_OP4;
  wire [42:0]CH1_mult2_P;
  wire [31:0]CH1_multiplier_breakout_OFFSET;
  wire [63:0]CH1_multiplier_breakout_OP7;
  wire [31:0]CH2_OP3;
  wire [31:0]CH2_OP4;
  wire [31:0]CH2_multiplier_breakout_OFFSET;
  wire [31:0]CH2_multiplier_breakout_OP1;
  wire [31:0]CH2_multiplier_breakout_OP2;
  wire [31:0]CH2_multiplier_breakout_OP5;
  wire [47:0]CH2_multiplier_breakout_OP6;
  wire [63:0]CH2_multiplier_breakout_OP7;
  wire [447:0]Conn10_TDATA;
  wire Conn10_TVALID;
  wire [31:0]Conn1_TDATA;
  wire [0:0]Conn1_TVALID;
  wire [15:0]Conn3_TDATA;
  wire Conn3_TVALID;
  wire [15:0]Conn4_TDATA;
  wire Conn4_TVALID;
  wire [63:32]Conn5_TDATA;
  wire [1:1]Conn5_TVALID;
  wire [15:0]Conn6_TDATA;
  wire Conn6_TVALID;
  wire [15:0]Conn7_TDATA;
  wire Conn7_TVALID;
  wire [15:0]Conn8_TDATA;
  wire Conn8_TVALID;
  wire [15:0]Conn9_TDATA;
  wire Conn9_TVALID;
  wire [3:0]Net1;
  wire [191:0]S_AXIS_CFG1_1_TDATA;
  wire S_AXIS_CFG1_1_TVALID;
  wire [191:0]S_AXIS_CFG_1_TDATA;
  wire S_AXIS_CFG_1_TVALID;
  wire [15:0]S_AXIS_RNG1_1_TDATA;
  wire S_AXIS_RNG1_1_TVALID;
  wire [15:0]S_AXIS_RNG2_1_TDATA;
  wire S_AXIS_RNG2_1_TVALID;
  wire [55:0]Shared_mult_1_P;
  wire [55:0]Shared_mult_2_P;
  wire [55:0]Shared_mult_3_P;
  wire [42:0]Shared_mult_4_P;
  wire [55:0]Shared_mult_5_P;
  wire [0:0]continuous_output_in_1;
  wire displacement_int_ext_1;
  wire [31:0]feedback_combined_0_M_AXIS_TDATA;
  wire feedback_combined_0_M_AXIS_TVALID;
  wire feedback_combined_0_trig_out;
  wire input_select1_1;
  wire input_select2_1;
  wire input_select_1;
  wire [31:0]multiplier_breakout_0_OP5;
  wire [47:0]multiplier_breakout_0_OP6;
  wire multiplier_breakout_0_trigger_out;
  wire pll_0_clk_out1;
  wire polynomial_target_1;
  wire rst_0_peripheral_aresetn;
  wire [3:0]sel_1;
  wire trig_in_1;
  wire velocity_int_ext_1;

  assign Conn10_TDATA = S_AXIS_CFG2_tdata[447:0];
  assign Conn10_TVALID = S_AXIS_CFG2_tvalid;
  assign Conn3_TDATA = S_AXIS_ADC1_tdata[15:0];
  assign Conn3_TVALID = S_AXIS_ADC1_tvalid;
  assign Conn4_TDATA = S_AXIS_ADC2_tdata[15:0];
  assign Conn4_TVALID = S_AXIS_ADC2_tvalid;
  assign Conn6_TDATA = S_AXIS_ADC3_tdata[15:0];
  assign Conn6_TVALID = S_AXIS_ADC3_tvalid;
  assign Conn7_TDATA = S_AXIS_ADC4_tdata[15:0];
  assign Conn7_TVALID = S_AXIS_ADC4_tvalid;
  assign Conn8_TDATA = S_AXIS_ADC5_tdata[15:0];
  assign Conn8_TVALID = S_AXIS_ADC5_tvalid;
  assign Conn9_TDATA = S_AXIS_ADC6_tdata[15:0];
  assign Conn9_TVALID = S_AXIS_ADC6_tvalid;
  assign M00_AXIS_tdata[31:0] = Conn1_TDATA;
  assign M00_AXIS_tvalid[0] = Conn1_TVALID;
  assign M01_AXIS_tdata[31:0] = Conn5_TDATA;
  assign M01_AXIS_tvalid = Conn5_TVALID;
  assign Net1 = CH2_sel[3:0];
  assign S_AXIS_CFG1_1_TDATA = S_AXIS_CFG1_tdata[191:0];
  assign S_AXIS_CFG1_1_TVALID = S_AXIS_CFG1_tvalid;
  assign S_AXIS_CFG_1_TDATA = S_AXIS_CFG_tdata[191:0];
  assign S_AXIS_CFG_1_TVALID = S_AXIS_CFG_tvalid;
  assign S_AXIS_RNG1_1_TDATA = S_AXIS_RNG1_tdata[15:0];
  assign S_AXIS_RNG1_1_TVALID = S_AXIS_RNG1_tvalid;
  assign S_AXIS_RNG2_1_TDATA = S_AXIS_RNG2_tdata[15:0];
  assign S_AXIS_RNG2_1_TVALID = S_AXIS_RNG2_tvalid;
  assign continuous_output_in_1 = continuous_output_in[0];
  assign displacement_int_ext_1 = displacement_int_ext;
  assign exp_p_tri_io = feedback_combined_0_trig_out;
  assign input_select1_1 = input_select1;
  assign input_select2_1 = input_select2;
  assign input_select_1 = input_select;
  assign pll_0_clk_out1 = aclk;
  assign polynomial_target_1 = polynomial_target;
  assign rst_0_peripheral_aresetn = aresetn;
  assign sel_1 = sel[3:0];
  assign trig_in_1 = trig_in;
  assign velocity_int_ext_1 = velocity_int_ext;
  system_CBC_0_0 CBC_0
       (.OFFSET(CBC_OFFSET),
        .OP1(CBC_0_OP1),
        .OP10(CBC_0_OP10),
        .OP2(CBC_0_OP2),
        .OP3(CBC_0_OP3),
        .OP4(CBC_0_OP4),
        .OP5(CBC_0_OP5),
        .OP6(CBC_0_OP6),
        .OP7(CBC_0_OP7),
        .OP8(CBC_0_OP8),
        .OP9(CBC_0_OP9),
        .S_AXIS_ADC1_tdata(Conn8_TDATA),
        .S_AXIS_ADC1_tvalid(Conn8_TVALID),
        .S_AXIS_ADC2_tdata(Conn9_TDATA),
        .S_AXIS_ADC2_tvalid(Conn9_TVALID),
        .S_AXIS_CFG_tdata(Conn10_TDATA),
        .S_AXIS_CFG_tvalid(Conn10_TVALID),
        .aclk(pll_0_clk_out1),
        .displacement_int_ext(displacement_int_ext_1),
        .input_select(input_select2_1),
        .polynomial_target(polynomial_target_1),
        .sel(sel_1),
        .trigger_in(trig_in_1),
        .trigger_out(CBC_trigger_out),
        .velocity_int_ext(velocity_int_ext_1));
  system_mult_gen_0_5 CH1_mult2
       (.A(multiplier_breakout_0_OP5),
        .B(multiplier_breakout_0_OP6),
        .CLK(pll_0_clk_out1),
        .P(CH1_mult2_P));
  system_multiplier_breakout_0_0 CH1_multiplier_breakout
       (.OFFSET(CH1_multiplier_breakout_OFFSET),
        .OP1(CH1_OP1),
        .OP2(CH1_OP2),
        .OP3(CH1_OP3),
        .OP4(CH1_OP4),
        .OP5(multiplier_breakout_0_OP5),
        .OP6(multiplier_breakout_0_OP6),
        .OP7(CH1_multiplier_breakout_OP7),
        .S_AXIS_ADC1_tdata(Conn3_TDATA),
        .S_AXIS_ADC1_tvalid(Conn3_TVALID),
        .S_AXIS_ADC2_tdata(Conn4_TDATA),
        .S_AXIS_ADC2_tvalid(Conn4_TVALID),
        .S_AXIS_CFG_tdata(S_AXIS_CFG1_1_TDATA),
        .S_AXIS_CFG_tvalid(S_AXIS_CFG1_1_TVALID),
        .S_AXIS_RNG_tdata(S_AXIS_RNG1_1_TDATA),
        .S_AXIS_RNG_tvalid(S_AXIS_RNG1_1_TVALID),
        .aclk(pll_0_clk_out1),
        .input_select(input_select_1),
        .sel(sel_1),
        .trigger_in(trig_in_1),
        .trigger_out(multiplier_breakout_0_trigger_out));
  system_CH1_multiplier_breakout_0_0 CH2_multiplier_breakout
       (.OFFSET(CH2_multiplier_breakout_OFFSET),
        .OP1(CH2_multiplier_breakout_OP1),
        .OP2(CH2_multiplier_breakout_OP2),
        .OP3(CH2_OP3),
        .OP4(CH2_OP4),
        .OP5(CH2_multiplier_breakout_OP5),
        .OP6(CH2_multiplier_breakout_OP6),
        .OP7(CH2_multiplier_breakout_OP7),
        .S_AXIS_ADC1_tdata(Conn6_TDATA),
        .S_AXIS_ADC1_tvalid(Conn6_TVALID),
        .S_AXIS_ADC2_tdata(Conn7_TDATA),
        .S_AXIS_ADC2_tvalid(Conn7_TVALID),
        .S_AXIS_CFG_tdata(S_AXIS_CFG_1_TDATA),
        .S_AXIS_CFG_tvalid(S_AXIS_CFG_1_TVALID),
        .S_AXIS_RNG_tdata(S_AXIS_RNG2_1_TDATA),
        .S_AXIS_RNG_tvalid(S_AXIS_RNG2_1_TVALID),
        .aclk(pll_0_clk_out1),
        .input_select(input_select1_1),
        .sel(Net1),
        .trigger_in(trig_in_1));
  Shared_mult_1_imp_1T6BSX2 Shared_mult_1
       (.CBC_input_A(CBC_0_OP1),
        .CBC_input_B(CBC_0_OP2),
        .Channel_input_A(CH1_OP1),
        .Channel_input_B(CH1_OP2),
        .P(Shared_mult_1_P),
        .aclk(pll_0_clk_out1),
        .sel(sel_1));
  Shared_mult_2_imp_1OS2GFV Shared_mult_2
       (.CBC_input_A(CBC_0_OP3),
        .CBC_input_B(CBC_0_OP4),
        .Channel_input_A(CH1_OP3),
        .Channel_input_B(CH1_OP4),
        .P(Shared_mult_2_P),
        .aclk(pll_0_clk_out1),
        .sel(sel_1));
  Shared_mult_3_imp_YTDO27 Shared_mult_3
       (.CBC_input_A(CBC_0_OP9),
        .CBC_input_B(CBC_0_OP10),
        .Channel_input_A(CH2_OP3),
        .Channel_input_B(CH2_OP4),
        .P(Shared_mult_3_P),
        .aclk(pll_0_clk_out1),
        .sel(sel_1));
  Shared_mult_4_imp_1FAL475 Shared_mult_4
       (.CBC_input_A(CBC_0_OP5),
        .CBC_input_B(CBC_0_OP6),
        .Channel_input_A(CH2_multiplier_breakout_OP5),
        .Channel_input_B(CH2_multiplier_breakout_OP6),
        .P(Shared_mult_4_P),
        .aclk(pll_0_clk_out1),
        .sel(sel_1));
  Shared_mult_5_imp_8IBYGL Shared_mult_5
       (.CBC_input_A(CBC_0_OP7),
        .CBC_input_B(CBC_0_OP8),
        .Channel_input_A(CH2_multiplier_breakout_OP1),
        .Channel_input_B(CH2_multiplier_breakout_OP2),
        .P(Shared_mult_5_P),
        .aclk(pll_0_clk_out1),
        .sel(sel_1));
  system_ch1_output_dac_mem_split_0 ch1_output_dac_mem_split
       (.aclk(pll_0_clk_out1),
        .aresetn(rst_0_peripheral_aresetn),
        .m_axis_tdata({Conn5_TDATA,Conn1_TDATA}),
        .m_axis_tvalid({Conn5_TVALID,Conn1_TVALID}),
        .s_axis_tdata(feedback_combined_0_M_AXIS_TDATA),
        .s_axis_tvalid(feedback_combined_0_M_AXIS_TVALID));
  system_feedback_combined_0_0 feedback_combined_0
       (.CBC_offset(CBC_OFFSET),
        .CH1_offset(CH1_multiplier_breakout_OFFSET),
        .CH1_product_1(CH1_multiplier_breakout_OP7),
        .CH1_product_2(CH1_mult2_P),
        .CH1_sel(sel_1),
        .CH2_offset(CH2_multiplier_breakout_OFFSET),
        .CH2_product_1(CH2_multiplier_breakout_OP7),
        .CH2_sel(Net1),
        .M_AXIS_tdata(feedback_combined_0_M_AXIS_TDATA),
        .M_AXIS_tvalid(feedback_combined_0_M_AXIS_TVALID),
        .Shared_product_1(Shared_mult_1_P),
        .Shared_product_2(Shared_mult_2_P),
        .Shared_product_3(Shared_mult_3_P),
        .Shared_product_4(Shared_mult_4_P),
        .Shared_product_5(Shared_mult_5_P),
        .aclk(pll_0_clk_out1),
        .continuous_output_in(continuous_output_in_1),
        .trig_in_CBC(CBC_trigger_out),
        .trig_in_channels(multiplier_breakout_0_trigger_out),
        .trig_out(feedback_combined_0_trig_out));
endmodule

module m00_couplers_imp_18R8RDN
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire m00_couplers_to_m00_couplers_ARREADY;
  wire m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire m00_couplers_to_m00_couplers_AWREADY;
  wire m00_couplers_to_m00_couplers_AWVALID;
  wire m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire m00_couplers_to_m00_couplers_WREADY;
  wire m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wvalid = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid;
endmodule

module m01_couplers_imp_47CMX6
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module s00_couplers_imp_15TT0JU
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]s00_couplers_to_auto_pc_ARID;
  wire [3:0]s00_couplers_to_auto_pc_ARLEN;
  wire [1:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]s00_couplers_to_auto_pc_AWID;
  wire [3:0]s00_couplers_to_auto_pc_AWLEN;
  wire [1:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire [11:0]s00_couplers_to_auto_pc_BID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire [11:0]s00_couplers_to_auto_pc_RID;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire [11:0]s00_couplers_to_auto_pc_WID;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  system_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s00_couplers_to_auto_pc_BID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s00_couplers_to_auto_pc_RID),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wid(s00_couplers_to_auto_pc_WID),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
endmodule

(* CORE_GENERATION_INFO = "system,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=system,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=76,numReposBlks=58,numNonXlnxBlks=0,numHierBlks=18,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=12,numPkgbdBlks=0,bdsource=USER,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_clkrst_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=13,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_clkrst_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=10,synth_mode=Global}" *) (* HW_HANDOFF = "system.hwdef" *) 
module system
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    adc_clk_n_i,
    adc_clk_p_i,
    adc_csn_o,
    adc_dat_a_i,
    adc_dat_b_i,
    adc_enc_n_o,
    adc_enc_p_o,
    dac_clk_o,
    dac_dat_o,
    dac_pwm_o,
    dac_rst_o,
    dac_sel_o,
    dac_wrt_o,
    exp_n_tri_io,
    exp_p_tri_io,
    led_o);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  input adc_clk_n_i;
  input adc_clk_p_i;
  output adc_csn_o;
  input [15:0]adc_dat_a_i;
  input [15:0]adc_dat_b_i;
  output adc_enc_n_o;
  output adc_enc_p_o;
  output dac_clk_o;
  output [13:0]dac_dat_o;
  output [3:0]dac_pwm_o;
  output dac_rst_o;
  output dac_sel_o;
  output dac_wrt_o;
  inout [7:0]exp_n_tri_io;
  inout [7:0]exp_p_tri_io;
  output [7:0]led_o;

  wire Core_clk_out2;
  wire Core_clk_out3;
  wire Core_locked;
  wire [511:0]Memory_IO_cfg_data;
  wire [17:0]Memory_IO_sts_data1;
  wire [3:0]Reg_Brakeout_Dout;
  wire [0:0]Reg_Brakeout_Dout15;
  wire [3:0]Reg_Brakeout_Dout9;
  wire [191:0]Reg_Brakeout_M_AXIS3_TDATA;
  wire Reg_Brakeout_M_AXIS3_TVALID;
  wire [15:0]Reg_Brakeout_M_AXIS4_TDATA;
  wire Reg_Brakeout_M_AXIS4_TVALID;
  wire [0:0]Reg_Brakeout_dout4;
  wire [63:48]S_AXIS_ADC2_1_TDATA;
  wire [3:3]S_AXIS_ADC2_1_TVALID;
  wire [447:0]S_AXIS_CFG2_1_TDATA;
  wire S_AXIS_CFG2_1_TVALID;
  wire [191:0]S_AXIS_CFG_1_TDATA;
  wire S_AXIS_CFG_1_TVALID;
  wire [15:0]S_AXIS_RNG2_1_TDATA;
  wire S_AXIS_RNG2_1_TVALID;
  wire adc_clk_n_i_1;
  wire adc_clk_p_i_1;
  wire [15:0]adc_dat_a_i_1;
  wire [15:0]adc_dat_b_i_1;
  wire [31:0]axis_red_pitaya_adc_0_M_AXIS_TDATA;
  wire axis_red_pitaya_adc_0_M_AXIS_TVALID;
  wire axis_red_pitaya_adc_0_adc_csn;
  wire axis_red_pitaya_dac_0_dac_clk;
  wire [13:0]axis_red_pitaya_dac_0_dac_dat;
  wire axis_red_pitaya_dac_0_dac_rst;
  wire axis_red_pitaya_dac_0_dac_sel;
  wire axis_red_pitaya_dac_0_dac_wrt;
  wire [15:0]ch1_mem_fb_split_M00_AXIS_TDATA;
  wire [0:0]ch1_mem_fb_split_M00_AXIS_TVALID;
  wire [31:16]ch1_mem_fb_split_M01_AXIS_TDATA;
  wire [1:1]ch1_mem_fb_split_M01_AXIS_TVALID;
  wire [47:32]ch1_mem_fb_split_M02_AXIS_TDATA;
  wire [2:2]ch1_mem_fb_split_M02_AXIS_TVALID;
  wire [79:64]ch1_mem_fb_split_M04_AXIS_TDATA;
  wire [4:4]ch1_mem_fb_split_M04_AXIS_TVALID;
  wire [95:80]ch1_mem_fb_split_M05_AXIS_TDATA;
  wire [5:5]ch1_mem_fb_split_M05_AXIS_TVALID;
  wire [111:96]ch1_mem_fb_split_M06_AXIS_TDATA;
  wire [6:6]ch1_mem_fb_split_M06_AXIS_TVALID;
  wire [127:112]ch1_mem_fb_split_M07_AXIS_TDATA;
  wire [7:7]ch1_mem_fb_split_M07_AXIS_TVALID;
  wire [31:0]const_0_dout;
  wire [0:0]continuous_output_in_1;
  wire [63:0]conv_0_M_AXIS_TDATA;
  wire conv_0_M_AXIS_TVALID;
  wire [0:0]displacement_int_ext_1;
  wire [31:0]feedback_and_generation_M00_AXIS_TDATA;
  wire [0:0]feedback_and_generation_M00_AXIS_TVALID;
  wire [31:0]feedback_and_generation_M01_AXIS_TDATA;
  wire feedback_and_generation_M01_AXIS_TVALID;
  wire feedback_combined_0_trig_out;
  wire [0:0]input_select1_1;
  wire [0:0]input_select2_1;
  wire [0:0]input_select_1;
  wire pll_0_clk_out1;
  wire [0:0]polynomial_target_1;
  wire [14:0]ps_0_DDR_ADDR;
  wire [2:0]ps_0_DDR_BA;
  wire ps_0_DDR_CAS_N;
  wire ps_0_DDR_CKE;
  wire ps_0_DDR_CK_N;
  wire ps_0_DDR_CK_P;
  wire ps_0_DDR_CS_N;
  wire [3:0]ps_0_DDR_DM;
  wire [31:0]ps_0_DDR_DQ;
  wire [3:0]ps_0_DDR_DQS_N;
  wire [3:0]ps_0_DDR_DQS_P;
  wire ps_0_DDR_ODT;
  wire ps_0_DDR_RAS_N;
  wire ps_0_DDR_RESET_N;
  wire ps_0_DDR_WE_N;
  wire ps_0_FIXED_IO_DDR_VRN;
  wire ps_0_FIXED_IO_DDR_VRP;
  wire [53:0]ps_0_FIXED_IO_MIO;
  wire ps_0_FIXED_IO_PS_CLK;
  wire ps_0_FIXED_IO_PS_PORB;
  wire ps_0_FIXED_IO_PS_SRSTB;
  wire [31:0]ps_0_axi_periph_M00_AXI_ARADDR;
  wire ps_0_axi_periph_M00_AXI_ARREADY;
  wire ps_0_axi_periph_M00_AXI_ARVALID;
  wire [31:0]ps_0_axi_periph_M00_AXI_AWADDR;
  wire ps_0_axi_periph_M00_AXI_AWREADY;
  wire ps_0_axi_periph_M00_AXI_AWVALID;
  wire ps_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]ps_0_axi_periph_M00_AXI_BRESP;
  wire ps_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]ps_0_axi_periph_M00_AXI_RDATA;
  wire ps_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]ps_0_axi_periph_M00_AXI_RRESP;
  wire ps_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]ps_0_axi_periph_M00_AXI_WDATA;
  wire ps_0_axi_periph_M00_AXI_WREADY;
  wire ps_0_axi_periph_M00_AXI_WVALID;
  wire [31:0]ps_0_axi_periph_M01_AXI_ARADDR;
  wire ps_0_axi_periph_M01_AXI_ARREADY;
  wire ps_0_axi_periph_M01_AXI_ARVALID;
  wire [31:0]ps_0_axi_periph_M01_AXI_AWADDR;
  wire ps_0_axi_periph_M01_AXI_AWREADY;
  wire ps_0_axi_periph_M01_AXI_AWVALID;
  wire ps_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]ps_0_axi_periph_M01_AXI_BRESP;
  wire ps_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]ps_0_axi_periph_M01_AXI_RDATA;
  wire ps_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]ps_0_axi_periph_M01_AXI_RRESP;
  wire ps_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]ps_0_axi_periph_M01_AXI_WDATA;
  wire ps_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]ps_0_axi_periph_M01_AXI_WSTRB;
  wire ps_0_axi_periph_M01_AXI_WVALID;
  wire [0:0]rst_0_peripheral_aresetn;
  wire [0:0]slice_0_dout;
  wire [0:0]slice_1_dout;
  wire [31:0]slice_3_dout;
  wire [127:0]sts_data_1;
  wire [0:0]velocity_int_ext_1;
  wire [31:0]writer_0_M_AXI_AWADDR;
  wire [1:0]writer_0_M_AXI_AWBURST;
  wire [3:0]writer_0_M_AXI_AWCACHE;
  wire [2:0]writer_0_M_AXI_AWID;
  wire [3:0]writer_0_M_AXI_AWLEN;
  wire writer_0_M_AXI_AWREADY;
  wire [2:0]writer_0_M_AXI_AWSIZE;
  wire writer_0_M_AXI_AWVALID;
  wire writer_0_M_AXI_BREADY;
  wire writer_0_M_AXI_BVALID;
  wire [63:0]writer_0_M_AXI_WDATA;
  wire [2:0]writer_0_M_AXI_WID;
  wire writer_0_M_AXI_WLAST;
  wire writer_0_M_AXI_WREADY;
  wire [7:0]writer_0_M_AXI_WSTRB;
  wire writer_0_M_AXI_WVALID;

  assign adc_clk_n_i_1 = adc_clk_n_i;
  assign adc_clk_p_i_1 = adc_clk_p_i;
  assign adc_csn_o = axis_red_pitaya_adc_0_adc_csn;
  assign adc_dat_a_i_1 = adc_dat_a_i[15:0];
  assign adc_dat_b_i_1 = adc_dat_b_i[15:0];
  assign dac_clk_o = axis_red_pitaya_dac_0_dac_clk;
  assign dac_dat_o[13:0] = axis_red_pitaya_dac_0_dac_dat;
  assign dac_rst_o = axis_red_pitaya_dac_0_dac_rst;
  assign dac_sel_o = axis_red_pitaya_dac_0_dac_sel;
  assign dac_wrt_o = axis_red_pitaya_dac_0_dac_wrt;
  assign led_o[0] = exp_p_tri_io[0];
  Core_imp_1JF9L0S Core
       (.DDR_addr(DDR_addr[14:0]),
        .DDR_ba(DDR_ba[2:0]),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm[3:0]),
        .DDR_dq(DDR_dq[31:0]),
        .DDR_dqs_n(DDR_dqs_n[3:0]),
        .DDR_dqs_p(DDR_dqs_p[3:0]),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio[53:0]),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .M00_AXI_araddr(ps_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(ps_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(ps_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ps_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(ps_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(ps_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(ps_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(ps_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(ps_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(ps_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(ps_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(ps_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(ps_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(ps_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(ps_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wvalid(ps_0_axi_periph_M00_AXI_WVALID),
        .M01_AXI_araddr(ps_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arready(ps_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(ps_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(ps_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awready(ps_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(ps_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(ps_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(ps_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(ps_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(ps_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(ps_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(ps_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(ps_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(ps_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(ps_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(ps_0_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(ps_0_axi_periph_M01_AXI_WVALID),
        .S00_ARESETN(rst_0_peripheral_aresetn),
        .S_AXI_ACP_awaddr(writer_0_M_AXI_AWADDR),
        .S_AXI_ACP_awburst(writer_0_M_AXI_AWBURST),
        .S_AXI_ACP_awcache(writer_0_M_AXI_AWCACHE),
        .S_AXI_ACP_awid(writer_0_M_AXI_AWID),
        .S_AXI_ACP_awlen(writer_0_M_AXI_AWLEN),
        .S_AXI_ACP_awready(writer_0_M_AXI_AWREADY),
        .S_AXI_ACP_awsize(writer_0_M_AXI_AWSIZE),
        .S_AXI_ACP_awvalid(writer_0_M_AXI_AWVALID),
        .S_AXI_ACP_bready(writer_0_M_AXI_BREADY),
        .S_AXI_ACP_bvalid(writer_0_M_AXI_BVALID),
        .S_AXI_ACP_wdata(writer_0_M_AXI_WDATA),
        .S_AXI_ACP_wid(writer_0_M_AXI_WID),
        .S_AXI_ACP_wlast(writer_0_M_AXI_WLAST),
        .S_AXI_ACP_wready(writer_0_M_AXI_WREADY),
        .S_AXI_ACP_wstrb(writer_0_M_AXI_WSTRB),
        .S_AXI_ACP_wvalid(writer_0_M_AXI_WVALID),
        .adc_clk_n_i(adc_clk_n_i_1),
        .adc_clk_p_i(adc_clk_p_i_1),
        .clk_out1(pll_0_clk_out1),
        .clk_out2(Core_clk_out2),
        .clk_out3(Core_clk_out3),
        .ext_reset_in(const_0_dout),
        .locked(Core_locked));
  Memory_IO_imp_19T7DMV Memory_IO
       (.M_AXI_awaddr(writer_0_M_AXI_AWADDR),
        .M_AXI_awburst(writer_0_M_AXI_AWBURST),
        .M_AXI_awcache(writer_0_M_AXI_AWCACHE),
        .M_AXI_awid(writer_0_M_AXI_AWID),
        .M_AXI_awlen(writer_0_M_AXI_AWLEN),
        .M_AXI_awready(writer_0_M_AXI_AWREADY),
        .M_AXI_awsize(writer_0_M_AXI_AWSIZE),
        .M_AXI_awvalid(writer_0_M_AXI_AWVALID),
        .M_AXI_bready(writer_0_M_AXI_BREADY),
        .M_AXI_bvalid(writer_0_M_AXI_BVALID),
        .M_AXI_wdata(writer_0_M_AXI_WDATA),
        .M_AXI_wid(writer_0_M_AXI_WID),
        .M_AXI_wlast(writer_0_M_AXI_WLAST),
        .M_AXI_wready(writer_0_M_AXI_WREADY),
        .M_AXI_wstrb(writer_0_M_AXI_WSTRB),
        .M_AXI_wvalid(writer_0_M_AXI_WVALID),
        .S_AXI1_araddr(ps_0_axi_periph_M00_AXI_ARADDR),
        .S_AXI1_arready(ps_0_axi_periph_M00_AXI_ARREADY),
        .S_AXI1_arvalid(ps_0_axi_periph_M00_AXI_ARVALID),
        .S_AXI1_awaddr(ps_0_axi_periph_M00_AXI_AWADDR),
        .S_AXI1_awready(ps_0_axi_periph_M00_AXI_AWREADY),
        .S_AXI1_awvalid(ps_0_axi_periph_M00_AXI_AWVALID),
        .S_AXI1_bready(ps_0_axi_periph_M00_AXI_BREADY),
        .S_AXI1_bresp(ps_0_axi_periph_M00_AXI_BRESP),
        .S_AXI1_bvalid(ps_0_axi_periph_M00_AXI_BVALID),
        .S_AXI1_rdata(ps_0_axi_periph_M00_AXI_RDATA),
        .S_AXI1_rready(ps_0_axi_periph_M00_AXI_RREADY),
        .S_AXI1_rresp(ps_0_axi_periph_M00_AXI_RRESP),
        .S_AXI1_rvalid(ps_0_axi_periph_M00_AXI_RVALID),
        .S_AXI1_wdata(ps_0_axi_periph_M00_AXI_WDATA),
        .S_AXI1_wready(ps_0_axi_periph_M00_AXI_WREADY),
        .S_AXI1_wvalid(ps_0_axi_periph_M00_AXI_WVALID),
        .S_AXIS_tdata(conv_0_M_AXIS_TDATA),
        .S_AXIS_tvalid(conv_0_M_AXIS_TVALID),
        .S_AXI_araddr(ps_0_axi_periph_M01_AXI_ARADDR),
        .S_AXI_arready(ps_0_axi_periph_M01_AXI_ARREADY),
        .S_AXI_arvalid(ps_0_axi_periph_M01_AXI_ARVALID),
        .S_AXI_awaddr(ps_0_axi_periph_M01_AXI_AWADDR),
        .S_AXI_awready(ps_0_axi_periph_M01_AXI_AWREADY),
        .S_AXI_awvalid(ps_0_axi_periph_M01_AXI_AWVALID),
        .S_AXI_bready(ps_0_axi_periph_M01_AXI_BREADY),
        .S_AXI_bresp(ps_0_axi_periph_M01_AXI_BRESP),
        .S_AXI_bvalid(ps_0_axi_periph_M01_AXI_BVALID),
        .S_AXI_rdata(ps_0_axi_periph_M01_AXI_RDATA),
        .S_AXI_rready(ps_0_axi_periph_M01_AXI_RREADY),
        .S_AXI_rresp(ps_0_axi_periph_M01_AXI_RRESP),
        .S_AXI_rvalid(ps_0_axi_periph_M01_AXI_RVALID),
        .S_AXI_wdata(ps_0_axi_periph_M01_AXI_WDATA),
        .S_AXI_wready(ps_0_axi_periph_M01_AXI_WREADY),
        .S_AXI_wstrb(ps_0_axi_periph_M01_AXI_WSTRB),
        .S_AXI_wvalid(ps_0_axi_periph_M01_AXI_WVALID),
        .aclk(pll_0_clk_out1),
        .aresetn(rst_0_peripheral_aresetn),
        .aresetn1(slice_1_dout),
        .cfg_data(Memory_IO_cfg_data),
        .cfg_data1(slice_3_dout),
        .sts_data(sts_data_1),
        .sts_data1(Memory_IO_sts_data1));
  Reg_Brakeout_imp_H22Q4C Reg_Brakeout
       (.Din(Memory_IO_cfg_data),
        .Dout(Reg_Brakeout_Dout),
        .Dout10(input_select1_1),
        .Dout11(input_select2_1),
        .Dout12(velocity_int_ext_1),
        .Dout13(polynomial_target_1),
        .Dout14(displacement_int_ext_1),
        .Dout15(Reg_Brakeout_Dout15),
        .Dout7(input_select_1),
        .Dout8(continuous_output_in_1),
        .Dout9(Reg_Brakeout_Dout9),
        .In2(Memory_IO_sts_data1),
        .M_AXIS1_tdata(S_AXIS_CFG2_1_TDATA),
        .M_AXIS1_tvalid(S_AXIS_CFG2_1_TVALID),
        .M_AXIS2_tdata(S_AXIS_CFG_1_TDATA),
        .M_AXIS2_tvalid(S_AXIS_CFG_1_TVALID),
        .M_AXIS3_tdata(Reg_Brakeout_M_AXIS3_TDATA),
        .M_AXIS3_tvalid(Reg_Brakeout_M_AXIS3_TVALID),
        .M_AXIS4_tdata(Reg_Brakeout_M_AXIS4_TDATA),
        .M_AXIS4_tvalid(Reg_Brakeout_M_AXIS4_TVALID),
        .M_AXIS5_tdata(S_AXIS_RNG2_1_TDATA),
        .M_AXIS5_tvalid(S_AXIS_RNG2_1_TVALID),
        .aclk(pll_0_clk_out1),
        .aresetn(rst_0_peripheral_aresetn),
        .dout1(slice_3_dout),
        .dout2(const_0_dout),
        .dout3(sts_data_1),
        .dout4(Reg_Brakeout_dout4),
        .dout5(slice_1_dout),
        .dout6(slice_0_dout));
  system_axis_red_pitaya_adc_0_0 axis_red_pitaya_adc_0
       (.aclk(pll_0_clk_out1),
        .adc_csn(axis_red_pitaya_adc_0_adc_csn),
        .adc_dat_a(adc_dat_a_i_1),
        .adc_dat_b(adc_dat_b_i_1),
        .m_axis_tdata(axis_red_pitaya_adc_0_M_AXIS_TDATA),
        .m_axis_tvalid(axis_red_pitaya_adc_0_M_AXIS_TVALID));
  system_axis_red_pitaya_dac_0_0 axis_red_pitaya_dac_0
       (.aclk(pll_0_clk_out1),
        .dac_clk(axis_red_pitaya_dac_0_dac_clk),
        .dac_dat(axis_red_pitaya_dac_0_dac_dat),
        .dac_rst(axis_red_pitaya_dac_0_dac_rst),
        .dac_sel(axis_red_pitaya_dac_0_dac_sel),
        .dac_wrt(axis_red_pitaya_dac_0_dac_wrt),
        .ddr_clk(Core_clk_out2),
        .locked(Core_locked),
        .s_axis_tdata(feedback_and_generation_M01_AXIS_TDATA),
        .s_axis_tvalid(feedback_and_generation_M01_AXIS_TVALID),
        .wrt_clk(Core_clk_out3));
  system_ch1_mem_fb_split_0 ch1_mem_fb_split
       (.aclk(pll_0_clk_out1),
        .aresetn(rst_0_peripheral_aresetn),
        .m_axis_tdata({ch1_mem_fb_split_M07_AXIS_TDATA,ch1_mem_fb_split_M06_AXIS_TDATA,ch1_mem_fb_split_M05_AXIS_TDATA,ch1_mem_fb_split_M04_AXIS_TDATA,S_AXIS_ADC2_1_TDATA,ch1_mem_fb_split_M02_AXIS_TDATA,ch1_mem_fb_split_M01_AXIS_TDATA,ch1_mem_fb_split_M00_AXIS_TDATA}),
        .m_axis_tvalid({ch1_mem_fb_split_M07_AXIS_TVALID,ch1_mem_fb_split_M06_AXIS_TVALID,ch1_mem_fb_split_M05_AXIS_TVALID,ch1_mem_fb_split_M04_AXIS_TVALID,S_AXIS_ADC2_1_TVALID,ch1_mem_fb_split_M02_AXIS_TVALID,ch1_mem_fb_split_M01_AXIS_TVALID,ch1_mem_fb_split_M00_AXIS_TVALID}),
        .s_axis_tdata(axis_red_pitaya_adc_0_M_AXIS_TDATA),
        .s_axis_tvalid(axis_red_pitaya_adc_0_M_AXIS_TVALID));
  downsampling_imp_1CFV2HL downsampling
       (.M_AXIS_tdata(conv_0_M_AXIS_TDATA),
        .M_AXIS_tvalid(conv_0_M_AXIS_TVALID),
        .S00_AXIS1_tdata(ch1_mem_fb_split_M00_AXIS_TDATA),
        .S00_AXIS1_tvalid(ch1_mem_fb_split_M00_AXIS_TVALID),
        .S01_AXIS1_tdata(ch1_mem_fb_split_M01_AXIS_TDATA),
        .S01_AXIS1_tvalid(ch1_mem_fb_split_M01_AXIS_TVALID),
        .S01_AXIS_tdata(feedback_and_generation_M00_AXIS_TDATA),
        .S01_AXIS_tvalid(feedback_and_generation_M00_AXIS_TVALID),
        .aclk(pll_0_clk_out1),
        .aresetn(slice_0_dout),
        .select1(Reg_Brakeout_Dout15));
  feedback_and_generation_imp_GDMTQL feedback_and_generation
       (.CH2_sel(Reg_Brakeout_Dout9),
        .M00_AXIS_tdata(feedback_and_generation_M00_AXIS_TDATA),
        .M00_AXIS_tvalid(feedback_and_generation_M00_AXIS_TVALID),
        .M01_AXIS_tdata(feedback_and_generation_M01_AXIS_TDATA),
        .M01_AXIS_tvalid(feedback_and_generation_M01_AXIS_TVALID),
        .S_AXIS_ADC1_tdata(ch1_mem_fb_split_M02_AXIS_TDATA),
        .S_AXIS_ADC1_tvalid(ch1_mem_fb_split_M02_AXIS_TVALID),
        .S_AXIS_ADC2_tdata(S_AXIS_ADC2_1_TDATA),
        .S_AXIS_ADC2_tvalid(S_AXIS_ADC2_1_TVALID),
        .S_AXIS_ADC3_tdata(ch1_mem_fb_split_M04_AXIS_TDATA),
        .S_AXIS_ADC3_tvalid(ch1_mem_fb_split_M04_AXIS_TVALID),
        .S_AXIS_ADC4_tdata(ch1_mem_fb_split_M05_AXIS_TDATA),
        .S_AXIS_ADC4_tvalid(ch1_mem_fb_split_M05_AXIS_TVALID),
        .S_AXIS_ADC5_tdata(ch1_mem_fb_split_M06_AXIS_TDATA),
        .S_AXIS_ADC5_tvalid(ch1_mem_fb_split_M06_AXIS_TVALID),
        .S_AXIS_ADC6_tdata(ch1_mem_fb_split_M07_AXIS_TDATA),
        .S_AXIS_ADC6_tvalid(ch1_mem_fb_split_M07_AXIS_TVALID),
        .S_AXIS_CFG1_tdata(Reg_Brakeout_M_AXIS3_TDATA),
        .S_AXIS_CFG1_tvalid(Reg_Brakeout_M_AXIS3_TVALID),
        .S_AXIS_CFG2_tdata(S_AXIS_CFG2_1_TDATA),
        .S_AXIS_CFG2_tvalid(S_AXIS_CFG2_1_TVALID),
        .S_AXIS_CFG_tdata(S_AXIS_CFG_1_TDATA),
        .S_AXIS_CFG_tvalid(S_AXIS_CFG_1_TVALID),
        .S_AXIS_RNG1_tdata(Reg_Brakeout_M_AXIS4_TDATA),
        .S_AXIS_RNG1_tvalid(Reg_Brakeout_M_AXIS4_TVALID),
        .S_AXIS_RNG2_tdata(S_AXIS_RNG2_1_TDATA),
        .S_AXIS_RNG2_tvalid(S_AXIS_RNG2_1_TVALID),
        .aclk(pll_0_clk_out1),
        .aresetn(rst_0_peripheral_aresetn),
        .continuous_output_in(continuous_output_in_1),
        .displacement_int_ext(displacement_int_ext_1),
        .exp_p_tri_io(exp_p_tri_io[0]),
        .input_select(input_select_1),
        .input_select1(input_select1_1),
        .input_select2(input_select2_1),
        .polynomial_target(polynomial_target_1),
        .sel(Reg_Brakeout_Dout),
        .trig_in(Reg_Brakeout_dout4),
        .velocity_int_ext(velocity_int_ext_1));
endmodule

module system_params_imp_1MROCIH
   (Din1,
    Dout15,
    Dout8,
    dout1,
    dout4,
    dout5,
    dout6);
  input [511:0]Din1;
  output [0:0]Dout15;
  output [0:0]Dout8;
  output [31:0]dout1;
  output [0:0]dout4;
  output [0:0]dout5;
  output [0:0]dout6;

  wire [511:0]Din1_1;
  wire [0:0]Fast_mode_Dout;
  wire [31:0]RAM_addres_Dout;
  wire [0:0]continuous_output_Dout;
  wire [0:0]feedback_trigger_Dout;
  wire [0:0]pre_memory_reset_Dout;
  wire [0:0]ram_writer_reset_Dout;

  assign Din1_1 = Din1[511:0];
  assign Dout15[0] = Fast_mode_Dout;
  assign Dout8[0] = continuous_output_Dout;
  assign dout1[31:0] = RAM_addres_Dout;
  assign dout4[0] = feedback_trigger_Dout;
  assign dout5[0] = ram_writer_reset_Dout;
  assign dout6[0] = pre_memory_reset_Dout;
  system_continuous_output_0 Fast_mode
       (.Din(Din1_1),
        .Dout(Fast_mode_Dout));
  system_RAM_addres_0 RAM_addres
       (.Din(Din1_1),
        .Dout(RAM_addres_Dout));
  system_Feedback_State_2 continuous_output
       (.Din(Din1_1),
        .Dout(continuous_output_Dout));
  system_feedback_trigger_0 feedback_trigger
       (.Din(Din1_1),
        .Dout(feedback_trigger_Dout));
  system_pre_memory_reset_0 pre_memory_reset
       (.Din(Din1_1),
        .Dout(pre_memory_reset_Dout));
  system_ram_writer_reset_0 ram_writer_reset
       (.Din(Din1_1),
        .Dout(ram_writer_reset_Dout));
endmodule

module system_ps_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire [31:0]m00_couplers_to_ps_0_axi_periph_ARADDR;
  wire m00_couplers_to_ps_0_axi_periph_ARREADY;
  wire m00_couplers_to_ps_0_axi_periph_ARVALID;
  wire [31:0]m00_couplers_to_ps_0_axi_periph_AWADDR;
  wire m00_couplers_to_ps_0_axi_periph_AWREADY;
  wire m00_couplers_to_ps_0_axi_periph_AWVALID;
  wire m00_couplers_to_ps_0_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_ps_0_axi_periph_BRESP;
  wire m00_couplers_to_ps_0_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_ps_0_axi_periph_RDATA;
  wire m00_couplers_to_ps_0_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_ps_0_axi_periph_RRESP;
  wire m00_couplers_to_ps_0_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_ps_0_axi_periph_WDATA;
  wire m00_couplers_to_ps_0_axi_periph_WREADY;
  wire m00_couplers_to_ps_0_axi_periph_WVALID;
  wire [31:0]m01_couplers_to_ps_0_axi_periph_ARADDR;
  wire m01_couplers_to_ps_0_axi_periph_ARREADY;
  wire m01_couplers_to_ps_0_axi_periph_ARVALID;
  wire [31:0]m01_couplers_to_ps_0_axi_periph_AWADDR;
  wire m01_couplers_to_ps_0_axi_periph_AWREADY;
  wire m01_couplers_to_ps_0_axi_periph_AWVALID;
  wire m01_couplers_to_ps_0_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_ps_0_axi_periph_BRESP;
  wire m01_couplers_to_ps_0_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_ps_0_axi_periph_RDATA;
  wire m01_couplers_to_ps_0_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_ps_0_axi_periph_RRESP;
  wire m01_couplers_to_ps_0_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_ps_0_axi_periph_WDATA;
  wire m01_couplers_to_ps_0_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_ps_0_axi_periph_WSTRB;
  wire m01_couplers_to_ps_0_axi_periph_WVALID;
  wire ps_0_axi_periph_ACLK_net;
  wire ps_0_axi_periph_ARESETN_net;
  wire [31:0]ps_0_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]ps_0_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]ps_0_axi_periph_to_s00_couplers_ARCACHE;
  wire [11:0]ps_0_axi_periph_to_s00_couplers_ARID;
  wire [3:0]ps_0_axi_periph_to_s00_couplers_ARLEN;
  wire [1:0]ps_0_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]ps_0_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]ps_0_axi_periph_to_s00_couplers_ARQOS;
  wire ps_0_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]ps_0_axi_periph_to_s00_couplers_ARSIZE;
  wire ps_0_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]ps_0_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]ps_0_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]ps_0_axi_periph_to_s00_couplers_AWCACHE;
  wire [11:0]ps_0_axi_periph_to_s00_couplers_AWID;
  wire [3:0]ps_0_axi_periph_to_s00_couplers_AWLEN;
  wire [1:0]ps_0_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]ps_0_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]ps_0_axi_periph_to_s00_couplers_AWQOS;
  wire ps_0_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]ps_0_axi_periph_to_s00_couplers_AWSIZE;
  wire ps_0_axi_periph_to_s00_couplers_AWVALID;
  wire [11:0]ps_0_axi_periph_to_s00_couplers_BID;
  wire ps_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]ps_0_axi_periph_to_s00_couplers_BRESP;
  wire ps_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]ps_0_axi_periph_to_s00_couplers_RDATA;
  wire [11:0]ps_0_axi_periph_to_s00_couplers_RID;
  wire ps_0_axi_periph_to_s00_couplers_RLAST;
  wire ps_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]ps_0_axi_periph_to_s00_couplers_RRESP;
  wire ps_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]ps_0_axi_periph_to_s00_couplers_WDATA;
  wire [11:0]ps_0_axi_periph_to_s00_couplers_WID;
  wire ps_0_axi_periph_to_s00_couplers_WLAST;
  wire ps_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]ps_0_axi_periph_to_s00_couplers_WSTRB;
  wire ps_0_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [7:0]NLW_xbar_m_axi_wstrb_UNCONNECTED;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_ps_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_ps_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_ps_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_ps_0_axi_periph_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_ps_0_axi_periph_BREADY;
  assign M00_AXI_rready = m00_couplers_to_ps_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_ps_0_axi_periph_WDATA;
  assign M00_AXI_wvalid = m00_couplers_to_ps_0_axi_periph_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_ps_0_axi_periph_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_ps_0_axi_periph_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_ps_0_axi_periph_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_ps_0_axi_periph_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_ps_0_axi_periph_BREADY;
  assign M01_AXI_rready = m01_couplers_to_ps_0_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_ps_0_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_ps_0_axi_periph_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_ps_0_axi_periph_WVALID;
  assign S00_AXI_arready = ps_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ps_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = ps_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ps_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ps_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = ps_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = ps_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = ps_0_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ps_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ps_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ps_0_axi_periph_to_s00_couplers_WREADY;
  assign m00_couplers_to_ps_0_axi_periph_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_ps_0_axi_periph_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_ps_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_ps_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_ps_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_ps_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_ps_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_ps_0_axi_periph_WREADY = M00_AXI_wready;
  assign m01_couplers_to_ps_0_axi_periph_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_ps_0_axi_periph_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_ps_0_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_ps_0_axi_periph_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_ps_0_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_ps_0_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_ps_0_axi_periph_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_ps_0_axi_periph_WREADY = M01_AXI_wready;
  assign ps_0_axi_periph_ACLK_net = ACLK;
  assign ps_0_axi_periph_ARESETN_net = ARESETN;
  assign ps_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign ps_0_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ps_0_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ps_0_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign ps_0_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign ps_0_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign ps_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ps_0_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ps_0_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ps_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ps_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign ps_0_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ps_0_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ps_0_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign ps_0_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign ps_0_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign ps_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ps_0_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ps_0_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ps_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ps_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ps_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ps_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign ps_0_axi_periph_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign ps_0_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ps_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign ps_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  m00_couplers_imp_18R8RDN m00_couplers
       (.M_ACLK(ps_0_axi_periph_ACLK_net),
        .M_ARESETN(ps_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_ps_0_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_ps_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_ps_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_ps_0_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_ps_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_ps_0_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_ps_0_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_ps_0_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_ps_0_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_ps_0_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_ps_0_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_ps_0_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_ps_0_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_ps_0_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_ps_0_axi_periph_WREADY),
        .M_AXI_wvalid(m00_couplers_to_ps_0_axi_periph_WVALID),
        .S_ACLK(ps_0_axi_periph_ACLK_net),
        .S_ARESETN(ps_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_47CMX6 m01_couplers
       (.M_ACLK(ps_0_axi_periph_ACLK_net),
        .M_ARESETN(ps_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_ps_0_axi_periph_ARADDR),
        .M_AXI_arready(m01_couplers_to_ps_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_ps_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_ps_0_axi_periph_AWADDR),
        .M_AXI_awready(m01_couplers_to_ps_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_ps_0_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_ps_0_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_ps_0_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_ps_0_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_ps_0_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_ps_0_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_ps_0_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_ps_0_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_ps_0_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_ps_0_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_ps_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_ps_0_axi_periph_WVALID),
        .S_ACLK(ps_0_axi_periph_ACLK_net),
        .S_ARESETN(ps_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_15TT0JU s00_couplers
       (.M_ACLK(ps_0_axi_periph_ACLK_net),
        .M_ARESETN(ps_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(ps_0_axi_periph_ACLK_net),
        .S_ARESETN(ps_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(ps_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ps_0_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ps_0_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ps_0_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(ps_0_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ps_0_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ps_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ps_0_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(ps_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ps_0_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(ps_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ps_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ps_0_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ps_0_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ps_0_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(ps_0_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ps_0_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ps_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ps_0_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(ps_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ps_0_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(ps_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(ps_0_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(ps_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(ps_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ps_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(ps_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(ps_0_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(ps_0_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(ps_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(ps_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ps_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(ps_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wid(ps_0_axi_periph_to_s00_couplers_WID),
        .S_AXI_wlast(ps_0_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(ps_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ps_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ps_0_axi_periph_to_s00_couplers_WVALID));
  system_xbar_0 xbar
       (.aclk(ps_0_axi_periph_ACLK_net),
        .aresetn(ps_0_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,NLW_xbar_m_axi_wstrb_UNCONNECTED[3:0]}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule
