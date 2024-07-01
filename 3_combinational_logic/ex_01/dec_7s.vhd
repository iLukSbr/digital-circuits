LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY dec_7s IS
  PORT (
  ------------------------------------------------------------------------------
  -- Entradas (4 bits)
    cnt_i : IN  std_logic_vector(3 downto 0);
  ------------------------------------------------------------------------------
  -- Sa�das (7 bits)
    c_7s  : OUT std_logic_vector(6 downto 0)
    );
END dec_7s;

--------------------------------------------------------------------------------
-- Sa�das: abcdefg --- Entradas: klmn --
--------------------------------------------------------------------------------

ARCHITECTURE decode OF dec_7s IS

BEGIN
	WITH cnt_i SELECT
		c_7s <= "1111110" WHEN "0000",
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
END decode;
