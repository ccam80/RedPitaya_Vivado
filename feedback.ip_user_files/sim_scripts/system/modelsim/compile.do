vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_8
vlib modelsim_lib/msim/processing_system7_vip_v1_0_10
vlib modelsim_lib/msim/xlconstant_v1_1_7
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/xbip_utils_v3_0_10
vlib modelsim_lib/msim/axi_utils_v2_0_6
vlib modelsim_lib/msim/cic_compiler_v4_0_15
vlib modelsim_lib/msim/axis_infrastructure_v1_1_0
vlib modelsim_lib/msim/axis_register_slice_v1_1_22
vlib modelsim_lib/msim/axis_dwidth_converter_v1_1_21
vlib modelsim_lib/msim/xlconcat_v2_1_4
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_22
vlib modelsim_lib/msim/fifo_generator_v13_2_5
vlib modelsim_lib/msim/axi_data_fifo_v2_1_21
vlib modelsim_lib/msim/axi_crossbar_v2_1_23
vlib modelsim_lib/msim/axis_broadcaster_v1_1_21
vlib modelsim_lib/msim/axis_combiner_v1_1_20
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_22

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 modelsim_lib/msim/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 modelsim_lib/msim/processing_system7_vip_v1_0_10
vmap xlconstant_v1_1_7 modelsim_lib/msim/xlconstant_v1_1_7
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap xbip_utils_v3_0_10 modelsim_lib/msim/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 modelsim_lib/msim/axi_utils_v2_0_6
vmap cic_compiler_v4_0_15 modelsim_lib/msim/cic_compiler_v4_0_15
vmap axis_infrastructure_v1_1_0 modelsim_lib/msim/axis_infrastructure_v1_1_0
vmap axis_register_slice_v1_1_22 modelsim_lib/msim/axis_register_slice_v1_1_22
vmap axis_dwidth_converter_v1_1_21 modelsim_lib/msim/axis_dwidth_converter_v1_1_21
vmap xlconcat_v2_1_4 modelsim_lib/msim/xlconcat_v2_1_4
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_22 modelsim_lib/msim/axi_register_slice_v2_1_22
vmap fifo_generator_v13_2_5 modelsim_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_21 modelsim_lib/msim/axi_data_fifo_v2_1_21
vmap axi_crossbar_v2_1_23 modelsim_lib/msim/axi_crossbar_v2_1_23
vmap axis_broadcaster_v1_1_21 modelsim_lib/msim/axis_broadcaster_v1_1_21
vmap axis_combiner_v1_1_20 modelsim_lib/msim/axis_combiner_v1_1_20
vmap axi_protocol_converter_v2_1_22 modelsim_lib/msim/axi_protocol_converter_v2_1_22

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_pll_0_0/system_pll_0_0_clk_wiz.v" \
"../../../bd/system/ip/system_pll_0_0/system_pll_0_0.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8 -64 -incr -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../feedback.gen/sources_1/bd/system/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10 -64 -incr -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_ps_0_0/sim/system_ps_0_0.v" \

vlog -work xlconstant_v1_1_7 -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../feedback.gen/sources_1/bd/system/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_const_0_0/sim/system_const_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../feedback.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../feedback.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_rst_0_0/sim/system_rst_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ipshared/afda/src/axis_red_pitaya_adc.v" \
"../../../bd/system/ip/system_adc_0_0/sim/system_adc_0_0.v" \
"../../../bd/system/ipshared/f42e/src/axis_red_pitaya_dac.v" \
"../../../bd/system/ip/system_dac_0_0/sim/system_dac_0_0.v" \
"../../../bd/system/ipshared/df40/src/axi_cfg_register.v" \
"../../../bd/system/ip/system_cfg_0_0/sim/system_cfg_0_0.v" \
"../../../bd/system/ipshared/1dd6/src/port_slicer.v" \
"../../../bd/system/ip/system_slice_0_0/sim/system_slice_0_0.v" \
"../../../bd/system/ip/system_slice_1_0/sim/system_slice_1_0.v" \
"../../../bd/system/ip/system_slice_2_0/sim/system_slice_2_0.v" \
"../../../bd/system/ip/system_slice_3_0/sim/system_slice_3_0.v" \
"../../../bd/system/ipshared/b446/src/axis_variable.v" \
"../../../bd/system/ip/system_rate_0_0/sim/system_rate_0_0.v" \

