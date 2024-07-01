LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY latch_sr_nand IS
  PORT (
  ------------------------------------------------------------------------------
  --Insert input ports below
    S, R  : IN  std_logic; -- SET, RESET
  ------------------------------------------------------------------------------
  --Insert output ports below
    Q, QN : OUT std_logic -- Q, Q invertido
    );
END latch_sr_nand;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF latch_sr_nand IS

SIGNAL qstate: std_logic;

BEGIN

	PROCESS(S, R)
	BEGIN
		IF S = '0' AND R = '1' THEN qstate <= '1';
		ELSIF S = '1' AND R = '0' THEN qstate <= '0';
		END IF;
	END PROCESS;
	Q <= qstate;
	QN <= NOT qstate;
END TypeArchitecture;