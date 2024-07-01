library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package comp_package is

    component basic_divider is
        generic(divisor: integer := 5);
        port(
          clk_in		: in  std_logic;	-- clock in.
          clk_out		: out std_logic		-- clock in dividido 2 x divisor
          );
      end component;
	
	function DISPLAY_LSD(num : integer) return STD_LOGIC_VECTOR;
	function DISPLAY_MSD(num2 : STD_LOGIC) return STD_LOGIC_VECTOR;
end comp_package;

package body comp_package is
    function DISPLAY_LSD(num : integer) return STD_LOGIC_VECTOR is
    begin
        case num is
        	when 0 => return "0000001"; -- simbolo "-"
            when 1 => return "1101101"; -- numero 2
            when 2 => return "1011011"; -- numero 5
            when 3 => return "0110000"; -- numero 1
            when 4 => return "1011111"; -- numero 6
            when 5 => return "1110011"; -- numero 9
            when 6 => return "1110000"; -- numero 7
            when 7 => return "1110000"; -- numero 7
            when 8 => return "0000001"; -- simbolo "-"
            when others => return "0000001";
        end case;
    end DISPLAY_LSD;
	
	function DISPLAY_MSD(num2 : STD_LOGIC) return STD_LOGIC_VECTOR is
    begin
        case num2 is
            when '0' => return "0000000";
            when '1' => return "0111100"; -- letra J
            when others => return "0000000";
        end case;
    end DISPLAY_MSD;
end comp_package;