vcom -work xbip_utils_v3_0_10 -64 -93 \
"../../../../feedback.gen/sources_1/bd/system/ipshared/d117/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -64 -93 \
"../../../../feedback.gen/sources_1/bd/system/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work cic_compiler_v4_0_15 -64 -93 \
"../../../../feedback.gen/sources_1/bd/system/ipshared/0aa2/hdl/cic_compiler_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_cic_0_0/sim/system_cic_0_0.vhd" \

vlog -work axis_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_22 -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../feedback.gen/sources_1/bd/system/ipshared/ebcc/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work axis_dwidth_converter_v1_1_21 -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../feedback.gen/sources_1/bd/system/ipshared/6614/hdl/axis_dwidth_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_conv_0_0/sim/system_conv_0_0.v" \
"../../../bd/system/ipshared/8cfb/src/axis_ram_writer.v" \
"../../../bd/system/ip/system_writer_0_0/sim/system_writer_0_0.v" \
"../../../bd/system/ipshared/5f76/src/dna_reader.v" \
"../../../bd/system/ip/system_dna_0_0/sim/system_dna_0_0.v" \

vlog -work xlconcat_v2_1_4 -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../feedback.gen/sources_1/bd/system/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_concat_1_0/sim/system_concat_1_0.v" \
"../../../bd/system/ipshared/ad5c/src/axi_sts_register.v" \
"../../../bd/system/ip/system_sts_0_0/sim/system_sts_0_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../feedback.gen/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22 -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../feedback.gen/sources_1/bd/system/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5 -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../feedback.gen/sources_1/bd/system/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -64 -93 \
"../../../../feedback.gen/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5 -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../feedback.gen/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_21 -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../feedback.gen/sources_1/bd/system/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_23 -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../feedback.gen/sources_1/bd/system/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \
"../../../bd/system/ip/system_axis_broadcaster_0_2/hdl/tdata_system_axis_broadcaster_0_2.v" \
"../../../bd/system/ip/system_axis_broadcaster_0_2/hdl/tuser_system_axis_broadcaster_0_2.v" \

vlog -work axis_broadcaster_v1_1_21 -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../feedback.gen/sources_1/bd/system/ipshared/30ef/hdl/axis_broadcaster_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axis_broadcaster_0_2/hdl/top_system_axis_broadcaster_0_2.v" \
"../../../bd/system/ip/system_axis_broadcaster_0_2/sim/system_axis_broadcaster_0_2.v" \
"../../../bd/system/ip/system_ch1_mem_fb_split_0/hdl/tdata_system_ch1_mem_fb_split_0.v" \
"../../../bd/system/ip/system_ch1_mem_fb_split_0/hdl/tuser_system_ch1_mem_fb_split_0.v" \
"../../../bd/system/ip/system_ch1_mem_fb_split_0/hdl/top_system_ch1_mem_fb_split_0.v" \
"../../../bd/system/ip/system_ch1_mem_fb_split_0/sim/system_ch1_mem_fb_split_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_cic_0_1/sim/system_cic_0_1.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_ch1_output_dac_mem_split_0/hdl/tdata_system_ch1_output_dac_mem_split_0.v" \
"../../../bd/system/ip/system_ch1_output_dac_mem_split_0/hdl/tuser_system_ch1_output_dac_mem_split_0.v" \
"../../../bd/system/ip/system_ch1_output_dac_mem_split_0/hdl/top_system_ch1_output_dac_mem_split_0.v" \
"../../../bd/system/ip/system_ch1_output_dac_mem_split_0/sim/system_ch1_output_dac_mem_split_0.v" \

vlog -work axis_combiner_v1_1_20 -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../feedback.gen/sources_1/bd/system/ipshared/23ef/hdl/axis_combiner_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axis_combiner_0_0/sim/system_axis_combiner_0_0.v" \
"../../../bd/system/ip/system_slice_7_1/sim/system_slice_7_1.v" \
"../../../bd/system/ipshared/457f/src/axis_constant.v" \
"../../../bd/system/ip/system_b_const_16b_1/sim/system_b_const_16b_1.v" \
"../../../bd/system/ip/system_slice_6_1/sim/system_slice_6_1.v" \
"../../../bd/system/ip/system_output_binary_conver_0_0/sim/system_output_binary_conver_0_0.v" \
"../../../bd/system/ip/system_slice_6_2/sim/system_slice_6_2.v" \
"../../../bd/system/ip/system_feedback_combined_0_0/sim/system_feedback_combined_0_0.v" \

vlog -work axi_protocol_converter_v2_1_22 -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../feedback.gen/sources_1/bd/system/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/d0f7" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/34f8/hdl" "+incdir+../../../../feedback.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+/tools/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"

