-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Sat Jan 18 10:47:32 2025
-- Host        : LenovoPablo running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/pablo/OneDrive/Escritorio/Master Granada/1 1
--               cuatri/Proyecto_V3_FINAL/Proyecto_V3_FINAL.srcs/sources_1/bd/design_1/ip/design_1_delayed_reset_0_0/design_1_delayed_reset_0_0_stub.vhdl}
-- Design      : design_1_delayed_reset_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_delayed_reset_0_0 is
  Port ( 
    i_clk : in STD_LOGIC;
    o_reset : out STD_LOGIC
  );

end design_1_delayed_reset_0_0;

architecture stub of design_1_delayed_reset_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,o_reset";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "delayed_reset,Vivado 2019.2";
begin
end;
