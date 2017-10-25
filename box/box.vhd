-- objective of this game is to keep wak a mole so that the score doesn't go down to 0 before the time runs out.
-- gets harder and harder by first decreasing the score itself, and then after some point, making the mole pops faster and faster
 

Library IEEE;
use IEEE.STD_Logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
--use ieee.numeric_std.all;
use ieee.math_real.all; -- library with type rand
--use work.drawing.all;

 
entity box is
 
    port(
        clk      : in   std_logic; --clock
        reset : in std_logic; -- switch 9
        btn1 : in   std_logic; --starts game/button 1
        btn2: in    std_logic; --button 2/resets the screen..to the start screen
        btn3: in    std_logic; --button 3
        btn4: in    std_logic; --button 4
		  updownSwitch: in std_logic; -- switch 0
		  lineDirection1: in std_logic; -- switch 1
		  goBackSwitch: in std_logic; -- switch 2 used to move line back to line 1 in case of bug
        seglight1: out std_logic_vector(6 downto 0); --hex display drivers
        seglight2: out std_logic_vector(6 downto 0);
        seglight3: out std_logic_vector(6 downto 0);
        seglight4: out std_logic_vector(6 downto 0);
        hsync : out std_logic; -- sync horizontal information
        vsync : out std_logic; -- sync vertical information
        r : out std_logic_vector(3 downto 0); --red channel
        g : out std_logic_vector(3 downto 0); --green channel
        b : out std_logic_vector(3 downto 0) --blue channel
		--  enable       : in std_logic; -- Display Enable
    );
 
end entity;
 
architecture rtl of box is
  component vgadrive is
    port( clock          : in std_logic;  -- 25.175 Mhz clock
        red, green, blue : in std_logic_vector(3 downto 0);  -- input values for RGB signals
        row, column      : out std_logic_vector(9 downto 0); -- for current pixel
        Rout, Gout, Bout : out std_logic_vector(3 downto 0);
		  H, V : out std_logic); -- VGA drive signals
  end component;
  
  
  -- seglight displayer
  component decdriver is
  port (
		a	   : in std_logic_vector (4 downto 0);
		result1 : out std_logic_vector (6 downto 0);
		result2 : out std_logic_vector (6 downto 0)
	);
	end component;
--	
	component decdriver2 is
  port (
		a	   : in std_logic_vector (4 downto 0);
		result1 : out std_logic_vector (6 downto 0);
		result2 : out std_logic_vector (6 downto 0)
	);
	end component;
