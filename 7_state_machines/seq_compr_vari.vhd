LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity seq_compr_vari is
-- o genérico abaixo permite ajustar o tamanho em bits da
-- sequência quanto ao seu valor:
generic(bits: natural := 6; seq_to_det: integer := 50);
port(
    rst_in, seq_in, clk_50M : in std_logic; -- entradas rst, clk e seq
    res_display, est_display : out std_logic_vector(6 downto 0) -- display detectado
);
end seq_compr_vari;

architecture detector of seq_compr_vari is

constant seq: std_logic_vector(bits-1 downto 0) :=
             std_logic_vector(to_unsigned(seq_to_det,bits));

signal stat_prs, prx_stat: integer range 0 to bits;
signal clk_10ms, seq_in_deb, clk_1s, rst : STD_LOGIC;
signal res_out, est_out : std_logic_vector(3 downto 0);

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

begin
    clk_div_10ms : div_clk GENERIC MAP(divisor => 250000)
					       PORT MAP(clk_in => clk_50M, clk_out => clk_10ms);
    clk_div_1s : div_clk GENERIC MAP(divisor => 2500)
					    PORT MAP(clk_in => clk_50M, clk_out => clk_1s);               
	deb : debounce 	       PORT MAP(clk => clk_10ms, button => seq_in, result => seq_in_deb);
    rst <= not rst_in;
	-- Bloco de lógica sequencial:
	seq_proc: process(clk_1s, rst)
	begin
	  if rst = '1' then -- reset vai a zero
	    stat_prs <= 0;
	  elsif clk_1s = '1' and clk_1s'event then
	    stat_prs <= prx_stat; -- assume o próximo estado
	  end if;
	end process seq_proc;
	--------- Bloco de lógica combinacional ------------
	comb_proc: process(stat_prs, seq_in_deb)
	variable idx_seq: integer;
	begin
	    idx_seq := bits - 1 - stat_prs; -- obtem o indice a verificar
	    if stat_prs /= bits then -- se não chegou ao último estado
	        if seq_in_deb = seq(idx_seq) then -- e se a sequência conferir
	            prx_stat <= stat_prs + 1; -- avança para próximo estado
	        else
	            prx_stat <= 0; -- volta ao estado inicial
	        end if;
	    else
	        prx_stat <= bits; -- trava no último estado
	    end if;
	    est_out <= std_logic_vector (to_unsigned(stat_prs, est_out'length));
	    if stat_prs = bits then
	        res_out <= X"1";
	    else
	        res_out <= X"0";
	    end if;
	end process comb_proc;

	WITH res_out SELECT
		res_display <= "1111110" WHEN "0000",
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
    WITH est_out SELECT
    est_display <= "1111110" WHEN "0000",
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
end detector;

