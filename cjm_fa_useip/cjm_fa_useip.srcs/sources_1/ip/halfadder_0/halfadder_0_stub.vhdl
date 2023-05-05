-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Oct 23 13:44:59 2021
-- Host        : LAPTOP-RK6SIO5B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Vivado/2018.3/myworkplace/cjm_fa_useip/cjm_fa_useip.srcs/sources_1/ip/halfadder_0/halfadder_0_stub.vhdl
-- Design      : halfadder_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity halfadder_0 is
  Port ( 
    ain : in STD_LOGIC;
    bin : in STD_LOGIC;
    cout : out STD_LOGIC;
    sum : out STD_LOGIC
  );

end halfadder_0;

architecture stub of halfadder_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ain,bin,cout,sum";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "halfadder,Vivado 2018.3";
begin
end;
