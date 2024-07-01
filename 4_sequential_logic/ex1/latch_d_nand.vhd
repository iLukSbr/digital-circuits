LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY latch_d_nand IS
  PORT (
  ------------------------------------------------------------------------------
  --Insert input ports below
    enable, din : IN  std_logic; -- in: enable and data
  ------------------------------------------------------------------------------
  --Insert output ports below
    q           : OUT std_logic  -- out
    );
END latch_d_nand;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF latch_d_nand IS

BEGIN
	PROCESS(enable, din)
	BEGIN
		IF enable = '1' THEN q <= din;
		END IF;
	END PROCESS;
END TypeArchitecture;