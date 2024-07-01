library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.comp_package.all;

entity sequencia is
    Port( 
        clk_50M : in STD_LOGIC;
        start : in STD_LOGIC;
        msd : out STD_LOGIC_VECTOR(6 downto 0);
        lsd : out STD_LOGIC_VECTOR(6 downto 0)
    );
end sequencia;

architecture sequencia_arch of sequencia is
    signal contagem_lsd : INTEGER range 0 to 8 := 0;
    signal contagem_msd : STD_LOGIC := '0';
    signal ud_lsd : STD_LOGIC := '0'; -- 0=up, 1=down
    signal start_signal : STD_LOGIC := '0'; -- 0=off, 1=on
	signal clk_1s : STD_LOGIC;

begin
	clk_div : basic_divider GENERIC MAP(divisor => 25000000)
    PORT MAP(clk_in => clk_50M, clk_out => clk_1s);
	
	process (clk_1s, start)
	begin
	    if rising_edge(clk_1s) then
			if (start = '0') then
				start_signal <= '1';
			end if;
	        if start_signal = '1' then
	        	  contagem_msd <= contagem_msd XOR '1';
	            if (ud_lsd = '0') then
	                if (contagem_lsd < 8) then
	                    contagem_lsd <= contagem_lsd + 1;
	                else
	                    contagem_lsd <= 7;
	                    ud_lsd <= '1';
	                end if;
	            elsif (ud_lsd = '1') then
	                if (contagem_lsd > 0) then
	                    contagem_lsd <= contagem_lsd - 1;
	                else
	                    start_signal <= '0';
	                    ud_lsd <= '0';
	                    contagem_msd <= '0';
	                end if;
	            end if;
	        end if;
	    end if;
	end process;
     msd <= DISPLAY_MSD(contagem_msd);
     lsd <= DISPLAY_LSD(contagem_lsd);
end sequencia_arch;