LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY latch_d_nor IS
  PORT (
  ------------------------------------------------------------------------------
  --Insert input ports below
    enable, din : IN  std_logic; -- in: enable and data
  ------------------------------------------------------------------------------
  --Insert output ports below
    q, qn       : OUT std_logic  -- out
    );
END latch_d_nor;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF latch_d_nor IS

BEGIN
	PROCESS(enable, din)
	BEGIN
		IF enable = '0' THEN
			q <= din;
			qn <= NOT din;
		END IF;
	END PROCESS;
END TypeArchitecture;