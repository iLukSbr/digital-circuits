LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY flip_flop_d_positivo IS
  PORT (
    d, clk, prn, clrn : IN  std_logic; -- input, clock
    q, qn            : OUT  std_logic -- output
    );
END flip_flop_d_positivo;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE flip_flop OF flip_flop_d_positivo IS
SIGNAL qstate: std_logic;
BEGIN
	PROCESS(clk, prn, clrn)
	BEGIN
		IF clrn = '0' THEN 
			qstate <= '0';
		ELSIF prn = '0' THEN
			qstate <= '1';
		ELSIF clk = '1' AND clk' EVENT THEN
			qstate <= d;
		END IF;
	END PROCESS;
	q <= qstate;
	qn <= NOT qstate;
END flip_flop;