-- 
--	component debouncer is
--	port( 
--		clk     : IN  STD_LOGIC;  --input clock
--    button  : IN  STD_LOGIC;  --input signal to be debounced
--    result  : OUT STD_LOGIC
--		); 
--	end component;
	
    signal score1 : std_logic_vector(4 downto 0):="00000";
	 signal score2 : std_logic_vector(4 downto 0):="00000";
	 signal xPos : std_logic_vector(9 downto 0):="0010001111";
	 signal yPos : std_logic_vector(9 downto 0):="0000011001";
	 signal storexPos : std_logic_vector(9 downto 0);
	 signal storeyPos : std_logic_vector(9 downto 0);
	 signal btnPush1 : std_logic;
	 signal btnPush2 : std_logic;
	
	signal line1 : boolean:=false;
	signal line2 : boolean:=false;
	signal line3 : boolean:=false;
	signal line4	: boolean:=false;
	signal line5 : boolean:=false;
	signal line6	: boolean:=false;
	signal line7 : boolean:=false;
	signal line8 : boolean:=false;
	signal line9 : boolean:=false;
	signal line10 : boolean:=false;
	signal line11 : boolean:=false;
	signal line12 : boolean:=false;
	signal line13 : boolean:=false;
	signal line14 : boolean:=false;
	signal line15 : boolean:=false;
	signal line16 : boolean:=false;	
	signal line17 : boolean:=false;
	signal line18 : boolean:=false;
	signal line19 : boolean:=false;
	signal line20 : boolean:=false;
	signal line21 : boolean:=false;
	signal line22 : boolean:=false;
	signal line23 : boolean:=false;
	signal line24	: boolean:=false;
	signal line25 : boolean:=false;
	signal line26	: boolean:=false;
	signal line27 : boolean:=false;
	signal line28 : boolean:=false;
	signal line29 : boolean:=false;
	signal line30 : boolean:=false;
	signal line31 : boolean:=false;
	signal line32 : boolean:=false;
	signal line33 : boolean:=false;
	signal line34 : boolean:=false;
	signal line35 : boolean:=false;
	signal line36 : boolean:=false;	
	signal line37 : boolean:=false;
	signal line38 : boolean:=false;
	signal line39 : boolean:=false;
	signal line40 : boolean:=false;
	
	signal color1 : boolean:= true;
	signal color2 : boolean:= true;
	signal color3 : boolean:= true;
	signal color4 : boolean:= true;
	signal color5 : boolean:= true;
	signal color6 : boolean:= true;
	signal color7 : boolean:= true;
	signal color8 : boolean:= true;
	signal color9 : boolean:= true;
	signal color10 : boolean:= true;
	signal color11 : boolean:= true;
	signal color12 : boolean:= true;
	signal color13 : boolean:= true;
	signal color14 : boolean:= true;
	signal color15 : boolean:= true;
	signal color16 : boolean:= true;
	signal color17 : boolean:= true;
	signal color18 : boolean:= true;
	signal color19 : boolean:= true;
	signal color20 : boolean:= true;
	signal color21 : boolean:= true;
	signal color22 : boolean:= true;
	signal color23 : boolean:= true;
	signal color24 : boolean:= true;
	signal color25 : boolean:= true;
	signal color26 : boolean:= true;
	signal color27 : boolean:= true;
	signal color28 : boolean:= true;
	signal color29 : boolean:= true;
	signal color30 : boolean:= true;
	signal color31 : boolean:= true;
	signal color32 : boolean:= true;
	signal color33 : boolean:= true;
	signal color34 : boolean:= true;
	signal color35 : boolean:= true;
	signal color36 : boolean:= true;
	signal color37 : boolean:= true;
	signal color38 : boolean:= true;
	signal color39 : boolean:= true;
	signal color40 : boolean:= true;
	
	signal drawn1 : boolean:= false;
	signal drawn2 : boolean:= false;
	signal drawn3 : boolean:= false;
	signal drawn4 : boolean:= false;
	signal drawn5 : boolean:= false;
	signal drawn6 : boolean:= false;
	signal drawn7 : boolean:= false;
	signal drawn8 : boolean:= false;
	signal drawn9 : boolean:= false;
	signal drawn10 : boolean:= false;
	signal drawn11 : boolean:= false;
	signal drawn12 : boolean:= false;
	signal drawn13 : boolean:= false;
	signal drawn14 : boolean:= false;
	signal drawn15 : boolean:= false;
	signal drawn16 : boolean:= false;
	signal drawn17 : boolean:= false;
	signal drawn18 : boolean:= false;
	signal drawn19 : boolean:= false;
	signal drawn20 : boolean:= false;
	signal drawn21 : boolean:= false;
	signal drawn22 : boolean:= false;
	signal drawn23 : boolean:= false;
	signal drawn24 : boolean:= false;
	signal drawn25 : boolean:= false;
	signal drawn26 : boolean:= false;
	signal drawn27 : boolean:= false;
	signal drawn28 : boolean:= false;
	signal drawn29 : boolean:= false;
	signal drawn30 : boolean:= false;
	signal drawn31 : boolean:= false;
	signal drawn32 : boolean:= false;
	signal drawn33 : boolean:= false;
	signal drawn34 : boolean:= false;
	signal drawn35 : boolean:= false;
	signal drawn36 : boolean:= false;
	signal drawn37 : boolean:= false;
	signal drawn38 : boolean:= false;
	signal drawn39 : boolean:= false;
	signal drawn40 : boolean:= false;	

	signal scoreAdded1 : boolean:= false;
	signal scoreAdded2 : boolean:= false;
	signal scoreAdded3 : boolean:= false;
	signal scoreAdded4 : boolean:= false;
	signal scoreAdded5 : boolean:= false;
	signal scoreAdded6 : boolean:= false;
	signal scoreAdded7 : boolean:= false;
	signal scoreAdded8 : boolean:= false;
	signal scoreAdded9 : boolean:= false;
	signal scoreAdded10 : boolean:= false;
	signal scoreAdded11 : boolean:= false;
	signal scoreAdded12 : boolean:= false;
	signal scoreAdded13 : boolean:= false;
	signal scoreAdded14 : boolean:= false;
	signal scoreAdded15 : boolean:= false;
	signal scoreAdded16 : boolean:= false;
	signal scoreAdded17 : boolean:= false;
	signal scoreAdded18 : boolean:= false;
	signal scoreAdded19 : boolean:= false;
	signal scoreAdded20 : boolean:= false;
	signal scoreAdded21 : boolean:= false;
	signal scoreAdded22 : boolean:= false;
	signal scoreAdded23 : boolean:= false;
	signal scoreAdded24 : boolean:= false;
	signal scoreAdded25 : boolean:= false;
	signal scoreAdded26 : boolean:= false;
	signal scoreAdded27 : boolean:= false;
	signal scoreAdded28 : boolean:= false;
	signal scoreAdded29 : boolean:= false;
	signal scoreAdded30 : boolean:= false;
	signal scoreAdded31 : boolean:= false;
	signal scoreAdded32 : boolean:= false;
	signal scoreAdded33 : boolean:= false;
	signal scoreAdded34 : boolean:= false;
	signal scoreAdded35 : boolean:= false;
	signal scoreAdded36 : boolean:= false;
	signal scoreAdded37 : boolean:= false;
	signal scoreAdded38 : boolean:= false;
	signal scoreAdded39 : boolean:= false;
	signal scoreAdded40 : boolean:= false;

	
	signal lastbtn1State : std_logic;
	signal lastbtn2State : std_logic;
	signal lastbtn3State : std_logic;
	signal lastbtn4State : std_logic;
	
--	
--	 signal counter: unsigned(42 downto 0);
--	 signal slowclock: std_logic;
--	
	signal turn: std_logic:='0';
	-- used for VGA signals
	 signal red, green, blue : std_logic_vector(3 downto 0);
	 signal row, column : std_logic_vector(9 downto 0);

 
begin
   -- for debugging: to view the bit order
  VGA : component vgadrive
    port map ( clock => clk, red => red, green => green, blue => blue,
               row => row, column => column,
               Rout => r, Gout => g, Bout => b, H => hsync, V => vsync); 
	 
	SegDisplay1 : component decdriver 
	 port map (a => score1, result1 => seglight1, result2 => seglight2);
	 
	SegDisplay2 : component decdriver2
	 port map (a => score2, result1 => seglight3, result2 => seglight4);
	 
