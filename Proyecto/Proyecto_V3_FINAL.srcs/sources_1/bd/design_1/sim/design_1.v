//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Mon Jan 20 10:23:57 2025
//Host        : LenovoPablo running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=6,numNonXlnxBlks=2,numHierBlks=2,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (btns_4bits_tri_i,
    leds_4bits_tri_i,
    leds_4bits_tri_o,
    leds_4bits_tri_t,
    reset,
    sys_clock);
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 btns_4bits TRI_I" *) input [3:0]btns_4bits_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 leds_4bits TRI_I" *) input [3:0]leds_4bits_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 leds_4bits TRI_O" *) output [3:0]leds_4bits_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 leds_4bits TRI_T" *) output [3:0]leds_4bits_tri_t;
  input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 125000000, INSERT_VIP 0, PHASE 0.000" *) input sys_clock;

  wire [3:0]axi_gpio_0_GPIO2_TRI_I;
  wire [3:0]axi_gpio_0_GPIO_TRI_I;
  wire [3:0]axi_gpio_0_GPIO_TRI_O;
  wire [3:0]axi_gpio_0_GPIO_TRI_T;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_locked;
  wire delayed_reset_0_o_reset;
  wire [31:0]picorv32_0_M_AXI_ARADDR;
  wire picorv32_0_M_AXI_ARREADY;
  wire picorv32_0_M_AXI_ARVALID;
  wire [31:0]picorv32_0_M_AXI_AWADDR;
  wire picorv32_0_M_AXI_AWREADY;
  wire picorv32_0_M_AXI_AWVALID;
  wire picorv32_0_M_AXI_BREADY;
  wire picorv32_0_M_AXI_BVALID;
  wire [31:0]picorv32_0_M_AXI_RDATA;
  wire picorv32_0_M_AXI_RREADY;
  wire picorv32_0_M_AXI_RVALID;
  wire [31:0]picorv32_0_M_AXI_WDATA;
  wire picorv32_0_M_AXI_WREADY;
  wire [3:0]picorv32_0_M_AXI_WSTRB;
  wire picorv32_0_M_AXI_WVALID;
  wire [31:0]picorv32_0_axi_periph_M00_AXI_ARADDR;
  wire picorv32_0_axi_periph_M00_AXI_ARREADY;
  wire picorv32_0_axi_periph_M00_AXI_ARVALID;
  wire [31:0]picorv32_0_axi_periph_M00_AXI_AWADDR;
  wire picorv32_0_axi_periph_M00_AXI_AWREADY;
  wire picorv32_0_axi_periph_M00_AXI_AWVALID;
  wire picorv32_0_axi_periph_M00_AXI_BREADY;
  wire picorv32_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]picorv32_0_axi_periph_M00_AXI_RDATA;
  wire picorv32_0_axi_periph_M00_AXI_RREADY;
  wire picorv32_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]picorv32_0_axi_periph_M00_AXI_WDATA;
  wire picorv32_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]picorv32_0_axi_periph_M00_AXI_WSTRB;
  wire picorv32_0_axi_periph_M00_AXI_WVALID;
  wire proc_sys_reset_0_mb_reset;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire reset_rtl_1;
  wire sys_clock_1;
  wire [0:0]util_vector_logic_0_Res;

  assign axi_gpio_0_GPIO2_TRI_I = btns_4bits_tri_i[3:0];
  assign axi_gpio_0_GPIO_TRI_I = leds_4bits_tri_i[3:0];
  assign leds_4bits_tri_o[3:0] = axi_gpio_0_GPIO_TRI_O;
  assign leds_4bits_tri_t[3:0] = axi_gpio_0_GPIO_TRI_T;
  assign reset_rtl_1 = reset;
  assign sys_clock_1 = sys_clock;
  design_1_axi_gpio_0_0 axi_gpio_0
       (.gpio2_io_i(axi_gpio_0_GPIO2_TRI_I),
        .gpio_io_i(axi_gpio_0_GPIO_TRI_I),
        .gpio_io_o(axi_gpio_0_GPIO_TRI_O),
        .gpio_io_t(axi_gpio_0_GPIO_TRI_T),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(picorv32_0_axi_periph_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(picorv32_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_arvalid(picorv32_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_awaddr(picorv32_0_axi_periph_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(picorv32_0_axi_periph_M00_AXI_AWREADY),
        .s_axi_awvalid(picorv32_0_axi_periph_M00_AXI_AWVALID),
        .s_axi_bready(picorv32_0_axi_periph_M00_AXI_BREADY),
        .s_axi_bvalid(picorv32_0_axi_periph_M00_AXI_BVALID),
        .s_axi_rdata(picorv32_0_axi_periph_M00_AXI_RDATA),
        .s_axi_rready(picorv32_0_axi_periph_M00_AXI_RREADY),
        .s_axi_rvalid(picorv32_0_axi_periph_M00_AXI_RVALID),
        .s_axi_wdata(picorv32_0_axi_periph_M00_AXI_WDATA),
        .s_axi_wready(picorv32_0_axi_periph_M00_AXI_WREADY),
        .s_axi_wstrb(picorv32_0_axi_periph_M00_AXI_WSTRB),
        .s_axi_wvalid(picorv32_0_axi_periph_M00_AXI_WVALID));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .locked(clk_wiz_0_locked),
        .resetn(reset_rtl_1));
  design_1_delayed_reset_0_0 delayed_reset_0
       (.i_clk(clk_wiz_0_clk_out1),
        .o_reset(delayed_reset_0_o_reset));
  design_1_picorv32_0_1 picorv32_0
       (.clk(clk_wiz_0_clk_out1),
        .mem_axi_araddr(picorv32_0_M_AXI_ARADDR),
        .mem_axi_arready(picorv32_0_M_AXI_ARREADY),
        .mem_axi_arvalid(picorv32_0_M_AXI_ARVALID),
        .mem_axi_awaddr(picorv32_0_M_AXI_AWADDR),
        .mem_axi_awready(picorv32_0_M_AXI_AWREADY),
        .mem_axi_awvalid(picorv32_0_M_AXI_AWVALID),
        .mem_axi_bready(picorv32_0_M_AXI_BREADY),
        .mem_axi_bvalid(picorv32_0_M_AXI_BVALID),
        .mem_axi_rdata(picorv32_0_M_AXI_RDATA),
        .mem_axi_rready(picorv32_0_M_AXI_RREADY),
        .mem_axi_rvalid(picorv32_0_M_AXI_RVALID),
        .mem_axi_wdata(picorv32_0_M_AXI_WDATA),
        .mem_axi_wready(picorv32_0_M_AXI_WREADY),
        .mem_axi_wstrb(picorv32_0_M_AXI_WSTRB),
        .mem_axi_wvalid(picorv32_0_M_AXI_WVALID),
        .resetn(util_vector_logic_0_Res));
  design_1_picorv32_0_axi_periph_0 picorv32_0_axi_periph
       (.ACLK(clk_wiz_0_clk_out1),
        .ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M00_ACLK(clk_wiz_0_clk_out1),
        .M00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M00_AXI_araddr(picorv32_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(picorv32_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(picorv32_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(picorv32_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(picorv32_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(picorv32_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(picorv32_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bvalid(picorv32_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(picorv32_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(picorv32_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rvalid(picorv32_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(picorv32_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(picorv32_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(picorv32_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(picorv32_0_axi_periph_M00_AXI_WVALID),
        .S00_ACLK(clk_wiz_0_clk_out1),
        .S00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S00_AXI_araddr(picorv32_0_M_AXI_ARADDR),
        .S00_AXI_arready(picorv32_0_M_AXI_ARREADY),
        .S00_AXI_arvalid(picorv32_0_M_AXI_ARVALID),
        .S00_AXI_awaddr(picorv32_0_M_AXI_AWADDR),
        .S00_AXI_awready(picorv32_0_M_AXI_AWREADY),
        .S00_AXI_awvalid(picorv32_0_M_AXI_AWVALID),
        .S00_AXI_bready(picorv32_0_M_AXI_BREADY),
        .S00_AXI_bvalid(picorv32_0_M_AXI_BVALID),
        .S00_AXI_rdata(picorv32_0_M_AXI_RDATA),
        .S00_AXI_rready(picorv32_0_M_AXI_RREADY),
        .S00_AXI_rvalid(picorv32_0_M_AXI_RVALID),
        .S00_AXI_wdata(picorv32_0_M_AXI_WDATA),
        .S00_AXI_wready(picorv32_0_M_AXI_WREADY),
        .S00_AXI_wstrb(picorv32_0_M_AXI_WSTRB),
        .S00_AXI_wvalid(picorv32_0_M_AXI_WVALID));
  design_1_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(delayed_reset_0_o_reset),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(reset_rtl_1),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(proc_sys_reset_0_mb_reset),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
  design_1_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(proc_sys_reset_0_mb_reset),
        .Res(util_vector_logic_0_Res));
endmodule

module design_1_picorv32_0_axi_periph_0
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
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rvalid,
    S00_AXI_wdata,
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
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire picorv32_0_axi_periph_ACLK_net;
  wire picorv32_0_axi_periph_ARESETN_net;
  wire [31:0]picorv32_0_axi_periph_to_s00_couplers_ARADDR;
  wire picorv32_0_axi_periph_to_s00_couplers_ARREADY;
  wire picorv32_0_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]picorv32_0_axi_periph_to_s00_couplers_AWADDR;
  wire picorv32_0_axi_periph_to_s00_couplers_AWREADY;
  wire picorv32_0_axi_periph_to_s00_couplers_AWVALID;
  wire picorv32_0_axi_periph_to_s00_couplers_BREADY;
  wire picorv32_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]picorv32_0_axi_periph_to_s00_couplers_RDATA;
  wire picorv32_0_axi_periph_to_s00_couplers_RREADY;
  wire picorv32_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]picorv32_0_axi_periph_to_s00_couplers_WDATA;
  wire picorv32_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]picorv32_0_axi_periph_to_s00_couplers_WSTRB;
  wire picorv32_0_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_picorv32_0_axi_periph_ARADDR;
  wire s00_couplers_to_picorv32_0_axi_periph_ARREADY;
  wire s00_couplers_to_picorv32_0_axi_periph_ARVALID;
  wire [31:0]s00_couplers_to_picorv32_0_axi_periph_AWADDR;
  wire s00_couplers_to_picorv32_0_axi_periph_AWREADY;
  wire s00_couplers_to_picorv32_0_axi_periph_AWVALID;
  wire s00_couplers_to_picorv32_0_axi_periph_BREADY;
  wire s00_couplers_to_picorv32_0_axi_periph_BVALID;
  wire [31:0]s00_couplers_to_picorv32_0_axi_periph_RDATA;
  wire s00_couplers_to_picorv32_0_axi_periph_RREADY;
  wire s00_couplers_to_picorv32_0_axi_periph_RVALID;
  wire [31:0]s00_couplers_to_picorv32_0_axi_periph_WDATA;
  wire s00_couplers_to_picorv32_0_axi_periph_WREADY;
  wire [3:0]s00_couplers_to_picorv32_0_axi_periph_WSTRB;
  wire s00_couplers_to_picorv32_0_axi_periph_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_picorv32_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid = s00_couplers_to_picorv32_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_picorv32_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid = s00_couplers_to_picorv32_0_axi_periph_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_picorv32_0_axi_periph_BREADY;
  assign M00_AXI_rready = s00_couplers_to_picorv32_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_picorv32_0_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_picorv32_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_picorv32_0_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = picorv32_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = picorv32_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bvalid = picorv32_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = picorv32_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rvalid = picorv32_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = picorv32_0_axi_periph_to_s00_couplers_WREADY;
  assign picorv32_0_axi_periph_ACLK_net = M00_ACLK;
  assign picorv32_0_axi_periph_ARESETN_net = M00_ARESETN;
  assign picorv32_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign picorv32_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign picorv32_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign picorv32_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign picorv32_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign picorv32_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign picorv32_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign picorv32_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign picorv32_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_picorv32_0_axi_periph_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_picorv32_0_axi_periph_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_picorv32_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_picorv32_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_picorv32_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_picorv32_0_axi_periph_WREADY = M00_AXI_wready;
  s00_couplers_imp_DYXHT7 s00_couplers
       (.M_ACLK(picorv32_0_axi_periph_ACLK_net),
        .M_ARESETN(picorv32_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_picorv32_0_axi_periph_ARADDR),
        .M_AXI_arready(s00_couplers_to_picorv32_0_axi_periph_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_picorv32_0_axi_periph_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_picorv32_0_axi_periph_AWADDR),
        .M_AXI_awready(s00_couplers_to_picorv32_0_axi_periph_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_picorv32_0_axi_periph_AWVALID),
        .M_AXI_bready(s00_couplers_to_picorv32_0_axi_periph_BREADY),
        .M_AXI_bvalid(s00_couplers_to_picorv32_0_axi_periph_BVALID),
        .M_AXI_rdata(s00_couplers_to_picorv32_0_axi_periph_RDATA),
        .M_AXI_rready(s00_couplers_to_picorv32_0_axi_periph_RREADY),
        .M_AXI_rvalid(s00_couplers_to_picorv32_0_axi_periph_RVALID),
        .M_AXI_wdata(s00_couplers_to_picorv32_0_axi_periph_WDATA),
        .M_AXI_wready(s00_couplers_to_picorv32_0_axi_periph_WREADY),
        .M_AXI_wstrb(s00_couplers_to_picorv32_0_axi_periph_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_picorv32_0_axi_periph_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(picorv32_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arready(picorv32_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(picorv32_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(picorv32_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awready(picorv32_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(picorv32_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bready(picorv32_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bvalid(picorv32_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(picorv32_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rready(picorv32_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rvalid(picorv32_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(picorv32_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wready(picorv32_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(picorv32_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(picorv32_0_axi_periph_to_s00_couplers_WVALID));
endmodule

module s00_couplers_imp_DYXHT7
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
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
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
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
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
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
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule
