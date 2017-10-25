-- Quartus II VHDL Template
-- Unsigned Adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decdriver is


	port 
	(
		a	   : in unsigned  (4 downto 0); --input is 5 bits. a is the sum
		result1 : out unsigned (6 downto 0); --7 segment display for hexidecimal characters 0-9, A-F
		result2 : out unsigned (6 downto 0) --7 segment display for hexidecimal characters 0-9, A-F
	);

end entity;

architecture rtl of decdriver is
begin

	result1 <= "1000000" when a = "00000" else
	"1111001" when a = "00001" else --display a 1; a=01
	"0100100" when a = "00010" else --display a 2; a=02
	"0110000" when a = "00011" else --display a 3; a=03
	"0011001" when a = "00100" else --display a 4; a=04
	"0010010" when a = "00101" else --display a 5; a=05
	"0000010" when a = "00110" else --display a 6; a=06
	"1111000" when a = "00111" else --display a 7; a=07
	"0000000" when a = "01000" else --display a 8; a=08
	"0011000" when a = "01001" else --display a 9; a=09
	
	"1000000" when a = "01010" else --display a 0; a=10
	"1111001" when a = "01011" else --display a 1; a=11
	"0100100" when a = "01100" else --display a 2; a=12
	"0110000" when a = "01101" else --display a 3; a=13
	"0000110" when a = "01110" else --display a 4; a=14
	"0011001" when a = "01111" else --display a 5; a=15
	"0000010" when a = "10000";  --display a 6; a=16

	result2 <= "1000000" when a = "00000" else
	"1000000" when a = "00001" else --display a 0; a=01
	"1000000" when a = "00010" else --display a 0; a=02
	"1000000" when a = "00011" else --display a 0; a=03
	"1000000" when a = "00100" else --display a 0; a=04
	"1000000" when a = "00101" else --display a 0; a=04
	"1000000" when a = "00110" else --display a 0; a=05
	"1000000" when a = "00111" else --display a 0; a=06
	"1000000" when a = "01000" else --display a 0; a=07
	"1000000" when a = "01001" else --display a 0; a=08
	
	"1111001" when a = "01010" else --display a 1; a=10
	"1111001" when a = "01011" else --display a 1; a=12
	"1111001" when a = "01100" else --display a 1; a=13
	"1111001" when a = "01101" else --display a 1; a=14
	"1111001" when a = "01110" else --display a 1; a=15
	"1111001" when a = "10000"; --display a 1; a=16
end rtl;