library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.comp_package.all;

entity cronometro is
    Port( 
        clk_50M : in STD_LOGIC;
        start_stop : in STD_LOGIC; -- desativado high
        ud : in STD_LOGIC; -- desativado high
        z : in STD_LOGIC; -- desativado high
        dezena : out STD_LOGIC_VECTOR(6 downto 0);
        unidade : out STD_LOGIC_VECTOR(6 downto 0)
    );
end cronometro;

architecture cronometro_arch of cronometro is
    signal contagem : INTEGER range 0 to 59 := 0;
    signal start_stop_ff : STD_LOGIC := '1'; -- 0=off, 1=on
    signal ud_ff : STD_LOGIC := '0'; -- 0=up, 1=down
    signal clk_1s, clk_10ms, start_stop_deb, ud_deb, z_deb : STD_LOGIC;

begin
    clk_div : basic_divider GENERIC MAP(divisor => 25000000)
    PORT MAP(clk_in => clk_50M, clk_out => clk_1s);
    clk_div2 : basic_divider GENERIC MAP(divisor => 250000)
    PORT MAP(clk_in => clk_50M, clk_out => clk_10ms);

	deb_start_stop : debounce PORT MAP(clk => clk_10ms, button => start_stop, result => start_stop_deb);
    deb_ud : debounce PORT MAP(clk => clk_10ms, button => ud, result => ud_deb);

    process (ud_deb, z, start_stop_deb, start_stop_ff, clk_1s, start_stop_ff, contagem, ud_ff)
    begin
        if (rising_edge(ud_deb) and z = '0') then
            ud_ff <= ud_ff XOR '1';
        end if;
        if (rising_edge(start_stop_deb)) then
            start_stop_ff <= start_stop_ff XOR '1';
        end if;
        if (rising_edge(clk_1s) and start_stop_ff = '1') then
            if (ud_ff = '0') then
                if (z = '0' or contagem = 59) then
                    contagem <= 0;
                else
                    contagem <= contagem + 1;
                end if;
            else
                if (z = '0' or contagem = 0) then
                    contagem <= 59;
                else
                    contagem <= contagem - 1;
                end if;
            end if;
        end if;
    end process;

    dezena <= DISPLAY(contagem/10);
    unidade <= DISPLAY(contagem mod 10);
end cronometro_arch;