--	Debouncer1 : component debouncer
--	 port map (clk => clk, button => btn1, result => btnPush1);

	 
	 -- Logic to advance to the next state
    process (clk, reset, row, column)
    begin
		  if reset = '1' then
				score1 <= "00000";
				score2 <= "00000";
				xPos <= "0010001111";
				yPos <= "0000011001";
				
				line1 <= false;
				line2<= false;
				line3<= false;
				line4<= false;
				line5<= false;
				line6<= false;
				line7<= false;
				line8<= false;
				line9<= false;
				line10<= false;
				line11<= false;
				line12<= false;
				line13<= false;
				line14<= false;
				line15<= false;
				line16<= false;
				line17<= false;
				line18<= false;
				line19<= false;
				line20<= false;
				line21<= false;
				line22<= false;
				line23<= false;
				line24<= false;
				line25<= false;
				line26<= false;
				line27<= false;
				line28<= false;
				line29<= false;
				line30<= false;
				line31<= false;
				line32<= false;
				line33<= false;
				line34<= false;
				line35<= false;
				line36<= false;
				line37<= false;
				line38<= false;
				line39<= false;
				line40<= false;
				
				color1<=true;
				color2<=true;
				color3<=true;
				color4<=true;
				color5<=true;
				color6<=true;
				color7<=true;
				color8<=true;
				color9<=true;
				color10<=true;
				color11<=true;
				color12<=true;
				color13<=true;
				color14<=true;
				color15<=true;
				color16<=true;
				color17<=true;
				color18<=true;
				color19<=true;
				color20<=true;
				color21<=true;
				color22<=true;
				color23<=true;
				color24<=true;
				color25<=true;
				color26<=true;
				color27<=true;
				color28<=true;
				color29<=true;
				color30<=true;
				color31<=true;
				color32<=true;
				color33<=true;
				color34<=true;
				color35<=true;
				color36<=true;
				color37<=true;
				color38<=true;
				color39<=true;
				color40<=true;
				
				drawn1<=false;
				drawn2<=false;
				drawn3<=false;
				drawn4<=false;
				drawn5<=false;
				drawn6<=false;
				drawn7<=false;
				drawn8<=false;
				drawn9<=false;
				drawn10<=false;
				drawn11<=false;
				drawn12<=false;
				drawn13<=false;
				drawn14<=false;
				drawn15<=false;
				drawn16<=false;
				drawn17<=false;
				drawn18<=false;
				drawn19<=false;
				drawn20<=false;
				drawn21<=false;
				drawn22<=false;
				drawn23<=false;
				drawn24<=false;
				drawn25<=false;
				drawn26<=false;
				drawn27<=false;
				drawn28<=false;
				drawn29<=false;
				drawn30<=false;
				drawn31<=false;
				drawn32<=false;
				drawn33<=false;
				drawn34<=false;
				drawn35<=false;
				drawn36<=false;
				drawn37<=false;
				drawn38<=false;
				drawn39<=false;
				drawn40<=false;
				
				scoreAdded1<=false;
				scoreAdded2<=false;
				scoreAdded3<=false;
				scoreAdded4<=false;
				scoreAdded5<=false;
				scoreAdded6<=false;
				scoreAdded7<=false;
				scoreAdded8<=false;
				scoreAdded9<=false;
				scoreAdded10<=false;
				scoreAdded11<=false;
				scoreAdded12<=false;
				scoreAdded13<=false;
				scoreAdded14<=false;
				scoreAdded15<=false;
				scoreAdded16<=false;
				scoreAdded17<=false;
				scoreAdded18<=false;
				scoreAdded19<=false;
				scoreAdded20<=false;
				scoreAdded21<=false;
				scoreAdded22<=false;
				scoreAdded23<=false;
				scoreAdded24<=false;
				scoreAdded25<=false;
				scoreAdded26<=false;
				scoreAdded27<=false;
				scoreAdded28<=false;
				scoreAdded29<=false;
				scoreAdded30<=false;
				scoreAdded31<=false;
				scoreAdded32<=false;
				scoreAdded33<=false;
				scoreAdded34<=false;
				scoreAdded35<=false;
				scoreAdded36<=false;
				scoreAdded37<=false;
				scoreAdded38<=false;
				scoreAdded39<=false;
				scoreAdded40<=false;
				
				
        elsif (rising_edge(clk)) then	
				-- when btn0 is pressed, it sets booleans that enable the drawing later on in the code
				if btn1 = '0' and lastbtn1State = '1' then
					if lineDirection1 = '0' then
						if xPos = 143 and yPos = 25 then
							line1 <= true;
							if turn = '0' and drawn1 = false then
								drawn1 <= true;
								color1 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn1 = false then
								drawn1 <= true;
								color1 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 237 and yPos = 25 then
							line2 <= true;
							if turn = '0' and drawn2 = false then
								drawn2 <= true;
								color2 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn2 = false then
								drawn2 <= true;
								color2 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 331 and yPos = 25 then
							line3 <= true;
							if turn = '0' and drawn3 = false then
								drawn3 <= true;
								color3 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn3 = false then
								drawn3 <= true;
								color3 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 425 and yPos = 25 then
							line4 <= true;
							if turn = '0' and drawn4 = false then
								drawn4 <= true;
								color4 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn4 = false then
								drawn4 <= true;
								color4 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 143 and yPos = 119 then -- change row
							line5 <= true;
							if turn = '0' and drawn5 = false then
								drawn5 <= true;
								color5 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn5 = false then
								drawn5 <= true;
								color5 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 237 and yPos = 119 then
							line6 <= true;
							if turn = '0' and drawn6 = false then
								drawn6 <= true;
								color6 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn6 = false then
								drawn6 <= true;
								color6 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 331 and yPos = 119 then
							line7 <= true;
							if turn = '0' and drawn7 = false then
								drawn7 <= true;
								color7 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn7 = false then
								drawn7 <= true;
								color7 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 425 and yPos = 119 then
							line8 <= true;
							if turn = '0' and drawn8 = false then
								drawn8 <= true;
								color8 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn8 = false then
								drawn8 <= true;
								color8 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 143 and yPos = 213 then
							line9 <= true;
							if turn = '0' and drawn9 = false then
								drawn9 <= true;
								color9 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn9 = false then
								drawn9 <= true;
								color9 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 237 and yPos = 213 then
							line10 <= true;
							if turn = '0' and drawn10 = false then
								drawn10 <= true;
								color10 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn10 = false then
								drawn10 <= true;
								color10 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 331 and yPos = 213 then
							line11 <= true;
							if turn = '0' and drawn11 = false then
								drawn11 <= true;
								color11 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn11 = false then
								drawn11 <= true;
								color11 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 425 and yPos = 213 then
							line12 <= true;
							if turn = '0' and drawn12 = false then
								drawn12 <= true;
								color12 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn12 = false then
								drawn12 <= true;
								color12 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 143 and yPos = 307 then
							line13 <= true;
							if turn = '0' and drawn13 = false then
								drawn13 <= true;
								color13 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn13 = false then
								drawn13 <= true;
								color13 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 237 and yPos = 307 then
							line14 <= true;
							if turn = '0' and drawn14 = false then
								drawn14 <= true;
								color14 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn14 = false then
								drawn14 <= true;
								color14 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 331 and yPos = 307 then
							line15 <= true;
							if turn = '0' and drawn15 = false then
								drawn15 <= true;
								color15 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn15 = false then
								drawn15 <= true;
								color15 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 425 and yPos = 307 then
							line16 <= true;
							if turn = '0' and drawn16 = false then
								drawn16 <= true;
								color16 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn16 = false then
								drawn16 <= true;
								color16 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 143 and yPos = 401 then
							line17 <= true;
							if turn = '0' and drawn17 = false then
								drawn17 <= true;
								color17 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn17 = false then
								drawn17 <= true;
								color17 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 237 and yPos = 401 then
							line18 <= true;
							if turn = '0' and drawn18 = false then
								drawn18 <= true;
								color18 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn18 = false then
								drawn18 <= true;
								color18 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 331 and yPos = 401 then
							line19 <= true;
							if turn = '0' and drawn19 = false then
								drawn19 <= true;
								color19 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn19 = false then
								drawn19 <= true;
								color19 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 425 and yPos = 401 then
							line20 <= true;
							if turn = '0' and drawn20 = false then
								drawn20 <= true;
								color20 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn20 = false then
								drawn20 <= true;
								color20 <= false;
								turn <= not turn;
							end if;
						end if;
						
					else
						if xPos = 143 and yPos = 25 then
							line21 <= true;
							if turn = '0' and drawn21 = false then
								drawn21 <= true;
								color21 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn21 = false then
								drawn21 <= true;
								color21 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 237 and yPos = 25 then
							line22 <= true;
							if turn = '0' and drawn22 = false then
								drawn22 <= true;
								color22 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn22 = false then
								drawn22 <= true;
								color22 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 331 and yPos = 25 then
							line23 <= true;
							if turn = '0' and drawn23 = false then
								drawn23 <= true;
								color23 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn23 = false then
								drawn23 <= true;
								color23 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 425 and yPos = 25 then
							line24 <= true;
							if turn = '0' and drawn24 = false then
								drawn24 <= true;
								color24 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn24 = false then
								drawn24 <= true;
								color24 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 519 and yPos = 25 then
							line25 <= true;
							if turn = '0' and drawn25 = false then
								drawn25 <= true;
								color25 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn25 = false then
								drawn25 <= true;
								color25 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 143 and yPos = 119 then -- change row
							line26 <= true;
							if turn = '0' and drawn26 = false then
								drawn26 <= true;
								color26 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn26 = false then
								drawn26 <= true;
								color26 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 237 and yPos = 119 then
							line27 <= true;
							if turn = '0' and drawn27 = false then
								drawn27 <= true;
								color27 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn27 = false then
								drawn27 <= true;
								color27 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 331 and yPos = 119 then
							line28 <= true;
							if turn = '0' and drawn28 = false then
								drawn28 <= true;
								color28 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn28 = false then
								drawn28 <= true;
								color28 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 425 and yPos = 119 then
							line29 <= true;
							if turn = '0' and drawn29 = false then
								drawn29 <= true;
								color29 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn29 = false then
								drawn29 <= true;
								color29 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 519 and yPos = 119 then
							line30 <= true;
							if turn = '0' and drawn30 = false then
								drawn30 <= true;
								color30 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn30 = false then
								drawn30 <= true;
								color30 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 143 and yPos = 213 then
							line31 <= true;
							if turn = '0' and drawn31 = false then
								drawn31 <= true;
								color31 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn31 = false then
								drawn31 <= true;
								color31 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 237 and yPos = 213 then
							line32 <= true;
							if turn = '0' and drawn32 = false then
								drawn32 <= true;
								color32 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn32 = false then
								drawn32 <= true;
								color32 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 331 and yPos = 213 then
							line33 <= true;
							if turn = '0' and drawn33 = false then
								drawn33 <= true;
								color33 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn33 = false then
								drawn33 <= true;
								color33 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 425 and yPos = 213 then
							line34 <= true;
							if turn = '0' and drawn34 = false then
								drawn34 <= true;
								color34 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn34 = false then
								drawn34 <= true;
								color34 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 519 and yPos = 213 then
							line35 <= true;
							if turn = '0' and drawn35 = false then
								drawn35 <= true;
								color35 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn35 = false then
								drawn35 <= true;
								color35 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 143 and yPos = 307 then
							line36 <= true;
							if turn = '0' and drawn36 = false then
								drawn36 <= true;
								color36 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn36 = false then
								drawn36 <= true;
								color36 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 237 and yPos = 307 then
							line37 <= true;
							if turn = '0' and drawn37 = false then
								drawn37 <= true;
								color37 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn37 = false then
								drawn37 <= true;
								color37 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 331 and yPos = 307 then
							line38 <= true;
							if turn = '0' and drawn38 = false then
								drawn38 <= true;
								color38 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn38 = false then
								drawn38 <= true;
								color38 <= false;
								turn <= not turn;
							end if;
						elsif xPos = 425 and yPos = 307 then
							line39 <= true;
							if turn = '0' and drawn39 = false then
								drawn39 <= true;
								color39 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn39 = false then
								drawn39 <= true;
								color39	<= false;
								turn <= not turn;
							end if;
						elsif xPos = 519 and yPos = 307 then
							line40 <= true;
							if turn = '0' and drawn40 = false then
								drawn40 <= true;
								color40 <= true;
								turn <= not turn;
							elsif turn = '1' and drawn40 = false then
								drawn40 <= true;
								color40 <= false;
								turn <= not turn;
							end if;
