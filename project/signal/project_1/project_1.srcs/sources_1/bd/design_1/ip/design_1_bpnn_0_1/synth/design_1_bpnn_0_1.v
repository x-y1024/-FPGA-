// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
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


// IP VLNV: left_bpnn:hls:bpnn:1.0
// IP Revision: 1911221650

(* X_CORE_INFO = "bpnn,Vivado 2018.2" *)
(* CHECK_LICENSE_TYPE = "design_1_bpnn_0_1,bpnn,{}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_bpnn_0_1 (
  s_axi_CTRLS_AWADDR,
  s_axi_CTRLS_AWVALID,
  s_axi_CTRLS_AWREADY,
  s_axi_CTRLS_WDATA,
  s_axi_CTRLS_WSTRB,
  s_axi_CTRLS_WVALID,
  s_axi_CTRLS_WREADY,
  s_axi_CTRLS_BRESP,
  s_axi_CTRLS_BVALID,
  s_axi_CTRLS_BREADY,
  s_axi_CTRLS_ARADDR,
  s_axi_CTRLS_ARVALID,
  s_axi_CTRLS_ARREADY,
  s_axi_CTRLS_RDATA,
  s_axi_CTRLS_RRESP,
  s_axi_CTRLS_RVALID,
  s_axi_CTRLS_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRLS AWADDR" *)
input wire [6 : 0] s_axi_CTRLS_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRLS AWVALID" *)
input wire s_axi_CTRLS_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRLS AWREADY" *)
output wire s_axi_CTRLS_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRLS WDATA" *)
input wire [31 : 0] s_axi_CTRLS_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRLS WSTRB" *)
input wire [3 : 0] s_axi_CTRLS_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRLS WVALID" *)
input wire s_axi_CTRLS_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRLS WREADY" *)
output wire s_axi_CTRLS_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRLS BRESP" *)
output wire [1 : 0] s_axi_CTRLS_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRLS BVALID" *)
output wire s_axi_CTRLS_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRLS BREADY" *)
input wire s_axi_CTRLS_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRLS ARADDR" *)
input wire [6 : 0] s_axi_CTRLS_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRLS ARVALID" *)
input wire s_axi_CTRLS_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRLS ARREADY" *)
output wire s_axi_CTRLS_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRLS RDATA" *)
output wire [31 : 0] s_axi_CTRLS_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRLS RRESP" *)
output wire [1 : 0] s_axi_CTRLS_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRLS RVALID" *)
output wire s_axi_CTRLS_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CTRLS, ADDR_WIDTH 7, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, ID\
_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CTRLS RREADY" *)
input wire s_axi_CTRLS_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTRLS, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN de\
sign_1_processing_system7_0_0_FCLK_CLK0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {INTERRUPT {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;

  bpnn #(
    .C_S_AXI_CTRLS_ADDR_WIDTH(7),
    .C_S_AXI_CTRLS_DATA_WIDTH(32)
  ) inst (
    .s_axi_CTRLS_AWADDR(s_axi_CTRLS_AWADDR),
    .s_axi_CTRLS_AWVALID(s_axi_CTRLS_AWVALID),
    .s_axi_CTRLS_AWREADY(s_axi_CTRLS_AWREADY),
    .s_axi_CTRLS_WDATA(s_axi_CTRLS_WDATA),
    .s_axi_CTRLS_WSTRB(s_axi_CTRLS_WSTRB),
    .s_axi_CTRLS_WVALID(s_axi_CTRLS_WVALID),
    .s_axi_CTRLS_WREADY(s_axi_CTRLS_WREADY),
    .s_axi_CTRLS_BRESP(s_axi_CTRLS_BRESP),
    .s_axi_CTRLS_BVALID(s_axi_CTRLS_BVALID),
    .s_axi_CTRLS_BREADY(s_axi_CTRLS_BREADY),
    .s_axi_CTRLS_ARADDR(s_axi_CTRLS_ARADDR),
    .s_axi_CTRLS_ARVALID(s_axi_CTRLS_ARVALID),
    .s_axi_CTRLS_ARREADY(s_axi_CTRLS_ARREADY),
    .s_axi_CTRLS_RDATA(s_axi_CTRLS_RDATA),
    .s_axi_CTRLS_RRESP(s_axi_CTRLS_RRESP),
    .s_axi_CTRLS_RVALID(s_axi_CTRLS_RVALID),
    .s_axi_CTRLS_RREADY(s_axi_CTRLS_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt)
  );
endmodule
