-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat Jan 18 10:47:38 2025
-- Host        : LenovoPablo running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_picorv32_0_1_stub.vhdl
-- Design      : design_1_picorv32_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    trap : out STD_LOGIC;
    mem_axi_awvalid : out STD_LOGIC;
    mem_axi_awready : in STD_LOGIC;
    mem_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mem_axi_wvalid : out STD_LOGIC;
    mem_axi_wready : in STD_LOGIC;
    mem_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mem_axi_bvalid : in STD_LOGIC;
    mem_axi_bready : out STD_LOGIC;
    mem_axi_arvalid : out STD_LOGIC;
    mem_axi_arready : in STD_LOGIC;
    mem_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mem_axi_rvalid : in STD_LOGIC;
    mem_axi_rready : out STD_LOGIC;
    mem_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetn,trap,mem_axi_awvalid,mem_axi_awready,mem_axi_awaddr[31:0],mem_axi_awprot[2:0],mem_axi_wvalid,mem_axi_wready,mem_axi_wdata[31:0],mem_axi_wstrb[3:0],mem_axi_bvalid,mem_axi_bready,mem_axi_arvalid,mem_axi_arready,mem_axi_araddr[31:0],mem_axi_arprot[2:0],mem_axi_rvalid,mem_axi_rready,mem_axi_rdata[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "picorv32_axi,Vivado 2019.2";
begin
end;
