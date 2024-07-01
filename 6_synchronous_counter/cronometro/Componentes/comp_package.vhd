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
	
	component debounce is
		generic(counter_size : INTEGER := 1); -- generaliza capacidade do contador
		port(
			clk : in STD_LOGIC; -- entrada relogio
			button : in STD_LOGIC; -- input signal
			result : out STD_LOGIC -- debounced signal
		);
	end component;
	
	function DISPLAY(num : INTEGER) return STD_LOGIC_VECTOR;
	
end comp_package;

package body comp_package is
	 function DISPLAY(num : INTEGER) return STD_LOGIC_VECTOR is
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
end comp_package;