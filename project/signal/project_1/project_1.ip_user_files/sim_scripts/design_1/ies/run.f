-makelib ies_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/axi_protocol_checker_v2_0_3 -sv \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/axi_vip_v1_1_3 -sv \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_5 -sv \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/interrupt_control_v3_1_4 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_gpio_v2_0_19 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c193/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_1 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ip/design_1_vga640x480_v1_1_0_0/bd/vga_buffer/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_vga640x480_v1_1_0_0/bd/vga_buffer/ip/vga_buffer_blk_mem_gen_0_0/sim/vga_buffer_blk_mem_gen_0_0.v" \
  "../../../bd/design_1/ipshared/58e3/bd/vga_buffer/sim/vga_buffer.v" \
  "../../../bd/design_1/ipshared/58e3/hdl/my_vga.v" \
  "../../../bd/design_1/ipshared/58e3/hdl/vga640x480_v1_0_S00_AXI.v" \
  "../../../bd/design_1/ipshared/58e3/src/vga_buffer_wrapper.v" \
  "../../../bd/design_1/ipshared/58e3/hdl/vga_drv.v" \
  "../../../bd/design_1/ipshared/58e3/hdl/vga640x480_v1_0.v" \
  "../../../bd/design_1/ip/design_1_vga640x480_v1_1_0_0/sim/design_1_vga640x480_v1_1_0_0.v" \
  "../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_12 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib ies_lib/xbip_utils_v3_0_9 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/a5f8/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_utils_v2_0_5 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec8e/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_pipe_v3_0_5 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/442e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/da55/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_addsub_v3_0_5 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ad9e/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_dsp48_multadd_v3_0_5 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/cd0f/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_bram18k_v3_0_5 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c08f/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/mult_gen_v12_0_14 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6bb5/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/floating_point_v7_1_6 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c4f7/hdl/floating_point_v7_1_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_CTRLS_s_axi.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_fpext_32ns_6lbW.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_hid1_b_V.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_hid1_out_V.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_hid1_trans_djbC.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_iw_V_0.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_iw_V_1.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_iw_V_2.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_iw_V_3.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_iw_V_4.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_iw_V_5.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_iw_V_6.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_iw_V_7.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_lw_V_0.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_lw_V_1.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_lw_V_2.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_lw_V_3.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_lw_V_4.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_lw_V_5.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_lw_V_6.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_lw_V_7.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_lw_V_8.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_lw_V_9.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_lw_V_10.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_lw_V_11.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_lw_V_12.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_lw_V_13.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_lw_V_14.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_lw_V_15.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_lw_V_16.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_lw_V_17.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_lw_V_18.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_lw_V_19.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_mac_muladd_1ocq.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_mac_muladd_1pcA.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_mac_muladd_1qcK.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_mac_muladd_2ncg.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_mul_48s_18nsfYi.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_mul_mul_16s_hbi.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_mul_mul_17nsibs.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_mul_mul_18nsg8j.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_mul_mul_20s_mb6.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_out_trans_dikbM.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_output_b_V.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn_output_V.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/sigmoid_f.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/sigmoid_f_poly_cobkb.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/sigmoid_f_poly_cocud.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/sigmoid_f_poly_codEe.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/sigmoid_f_poly_coeOg.v" \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/verilog/bpnn.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/ip/bpnn_ap_fpext_0_no_dsp_32.vhd" \
  "../../../bd/design_1/ip/design_1_bpnn_0_1/sim/design_1_bpnn_0_1.vhd" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_17 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_2 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_2 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_2 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_16 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_18 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
  "../../../bd/design_1/sim/design_1.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_17 \
  "../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ccfb/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

