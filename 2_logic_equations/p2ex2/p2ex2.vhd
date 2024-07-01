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

ENTITY p2ex2 IS
  PORT (
  ------------------------------------------------------------------------------
  --Insert input ports below
    A        : IN  std_logic; -- input bit example
    B        : IN  std_logic; -- input bit example
    C        : IN  std_logic; -- input bit example
    D        : IN  std_logic; -- input bit example
  ------------------------------------------------------------------------------
  --Insert output ports below
    X        : OUT std_logic; -- output bit example
    Y        : OUT std_logic; -- output bit example
    Z        : OUT std_logic  -- output bit example
    );
END p2ex2;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF p2ex2 IS
SIGNAL OR_1, AND_1, AND_2, AND_3: std_logic;
BEGIN
	OR_1 <= not A or not B;
	AND_1 <= not A and not B and not C;
	AND_2 <= A and not B and not C;
	AND_3 <= not A and not B and D;
	X <= (A nor B) and (C and D);
	Y <= not OR_1 and B and C;
	Z <= AND_1 or AND_2 or AND_3;
END TypeArchitecture;
