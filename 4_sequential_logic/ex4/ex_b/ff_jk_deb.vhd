LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ff_jk_deb IS
  PORT (
    j, k, clrn, prn, clk_button, clk_50m : IN  STD_LOGIC; -- input T, clear, preset, clock, clock 50M
    q, qn               		         : OUT STD_LOGIC  -- output Q, not Q
    );
END ff_jk_deb;

--------------------------------------------------------------------------------
-- VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE ff_jk OF ff_jk_deb IS

COMPONENT div_clk IS
	GENERIC(divisor : INTEGER := 5);
	PORT(
		clk_in  : IN STD_LOGIC; -- clock in
		clk_out : OUT STD_LOGIC -- clock divided
	);
END COMPONENT;

COMPONENT debounce IS
	GENERIC(counter_size : INTEGER := 1); -- generalizes counter capacity
	PORT(
		clk    : IN STD_LOGIC; -- clock in
		button : IN STD_LOGIC; -- input signal
		result : OUT STD_LOGIC -- debounced signal
	);
END COMPONENT;

SIGNAL qstate, clk_10ms, clk_deb, clk_50m_signal : STD_LOGIC; 
	
BEGIN
	clk_50m_signal <= clk_50m;
	
	clk_div_10ms : div_clk GENERIC MAP(divisor => 250000)
					       PORT MAP(clk_in => clk_50m_signal, clk_out => clk_10ms);
					   
	deb : debounce 		   PORT MAP(clk => clk_10ms, button => clk_button, result => clk_deb);
	
	PROCESS(clk_deb, prn, clrn) -- sensitivity list
	BEGIN
		IF clrn = '0' THEN 
			qstate <= '0';
		ELSIF prn = '0' THEN
			qstate <= '1';
		ELSIF clk_deb = '1' AND clk_deb' EVENT THEN
			IF j = '1' AND k = '1' THEN
				qstate <= NOT qstate;
			ELSIF j = '1' AND k = '0' THEN
				qstate <= '1';
			ELSIF j = '0' AND k = '1' THEN
				qstate <= '0';
			END IF;
		END IF;
	END PROCESS;
	
	q <= qstate;
	qn <= NOT qstate;
END ff_jk;