--						elsif xPos = 143 and yPos = 401 then
--							line37 <= true;
--							if turn = '0' and drawn37 = false then
--								drawn37 <= true;
--								color37 <= true;
--								turn <= not turn;
--							elsif turn = '1' and drawn37 = false then
--								drawn37 <= true;
--								color37 <= false;
--								turn <= not turn;
--							end if;
--						elsif xPos = 237 and yPos = 401 then
--							line38 <= true;
--							if turn = '0' and drawn38 = false then
--								drawn38 <= true;
--								color38 <= true;
--								turn <= not turn;
--							elsif turn = '1' and drawn38 = false then
--								drawn38 <= true;
--								color38 <= false;
--								turn <= not turn;
--							end if;
--						elsif xPos = 331 and yPos = 401 then
--							line39 <= true;
--							if turn = '0' and drawn39 = false then
--								drawn39 <= true;
--								color39 <= true;
--								turn <= not turn;
--							elsif turn = '1' and drawn39 = false then
--								drawn39 <= true;
--								color39 <= false;
--								turn <= not turn;
--							end if;
--						elsif xPos = 425 and yPos = 401 then
--							line40 <= true;
--							if turn = '0' and drawn40 = false then
--								drawn40 <= true;
--								color40 <= true;
--								turn <= not turn;
--							elsif turn = '1' and drawn40 = false then
--								drawn40 <= true;
--								color40 <= false;
--								turn <= not turn;
--							end if;
						end if;
					end if;
				end if;
				
				
				if btn2 = '0' and lastbtn2State = '1' then -- move right
					if lineDirection1 = '0' then
						if xPos = 425 then
							null;
						else 
							xPos <= (xPos + 94);
						end if;
					else
						if xPos = 519 then
							null;
						else
							xPos <= (xPos + 94);
						end if;
					end if;
				elsif btn3 = '0' and lastbtn3State = '1' then -- move up/down depending on the switch
					if updownSwitch = '0' then -- move down
						if lineDirection1 = '0' then -- horizontal 
							if yPos = 401 then
								null;
							else
								yPos <= (yPos + 94);
							end if;
						elsif lineDirection1 = '1' then
							if yPos = 307 then
								null;
							else
								yPos <= (yPos + 94);
							end if;
						end if;
					else -- move up
						if lineDirection1 = '0' then
							if yPos = 25 then
								null;
							else
								yPos <= (yPos - 94);
							end if;
						else
							if yPos = 25 then
								null;
							else
								yPos <= (yPos - 94);
							end if;
						end if;
					end if;
				elsif btn4 = '0' and lastbtn4State = '1' then -- move left
					if lineDirection1 = '0' then
						if xPos = 143 then
							null;
						else
							xPos <= (xPos - 94);
						end if;
					else
						if xPos = 143 then
							null;
						else
							xPos <= (xPos - 94);
						end if;
					end if;
				end if;
				lastbtn1State <= btn1;
				lastbtn2State <= btn2;
				lastbtn3State <= btn3;
				lastbtn4State <= btn4;
				
				if goBackSwitch = '1' then
					xPos <= "0010001111";
					yPos <= "0000011001";
				end if;
				
				
				 -- check for the squares made and increment score
				if line1 and line21 and line22 and line5 and not scoreAdded1 then -- 1
					if turn = '0' then
						score1 <= score1 + 1;
						scoreAdded1 <= true;
					else
						score2 <= score2 + 1;
						scoreAdded1 <= true;
					end if;
				end if;
				if line2 and line22 and line23 and line6 and not scoreAdded2 then -- 2
					if turn = '0' then
						score1 <= score1 + 1;
						scoreAdded2 <= true;
					else
						score2 <= score2 + 1;
						scoreAdded2 <= true;
					end if;
				end if;
				if line3 and line23 and line24 and line7 and not scoreAdded3  then --3
					if turn = '0' then
						score1 <= score1 + 1;
						scoreAdded3 <= true;
					else
						score2 <= score2 + 1;
						scoreAdded3 <= true;
					end if;
				end if;
				if line4 and line24 and line25 and line8 and not scoreAdded4  then--4
					if turn = '0' then
						score1 <= score1 + 1;
						scoreAdded4 <= true;
					else
						score2 <= score2 + 1;
						scoreAdded4 <= true;
					end if;
				end if;
				if line5 and line26 and line27 and line9 and not scoreAdded5  then--5
					if turn = '0' then
						score1 <= score1 + 1;
						scoreAdded5 <= true;
					else
						score2 <= score2 + 1;
						scoreAdded5 <= true;
					end if;
				end if;
				if line6 and line27 and line28 and line10 and not scoreAdded6  then--6
					if turn = '0' then
						score1 <= score1 + 1;
						scoreAdded6 <= true;
					else
						score2 <= score2 + 1;
						scoreAdded6 <= true;
					end if;
				end if;
				if line7 and line28 and line29 and line11 and not scoreAdded7 then--7
					if turn = '0' then
						score1 <= score1 + 1;
						scoreAdded7 <= true;
					else
						score2 <= score2 + 1;
						scoreAdded7 <= true;
					end if;
				end if;
				if line8 and line29 and line30 and line12 and not scoreAdded8 then--8
					if turn = '0' then
						score1 <= score1 + 1;
						scoreAdded8 <= true;
					else
						score2 <= score2 + 1;
						scoreAdded8 <= true;
					end if;
				end if;
				if line9 and line31 and line32 and line13 and not scoreAdded9  then
					if turn = '0' then
						score1 <= score1 + 1;
						scoreAdded9 <= true;
					else
						score2 <= score2 + 1;
						scoreAdded9 <= true;
					end if;
				end if;
				if line10 and line32 and line33 and line14 and not scoreAdded10  then
					if turn = '0' then
						score1 <= score1 + 1;
						scoreAdded10 <= true;
					else
						score2 <= score2 + 1;
						scoreAdded10 <= true;
					end if;
				end if;
				if line11 and line33 and line34 and line15 and not scoreAdded11 then
					if turn = '0' then
						score1 <= score1 + 1;
						scoreAdded11 <= true;
					else
						score2 <= score2 + 1;
						scoreAdded11 <= true;
					end if;
				end if;
				if line12 and line34 and line35 and line16 and not scoreAdded12 then
					if turn = '0' then
						score1 <= score1 + 1;
						scoreAdded12 <= true;
					else
						score2 <= score2 + 1;
						scoreAdded12 <= true;
					end if;
				end if;
				if line13 and line36 and line37 and line17 and not scoreAdded13 then
					if turn = '0' then
						score1 <= score1 + 1;
						scoreAdded13 <= true;
					else
						score2 <= score2 + 1;
						scoreAdded13 <= true;
					end if;
				end if;
				if line14 and line37 and line38 and line18 and not scoreAdded14 then
					if turn = '0' then
						score1 <= score1 + 1;
						scoreAdded14 <= true;
					else
						score2 <= score2 + 1;
						scoreAdded14 <= true;
					end if;
				end if;
				if line15 and line38 and line39 and line19 and not scoreAdded15 then
					if turn = '0' then
						score1 <= score1 + 1;
						scoreAdded15 <= true;
					else
						score2 <= score2 + 1;
						scoreAdded15 <= true;
					end if;
				end if;
				if line16 and line39 and line40 and line20 and not scoreAdded16 then
					if turn = '0' then
						score1 <= score1 + 1;
						scoreAdded16 <= true;
					else
						score2 <= score2 + 1;
						scoreAdded16 <= true;
					end if;
				end if;
				
				
				--drawing stuff
				-- 1,1												-- 1,2						
				if	(column>138 and column<143 and row>20 and row<25) or (column>232 and column<237 and row>20 and row<25) or (column>326 and column<331 and row>20 and row<25) or (column>420 and column<425 and row>20 and row<25) or (column>514 and column<519 and row>20 and row<25) or
					(column>138 and column<143 and row>114 and row<119) or (column>232 and column<237 and row>114 and row<119) or (column>326 and column<331 and row>114 and row<119) or (column>420 and column<425 and row>114 and row<119) or (column>514 and column<519 and row>114 and row<119) or
					(column>138 and column<143 and row>208 and row<213) or (column>232 and column<237 and row>208 and row<213) or (column>326 and column<331 and row>208 and row<213) or (column>420 and column<425 and row>208 and row<213) or (column>514 and column<519 and row>208 and row<213) or
					(column>138 and column<143 and row>302 and row<307) or (column>232 and column<237 and row>302 and row<307) or (column>326 and column<331 and row>302 and row<307) or (column>420 and column<425 and row>302 and row<307) or (column>514 and column<519 and row>302 and row<307) or
					(column>138 and column<143 and row>396 and row<401) or (column>232 and column<237 and row>396 and row<401) or (column>326 and column<331 and row>396 and row<401) or (column>420 and column<425 and row>396 and row<401) or (column>514 and column<519 and row>396 and row<401)
					then
					red <= "1111";
					green <= "0000";
					blue <= "0000";
				elsif (column>xPos and column<xPos+89 and row>yPos-5 and row<yPos) and lineDirection1 = '0' then -- horizontal line 
						red <= "1111";
						green <= "0000";
						blue <= "0000";
				elsif (column>xPos-5 and column<xPos and row>yPos and row<yPos+89) and lineDirection1 = '1' then -- vertical line
					red <= "1111";
					green <= "0000";
					blue <= "0000";
				elsif (column>143 and column<143+89 and row>25-5 and row<25) then
					if line1 = true then
						if color1 and drawn1 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color1 and drawn1 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>237 and column<237+89 and row>25-5 and row<25) then
					if line2 = true then
						if color2 and drawn2 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color2 and drawn2 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>331 and column<331+89 and row>25-5 and row<25) then
					if line3 = true then
						if color3 and drawn3 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color3 and drawn3 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>425 and column<425+89 and row>25-5 and row<25) then
					if line4 = true then
						if color4 and drawn4 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color4 and drawn4 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>143 and column<143+89 and row>119-5 and row<119) then
					if line5 = true then
						if color5 and drawn5 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color5 and drawn5 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>237 and column<237+89 and row>119-5 and row<119) then
					if line6 = true then
						if color6 and drawn6 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color6 and drawn6 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>331 and column<331+89 and row>119-5 and row<119) then
					if line7 = true then
						if color7 and drawn7 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color7 and drawn7 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>425 and column<425+89 and row>119-5 and row<119) then
					if line8 = true then
						if color8 and drawn8 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color8 and drawn8 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>143 and column<143+89 and row>213-5 and row<213) then
					if line9 = true then
						if color9 and drawn9 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color9 and drawn9 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>237 and column<237+89 and row>213-5 and row<213) then
					if line10 = true then
						if color10 and drawn10 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color10 and drawn10 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>331 and column<331+89 and row>213-5 and row<213) then
					if line11 = true then
						if color11 and drawn11 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color11 and drawn11 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>425 and column<425+89 and row>213-5 and row<213) then
					if line12 = true then
						if color12 and drawn12 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color12 and drawn12 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>143 and column<143+89 and row>307-5 and row<307) then
					if line13 = true then
						if color13 and drawn13 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color13 and drawn13 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>237 and column<237+89 and row>307-5 and row<307) then
					if line14 = true then
						if color14 and drawn14 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color14 and drawn14 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>331 and column<331+89 and row>307-5 and row<307) then
					if line15 = true then
						if color15 and drawn15 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color15 and drawn15 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>425 and column<425+89 and row>307-5 and row<307) then
					if line16 = true then
						if color16 and drawn16 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color16 and drawn16 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>143 and column<143+89 and row>401-5 and row<401) then
					if line17 = true then
						if color17 and drawn17 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color17 and drawn17 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>237 and column<237+89 and row>401-5 and row<401) then
					if line18 = true then
						if color18 and drawn18 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color18 and drawn18 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>331 and column<331+89 and row>401-5 and row<401) then
					if line19 = true then
						if color19 and drawn19 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color19 and drawn19 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>425 and column<425+89 and row>401-5 and row<401) then
					if line20 = true then
						if color20 and drawn20 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color20 and drawn20 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;

				elsif (column>143-5 and column<143 and row>25 and row<25+89) then -- vertical 1
					if line21 = true then
						if color21 and drawn21 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color21 and drawn21 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>237-5 and column<237 and row>25 and row<25+89) then -- 2
					if line22 = true then
						if color22 and drawn22 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color22 and drawn22 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>331-5 and column<331 and row>25 and row<25+89) then --3
					if line23 = true then
						if color23 and drawn23 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color23 and drawn23 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>425-5 and column<425 and row>25 and row<25+89) then --4
					if line24 = true then
						if color24 and drawn24 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color24 and drawn24 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>519-5 and column<519 and row>25 and row<25+89) then --4
					if line25 = true then
						if color25 and drawn25 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color25 and drawn25 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>143-5 and column<143 and row>119 and row<119+89) then --5
					if line26 = true then
						if color26 and drawn26 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color26 and drawn26 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>237-5 and column<237 and row>119 and row<119+89) then --6
					if line27 = true then
						if color27 and drawn27 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color27 and drawn27 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>331-5 and column<331 and row>119 and row<119+89) then --7
					if line28 = true then
						if color28 and drawn28 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color28 and drawn28 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>425-5 and column<425 and row>119 and row<119+89) then --8
					if line29 = true then
						if color29 and drawn29 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color29 and drawn29 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>519-5 and column<519 and row>119 and row<119+89) then --4
					if line30 = true then
						if color30 and drawn30 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color30 and drawn30 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>143-5 and column<143 and row>213 and row<213+89) then --9
					if line31 = true then
						if color31 and drawn31 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color31 and drawn31 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>237-5 and column<237 and row>213 and row<213+89) then --10
					if line32 = true then
						if color32 and drawn32 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color32 and drawn32 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>331-5 and column<331 and row>213 and row<213+89) then --11
					if line33 = true then
						if color33 and drawn33 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color33 and drawn33 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>425-5 and column<425 and row>213 and row<213+89) then --12
					if line34 = true then
						if color34 and drawn34 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color34 and drawn34 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>519-5 and column<519 and row>213 and row<213+89) then --4
					if line35 = true then
						if color35 and drawn35 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color35 and drawn35 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>143-5 and column<143 and row>307 and row<307+89) then --13
					if line36 = true then
						if color36 and drawn36 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color36 and drawn36 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>237-5 and column<237 and row>307 and row<307+89) then --14
					if line37 = true then
						if color37 and drawn37 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color37 and drawn37 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>331-5 and column<331 and row>307 and row<307+89) then --15
					if line38 = true then
						if color38 and drawn38 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color38 and drawn38 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>425-5 and column<425 and row>307 and row<307+89) then --16
					if line39 = true then
						if color39 and drawn39 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color39 and drawn39 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>519-5 and column<519 and row>307 and row<307+89) then --17
					if line40 = true then
						if color40 and drawn40 then
							red <= "1111";
							green <= "1110";
							blue <= "0011";
						elsif not color40 and drawn40 then
							red <= "0011";
							green <= "1110";
							blue <= "1111";
						end if;
					else
						red <= "0000";
						green <= "0000";
						blue <= "0000";
					end if;
				elsif (column>143 and column<143+89 and row>25 and row<25+89) then
					if scoreAdded1 and not color1 then
						red <= "1111";
						green <= "1110";
						blue <= "0011";
					elsif scoreAdded1 and color1 then
						red <= "0011";
						green <= "1110";
						blue <= "1111";
					end if;
				elsif (column>237 and column<237+89 and row>25 and row<25+89) then
					if scoreAdded2 and not color2 then
						red <= "1111";
						green <= "1110";
						blue <= "0011";
					elsif scoreAdded2 and color2 then
						red <= "0011";
						green <= "1110";
						blue <= "1111";
					end if;
				elsif (column>331 and column<331+89 and row>25 and row<25+89) then
					if scoreAdded3 and not color3 then
						red <= "1111";
						green <= "1110";
						blue <= "0011";
					elsif scoreAdded3 and color3 then
						red <= "0011";
						green <= "1110";
						blue <= "1111";
					end if;
				elsif (column>425 and column<425+89 and row>25 and row<25+89) then
					if scoreAdded4 and not color4 then
						red <= "1111";
						green <= "1110";
						blue <= "0011";
					elsif scoreAdded4 and color4 then
						red <= "0011";
						green <= "1110";
						blue <= "1111";
					end if;
				elsif (column>143 and column<143+89 and row>119 and row<119+89) then
					if scoreAdded5 and not color5 then
						red <= "1111";
						green <= "1110";
						blue <= "0011";
					elsif scoreAdded5 and color5 then
						red <= "0011";
						green <= "1110";
						blue <= "1111";
					end if;
				elsif (column>237 and column<237+89 and row>119 and row<119+89) then
					if scoreAdded6 and not color6 then
						red <= "1111";
						green <= "1110";
						blue <= "0011";
					elsif scoreAdded6 and color6 then
						red <= "0011";
						green <= "1110";
						blue <= "1111";
					end if;
				elsif (column>331 and column<331+89 and row>119 and row<119+89) then
					if scoreAdded7 and not color7 then
						red <= "1111";
						green <= "1110";
						blue <= "0011";
					elsif scoreAdded7 and color7 then
						red <= "0011";
						green <= "1110";
						blue <= "1111";
					end if;
				elsif (column>425 and column<425+89 and row>119 and row<119+89) then
					if scoreAdded8 and not color8 then
						red <= "1111";
						green <= "1110";
						blue <= "0011";
					elsif scoreAdded8 and color8 then
						red <= "0011";
						green <= "1110";
						blue <= "1111";
					end if;
				elsif (column>143 and column<143+89 and row>213 and row<213+89) then
					if scoreAdded9 and not color9 then
						red <= "1111";
						green <= "1110";
						blue <= "0011";
					elsif scoreAdded9 and color9 then
						red <= "0011";
						green <= "1110";
						blue <= "1111";
					end if;
				elsif (column>237 and column<237+89 and row>213 and row<213+89) then
					if scoreAdded10 and not color10 then
						red <= "1111";
						green <= "1110";
						blue <= "0011";
					elsif scoreAdded10 and color10 then
						red <= "0011";
						green <= "1110";
						blue <= "1111";
					end if;
				elsif (column>331 and column<331+89 and row>213 and row<213+89) then
					if scoreAdded11 and not color11 then
						red <= "1111";
						green <= "1110";
						blue <= "0011";
					elsif scoreAdded11 and color11 then
						red <= "0011";
						green <= "1110";
						blue <= "1111";
					end if;
				elsif (column>425 and column<425+89 and row>213 and row<213+89) then
					if scoreAdded12 and not color12 then
						red <= "1111";
						green <= "1110";
						blue <= "0011";
					elsif scoreAdded12 and color12 then
						red <= "0011";
						green <= "1110";
						blue <= "1111";
					end if;
				elsif (column>143 and column<143+89 and row>307 and row<307+89) then
					if scoreAdded13 and not color13 then
						red <= "1111";
						green <= "1110";
						blue <= "0011";
					elsif scoreAdded13 and color13 then
						red <= "0011";
						green <= "1110";
						blue <= "1111";
					end if;
				elsif (column>237 and column<237+89 and row>307 and row<307+89) then
					if scoreAdded14 and not color14 then
						red <= "1111";
						green <= "1110";
						blue <= "0011";
					elsif scoreAdded14 and color14 then
						red <= "0011";
						green <= "1110";
						blue <= "1111";
					end if;
				elsif (column>331 and column<331+89 and row>307 and row<307+89) then
					if scoreAdded15 and not color15 then
						red <= "1111";
						green <= "1110";
						blue <= "0011";
					elsif scoreAdded15 and color15 then
						red <= "0011";
						green <= "1110";
						blue <= "1111";
					end if;
				elsif (column>425 and column<425+89 and row>307 and row<307+89) then
					if scoreAdded16 and not color16 then
						red <= "1111";
						green <= "1110";
						blue <= "0011";
					elsif scoreAdded16 and color16 then
						red <= "0011";
						green <= "1110";
						blue <= "1111";
					end if;
				else 
					red <= "0000";
					green <= "0000";
					blue <= "0000";
				end if;
			
			end if;
    end process;
	 
	
end rtl;