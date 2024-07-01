library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity cronometro is
    Port( 
        clk : in STD_LOGIC;
        start_stop : in STD_LOGIC;
        ud : in STD_LOGIC;
        z : in STD_LOGIC;
        dezena : out STD_LOGIC_VECTOR(6 downto 0);
        unidade : out STD_LOGIC_VECTOR(6 downto 0)
    );
end cronometro;

architecture cronometro_arch of cronometro is
    signal contagem : integer range 0 to 59 := 0;
    signal start_stop_ff : STD_LOGIC := '1'; -- 0=off, 1=on
    signal ud_ff : STD_LOGIC := '0'; -- 0=up, 1=down

    function DISPLAY(num : integer) return STD_LOGIC_VECTOR is
    begin
        case num is
            when 0 => return "1111110";
            when 1 => return "0110000";
            when 2 => return "1101101";
            when 3 => return "1111001";
            when 4 => return "0110011";
            when 5 => return "1011011";
            when 6 => return "1011111";
            when 7 => return "1110000";
            when 8 => return "1111111";
            when 9 => return "1110011";
            when others => return "0000000";
        end case;
    end DISPLAY;

begin
    process (clk, z, ud, start_stop)
    begin
        if (z = '0' and rising_edge(ud)) then
            ud_ff <= ud_ff XOR '1';
        end if;
        if (rising_edge(start_stop)) then
            start_stop_ff <= start_stop_ff XOR '1';
        end if;
        if (rising_edge(z)) then
            if(ud_ff = '0') then
                contagem <= 0;
            else
                contagem <= 59;
            end if;
        end if;
        if (rising_edge(clk) and start_stop_ff = '1') then
            if (ud_ff = '0') then
                if (contagem = 59) then
                    contagem <= 0;
                else
                    contagem <= contagem + 1;
                end if;
            else
                if (contagem = 0) then
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
