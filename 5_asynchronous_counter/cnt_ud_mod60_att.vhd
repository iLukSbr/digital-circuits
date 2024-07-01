library ieee;
use ieee.std_logic_1164.all;

entity cnt_ud_mod60_att is
    port(
        z, ud, sst_button, clk_50m : in  std_logic;
        disp_d, disp_u          : out std_logic_vector(6 downto 0)
    );
end cnt_ud_mod60_att;

architecture cnt_ud_mod60_att_arch of cnt_ud_mod60_att is
    	signal co_signal, clk_signal, status, zn, q_sst, qn_sst, clk_1s, clk_10ms, sst_deb, clk_50m_signal: std_logic;
 	signal qu, qd          : std_logic_vector(3 downto 0);
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
    
    component dff_vhdl is
        port (
            d, clk, prs, clr : in  std_logic;
            q, qn            : out std_logic
        );
    end component;

    component cnt_up_down_mod10 is
    	port (
        clk, z, ud : in  std_logic;
        q          : out std_logic_vector(3 downto 0);
        co         : out std_logic
    	);
    end component;

    component cnt_up_down_mod6 is
    	port (
        clk, z, ud : in  std_logic;
        q          : out std_logic_vector(3 downto 0)
    	);
    end component;
begin
	clk_50m_signal <= clk_50m;
	
	clk_div_10ms : div_clk GENERIC MAP(divisor => 250000)
					       PORT MAP(clk_in => clk_50m_signal, clk_out => clk_10ms);
	clk_div_1s : div_clk GENERIC MAP(divisor => 2500)
					       PORT MAP(clk_in => clk_50m_signal, clk_out => clk_1s);
	deb : debounce 	       PORT MAP(clk => clk_10ms, button => sst_button, result => sst_deb);
	ff_unidade: cnt_up_down_mod10 port map(clk => clk_signal, z => z, ud => ud, co => co_signal, q => qu);
	ff_dezena: cnt_up_down_mod6 port map(clk => co_signal, z => z, ud => ud, q => qd);
	ff_sst: dff_vhdl port map(d => qn_sst, clk => sst_deb, prs => '0', clr => zn, q => q_sst, qn => qn_sst);
	zn <= not z;
	clk_signal <= clk_1s and q_sst;
	WITH qd SELECT
	disp_d <= "1111110" WHEN "0000",
		   "0110000" WHEN "0001",
		   "1101101" WHEN "0010",
		   "1111001" WHEN "0011",
		   "0110011" WHEN "0100",
		   "1011011" WHEN "0101",
		   "1011111" WHEN "0110",
		   "1110000" WHEN "0111",
		   "1111111" WHEN "1000",
		   "1110011" WHEN "1001",
		   "1110111" WHEN "1010",
		   "0011111" WHEN "1011",
		   "1001110" WHEN "1100",
		   "0111101" WHEN "1101",
		   "1110000" WHEN "1110",
		   "0111100" WHEN "1111",
		   "0000000" WHEN others;
	WITH qu SELECT
	disp_u <= "1111110" WHEN "0000",
		   "0110000" WHEN "0001",
		   "1101101" WHEN "0010",
		   "1111001" WHEN "0011",
		   "0110011" WHEN "0100",
		   "1011011" WHEN "0101",
		   "1011111" WHEN "0110",
		   "1110000" WHEN "0111",
		   "1111111" WHEN "1000",
		   "1110011" WHEN "1001",
		   "1110111" WHEN "1010",
		   "0011111" WHEN "1011",
		   "1001110" WHEN "1100",
		   "0111101" WHEN "1101",
		   "1110000" WHEN "1110",
		   "0111100" WHEN "1111",
		   "0000000" WHEN others;
end cnt_ud_mod60_att_arch;