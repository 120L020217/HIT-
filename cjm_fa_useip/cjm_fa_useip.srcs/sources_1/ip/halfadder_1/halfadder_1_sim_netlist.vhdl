-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Oct 23 13:44:59 2021
-- Host        : LAPTOP-RK6SIO5B running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top halfadder_1 -prefix
--               halfadder_1_ halfadder_0_sim_netlist.vhdl
-- Design      : halfadder_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity halfadder_1_halfadder is
  port (
    ain : in STD_LOGIC;
    bin : in STD_LOGIC;
    cout : out STD_LOGIC;
    sum : out STD_LOGIC
  );
end halfadder_1_halfadder;

architecture STRUCTURE of halfadder_1_halfadder is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of cout_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of sum_INST_0 : label is "soft_lutpair0";
begin
cout_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ain,
      I1 => bin,
      O => cout
    );
sum_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bin,
      I1 => ain,
      O => sum
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity halfadder_1 is
  port (
    ain : in STD_LOGIC;
    bin : in STD_LOGIC;
    cout : out STD_LOGIC;
    sum : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of halfadder_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of halfadder_1 : entity is "halfadder_0,halfadder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of halfadder_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of halfadder_1 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of halfadder_1 : entity is "halfadder,Vivado 2018.3";
end halfadder_1;

architecture STRUCTURE of halfadder_1 is
begin
inst: entity work.halfadder_1_halfadder
     port map (
      ain => ain,
      bin => bin,
      cout => cout,
      sum => sum
    );
end STRUCTURE;
