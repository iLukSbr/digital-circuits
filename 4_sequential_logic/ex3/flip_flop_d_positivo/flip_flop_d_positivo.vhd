LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY flip_flop_d_positivo IS
  PORT (
    d, clk : IN  std_logic; -- input, clock
    q, qn  : OUT  std_logic -- output
    );
END flip_flop_d_positivo;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE latches OF flip_flop_d_positivo IS

SIGNAL s1: std_logic;

BEGIN	latch1:process(clk, d)
	BEGIN
		IF clk = '1' AND clk' EVENT THEN
			s1 <= d;
		END IF;
	END PROCESS;
	latch2: PROCESS(clk, s1)
	BEGIN
		IF clk = '0' AND clk' EVENT THEN
			q <= s1;
		END IF;	END PROCESS latch2;
	qn <= NOT s1;
END latches;