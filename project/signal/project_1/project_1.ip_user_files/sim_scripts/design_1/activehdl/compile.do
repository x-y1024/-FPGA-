vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_protocol_checker_v2_0_3
vlib activehdl/axi_vip_v1_1_3
vlib activehdl/processing_system7_vip_v1_0_5
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_19
vlib activehdl/blk_mem_gen_v8_4_1
vlib activehdl/proc_sys_reset_v5_0_12
vlib activehdl/xbip_utils_v3_0_9
vlib activehdl/axi_utils_v2_0_5
vlib activehdl/xbip_pipe_v3_0_5
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_dsp48_addsub_v3_0_5
vlib activehdl/xbip_dsp48_multadd_v3_0_5
vlib activehdl/xbip_bram18k_v3_0_5
vlib activehdl/mult_gen_v12_0_14
vlib activehdl/floating_point_v7_1_6
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_17
vlib activehdl/fifo_generator_v13_2_2
vlib activehdl/axi_data_fifo_v2_1_16
vlib activehdl/axi_crossbar_v2_1_18
vlib activehdl/axi_protocol_converter_v2_1_17

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_3 activehdl/axi_protocol_checker_v2_0_3
vmap axi_vip_v1_1_3 activehdl/axi_vip_v1_1_3
vmap processing_system7_vip_v1_0_5 activehdl/processing_system7_vip_v1_0_5
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_19 activehdl/axi_gpio_v2_0_19
vmap blk_mem_gen_v8_4_1 activehdl/blk_mem_gen_v8_4_1
vmap proc_sys_reset_v5_0_12 activehdl/proc_sys_reset_v5_0_12
vmap xbip_utils_v3_0_9 activehdl/xbip_utils_v3_0_9
vmap axi_utils_v2_0_5 activehdl/axi_utils_v2_0_5
vmap xbip_pipe_v3_0_5 activehdl/xbip_pipe_v3_0_5
vmap xbip_dsp48_wrapper_v3_0_4 activehdl/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_5 activehdl/xbip_dsp48_addsub_v3_0_5
vmap xbip_dsp48_multadd_v3_0_5 activehdl/xbip_dsp48_multadd_v3_0_5
vmap xbip_bram18k_v3_0_5 activehdl/xbip_bram18k_v3_0_5
vmap mult_gen_v12_0_14 activehdl/mult_gen_v12_0_14
vmap floating_point_v7_1_6 activehdl/floating_point_v7_1_6
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_17 activehdl/axi_register_slice_v2_1_17
vmap fifo_generator_v13_2_2 activehdl/fifo_generator_v13_2_2
vmap axi_data_fifo_v2_1_16 activehdl/axi_data_fifo_v2_1_16
vmap axi_crossbar_v2_1_18 activehdl/axi_crossbar_v2_1_18
vmap axi_protocol_converter_v2_1_17 activehdl/axi_protocol_converter_v2_1_17

vlog -work xilinx_vip  -sv2k12 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_3  -sv2k12 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_3  -sv2k12 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_5  -sv2k12 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_19 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c193/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_1  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/design_1/ip/design_1_vga640x480_v1_1_0_0/bd/vga_buffer/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
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

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vcom -work xbip_utils_v3_0_9 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/a5f8/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_5 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec8e/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_5 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/442e/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/da55/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_5 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ad9e/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_5 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/cd0f/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_5 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c08f/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_14 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6bb5/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_6 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/c4f7/hdl/floating_point_v7_1_vh_rfs.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
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

vcom -work xil_defaultlib -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/9232/hdl/ip/bpnn_ap_fpext_0_no_dsp_32.vhd" \
"../../../bd/design_1/ip/design_1_bpnn_0_1/sim/design_1_bpnn_0_1.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_17  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -93 \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_16  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_18  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work axi_protocol_converter_v2_1_17  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ccfb/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/design_1/ipshared/b65a" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

