library ieee;
use ieee.std_logic_1164.all;

entity cnt_up_down_mod6 is
    port(
        clk, z, ud : in  std_logic;
        q          : out std_logic_vector(3 downto 0)
    );
end cnt_up_down_mod6;

architecture cnt_up_down_mod6_arch of cnt_up_down_mod6 is
    signal zn, clkn, rst_down, rst_up, rst1, rst2, f, zr, r, alarg, q_alarg, qn_alarg, q_down, qn_down: std_logic;
    signal qn, q_signal: std_logic_vector(3 downto 0);
    signal mux: std_logic_vector(1 downto 0);
    
    component dff_vhdl is
        port (
            d, clk, prs, clr : in  std_logic;
            q, qn            : out std_logic
        );
    end component;
    
begin
    	ff_d0: dff_vhdl port map(d => qn(0), prs => rst_down, clr => rst1, clk => clk,  q => q_signal(0), qn => qn(0));
	ff_d1: dff_vhdl port map(d => qn(1), prs => '0', clr => rst2, clk => mux(0), q => q_signal(1), qn => qn(1));
	ff_d2: dff_vhdl port map(d => qn(2), prs => '0', clr => rst1, clk => mux(1), q => q_signal(2), qn => qn(2));
	ff_down: dff_vhdl port map(d => '0', prs => zr, clr => rst_down, clk => '0', q => q_down, qn => qn_down);
	ff_alarg: dff_vhdl port map(d => '0', prs => alarg, clr => clkn, clk => '0', q => q_alarg, qn => qn_alarg);
	
	zn <= not z;
	clkn <= not clk;
	mux(0) <= qn(0) when (ud = '0') else
			q_signal(0) when (ud = '1');
	mux(1) <= qn(1) when (ud = '0') else
			q_signal(1) when (ud = '1');
	alarg <= ((not q_signal(0)) and q_signal(1)) and q_signal(2);
	f <= (q_signal(0) and q_signal(1)) and q_signal(2);
	zr <= not (q_signal(0) or q_signal(1) or q_signal(2));
	rst_down <= (q_down and f) and ud;
	rst_up <= (q_signal(1) and q_signal(2)) and (not ud);
	rst1 <= zn or rst_up or q_alarg;
	rst2 <= rst1 or rst_down;
	q_signal(3) <= '0';
	q <= q_signal;
end cnt_up_down_mod6_arch;