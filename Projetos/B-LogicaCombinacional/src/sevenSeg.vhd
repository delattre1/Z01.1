library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sevenSeg is
	port (
			bcd : in  STD_LOGIC_VECTOR(3 downto 0);
			leds: out STD_LOGIC_VECTOR(6 downto 0));
end entity;

architecture arch of sevenSeg is

signal s_leds : std_logic_vector(6 downto 0);

begin

	s_leds <= "0000001" when bcd = "0000" else   
		"1001111" when bcd = "0001" else 
		"0010010" when bcd = "0010" else
		"0000110" when bcd = "0011" else
		"1001100" when bcd = "0100" else
		"0100100" when bcd = "0101" else
		"1100000" when bcd = "0110" else
		"0001111" when bcd = "0111" else
		"0000000" when bcd = "1000" else
		"0000100" when bcd = "1001" else
		"0001000" when bcd = "1010" else
		"1100000" when bcd = "1011" else
		"0110001" when bcd = "1100" else
		"1000010" when bcd = "1101" else
		"0110000" when bcd = "1110" else
		"0111000";
		
		gen: for i in 0 to 6 generate
			leds(i) <= s_leds(6-i);		
		end generate;
		

end architecture;














