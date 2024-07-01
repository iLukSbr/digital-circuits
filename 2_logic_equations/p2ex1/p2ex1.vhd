--------------------------------------------------------------------------------
-- Project :
-- File    :
-- Autor   :
-- Date    :
--
--------------------------------------------------------------------------------
-- Description :
--
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY p2ex1 IS
  PORT (
  ------------------------------------------------------------------------------
  --Insert input ports below
    x          : IN  std_logic; -- input bit example
    y          : IN  std_logic; -- input bit example
  ------------------------------------------------------------------------------
  --Insert output ports below
    nor_out    : OUT std_logic; -- output bit example
    nand_out   : OUT std_logic;  -- output bit example
    nn_and_out : OUT std_logic;  -- output bit example
    nn_or_out  : OUT std_logic  -- output bit example
    );
END p2ex1;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF p2ex1 IS

BEGIN
	nor_out <= x nor y;
     nand_out <= x nand y;
     nn_and_out <= (not x) and (not y);
     nn_or_out <= (not x) or (not y);
END TypeArchitecture;
