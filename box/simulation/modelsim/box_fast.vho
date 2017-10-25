-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Full Version"

-- DATE "05/08/2016 19:18:18"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	box IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	btn1 : IN std_logic;
	btn2 : IN std_logic;
	btn3 : IN std_logic;
	btn4 : IN std_logic;
	updownSwitch : IN std_logic;
	lineDirection1 : IN std_logic;
	goBackSwitch : IN std_logic;
	seglight1 : OUT std_logic_vector(6 DOWNTO 0);
	seglight2 : OUT std_logic_vector(6 DOWNTO 0);
	seglight3 : OUT std_logic_vector(6 DOWNTO 0);
	seglight4 : OUT std_logic_vector(6 DOWNTO 0);
	hsync : OUT std_logic;
	vsync : OUT std_logic;
	r : OUT std_logic_vector(3 DOWNTO 0);
	g : OUT std_logic_vector(3 DOWNTO 0);
	b : OUT std_logic_vector(3 DOWNTO 0)
	);
END box;

-- Design Ports Information
-- seglight1[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight1[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight1[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight1[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight1[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight1[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight1[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight2[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight2[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight2[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight2[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight2[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight2[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight2[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight3[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight3[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight3[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight3[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight3[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight3[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight3[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight4[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight4[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight4[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight4[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight4[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight4[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- seglight4[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hsync	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- vsync	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r[0]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r[1]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r[2]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r[3]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- g[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- g[1]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- g[2]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- g[3]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- b[0]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- b[1]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- b[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- b[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lineDirection1	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- btn1	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- updownSwitch	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- goBackSwitch	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- btn2	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- btn3	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- btn4	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF box IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_btn1 : std_logic;
SIGNAL ww_btn2 : std_logic;
SIGNAL ww_btn3 : std_logic;
SIGNAL ww_btn4 : std_logic;
SIGNAL ww_updownSwitch : std_logic;
SIGNAL ww_lineDirection1 : std_logic;
SIGNAL ww_goBackSwitch : std_logic;
SIGNAL ww_seglight1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seglight2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seglight3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seglight4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hsync : std_logic;
SIGNAL ww_vsync : std_logic;
SIGNAL ww_r : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_g : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|Add1~1_combout\ : std_logic;
SIGNAL \VGA|Add1~3_combout\ : std_logic;
SIGNAL \VGA|Add1~13_combout\ : std_logic;
SIGNAL \VGA|Add1~22_combout\ : std_logic;
SIGNAL \VGA|Add1~25_combout\ : std_logic;
SIGNAL \LessThan3~1_cout\ : std_logic;
SIGNAL \LessThan3~3_cout\ : std_logic;
SIGNAL \LessThan3~5_cout\ : std_logic;
SIGNAL \LessThan3~7_cout\ : std_logic;
SIGNAL \LessThan3~9_cout\ : std_logic;
SIGNAL \LessThan3~11_cout\ : std_logic;
SIGNAL \LessThan3~13_cout\ : std_logic;
SIGNAL \LessThan3~15_cout\ : std_logic;
SIGNAL \LessThan3~17_cout\ : std_logic;
SIGNAL \LessThan3~18_combout\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \SegDisplay1|result1[0]~0_combout\ : std_logic;
SIGNAL \SegDisplay1|result1[3]~6_combout\ : std_logic;
SIGNAL \SegDisplay1|result1[3]~7_combout\ : std_logic;
SIGNAL \SegDisplay1|result1[3]~8_combout\ : std_logic;
SIGNAL \SegDisplay1|result1[5]~11_combout\ : std_logic;
SIGNAL \SegDisplay2|result1[0]~0_combout\ : std_logic;
SIGNAL \SegDisplay2|comb~12_combout\ : std_logic;
SIGNAL \SegDisplay2|result1[3]~6_combout\ : std_logic;
SIGNAL \SegDisplay2|result1[3]~7_combout\ : std_logic;
SIGNAL \VGA|LessThan0~1_combout\ : std_logic;
SIGNAL \VGA|process_0~0_combout\ : std_logic;
SIGNAL \VGA|process_0~3_combout\ : std_logic;
SIGNAL \process_0~29_combout\ : std_logic;
SIGNAL \red[1]~25_combout\ : std_logic;
SIGNAL \red[1]~27_combout\ : std_logic;
SIGNAL \red[1]~35_combout\ : std_logic;
SIGNAL \process_0~45_combout\ : std_logic;
SIGNAL \LessThan30~0_combout\ : std_logic;
SIGNAL \red[1]~42_combout\ : std_logic;
SIGNAL \line35~regout\ : std_logic;
SIGNAL \red[1]~45_combout\ : std_logic;
SIGNAL \line38~regout\ : std_logic;
SIGNAL \line30~regout\ : std_logic;
SIGNAL \line23~regout\ : std_logic;
SIGNAL \red[1]~67_combout\ : std_logic;
SIGNAL \red[1]~69_combout\ : std_logic;
SIGNAL \red[1]~74_combout\ : std_logic;
SIGNAL \red[1]~78_combout\ : std_logic;
SIGNAL \red[1]~91_combout\ : std_logic;
SIGNAL \red[1]~104_combout\ : std_logic;
SIGNAL \red[1]~110_combout\ : std_logic;
SIGNAL \red[1]~111_combout\ : std_logic;
SIGNAL \process_0~70_combout\ : std_logic;
SIGNAL \process_0~71_combout\ : std_logic;
SIGNAL \color2~regout\ : std_logic;
SIGNAL \red[1]~114_combout\ : std_logic;
SIGNAL \red[0]~123_combout\ : std_logic;
SIGNAL \red[1]~131_combout\ : std_logic;
SIGNAL \color13~regout\ : std_logic;
SIGNAL \color11~regout\ : std_logic;
SIGNAL \red[1]~143_combout\ : std_logic;
SIGNAL \color23~regout\ : std_logic;
SIGNAL \red[1]~144_combout\ : std_logic;
SIGNAL \color21~regout\ : std_logic;
SIGNAL \red[1]~145_combout\ : std_logic;
SIGNAL \color28~regout\ : std_logic;
SIGNAL \color31~regout\ : std_logic;
SIGNAL \color33~regout\ : std_logic;
SIGNAL \red[1]~155_combout\ : std_logic;
SIGNAL \scoreAdded1~regout\ : std_logic;
SIGNAL \red[1]~158_combout\ : std_logic;
SIGNAL \red[1]~159_combout\ : std_logic;
SIGNAL \red[1]~160_combout\ : std_logic;
SIGNAL \color40~regout\ : std_logic;
SIGNAL \red[1]~163_combout\ : std_logic;
SIGNAL \red[1]~164_combout\ : std_logic;
SIGNAL \scoreAdded4~regout\ : std_logic;
SIGNAL \red[1]~167_combout\ : std_logic;
SIGNAL \red[1]~168_combout\ : std_logic;
SIGNAL \red[1]~170_combout\ : std_logic;
SIGNAL \scoreAdded8~regout\ : std_logic;
SIGNAL \red[1]~181_combout\ : std_logic;
SIGNAL \red[1]~184_combout\ : std_logic;
SIGNAL \red[1]~185_combout\ : std_logic;
SIGNAL \color36~regout\ : std_logic;
SIGNAL \color37~regout\ : std_logic;
SIGNAL \color15~regout\ : std_logic;
SIGNAL \color20~regout\ : std_logic;
SIGNAL \red[1]~205_combout\ : std_logic;
SIGNAL \red[1]~209_combout\ : std_logic;
SIGNAL \red[1]~211_combout\ : std_logic;
SIGNAL \red[1]~223_combout\ : std_logic;
SIGNAL \red[1]~231_combout\ : std_logic;
SIGNAL \red[1]~232_combout\ : std_logic;
SIGNAL \red[1]~238_combout\ : std_logic;
SIGNAL \red[1]~239_combout\ : std_logic;
SIGNAL \red[1]~242_combout\ : std_logic;
SIGNAL \red[1]~243_combout\ : std_logic;
SIGNAL \red[1]~244_combout\ : std_logic;
SIGNAL \red[1]~245_combout\ : std_logic;
SIGNAL \red[1]~249_combout\ : std_logic;
SIGNAL \red[1]~257_combout\ : std_logic;
SIGNAL \red[1]~258_combout\ : std_logic;
SIGNAL \red[1]~259_combout\ : std_logic;
SIGNAL \red[1]~260_combout\ : std_logic;
SIGNAL \red[1]~261_combout\ : std_logic;
SIGNAL \process_0~79_combout\ : std_logic;
SIGNAL \process_0~80_combout\ : std_logic;
SIGNAL \score1[4]~10_combout\ : std_logic;
SIGNAL \process_0~81_combout\ : std_logic;
SIGNAL \process_0~82_combout\ : std_logic;
SIGNAL \score1[4]~11_combout\ : std_logic;
SIGNAL \score1[4]~12_combout\ : std_logic;
SIGNAL \process_0~85_combout\ : std_logic;
SIGNAL \process_0~88_combout\ : std_logic;
SIGNAL \line35~0_combout\ : std_logic;
SIGNAL \drawn38~0_combout\ : std_logic;
SIGNAL \drawn30~0_combout\ : std_logic;
SIGNAL \line23~0_combout\ : std_logic;
SIGNAL \color2~0_combout\ : std_logic;
SIGNAL \color2~1_combout\ : std_logic;
SIGNAL \color3~0_combout\ : std_logic;
SIGNAL \color6~0_combout\ : std_logic;
SIGNAL \color12~0_combout\ : std_logic;
SIGNAL \color13~0_combout\ : std_logic;
SIGNAL \color13~1_combout\ : std_logic;
SIGNAL \color11~0_combout\ : std_logic;
SIGNAL \color11~1_combout\ : std_logic;
SIGNAL \color25~0_combout\ : std_logic;
SIGNAL \color23~0_combout\ : std_logic;
SIGNAL \color23~1_combout\ : std_logic;
SIGNAL \color21~1_combout\ : std_logic;
SIGNAL \color21~2_combout\ : std_logic;
SIGNAL \color30~0_combout\ : std_logic;
SIGNAL \color28~0_combout\ : std_logic;
SIGNAL \color28~1_combout\ : std_logic;
SIGNAL \color31~0_combout\ : std_logic;
SIGNAL \color31~1_combout\ : std_logic;
SIGNAL \color33~0_combout\ : std_logic;
SIGNAL \color33~1_combout\ : std_logic;
SIGNAL \scoreAdded1~0_combout\ : std_logic;
SIGNAL \color40~1_combout\ : std_logic;
SIGNAL \color39~0_combout\ : std_logic;
SIGNAL \scoreAdded4~0_combout\ : std_logic;
SIGNAL \scoreAdded8~0_combout\ : std_logic;
SIGNAL \color14~0_combout\ : std_logic;
SIGNAL \color36~0_combout\ : std_logic;
SIGNAL \color36~1_combout\ : std_logic;
SIGNAL \color38~0_combout\ : std_logic;
SIGNAL \color37~0_combout\ : std_logic;
SIGNAL \color37~1_combout\ : std_logic;
SIGNAL \color15~0_combout\ : std_logic;
SIGNAL \color15~1_combout\ : std_logic;
SIGNAL \color16~0_combout\ : std_logic;
SIGNAL \color20~0_combout\ : std_logic;
SIGNAL \color20~1_combout\ : std_logic;
SIGNAL \color17~0_combout\ : std_logic;
SIGNAL \turn~0_combout\ : std_logic;
SIGNAL \turn~1_combout\ : std_logic;
SIGNAL \turn~2_combout\ : std_logic;
SIGNAL \turn~3_combout\ : std_logic;
SIGNAL \turn~4_combout\ : std_logic;
SIGNAL \turn~5_combout\ : std_logic;
SIGNAL \turn~6_combout\ : std_logic;
SIGNAL \turn~12_combout\ : std_logic;
SIGNAL \turn~20_combout\ : std_logic;
SIGNAL \turn~21_combout\ : std_logic;
SIGNAL \turn~29_combout\ : std_logic;
SIGNAL \turn~30_combout\ : std_logic;
SIGNAL \turn~35_combout\ : std_logic;
SIGNAL \turn~41_combout\ : std_logic;
SIGNAL \turn~42_combout\ : std_logic;
SIGNAL \process_0~98_combout\ : std_logic;
SIGNAL \turn~49_combout\ : std_logic;
SIGNAL \turn~50_combout\ : std_logic;
SIGNAL \process_0~99_combout\ : std_logic;
SIGNAL \turn~56_combout\ : std_logic;
SIGNAL \turn~57_combout\ : std_logic;
SIGNAL \turn~59_combout\ : std_logic;
SIGNAL \turn~60_combout\ : std_logic;
SIGNAL \turn~65_combout\ : std_logic;
SIGNAL \red[1]~267_combout\ : std_logic;
SIGNAL \red[1]~269_combout\ : std_logic;
SIGNAL \red[1]~273_combout\ : std_logic;
SIGNAL \process_0~106_combout\ : std_logic;
SIGNAL \red[1]~274_combout\ : std_logic;
SIGNAL \updownSwitch~combout\ : std_logic;
SIGNAL \score1[0]~5_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \goBackSwitch~combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \btn3~combout\ : std_logic;
SIGNAL \lastbtn3State~regout\ : std_logic;
SIGNAL \xPos[1]~0_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Equal8~1_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \lineDirection1~combout\ : std_logic;
SIGNAL \yPos[6]~0_combout\ : std_logic;
SIGNAL \yPos[6]~1_combout\ : std_logic;
SIGNAL \yPos[6]~2_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \yPos~4_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \yPos~3_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \btn2~combout\ : std_logic;
SIGNAL \lastbtn2State~regout\ : std_logic;
SIGNAL \process_0~91_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \xPos~7_combout\ : std_logic;
SIGNAL \btn4~combout\ : std_logic;
SIGNAL \lastbtn4State~regout\ : std_logic;
SIGNAL \xPos[1]~2_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \xPos~6_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \xPos~5_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \xPos[1]~1_combout\ : std_logic;
SIGNAL \xPos[1]~3_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \xPos~4_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \process_0~104_combout\ : std_logic;
SIGNAL \drawn21~0_combout\ : std_logic;
SIGNAL \line21~regout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \turn~33_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \turn~32_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \turn~26_combout\ : std_logic;
SIGNAL \drawn28~0_combout\ : std_logic;
SIGNAL \line28~regout\ : std_logic;
SIGNAL \line27~0_combout\ : std_logic;
SIGNAL \line27~regout\ : std_logic;
SIGNAL \turn~27_combout\ : std_logic;
SIGNAL \process_0~96_combout\ : std_logic;
SIGNAL \turn~28_combout\ : std_logic;
SIGNAL \turn~23_combout\ : std_logic;
SIGNAL \turn~24_combout\ : std_logic;
SIGNAL \process_0~107_combout\ : std_logic;
SIGNAL \btn1~combout\ : std_logic;
SIGNAL \lastbtn1State~feeder_combout\ : std_logic;
SIGNAL \lastbtn1State~regout\ : std_logic;
SIGNAL \color21~0_combout\ : std_logic;
SIGNAL \line36~0_combout\ : std_logic;
SIGNAL \line36~regout\ : std_logic;
SIGNAL \turn~7_combout\ : std_logic;
SIGNAL \line33~0_combout\ : std_logic;
SIGNAL \line33~regout\ : std_logic;
SIGNAL \process_0~94_combout\ : std_logic;
SIGNAL \line32~0_combout\ : std_logic;
SIGNAL \line32~regout\ : std_logic;
SIGNAL \turn~18_combout\ : std_logic;
SIGNAL \turn~19_combout\ : std_logic;
SIGNAL \turn~8_combout\ : std_logic;
SIGNAL \turn~9_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \turn~10_combout\ : std_logic;
SIGNAL \turn~11_combout\ : std_logic;
SIGNAL \line40~0_combout\ : std_logic;
SIGNAL \line40~regout\ : std_logic;
SIGNAL \color40~0_combout\ : std_logic;
SIGNAL \turn~13_combout\ : std_logic;
SIGNAL \turn~14_combout\ : std_logic;
SIGNAL \turn~15_combout\ : std_logic;
SIGNAL \process_0~93_combout\ : std_logic;
SIGNAL \turn~16_combout\ : std_logic;
SIGNAL \turn~17_combout\ : std_logic;
SIGNAL \turn~22_combout\ : std_logic;
SIGNAL \turn~25_combout\ : std_logic;
SIGNAL \turn~31_combout\ : std_logic;
SIGNAL \turn~34_combout\ : std_logic;
SIGNAL \line2~0_combout\ : std_logic;
SIGNAL \line2~regout\ : std_logic;
SIGNAL \process_0~108_combout\ : std_logic;
SIGNAL \process_0~105_combout\ : std_logic;
SIGNAL \process_0~95_combout\ : std_logic;
SIGNAL \process_0~100_combout\ : std_logic;
SIGNAL \line9~0_combout\ : std_logic;
SIGNAL \line9~regout\ : std_logic;
SIGNAL \process_0~101_combout\ : std_logic;
SIGNAL \turn~61_combout\ : std_logic;
SIGNAL \drawn12~0_combout\ : std_logic;
SIGNAL \line12~regout\ : std_logic;
SIGNAL \turn~53_combout\ : std_logic;
SIGNAL \turn~52_combout\ : std_logic;
SIGNAL \turn~54_combout\ : std_logic;
SIGNAL \turn~55_combout\ : std_logic;
SIGNAL \color1~0_combout\ : std_logic;
SIGNAL \line16~0_combout\ : std_logic;
SIGNAL \line16~regout\ : std_logic;
SIGNAL \line17~0_combout\ : std_logic;
SIGNAL \line17~regout\ : std_logic;
SIGNAL \turn~46_combout\ : std_logic;
SIGNAL \turn~47_combout\ : std_logic;
SIGNAL \turn~48_combout\ : std_logic;
SIGNAL \line20~0_combout\ : std_logic;
SIGNAL \line20~regout\ : std_logic;
SIGNAL \turn~43_combout\ : std_logic;
SIGNAL \turn~44_combout\ : std_logic;
SIGNAL \turn~38_combout\ : std_logic;
SIGNAL \turn~39_combout\ : std_logic;
SIGNAL \turn~40_combout\ : std_logic;
SIGNAL \turn~45_combout\ : std_logic;
SIGNAL \turn~51_combout\ : std_logic;
SIGNAL \turn~58_combout\ : std_logic;
SIGNAL \turn~62_combout\ : std_logic;
SIGNAL \process_0~92_combout\ : std_logic;
SIGNAL \line5~0_combout\ : std_logic;
SIGNAL \line5~regout\ : std_logic;
SIGNAL \process_0~97_combout\ : std_logic;
SIGNAL \turn~36_combout\ : std_logic;
SIGNAL \turn~37_combout\ : std_logic;
SIGNAL \turn~63_combout\ : std_logic;
SIGNAL \turn~68_combout\ : std_logic;
SIGNAL \turn~69_combout\ : std_logic;
SIGNAL \turn~64_combout\ : std_logic;
SIGNAL \turn~66_combout\ : std_logic;
SIGNAL \turn~67_combout\ : std_logic;
SIGNAL \turn~regout\ : std_logic;
SIGNAL \process_0~78_combout\ : std_logic;
SIGNAL \scoreAdded5~0_combout\ : std_logic;
SIGNAL \scoreAdded5~regout\ : std_logic;
SIGNAL \line22~0_combout\ : std_logic;
SIGNAL \line22~regout\ : std_logic;
SIGNAL \drawn1~0_combout\ : std_logic;
SIGNAL \line1~regout\ : std_logic;
SIGNAL \process_0~77_combout\ : std_logic;
SIGNAL \score1[4]~8_combout\ : std_logic;
SIGNAL \line6~0_combout\ : std_logic;
SIGNAL \line6~regout\ : std_logic;
SIGNAL \process_0~75_combout\ : std_logic;
SIGNAL \scoreAdded2~0_combout\ : std_logic;
SIGNAL \scoreAdded2~regout\ : std_logic;
SIGNAL \line10~0_combout\ : std_logic;
SIGNAL \line10~regout\ : std_logic;
SIGNAL \process_0~76_combout\ : std_logic;
SIGNAL \score1[4]~7_combout\ : std_logic;
SIGNAL \score1[4]~9_combout\ : std_logic;
SIGNAL \line15~0_combout\ : std_logic;
SIGNAL \line15~regout\ : std_logic;
SIGNAL \drawn11~0_combout\ : std_logic;
SIGNAL \line11~regout\ : std_logic;
SIGNAL \drawn34~0_combout\ : std_logic;
SIGNAL \line34~regout\ : std_logic;
SIGNAL \process_0~87_combout\ : std_logic;
SIGNAL \scoreAdded15~0_combout\ : std_logic;
SIGNAL \scoreAdded15~regout\ : std_logic;
SIGNAL \scoreAdded11~0_combout\ : std_logic;
SIGNAL \scoreAdded11~regout\ : std_logic;
SIGNAL \score1[4]~16_combout\ : std_logic;
SIGNAL \process_0~89_combout\ : std_logic;
SIGNAL \scoreAdded12~0_combout\ : std_logic;
SIGNAL \scoreAdded12~regout\ : std_logic;
SIGNAL \line39~0_combout\ : std_logic;
SIGNAL \line39~regout\ : std_logic;
SIGNAL \process_0~90_combout\ : std_logic;
SIGNAL \scoreAdded16~0_combout\ : std_logic;
SIGNAL \scoreAdded16~regout\ : std_logic;
SIGNAL \score1[4]~17_combout\ : std_logic;
SIGNAL \score1[4]~18_combout\ : std_logic;
SIGNAL \line13~0_combout\ : std_logic;
SIGNAL \line13~regout\ : std_logic;
SIGNAL \scoreAdded9~0_combout\ : std_logic;
SIGNAL \scoreAdded9~regout\ : std_logic;
SIGNAL \drawn37~0_combout\ : std_logic;
SIGNAL \line37~regout\ : std_logic;
SIGNAL \process_0~84_combout\ : std_logic;
SIGNAL \line31~0_combout\ : std_logic;
SIGNAL \line31~regout\ : std_logic;
SIGNAL \process_0~83_combout\ : std_logic;
SIGNAL \score1[4]~13_combout\ : std_logic;
SIGNAL \line14~0_combout\ : std_logic;
SIGNAL \line14~regout\ : std_logic;
SIGNAL \line18~0_combout\ : std_logic;
SIGNAL \line18~regout\ : std_logic;
SIGNAL \process_0~86_combout\ : std_logic;
SIGNAL \scoreAdded14~0_combout\ : std_logic;
SIGNAL \scoreAdded14~regout\ : std_logic;
SIGNAL \scoreAdded10~0_combout\ : std_logic;
SIGNAL \scoreAdded10~regout\ : std_logic;
SIGNAL \score1[4]~14_combout\ : std_logic;
SIGNAL \score1[4]~15_combout\ : std_logic;
SIGNAL \score1[4]~19_combout\ : std_logic;
SIGNAL \score1[4]~20_combout\ : std_logic;
SIGNAL \score1[0]~6\ : std_logic;
SIGNAL \score1[1]~21_combout\ : std_logic;
SIGNAL \score1[1]~22\ : std_logic;
SIGNAL \score1[2]~24\ : std_logic;
SIGNAL \score1[3]~25_combout\ : std_logic;
SIGNAL \score1[3]~26\ : std_logic;
SIGNAL \score1[4]~27_combout\ : std_logic;
SIGNAL \SegDisplay1|result1[3]~1_combout\ : std_logic;
SIGNAL \SegDisplay1|result1[0]~2_combout\ : std_logic;
SIGNAL \SegDisplay1|result1[6]~3_combout\ : std_logic;
SIGNAL \SegDisplay1|comb~21_combout\ : std_logic;
SIGNAL \SegDisplay1|result1[6]~4_combout\ : std_logic;
SIGNAL \SegDisplay1|comb~12_combout\ : std_logic;
SIGNAL \SegDisplay1|comb~13_combout\ : std_logic;
SIGNAL \SegDisplay1|result1[2]~5_combout\ : std_logic;
SIGNAL \SegDisplay1|comb~14_combout\ : std_logic;
SIGNAL \SegDisplay1|comb~15_combout\ : std_logic;
SIGNAL \SegDisplay1|result1[3]~9_combout\ : std_logic;
SIGNAL \SegDisplay1|comb~22_combout\ : std_logic;
SIGNAL \SegDisplay1|result1[6]~10_combout\ : std_logic;
SIGNAL \score1[2]~23_combout\ : std_logic;
SIGNAL \SegDisplay1|comb~17_combout\ : std_logic;
SIGNAL \SegDisplay1|comb~16_combout\ : std_logic;
SIGNAL \SegDisplay1|comb~18_combout\ : std_logic;
SIGNAL \SegDisplay1|result1[5]~12_combout\ : std_logic;
SIGNAL \SegDisplay1|result1[6]~13_combout\ : std_logic;
SIGNAL \SegDisplay1|comb~19_combout\ : std_logic;
SIGNAL \SegDisplay1|result1[6]~14_combout\ : std_logic;
SIGNAL \SegDisplay1|result2[6]~0_combout\ : std_logic;
SIGNAL \SegDisplay1|result2[5]~1_combout\ : std_logic;
SIGNAL \SegDisplay1|comb~20_combout\ : std_logic;
SIGNAL \SegDisplay1|comb~23_combout\ : std_logic;
SIGNAL \score2[0]~5_combout\ : std_logic;
SIGNAL \score2[0]~7_combout\ : std_logic;
SIGNAL \score2[0]~6\ : std_logic;
SIGNAL \score2[1]~9\ : std_logic;
SIGNAL \score2[2]~10_combout\ : std_logic;
SIGNAL \score2[2]~11\ : std_logic;
SIGNAL \score2[3]~13\ : std_logic;
SIGNAL \score2[4]~14_combout\ : std_logic;
SIGNAL \score2[3]~12_combout\ : std_logic;
SIGNAL \SegDisplay2|result1[3]~1_combout\ : std_logic;
SIGNAL \score2[1]~8_combout\ : std_logic;
SIGNAL \SegDisplay2|result1[0]~2_combout\ : std_logic;
SIGNAL \SegDisplay2|result1[6]~3_combout\ : std_logic;
SIGNAL \SegDisplay2|comb~21_combout\ : std_logic;
SIGNAL \SegDisplay2|comb~13_combout\ : std_logic;
SIGNAL \SegDisplay2|result1[6]~4_combout\ : std_logic;
SIGNAL \SegDisplay2|result1[2]~5_combout\ : std_logic;
SIGNAL \SegDisplay2|comb~15_combout\ : std_logic;
SIGNAL \SegDisplay2|comb~14_combout\ : std_logic;
SIGNAL \SegDisplay2|result1[3]~8_combout\ : std_logic;
SIGNAL \SegDisplay2|result1[3]~9_combout\ : std_logic;
SIGNAL \SegDisplay2|comb~22_combout\ : std_logic;
SIGNAL \SegDisplay2|result1[6]~10_combout\ : std_logic;
SIGNAL \SegDisplay2|comb~17_combout\ : std_logic;
SIGNAL \SegDisplay2|comb~16_combout\ : std_logic;
SIGNAL \SegDisplay2|result1[5]~11_combout\ : std_logic;
SIGNAL \SegDisplay2|comb~18_combout\ : std_logic;
SIGNAL \SegDisplay2|result1[5]~12_combout\ : std_logic;
SIGNAL \SegDisplay2|result1[6]~13_combout\ : std_logic;
SIGNAL \SegDisplay2|comb~19_combout\ : std_logic;
SIGNAL \SegDisplay2|result1[6]~14_combout\ : std_logic;
SIGNAL \SegDisplay2|comb~23_combout\ : std_logic;
SIGNAL \SegDisplay2|result2[6]~0_combout\ : std_logic;
SIGNAL \SegDisplay2|result2[5]~1_combout\ : std_logic;
SIGNAL \SegDisplay2|comb~20_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \VGA|Add0~13\ : std_logic;
SIGNAL \VGA|Add0~14_combout\ : std_logic;
SIGNAL \VGA|horizontal~7_combout\ : std_logic;
SIGNAL \VGA|Add0~15\ : std_logic;
SIGNAL \VGA|Add0~16_combout\ : std_logic;
SIGNAL \VGA|horizontal~6_combout\ : std_logic;
SIGNAL \VGA|Add0~17\ : std_logic;
SIGNAL \VGA|Add0~18_combout\ : std_logic;
SIGNAL \VGA|horizontal~8_combout\ : std_logic;
SIGNAL \VGA|Add0~0_combout\ : std_logic;
SIGNAL \VGA|horizontal~9_combout\ : std_logic;
SIGNAL \VGA|Add0~1\ : std_logic;
SIGNAL \VGA|Add0~2_combout\ : std_logic;
SIGNAL \VGA|horizontal~5_combout\ : std_logic;
SIGNAL \VGA|Add0~3\ : std_logic;
SIGNAL \VGA|Add0~4_combout\ : std_logic;
SIGNAL \VGA|horizontal~4_combout\ : std_logic;
SIGNAL \VGA|Add0~5\ : std_logic;
SIGNAL \VGA|Add0~6_combout\ : std_logic;
SIGNAL \VGA|horizontal~3_combout\ : std_logic;
SIGNAL \VGA|Add0~7\ : std_logic;
SIGNAL \VGA|Add0~8_combout\ : std_logic;
SIGNAL \VGA|horizontal~0_combout\ : std_logic;
SIGNAL \LessThan38~0_combout\ : std_logic;
SIGNAL \VGA|LessThan0~0_combout\ : std_logic;
SIGNAL \VGA|LessThan0~2_combout\ : std_logic;
SIGNAL \VGA|Add0~9\ : std_logic;
SIGNAL \VGA|Add0~10_combout\ : std_logic;
SIGNAL \VGA|horizontal~1_combout\ : std_logic;
SIGNAL \VGA|Add0~11\ : std_logic;
SIGNAL \VGA|Add0~12_combout\ : std_logic;
SIGNAL \VGA|horizontal~2_combout\ : std_logic;
SIGNAL \VGA|process_0~1_combout\ : std_logic;
SIGNAL \VGA|process_0~2_combout\ : std_logic;
SIGNAL \VGA|process_0~4_combout\ : std_logic;
SIGNAL \VGA|H~regout\ : std_logic;
SIGNAL \VGA|Add1~24_combout\ : std_logic;
SIGNAL \VGA|Add1~30_combout\ : std_logic;
SIGNAL \VGA|LessThan1~1_combout\ : std_logic;
SIGNAL \VGA|Add1~15_combout\ : std_logic;
SIGNAL \VGA|Add1~9_combout\ : std_logic;
SIGNAL \VGA|Add1~2\ : std_logic;
SIGNAL \VGA|Add1~4\ : std_logic;
SIGNAL \VGA|Add1~5_combout\ : std_logic;
SIGNAL \VGA|Add1~7_combout\ : std_logic;
SIGNAL \VGA|Add1~6\ : std_logic;
SIGNAL \VGA|Add1~11\ : std_logic;
SIGNAL \VGA|Add1~14\ : std_logic;
SIGNAL \VGA|Add1~17\ : std_logic;
SIGNAL \VGA|Add1~19_combout\ : std_logic;
SIGNAL \VGA|Add1~21_combout\ : std_logic;
SIGNAL \VGA|Add1~16_combout\ : std_logic;
SIGNAL \VGA|Add1~18_combout\ : std_logic;
SIGNAL \LessThan9~2_combout\ : std_logic;
SIGNAL \VGA|LessThan1~0_combout\ : std_logic;
SIGNAL \VGA|Add1~0_combout\ : std_logic;
SIGNAL \VGA|Add1~10_combout\ : std_logic;
SIGNAL \VGA|Add1~12_combout\ : std_logic;
SIGNAL \VGA|Add1~8_combout\ : std_logic;
SIGNAL \VGA|process_0~5_combout\ : std_logic;
SIGNAL \VGA|Add1~20\ : std_logic;
SIGNAL \VGA|Add1~23\ : std_logic;
SIGNAL \VGA|Add1~26\ : std_logic;
SIGNAL \VGA|Add1~27_combout\ : std_logic;
SIGNAL \VGA|Add1~29_combout\ : std_logic;
SIGNAL \VGA|process_0~6_combout\ : std_logic;
SIGNAL \VGA|process_0~7_combout\ : std_logic;
SIGNAL \VGA|V~regout\ : std_logic;
SIGNAL \LessThan8~2_combout\ : std_logic;
SIGNAL \LessThan9~3_combout\ : std_logic;
SIGNAL \LessThan16~0_combout\ : std_logic;
SIGNAL \LessThan9~4_combout\ : std_logic;
SIGNAL \LessThan9~5_combout\ : std_logic;
SIGNAL \LessThan14~4_combout\ : std_logic;
SIGNAL \LessThan14~2_combout\ : std_logic;
SIGNAL \LessThan14~6_combout\ : std_logic;
SIGNAL \LessThan14~5_combout\ : std_logic;
SIGNAL \LessThan15~0_combout\ : std_logic;
SIGNAL \LessThan15~1_combout\ : std_logic;
SIGNAL \LessThan15~2_combout\ : std_logic;
SIGNAL \process_0~39_combout\ : std_logic;
SIGNAL \process_0~72_combout\ : std_logic;
SIGNAL \process_0~50_combout\ : std_logic;
SIGNAL \process_0~49_combout\ : std_logic;
SIGNAL \process_0~51_combout\ : std_logic;
SIGNAL \process_0~43_combout\ : std_logic;
SIGNAL \process_0~46_combout\ : std_logic;
SIGNAL \process_0~47_combout\ : std_logic;
SIGNAL \process_0~42_combout\ : std_logic;
SIGNAL \process_0~58_combout\ : std_logic;
SIGNAL \process_0~59_combout\ : std_logic;
SIGNAL \process_0~73_combout\ : std_logic;
SIGNAL \process_0~74_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~13\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \LessThan7~1_cout\ : std_logic;
SIGNAL \LessThan7~3_cout\ : std_logic;
SIGNAL \LessThan7~5_cout\ : std_logic;
SIGNAL \LessThan7~7_cout\ : std_logic;
SIGNAL \LessThan7~9_cout\ : std_logic;
SIGNAL \LessThan7~11_cout\ : std_logic;
SIGNAL \LessThan7~13_cout\ : std_logic;
SIGNAL \LessThan7~15_cout\ : std_logic;
SIGNAL \LessThan7~16_combout\ : std_logic;
SIGNAL \LessThan5~1_cout\ : std_logic;
SIGNAL \LessThan5~3_cout\ : std_logic;
SIGNAL \LessThan5~5_cout\ : std_logic;
SIGNAL \LessThan5~7_cout\ : std_logic;
SIGNAL \LessThan5~9_cout\ : std_logic;
SIGNAL \LessThan5~11_cout\ : std_logic;
SIGNAL \LessThan5~13_cout\ : std_logic;
SIGNAL \LessThan5~15_cout\ : std_logic;
SIGNAL \LessThan5~17_cout\ : std_logic;
SIGNAL \LessThan5~18_combout\ : std_logic;
SIGNAL \LessThan6~1_cout\ : std_logic;
SIGNAL \LessThan6~3_cout\ : std_logic;
SIGNAL \LessThan6~5_cout\ : std_logic;
SIGNAL \LessThan6~7_cout\ : std_logic;
SIGNAL \LessThan6~9_cout\ : std_logic;
SIGNAL \LessThan6~11_cout\ : std_logic;
SIGNAL \LessThan6~13_cout\ : std_logic;
SIGNAL \LessThan6~15_cout\ : std_logic;
SIGNAL \LessThan6~16_combout\ : std_logic;
SIGNAL \Add8~1_cout\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~13\ : std_logic;
SIGNAL \Add8~14_combout\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \LessThan4~1_cout\ : std_logic;
SIGNAL \LessThan4~3_cout\ : std_logic;
SIGNAL \LessThan4~5_cout\ : std_logic;
SIGNAL \LessThan4~7_cout\ : std_logic;
SIGNAL \LessThan4~9_cout\ : std_logic;
SIGNAL \LessThan4~11_cout\ : std_logic;
SIGNAL \LessThan4~13_cout\ : std_logic;
SIGNAL \LessThan4~15_cout\ : std_logic;
SIGNAL \LessThan4~17_cout\ : std_logic;
SIGNAL \LessThan4~18_combout\ : std_logic;
SIGNAL \process_0~69_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~16_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~15_cout\ : std_logic;
SIGNAL \LessThan1~16_combout\ : std_logic;
SIGNAL \Add7~1_cout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \LessThan2~1_cout\ : std_logic;
SIGNAL \LessThan2~3_cout\ : std_logic;
SIGNAL \LessThan2~5_cout\ : std_logic;
SIGNAL \LessThan2~7_cout\ : std_logic;
SIGNAL \LessThan2~9_cout\ : std_logic;
SIGNAL \LessThan2~11_cout\ : std_logic;
SIGNAL \LessThan2~13_cout\ : std_logic;
SIGNAL \LessThan2~15_cout\ : std_logic;
SIGNAL \LessThan2~17_cout\ : std_logic;
SIGNAL \LessThan2~18_combout\ : std_logic;
SIGNAL \process_0~68_combout\ : std_logic;
SIGNAL \green~0_combout\ : std_logic;
SIGNAL \green~1_combout\ : std_logic;
SIGNAL \process_0~32_combout\ : std_logic;
SIGNAL \process_0~31_combout\ : std_logic;
SIGNAL \process_0~33_combout\ : std_logic;
SIGNAL \process_0~28_combout\ : std_logic;
SIGNAL \process_0~30_combout\ : std_logic;
SIGNAL \process_0~34_combout\ : std_logic;
SIGNAL \process_0~21_combout\ : std_logic;
SIGNAL \process_0~19_combout\ : std_logic;
SIGNAL \process_0~20_combout\ : std_logic;
SIGNAL \process_0~22_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \LessThan8~1_combout\ : std_logic;
SIGNAL \process_0~14_combout\ : std_logic;
SIGNAL \red[1]~100_combout\ : std_logic;
SIGNAL \process_0~15_combout\ : std_logic;
SIGNAL \process_0~16_combout\ : std_logic;
SIGNAL \process_0~17_combout\ : std_logic;
SIGNAL \LessThan11~0_combout\ : std_logic;
SIGNAL \LessThan10~0_combout\ : std_logic;
SIGNAL \LessThan11~1_combout\ : std_logic;
SIGNAL \LessThan10~1_combout\ : std_logic;
SIGNAL \process_0~37_combout\ : std_logic;
SIGNAL \red[1]~30_combout\ : std_logic;
SIGNAL \line7~0_combout\ : std_logic;
SIGNAL \line7~regout\ : std_logic;
SIGNAL \red[1]~94_combout\ : std_logic;
SIGNAL \LessThan17~0_combout\ : std_logic;
SIGNAL \LessThan32~0_combout\ : std_logic;
SIGNAL \LessThan13~0_combout\ : std_logic;
SIGNAL \LessThan17~1_combout\ : std_logic;
SIGNAL \LessThan12~0_combout\ : std_logic;
SIGNAL \process_0~38_combout\ : std_logic;
SIGNAL \process_0~25_combout\ : std_logic;
SIGNAL \process_0~26_combout\ : std_logic;
SIGNAL \process_0~23_combout\ : std_logic;
SIGNAL \process_0~24_combout\ : std_logic;
SIGNAL \process_0~27_combout\ : std_logic;
SIGNAL \red[1]~28_combout\ : std_logic;
SIGNAL \red[1]~95_combout\ : std_logic;
SIGNAL \red[1]~96_combout\ : std_logic;
SIGNAL \red[1]~29_combout\ : std_logic;
SIGNAL \red[1]~97_combout\ : std_logic;
SIGNAL \red[1]~98_combout\ : std_logic;
SIGNAL \process_0~35_combout\ : std_logic;
SIGNAL \line3~0_combout\ : std_logic;
SIGNAL \line3~regout\ : std_logic;
SIGNAL \red[1]~22_combout\ : std_logic;
SIGNAL \line4~0_combout\ : std_logic;
SIGNAL \line4~regout\ : std_logic;
SIGNAL \red[1]~23_combout\ : std_logic;
SIGNAL \red[1]~24_combout\ : std_logic;
SIGNAL \red[1]~26_combout\ : std_logic;
SIGNAL \red[1]~79_combout\ : std_logic;
SIGNAL \red[1]~80_combout\ : std_logic;
SIGNAL \red[1]~34_combout\ : std_logic;
SIGNAL \LessThan14~3_combout\ : std_logic;
SIGNAL \LessThan16~1_combout\ : std_logic;
SIGNAL \LessThan16~2_combout\ : std_logic;
SIGNAL \LessThan17~2_combout\ : std_logic;
SIGNAL \LessThan17~3_combout\ : std_logic;
SIGNAL \process_0~40_combout\ : std_logic;
SIGNAL \red[1]~32_combout\ : std_logic;
SIGNAL \red[1]~33_combout\ : std_logic;
SIGNAL \red[1]~77_combout\ : std_logic;
SIGNAL \red[1]~81_combout\ : std_logic;
SIGNAL \process_0~67_combout\ : std_logic;
SIGNAL \red[1]~83_combout\ : std_logic;
SIGNAL \red[1]~82_combout\ : std_logic;
SIGNAL \red[1]~84_combout\ : std_logic;
SIGNAL \red[1]~85_combout\ : std_logic;
SIGNAL \red[1]~86_combout\ : std_logic;
SIGNAL \process_0~52_combout\ : std_logic;
SIGNAL \process_0~53_combout\ : std_logic;
SIGNAL \process_0~54_combout\ : std_logic;
SIGNAL \process_0~63_combout\ : std_logic;
SIGNAL \process_0~61_combout\ : std_logic;
SIGNAL \process_0~103_combout\ : std_logic;
SIGNAL \process_0~62_combout\ : std_logic;
SIGNAL \process_0~64_combout\ : std_logic;
SIGNAL \red[1]~43_combout\ : std_logic;
SIGNAL \LessThan42~0_combout\ : std_logic;
SIGNAL \LessThan42~1_combout\ : std_logic;
SIGNAL \process_0~65_combout\ : std_logic;
SIGNAL \red[1]~48_combout\ : std_logic;
SIGNAL \red[1]~49_combout\ : std_logic;
SIGNAL \red[1]~50_combout\ : std_logic;
SIGNAL \red[1]~51_combout\ : std_logic;
SIGNAL \red[1]~44_combout\ : std_logic;
SIGNAL \red[1]~46_combout\ : std_logic;
SIGNAL \red[1]~52_combout\ : std_logic;
SIGNAL \LessThan31~0_combout\ : std_logic;
SIGNAL \process_0~56_combout\ : std_logic;
SIGNAL \red[1]~40_combout\ : std_logic;
SIGNAL \red[1]~36_combout\ : std_logic;
SIGNAL \LessThan28~0_combout\ : std_logic;
SIGNAL \process_0~48_combout\ : std_logic;
SIGNAL \LessThan29~0_combout\ : std_logic;
SIGNAL \process_0~60_combout\ : std_logic;
SIGNAL \process_0~41_combout\ : std_logic;
SIGNAL \process_0~102_combout\ : std_logic;
SIGNAL \process_0~55_combout\ : std_logic;
SIGNAL \process_0~44_combout\ : std_logic;
SIGNAL \red[1]~37_combout\ : std_logic;
SIGNAL \red[1]~38_combout\ : std_logic;
SIGNAL \red[1]~39_combout\ : std_logic;
SIGNAL \red[1]~41_combout\ : std_logic;
SIGNAL \red[1]~53_combout\ : std_logic;
SIGNAL \red[1]~63_combout\ : std_logic;
SIGNAL \red[1]~64_combout\ : std_logic;
SIGNAL \line25~0_combout\ : std_logic;
SIGNAL \line25~regout\ : std_logic;
SIGNAL \red[1]~65_combout\ : std_logic;
SIGNAL \red[1]~66_combout\ : std_logic;
SIGNAL \line29~0_combout\ : std_logic;
SIGNAL \line29~regout\ : std_logic;
SIGNAL \red[1]~60_combout\ : std_logic;
SIGNAL \red[1]~61_combout\ : std_logic;
SIGNAL \red[1]~62_combout\ : std_logic;
SIGNAL \process_0~57_combout\ : std_logic;
SIGNAL \process_0~66_combout\ : std_logic;
SIGNAL \red[1]~71_combout\ : std_logic;
SIGNAL \red[1]~70_combout\ : std_logic;
SIGNAL \red[1]~72_combout\ : std_logic;
SIGNAL \red[1]~75_combout\ : std_logic;
SIGNAL \red[1]~56_combout\ : std_logic;
SIGNAL \red[1]~54_combout\ : std_logic;
SIGNAL \red[1]~55_combout\ : std_logic;
SIGNAL \red[1]~57_combout\ : std_logic;
SIGNAL \red[1]~58_combout\ : std_logic;
SIGNAL \red[1]~59_combout\ : std_logic;
SIGNAL \red[1]~76_combout\ : std_logic;
SIGNAL \red[1]~87_combout\ : std_logic;
SIGNAL \red[1]~99_combout\ : std_logic;
SIGNAL \red[1]~101_combout\ : std_logic;
SIGNAL \red[1]~102_combout\ : std_logic;
SIGNAL \process_0~18_combout\ : std_logic;
SIGNAL \process_0~36_combout\ : std_logic;
SIGNAL \red[1]~105_combout\ : std_logic;
SIGNAL \red[1]~106_combout\ : std_logic;
SIGNAL \red[1]~103_combout\ : std_logic;
SIGNAL \red[1]~107_combout\ : std_logic;
SIGNAL \red[1]~31_combout\ : std_logic;
SIGNAL \red[1]~112_combout\ : std_logic;
SIGNAL \red~113_combout\ : std_logic;
SIGNAL \red[0]~118_combout\ : std_logic;
SIGNAL \red[0]~116_combout\ : std_logic;
SIGNAL \red[0]~117_combout\ : std_logic;
SIGNAL \red[0]~122_combout\ : std_logic;
SIGNAL \red[0]~115_combout\ : std_logic;
SIGNAL \red[0]~124_combout\ : std_logic;
SIGNAL \color3~1_combout\ : std_logic;
SIGNAL \color3~regout\ : std_logic;
SIGNAL \color4~0_combout\ : std_logic;
SIGNAL \color4~1_combout\ : std_logic;
SIGNAL \color4~regout\ : std_logic;
SIGNAL \color6~1_combout\ : std_logic;
SIGNAL \color6~regout\ : std_logic;
SIGNAL \red[1]~89_combout\ : std_logic;
SIGNAL \red[1]~129_combout\ : std_logic;
SIGNAL \red[1]~88_combout\ : std_logic;
SIGNAL \red[1]~127_combout\ : std_logic;
SIGNAL \red[1]~212_combout\ : std_logic;
SIGNAL \red[1]~213_combout\ : std_logic;
SIGNAL \red[1]~214_combout\ : std_logic;
SIGNAL \red[1]~138_combout\ : std_logic;
SIGNAL \color27~0_combout\ : std_logic;
SIGNAL \color27~1_combout\ : std_logic;
SIGNAL \color27~regout\ : std_logic;
SIGNAL \line24~0_combout\ : std_logic;
SIGNAL \line24~regout\ : std_logic;
SIGNAL \color24~0_combout\ : std_logic;
SIGNAL \color24~1_combout\ : std_logic;
SIGNAL \color24~regout\ : std_logic;
SIGNAL \red[1]~68_combout\ : std_logic;
SIGNAL \red[1]~221_combout\ : std_logic;
SIGNAL \color26~0_combout\ : std_logic;
SIGNAL \color26~1_combout\ : std_logic;
SIGNAL \color26~regout\ : std_logic;
SIGNAL \color22~0_combout\ : std_logic;
SIGNAL \color22~1_combout\ : std_logic;
SIGNAL \color22~regout\ : std_logic;
SIGNAL \color25~1_combout\ : std_logic;
SIGNAL \color25~regout\ : std_logic;
SIGNAL \red[1]~141_combout\ : std_logic;
SIGNAL \red[1]~222_combout\ : std_logic;
SIGNAL \drawn26~0_combout\ : std_logic;
SIGNAL \line26~regout\ : std_logic;
SIGNAL \red[1]~146_combout\ : std_logic;
SIGNAL \red[1]~224_combout\ : std_logic;
SIGNAL \red[1]~225_combout\ : std_logic;
SIGNAL \red[0]~120_combout\ : std_logic;
SIGNAL \red[0]~119_combout\ : std_logic;
SIGNAL \red[0]~193_combout\ : std_logic;
SIGNAL \color5~0_combout\ : std_logic;
SIGNAL \color5~1_combout\ : std_logic;
SIGNAL \color5~regout\ : std_logic;
SIGNAL \red[1]~186_combout\ : std_logic;
SIGNAL \red[1]~226_combout\ : std_logic;
SIGNAL \red[1]~227_combout\ : std_logic;
SIGNAL \red[1]~108_combout\ : std_logic;
SIGNAL \red[1]~109_combout\ : std_logic;
SIGNAL \red[1]~228_combout\ : std_logic;
SIGNAL \color14~1_combout\ : std_logic;
SIGNAL \color14~regout\ : std_logic;
SIGNAL \scoreAdded13~0_combout\ : std_logic;
SIGNAL \scoreAdded13~regout\ : std_logic;
SIGNAL \red[1]~190_combout\ : std_logic;
SIGNAL \red[1]~191_combout\ : std_logic;
SIGNAL \red[1]~229_combout\ : std_logic;
SIGNAL \red[1]~230_combout\ : std_logic;
SIGNAL \color30~1_combout\ : std_logic;
SIGNAL \color30~regout\ : std_logic;
SIGNAL \red[1]~150_combout\ : std_logic;
SIGNAL \red[1]~270_combout\ : std_logic;
SIGNAL \red[1]~237_combout\ : std_logic;
SIGNAL \color34~0_combout\ : std_logic;
SIGNAL \color34~1_combout\ : std_logic;
SIGNAL \color34~regout\ : std_logic;
SIGNAL \red[1]~149_combout\ : std_logic;
SIGNAL \red[1]~236_combout\ : std_logic;
SIGNAL \red[1]~271_combout\ : std_logic;
SIGNAL \red[1]~240_combout\ : std_logic;
SIGNAL \red[1]~166_combout\ : std_logic;
SIGNAL \scoreAdded3~0_combout\ : std_logic;
SIGNAL \scoreAdded3~regout\ : std_logic;
SIGNAL \red[1]~165_combout\ : std_logic;
SIGNAL \red[1]~234_combout\ : std_logic;
SIGNAL \red[1]~153_combout\ : std_logic;
SIGNAL \color29~0_combout\ : std_logic;
SIGNAL \color29~1_combout\ : std_logic;
SIGNAL \color29~regout\ : std_logic;
SIGNAL \red[1]~152_combout\ : std_logic;
SIGNAL \red[1]~233_combout\ : std_logic;
SIGNAL \red[1]~169_combout\ : std_logic;
SIGNAL \red[1]~235_combout\ : std_logic;
SIGNAL \red[1]~241_combout\ : std_logic;
SIGNAL \red[1]~175_combout\ : std_logic;
SIGNAL \red[1]~176_combout\ : std_logic;
SIGNAL \color35~0_combout\ : std_logic;
SIGNAL \color35~1_combout\ : std_logic;
SIGNAL \color35~regout\ : std_logic;
SIGNAL \red[1]~272_combout\ : std_logic;
SIGNAL \color39~1_combout\ : std_logic;
SIGNAL \color39~regout\ : std_logic;
SIGNAL \red[1]~162_combout\ : std_logic;
SIGNAL \red[1]~161_combout\ : std_logic;
SIGNAL \red[1]~246_combout\ : std_logic;
SIGNAL \red[1]~247_combout\ : std_logic;
SIGNAL \red[0]~121_combout\ : std_logic;
SIGNAL \drawn8~0_combout\ : std_logic;
SIGNAL \line8~regout\ : std_logic;
SIGNAL \color8~0_combout\ : std_logic;
SIGNAL \color8~1_combout\ : std_logic;
SIGNAL \color8~regout\ : std_logic;
SIGNAL \red[1]~180_combout\ : std_logic;
SIGNAL \scoreAdded7~0_combout\ : std_logic;
SIGNAL \scoreAdded7~regout\ : std_logic;
SIGNAL \red[1]~179_combout\ : std_logic;
SIGNAL \red[1]~248_combout\ : std_logic;
SIGNAL \red[1]~177_combout\ : std_logic;
SIGNAL \color10~0_combout\ : std_logic;
SIGNAL \color10~1_combout\ : std_logic;
SIGNAL \color10~regout\ : std_logic;
SIGNAL \red[1]~182_combout\ : std_logic;
SIGNAL \red[1]~183_combout\ : std_logic;
SIGNAL \red[1]~251_combout\ : std_logic;
SIGNAL \red[1]~172_combout\ : std_logic;
SIGNAL \color12~1_combout\ : std_logic;
SIGNAL \color12~regout\ : std_logic;
SIGNAL \red[1]~171_combout\ : std_logic;
SIGNAL \red[1]~250_combout\ : std_logic;
SIGNAL \red[1]~252_combout\ : std_logic;
SIGNAL \red[1]~253_combout\ : std_logic;
SIGNAL \red[1]~254_combout\ : std_logic;
SIGNAL \red[1]~255_combout\ : std_logic;
SIGNAL \red[1]~256_combout\ : std_logic;
SIGNAL \color7~0_combout\ : std_logic;
SIGNAL \color7~1_combout\ : std_logic;
SIGNAL \color7~regout\ : std_logic;
SIGNAL \red[1]~217_combout\ : std_logic;
SIGNAL \red[1]~132_combout\ : std_logic;
SIGNAL \red[1]~218_combout\ : std_logic;
SIGNAL \red[1]~90_combout\ : std_logic;
SIGNAL \red[1]~219_combout\ : std_logic;
SIGNAL \red[1]~92_combout\ : std_logic;
SIGNAL \red[1]~93_combout\ : std_logic;
SIGNAL \red[1]~215_combout\ : std_logic;
SIGNAL \red[1]~216_combout\ : std_logic;
SIGNAL \red[1]~220_combout\ : std_logic;
SIGNAL \red[1]~262_combout\ : std_logic;
SIGNAL \red[1]~263_combout\ : std_logic;
SIGNAL \red[1]~125_combout\ : std_logic;
SIGNAL \red[1]~126_combout\ : std_logic;
SIGNAL \red[1]~128_combout\ : std_logic;
SIGNAL \red[1]~130_combout\ : std_logic;
SIGNAL \red[1]~136_combout\ : std_logic;
SIGNAL \red[1]~133_combout\ : std_logic;
SIGNAL \color9~0_combout\ : std_logic;
SIGNAL \color9~1_combout\ : std_logic;
SIGNAL \color9~regout\ : std_logic;
SIGNAL \red[1]~134_combout\ : std_logic;
SIGNAL \red[1]~135_combout\ : std_logic;
SIGNAL \red[1]~137_combout\ : std_logic;
SIGNAL \red[1]~73_combout\ : std_logic;
SIGNAL \line19~0_combout\ : std_logic;
SIGNAL \line19~regout\ : std_logic;
SIGNAL \color19~0_combout\ : std_logic;
SIGNAL \color19~1_combout\ : std_logic;
SIGNAL \color19~regout\ : std_logic;
SIGNAL \color18~0_combout\ : std_logic;
SIGNAL \color18~1_combout\ : std_logic;
SIGNAL \color18~regout\ : std_logic;
SIGNAL \color17~1_combout\ : std_logic;
SIGNAL \color17~regout\ : std_logic;
SIGNAL \red[1]~206_combout\ : std_logic;
SIGNAL \red[1]~207_combout\ : std_logic;
SIGNAL \red[1]~139_combout\ : std_logic;
SIGNAL \red[1]~204_combout\ : std_logic;
SIGNAL \red[1]~275_combout\ : std_logic;
SIGNAL \red[1]~276_combout\ : std_logic;
SIGNAL \red[1]~140_combout\ : std_logic;
SIGNAL \red[1]~142_combout\ : std_logic;
SIGNAL \red[1]~147_combout\ : std_logic;
SIGNAL \red[1]~148_combout\ : std_logic;
SIGNAL \red[1]~268_combout\ : std_logic;
SIGNAL \red[1]~174_combout\ : std_logic;
SIGNAL \red[1]~173_combout\ : std_logic;
SIGNAL \red[1]~178_combout\ : std_logic;
SIGNAL \red[1]~192_combout\ : std_logic;
SIGNAL \scoreAdded6~0_combout\ : std_logic;
SIGNAL \scoreAdded6~regout\ : std_logic;
SIGNAL \red[1]~187_combout\ : std_logic;
SIGNAL \red[1]~188_combout\ : std_logic;
SIGNAL \red[1]~189_combout\ : std_logic;
SIGNAL \red[1]~194_combout\ : std_logic;
SIGNAL \color16~1_combout\ : std_logic;
SIGNAL \color16~regout\ : std_logic;
SIGNAL \red[1]~197_combout\ : std_logic;
SIGNAL \red[1]~198_combout\ : std_logic;
SIGNAL \red[1]~199_combout\ : std_logic;
SIGNAL \color38~1_combout\ : std_logic;
SIGNAL \color38~regout\ : std_logic;
SIGNAL \red[1]~47_combout\ : std_logic;
SIGNAL \red[1]~195_combout\ : std_logic;
SIGNAL \red[1]~196_combout\ : std_logic;
SIGNAL \red[1]~200_combout\ : std_logic;
SIGNAL \red[1]~201_combout\ : std_logic;
SIGNAL \red[1]~154_combout\ : std_logic;
SIGNAL \red[1]~151_combout\ : std_logic;
SIGNAL \red[1]~156_combout\ : std_logic;
SIGNAL \color32~0_combout\ : std_logic;
SIGNAL \color32~1_combout\ : std_logic;
SIGNAL \color32~regout\ : std_logic;
SIGNAL \red[1]~157_combout\ : std_logic;
SIGNAL \red[1]~202_combout\ : std_logic;
SIGNAL \red[1]~203_combout\ : std_logic;
SIGNAL \red[1]~208_combout\ : std_logic;
SIGNAL \red[1]~210_combout\ : std_logic;
SIGNAL \red[0]~264_combout\ : std_logic;
SIGNAL \red[1]~265_combout\ : std_logic;
SIGNAL \color1~1_combout\ : std_logic;
SIGNAL \color1~2_combout\ : std_logic;
SIGNAL \color1~regout\ : std_logic;
SIGNAL \blue~0_combout\ : std_logic;
SIGNAL \red~266_combout\ : std_logic;
SIGNAL \red[3]~feeder_combout\ : std_logic;
SIGNAL \green~2_combout\ : std_logic;
SIGNAL \green[2]~feeder_combout\ : std_logic;
SIGNAL \blue~1_combout\ : std_logic;
SIGNAL \blue[3]~feeder_combout\ : std_logic;
SIGNAL yPos : std_logic_vector(9 DOWNTO 0);
SIGNAL xPos : std_logic_vector(9 DOWNTO 0);
SIGNAL score2 : std_logic_vector(4 DOWNTO 0);
SIGNAL score1 : std_logic_vector(4 DOWNTO 0);
SIGNAL red : std_logic_vector(3 DOWNTO 0);
SIGNAL green : std_logic_vector(3 DOWNTO 0);
SIGNAL blue : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA|row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA|column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \SegDisplay1|result2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \SegDisplay1|result1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \SegDisplay2|result2\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \SegDisplay2|result1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_reset~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_btn1 <= btn1;
ww_btn2 <= btn2;
ww_btn3 <= btn3;
ww_btn4 <= btn4;
ww_updownSwitch <= updownSwitch;
ww_lineDirection1 <= lineDirection1;
ww_goBackSwitch <= goBackSwitch;
seglight1 <= ww_seglight1;
seglight2 <= ww_seglight2;
seglight3 <= ww_seglight3;
seglight4 <= ww_seglight4;
hsync <= ww_hsync;
vsync <= ww_vsync;
r <= ww_r;
g <= ww_g;
b <= ww_b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_reset~combout\ <= NOT \reset~combout\;

-- Location: LCCOMB_X27_Y21_N8
\VGA|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add1~1_combout\ = \VGA|row\(0) $ (VCC)
-- \VGA|Add1~2\ = CARRY(\VGA|row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(0),
	datad => VCC,
	combout => \VGA|Add1~1_combout\,
	cout => \VGA|Add1~2\);

-- Location: LCCOMB_X27_Y21_N10
\VGA|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add1~3_combout\ = (\VGA|row\(1) & (!\VGA|Add1~2\)) # (!\VGA|row\(1) & ((\VGA|Add1~2\) # (GND)))
-- \VGA|Add1~4\ = CARRY((!\VGA|Add1~2\) # (!\VGA|row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|row\(1),
	datad => VCC,
	cin => \VGA|Add1~2\,
	combout => \VGA|Add1~3_combout\,
	cout => \VGA|Add1~4\);

-- Location: LCCOMB_X27_Y21_N16
\VGA|Add1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add1~13_combout\ = (\VGA|row\(4) & (\VGA|Add1~11\ $ (GND))) # (!\VGA|row\(4) & (!\VGA|Add1~11\ & VCC))
-- \VGA|Add1~14\ = CARRY((\VGA|row\(4) & !\VGA|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|row\(4),
	datad => VCC,
	cin => \VGA|Add1~11\,
	combout => \VGA|Add1~13_combout\,
	cout => \VGA|Add1~14\);

-- Location: LCCOMB_X27_Y21_N22
\VGA|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add1~22_combout\ = (\VGA|row\(7) & (!\VGA|Add1~20\)) # (!\VGA|row\(7) & ((\VGA|Add1~20\) # (GND)))
-- \VGA|Add1~23\ = CARRY((!\VGA|Add1~20\) # (!\VGA|row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|row\(7),
	datad => VCC,
	cin => \VGA|Add1~20\,
	combout => \VGA|Add1~22_combout\,
	cout => \VGA|Add1~23\);

-- Location: LCCOMB_X27_Y21_N24
\VGA|Add1~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add1~25_combout\ = (\VGA|row\(8) & (\VGA|Add1~23\ $ (GND))) # (!\VGA|row\(8) & (!\VGA|Add1~23\ & VCC))
-- \VGA|Add1~26\ = CARRY((\VGA|row\(8) & !\VGA|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(8),
	datad => VCC,
	cin => \VGA|Add1~23\,
	combout => \VGA|Add1~25_combout\,
	cout => \VGA|Add1~26\);

-- Location: LCCOMB_X26_Y21_N0
\LessThan3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~1_cout\ = CARRY(\VGA|row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(0),
	datad => VCC,
	cout => \LessThan3~1_cout\);

-- Location: LCCOMB_X26_Y21_N2
\LessThan3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~3_cout\ = CARRY((yPos(1) & ((!\LessThan3~1_cout\) # (!\VGA|row\(1)))) # (!yPos(1) & (!\VGA|row\(1) & !\LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yPos(1),
	datab => \VGA|row\(1),
	datad => VCC,
	cin => \LessThan3~1_cout\,
	cout => \LessThan3~3_cout\);

-- Location: LCCOMB_X26_Y21_N4
\LessThan3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~5_cout\ = CARRY((\VGA|row\(2) & ((!\LessThan3~3_cout\) # (!yPos(2)))) # (!\VGA|row\(2) & (!yPos(2) & !\LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(2),
	datab => yPos(2),
	datad => VCC,
	cin => \LessThan3~3_cout\,
	cout => \LessThan3~5_cout\);

-- Location: LCCOMB_X26_Y21_N6
\LessThan3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~7_cout\ = CARRY((yPos(3) & (!\VGA|row\(3) & !\LessThan3~5_cout\)) # (!yPos(3) & ((!\LessThan3~5_cout\) # (!\VGA|row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yPos(3),
	datab => \VGA|row\(3),
	datad => VCC,
	cin => \LessThan3~5_cout\,
	cout => \LessThan3~7_cout\);

-- Location: LCCOMB_X26_Y21_N8
\LessThan3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~9_cout\ = CARRY((\VGA|row\(4) & ((yPos(4)) # (!\LessThan3~7_cout\))) # (!\VGA|row\(4) & (yPos(4) & !\LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(4),
	datab => yPos(4),
	datad => VCC,
	cin => \LessThan3~7_cout\,
	cout => \LessThan3~9_cout\);

-- Location: LCCOMB_X26_Y21_N10
\LessThan3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~11_cout\ = CARRY((\VGA|row\(5) & (yPos(5) & !\LessThan3~9_cout\)) # (!\VGA|row\(5) & ((yPos(5)) # (!\LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(5),
	datab => yPos(5),
	datad => VCC,
	cin => \LessThan3~9_cout\,
	cout => \LessThan3~11_cout\);

-- Location: LCCOMB_X26_Y21_N12
\LessThan3~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~13_cout\ = CARRY((yPos(6) & (\VGA|row\(6) & !\LessThan3~11_cout\)) # (!yPos(6) & ((\VGA|row\(6)) # (!\LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yPos(6),
	datab => \VGA|row\(6),
	datad => VCC,
	cin => \LessThan3~11_cout\,
	cout => \LessThan3~13_cout\);

-- Location: LCCOMB_X26_Y21_N14
\LessThan3~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~15_cout\ = CARRY((\VGA|row\(7) & (yPos(7) & !\LessThan3~13_cout\)) # (!\VGA|row\(7) & ((yPos(7)) # (!\LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(7),
	datab => yPos(7),
	datad => VCC,
	cin => \LessThan3~13_cout\,
	cout => \LessThan3~15_cout\);

-- Location: LCCOMB_X26_Y21_N16
\LessThan3~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~17_cout\ = CARRY((\VGA|row\(8) & ((!\LessThan3~15_cout\) # (!yPos(8)))) # (!\VGA|row\(8) & (!yPos(8) & !\LessThan3~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(8),
	datab => yPos(8),
	datad => VCC,
	cin => \LessThan3~15_cout\,
	cout => \LessThan3~17_cout\);

-- Location: LCCOMB_X26_Y21_N18
\LessThan3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~18_combout\ = (\VGA|row\(9) & (yPos(9) & !\LessThan3~17_cout\)) # (!\VGA|row\(9) & ((yPos(9)) # (!\LessThan3~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(9),
	datab => yPos(9),
	cin => \LessThan3~17_cout\,
	combout => \LessThan3~18_combout\);

-- Location: LCCOMB_X30_Y16_N20
\Add6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = (xPos(4) & ((GND) # (!\Add6~3\))) # (!xPos(4) & (\Add6~3\ $ (GND)))
-- \Add6~5\ = CARRY((xPos(4)) # (!\Add6~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => xPos(4),
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X30_Y16_N28
\Add6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = (xPos(8) & (\Add6~11\ $ (GND))) # (!xPos(8) & (!\Add6~11\ & VCC))
-- \Add6~13\ = CARRY((xPos(8) & !\Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => xPos(8),
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: LCCOMB_X30_Y16_N30
\Add6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = \Add6~13\ $ (xPos(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => xPos(9),
	cin => \Add6~13\,
	combout => \Add6~14_combout\);

-- Location: LCCOMB_X30_Y20_N4
\Add7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (yPos(4) & (\Add7~3\ $ (GND))) # (!yPos(4) & ((GND) # (!\Add7~3\)))
-- \Add7~5\ = CARRY((!\Add7~3\) # (!yPos(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => yPos(4),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X30_Y20_N10
\Add7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (yPos(7) & (\Add7~9\ & VCC)) # (!yPos(7) & (!\Add7~9\))
-- \Add7~11\ = CARRY((!yPos(7) & !\Add7~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => yPos(7),
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X30_Y20_N16
\Add9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = (yPos(1) & (yPos(2) $ (VCC))) # (!yPos(1) & (yPos(2) & VCC))
-- \Add9~1\ = CARRY((yPos(1) & yPos(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yPos(1),
	datab => yPos(2),
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X30_Y20_N26
\Add9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (yPos(7) & (!\Add9~9\)) # (!yPos(7) & ((\Add9~9\) # (GND)))
-- \Add9~11\ = CARRY((!\Add9~9\) # (!yPos(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => yPos(7),
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X30_Y16_N2
\Add8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (xPos(3) & (!\Add8~1_cout\)) # (!xPos(3) & (\Add8~1_cout\ & VCC))
-- \Add8~3\ = CARRY((xPos(3) & !\Add8~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => xPos(3),
	datad => VCC,
	cin => \Add8~1_cout\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X30_Y16_N4
\Add8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = (xPos(4) & ((GND) # (!\Add8~3\))) # (!xPos(4) & (\Add8~3\ $ (GND)))
-- \Add8~5\ = CARRY((xPos(4)) # (!\Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => xPos(4),
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X30_Y16_N6
\Add8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (xPos(5) & (\Add8~5\ & VCC)) # (!xPos(5) & (!\Add8~5\))
-- \Add8~7\ = CARRY((!xPos(5) & !\Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => xPos(5),
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X3_Y19_N12
\SegDisplay1|result1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result1[0]~0_combout\ = (!score1(3) & (!score1(1) & (score1(2) $ (score1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score1(2),
	datab => score1(0),
	datac => score1(3),
	datad => score1(1),
	combout => \SegDisplay1|result1[0]~0_combout\);

-- Location: LCCOMB_X3_Y19_N20
\SegDisplay1|result1[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result1[3]~6_combout\ = (score1(3) & ((score1(4)) # (!score1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => score1(4),
	datac => score1(3),
	datad => score1(0),
	combout => \SegDisplay1|result1[3]~6_combout\);

-- Location: LCCOMB_X3_Y19_N2
\SegDisplay1|result1[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result1[3]~7_combout\ = (score1(2) & ((\SegDisplay1|result1[3]~6_combout\))) # (!score1(2) & (\SegDisplay1|result1[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SegDisplay1|result1[3]~1_combout\,
	datac => \SegDisplay1|result1[3]~6_combout\,
	datad => score1(2),
	combout => \SegDisplay1|result1[3]~7_combout\);

-- Location: LCCOMB_X3_Y19_N4
\SegDisplay1|result1[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result1[3]~8_combout\ = (score1(2) & (!\SegDisplay1|result1[3]~7_combout\ & (score1(0) $ (!score1(1))))) # (!score1(2) & ((score1(1) & (\SegDisplay1|result1[3]~7_combout\)) # (!score1(1) & ((score1(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score1(2),
	datab => \SegDisplay1|result1[3]~7_combout\,
	datac => score1(0),
	datad => score1(1),
	combout => \SegDisplay1|result1[3]~8_combout\);

-- Location: LCCOMB_X3_Y19_N6
\SegDisplay1|result1[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result1[5]~11_combout\ = (score1(2) & ((score1(3) & ((!score1(1)))) # (!score1(3) & (score1(0) & score1(1))))) # (!score1(2) & ((score1(0) & ((score1(1)) # (!score1(3)))) # (!score1(0) & (!score1(3) & score1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score1(2),
	datab => score1(0),
	datac => score1(3),
	datad => score1(1),
	combout => \SegDisplay1|result1[5]~11_combout\);

-- Location: LCCOMB_X3_Y22_N16
\SegDisplay2|result1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result1[0]~0_combout\ = (!score2(1) & (!score2(3) & (score2(0) $ (score2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score2(1),
	datab => score2(3),
	datac => score2(0),
	datad => score2(2),
	combout => \SegDisplay2|result1[0]~0_combout\);

-- Location: LCCOMB_X3_Y22_N4
\SegDisplay2|comb~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|comb~12_combout\ = (score2(2) & ((score2(1) & ((!score2(0)))) # (!score2(1) & (!score2(3) & score2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score2(1),
	datab => score2(3),
	datac => score2(0),
	datad => score2(2),
	combout => \SegDisplay2|comb~12_combout\);

-- Location: LCCOMB_X3_Y22_N20
\SegDisplay2|result1[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result1[3]~6_combout\ = (score2(3) & ((score2(4)) # (!score2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => score2(4),
	datac => score2(0),
	datad => score2(3),
	combout => \SegDisplay2|result1[3]~6_combout\);

-- Location: LCCOMB_X3_Y22_N6
\SegDisplay2|result1[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result1[3]~7_combout\ = (score2(2) & ((\SegDisplay2|result1[3]~6_combout\))) # (!score2(2) & (\SegDisplay2|result1[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SegDisplay2|result1[3]~1_combout\,
	datac => \SegDisplay2|result1[3]~6_combout\,
	datad => score2(2),
	combout => \SegDisplay2|result1[3]~7_combout\);

-- Location: LCCOMB_X26_Y18_N24
\VGA|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|LessThan0~1_combout\ = (!\VGA|column\(7) & (!\VGA|column\(6) & !\VGA|column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|column\(7),
	datac => \VGA|column\(6),
	datad => \VGA|column\(5),
	combout => \VGA|LessThan0~1_combout\);

-- Location: LCCOMB_X26_Y15_N4
\VGA|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|process_0~0_combout\ = (\VGA|horizontal~4_combout\) # ((\VGA|horizontal~3_combout\) # ((\VGA|Add0~0_combout\ & \VGA|horizontal~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Add0~0_combout\,
	datab => \VGA|horizontal~5_combout\,
	datac => \VGA|horizontal~4_combout\,
	datad => \VGA|horizontal~3_combout\,
	combout => \VGA|process_0~0_combout\);

-- Location: LCCOMB_X26_Y15_N2
\VGA|process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|process_0~3_combout\ = ((!\VGA|horizontal~3_combout\ & ((!\VGA|Add0~4_combout\) # (!\VGA|horizontal~5_combout\)))) # (!\VGA|horizontal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|horizontal~0_combout\,
	datab => \VGA|horizontal~5_combout\,
	datac => \VGA|Add0~4_combout\,
	datad => \VGA|horizontal~3_combout\,
	combout => \VGA|process_0~3_combout\);

-- Location: LCCOMB_X23_Y18_N14
\process_0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~29_combout\ = (\VGA|column\(2)) # (\VGA|column\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA|column\(2),
	datad => \VGA|column\(1),
	combout => \process_0~29_combout\);

-- Location: LCCOMB_X26_Y17_N16
\red[1]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~25_combout\ = (!\VGA|column\(9) & (\process_0~14_combout\ & (\line2~regout\ & !\process_0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(9),
	datab => \process_0~14_combout\,
	datac => \line2~regout\,
	datad => \process_0~36_combout\,
	combout => \red[1]~25_combout\);

-- Location: LCCOMB_X26_Y17_N4
\red[1]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~27_combout\ = ((\process_0~27_combout\ & \process_0~34_combout\)) # (!\process_0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~27_combout\,
	datac => \process_0~34_combout\,
	datad => \process_0~14_combout\,
	combout => \red[1]~27_combout\);

-- Location: LCCOMB_X22_Y20_N26
\red[1]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~35_combout\ = (\red[1]~34_combout\ & (\red[1]~33_combout\ & ((\process_0~22_combout\) # (!\process_0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~40_combout\,
	datab => \process_0~22_combout\,
	datac => \red[1]~34_combout\,
	datad => \red[1]~33_combout\,
	combout => \red[1]~35_combout\);

-- Location: LCCOMB_X24_Y18_N12
\process_0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~45_combout\ = (\VGA|column\(4)) # (\VGA|column\(2) $ (((!\VGA|column\(0) & !\VGA|column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(2),
	datab => \VGA|column\(0),
	datac => \VGA|column\(4),
	datad => \VGA|column\(1),
	combout => \process_0~45_combout\);

-- Location: LCCOMB_X24_Y21_N12
\LessThan30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan30~0_combout\ = (\VGA|row\(6) & (\VGA|row\(3) & (\VGA|row\(4) & \VGA|row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(6),
	datab => \VGA|row\(3),
	datac => \VGA|row\(4),
	datad => \VGA|row\(5),
	combout => \LessThan30~0_combout\);

-- Location: LCCOMB_X24_Y17_N6
\red[1]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~42_combout\ = ((\process_0~47_combout\ & \process_0~44_combout\)) # (!\process_0~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~47_combout\,
	datac => \process_0~44_combout\,
	datad => \process_0~64_combout\,
	combout => \red[1]~42_combout\);

-- Location: LCFF_X23_Y19_N25
line35 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line35~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line35~regout\);

-- Location: LCCOMB_X23_Y19_N26
\red[1]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~45_combout\ = (\process_0~64_combout\ & (\line35~regout\ & !\process_0~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~64_combout\,
	datac => \line35~regout\,
	datad => \process_0~59_combout\,
	combout => \red[1]~45_combout\);

-- Location: LCFF_X25_Y16_N7
line38 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \drawn38~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line38~regout\);

-- Location: LCFF_X25_Y18_N23
line30 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \drawn30~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line30~regout\);

-- Location: LCFF_X21_Y15_N1
line23 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line23~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line23~regout\);

-- Location: LCCOMB_X20_Y18_N8
\red[1]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~67_combout\ = (\line23~regout\ & (\process_0~48_combout\ & (!\process_0~51_combout\ & \LessThan29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line23~regout\,
	datab => \process_0~48_combout\,
	datac => \process_0~51_combout\,
	datad => \LessThan29~0_combout\,
	combout => \red[1]~67_combout\);

-- Location: LCCOMB_X20_Y18_N24
\red[1]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~69_combout\ = (\red[1]~37_combout\ & ((\red[1]~67_combout\) # (\red[1]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \red[1]~37_combout\,
	datac => \red[1]~67_combout\,
	datad => \red[1]~68_combout\,
	combout => \red[1]~69_combout\);

-- Location: LCCOMB_X24_Y21_N2
\red[1]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~74_combout\ = (\red[1]~73_combout\) # ((!\process_0~27_combout\ & (\process_0~40_combout\ & \line19~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~27_combout\,
	datab => \process_0~40_combout\,
	datac => \line19~regout\,
	datad => \red[1]~73_combout\,
	combout => \red[1]~74_combout\);

-- Location: LCCOMB_X24_Y20_N2
\red[1]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~78_combout\ = (\line14~regout\ & (!\process_0~22_combout\ & \process_0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line14~regout\,
	datac => \process_0~22_combout\,
	datad => \process_0~39_combout\,
	combout => \red[1]~78_combout\);

-- Location: LCCOMB_X22_Y21_N12
\red[1]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~91_combout\ = (\red[1]~89_combout\) # ((\red[1]~88_combout\) # ((\red[1]~90_combout\ & \red[1]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~90_combout\,
	datab => \red[1]~30_combout\,
	datac => \red[1]~89_combout\,
	datad => \red[1]~88_combout\,
	combout => \red[1]~91_combout\);

-- Location: LCCOMB_X23_Y17_N12
\red[1]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~104_combout\ = (\process_0~56_combout\) # ((\process_0~55_combout\) # (\process_0~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~56_combout\,
	datac => \process_0~55_combout\,
	datad => \process_0~64_combout\,
	combout => \red[1]~104_combout\);

-- Location: LCCOMB_X21_Y17_N2
\red[1]~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~110_combout\ = (\red[1]~36_combout\ & (\red[1]~42_combout\ & (\red[1]~40_combout\ & \red[1]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~36_combout\,
	datab => \red[1]~42_combout\,
	datac => \red[1]~40_combout\,
	datad => \red[1]~39_combout\,
	combout => \red[1]~110_combout\);

-- Location: LCCOMB_X21_Y17_N20
\red[1]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~111_combout\ = (\red[1]~109_combout\ & (\red[1]~43_combout\ & (\red[1]~35_combout\ & \red[1]~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~109_combout\,
	datab => \red[1]~43_combout\,
	datac => \red[1]~35_combout\,
	datad => \red[1]~110_combout\,
	combout => \red[1]~111_combout\);

-- Location: LCCOMB_X23_Y21_N20
\process_0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~70_combout\ = (\LessThan17~3_combout\ & ((\LessThan16~2_combout\) # ((\LessThan10~1_combout\ & \LessThan11~1_combout\)))) # (!\LessThan17~3_combout\ & (((\LessThan10~1_combout\ & \LessThan11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan17~3_combout\,
	datab => \LessThan16~2_combout\,
	datac => \LessThan10~1_combout\,
	datad => \LessThan11~1_combout\,
	combout => \process_0~70_combout\);

-- Location: LCCOMB_X23_Y21_N6
\process_0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~71_combout\ = (\process_0~70_combout\) # ((\LessThan13~0_combout\ & \LessThan12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan13~0_combout\,
	datac => \process_0~70_combout\,
	datad => \LessThan12~0_combout\,
	combout => \process_0~71_combout\);

-- Location: LCFF_X22_Y18_N15
color2 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color2~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color2~regout\);

-- Location: LCCOMB_X26_Y17_N28
\red[1]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~114_combout\ = (\line2~regout\ & (\color2~regout\ & (!\process_0~17_combout\ & \process_0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line2~regout\,
	datab => \color2~regout\,
	datac => \process_0~17_combout\,
	datad => \process_0~35_combout\,
	combout => \red[1]~114_combout\);

-- Location: LCCOMB_X21_Y17_N10
\red[0]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[0]~123_combout\ = (\red[1]~31_combout\ & (\red[1]~111_combout\ & \red[1]~274_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~31_combout\,
	datac => \red[1]~111_combout\,
	datad => \red[1]~274_combout\,
	combout => \red[0]~123_combout\);

-- Location: LCCOMB_X23_Y17_N6
\red[1]~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~131_combout\ = (\color10~regout\ & \red[1]~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color10~regout\,
	datad => \red[1]~93_combout\,
	combout => \red[1]~131_combout\);

-- Location: LCFF_X21_Y16_N19
color13 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color13~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color13~regout\);

-- Location: LCFF_X20_Y20_N23
color11 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color11~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color11~regout\);

-- Location: LCCOMB_X21_Y18_N24
\red[1]~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~143_combout\ = (\line21~regout\ & (!\process_0~44_combout\ & (\process_0~48_combout\ & \LessThan29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line21~regout\,
	datab => \process_0~44_combout\,
	datac => \process_0~48_combout\,
	datad => \LessThan29~0_combout\,
	combout => \red[1]~143_combout\);

-- Location: LCFF_X22_Y18_N31
color23 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color23~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color23~regout\);

-- Location: LCCOMB_X21_Y18_N2
\red[1]~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~144_combout\ = (\process_0~55_combout\ & (\line23~regout\ & (\red[1]~37_combout\ & !\process_0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~55_combout\,
	datab => \line23~regout\,
	datac => \red[1]~37_combout\,
	datad => \process_0~51_combout\,
	combout => \red[1]~144_combout\);

-- Location: LCFF_X21_Y15_N15
color21 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color21~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color21~regout\);

-- Location: LCCOMB_X21_Y18_N16
\red[1]~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~145_combout\ = (\color21~regout\ & ((\red[1]~143_combout\) # ((\color23~regout\ & \red[1]~144_combout\)))) # (!\color21~regout\ & (\color23~regout\ & ((\red[1]~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color21~regout\,
	datab => \color23~regout\,
	datac => \red[1]~143_combout\,
	datad => \red[1]~144_combout\,
	combout => \red[1]~145_combout\);

-- Location: LCFF_X20_Y17_N9
color28 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color28~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color28~regout\);

-- Location: LCFF_X21_Y15_N29
color31 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color31~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color31~regout\);

-- Location: LCFF_X21_Y15_N19
color33 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color33~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color33~regout\);

-- Location: LCCOMB_X24_Y17_N10
\red[1]~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~155_combout\ = (\color33~regout\ & ((\red[1]~55_combout\) # ((\color34~regout\ & \red[1]~56_combout\)))) # (!\color33~regout\ & (((\color34~regout\ & \red[1]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color33~regout\,
	datab => \red[1]~55_combout\,
	datac => \color34~regout\,
	datad => \red[1]~56_combout\,
	combout => \red[1]~155_combout\);

-- Location: LCFF_X22_Y15_N29
scoreAdded1 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \scoreAdded1~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scoreAdded1~regout\);

-- Location: LCCOMB_X22_Y18_N10
\red[1]~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~158_combout\ = (!\color1~regout\ & (\process_0~55_combout\ & (!\process_0~16_combout\ & \scoreAdded1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color1~regout\,
	datab => \process_0~55_combout\,
	datac => \process_0~16_combout\,
	datad => \scoreAdded1~regout\,
	combout => \red[1]~158_combout\);

-- Location: LCCOMB_X22_Y18_N2
\red[1]~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~159_combout\ = (!\process_0~22_combout\ & (\scoreAdded2~regout\ & (\process_0~55_combout\ & \process_0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~22_combout\,
	datab => \scoreAdded2~regout\,
	datac => \process_0~55_combout\,
	datad => \process_0~16_combout\,
	combout => \red[1]~159_combout\);

-- Location: LCCOMB_X22_Y18_N28
\red[1]~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~160_combout\ = (\red[1]~109_combout\ & ((\red[1]~158_combout\) # ((!\color2~regout\ & \red[1]~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~158_combout\,
	datab => \color2~regout\,
	datac => \red[1]~109_combout\,
	datad => \red[1]~159_combout\,
	combout => \red[1]~160_combout\);

-- Location: LCFF_X24_Y19_N3
color40 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color40~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color40~regout\);

-- Location: LCCOMB_X23_Y19_N6
\red[1]~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~163_combout\ = (\color40~regout\ & ((\red[1]~162_combout\) # ((\color39~regout\ & \red[1]~161_combout\)))) # (!\color40~regout\ & (\color39~regout\ & ((\red[1]~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color40~regout\,
	datab => \color39~regout\,
	datac => \red[1]~162_combout\,
	datad => \red[1]~161_combout\,
	combout => \red[1]~163_combout\);

-- Location: LCCOMB_X22_Y18_N12
\red[1]~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~164_combout\ = (\color35~regout\ & ((\red[1]~45_combout\) # ((\red[1]~272_combout\ & \red[1]~163_combout\)))) # (!\color35~regout\ & (((\red[1]~272_combout\ & \red[1]~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color35~regout\,
	datab => \red[1]~45_combout\,
	datac => \red[1]~272_combout\,
	datad => \red[1]~163_combout\,
	combout => \red[1]~164_combout\);

-- Location: LCFF_X22_Y19_N17
scoreAdded4 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \scoreAdded4~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scoreAdded4~regout\);

-- Location: LCCOMB_X26_Y18_N14
\red[1]~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~167_combout\ = (\color4~regout\ & (!\color3~regout\ & ((\red[1]~165_combout\)))) # (!\color4~regout\ & ((\red[1]~166_combout\) # ((!\color3~regout\ & \red[1]~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color4~regout\,
	datab => \color3~regout\,
	datac => \red[1]~166_combout\,
	datad => \red[1]~165_combout\,
	combout => \red[1]~167_combout\);

-- Location: LCCOMB_X24_Y18_N18
\red[1]~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~168_combout\ = ((\process_0~54_combout\ & \process_0~59_combout\)) # (!\process_0~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~54_combout\,
	datac => \process_0~59_combout\,
	datad => \process_0~65_combout\,
	combout => \red[1]~168_combout\);

-- Location: LCCOMB_X22_Y18_N26
\red[1]~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~170_combout\ = (\red[1]~160_combout\) # ((\red[1]~164_combout\) # ((\red[1]~167_combout\ & \red[1]~169_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~167_combout\,
	datab => \red[1]~160_combout\,
	datac => \red[1]~169_combout\,
	datad => \red[1]~164_combout\,
	combout => \red[1]~170_combout\);

-- Location: LCFF_X21_Y20_N31
scoreAdded8 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \scoreAdded8~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scoreAdded8~regout\);

-- Location: LCCOMB_X22_Y20_N22
\red[1]~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~181_combout\ = (\color7~regout\ & (!\color8~regout\ & (\red[1]~180_combout\))) # (!\color7~regout\ & ((\red[1]~179_combout\) # ((!\color8~regout\ & \red[1]~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color7~regout\,
	datab => \color8~regout\,
	datac => \red[1]~180_combout\,
	datad => \red[1]~179_combout\,
	combout => \red[1]~181_combout\);

-- Location: LCCOMB_X22_Y16_N16
\red[1]~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~184_combout\ = (\color9~regout\ & (!\color10~regout\ & ((\red[1]~183_combout\)))) # (!\color9~regout\ & ((\red[1]~182_combout\) # ((!\color10~regout\ & \red[1]~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color9~regout\,
	datab => \color10~regout\,
	datac => \red[1]~182_combout\,
	datad => \red[1]~183_combout\,
	combout => \red[1]~184_combout\);

-- Location: LCCOMB_X23_Y16_N16
\red[1]~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~185_combout\ = (\red[1]~176_combout\ & ((\red[1]~181_combout\) # ((\red[1]~177_combout\ & \red[1]~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~177_combout\,
	datab => \red[1]~184_combout\,
	datac => \red[1]~176_combout\,
	datad => \red[1]~181_combout\,
	combout => \red[1]~185_combout\);

-- Location: LCFF_X25_Y16_N29
color36 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color36~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color36~regout\);

-- Location: LCFF_X25_Y16_N1
color37 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color37~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color37~regout\);

-- Location: LCFF_X21_Y16_N15
color15 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color15~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color15~regout\);

-- Location: LCFF_X20_Y20_N15
color20 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color20~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color20~regout\);

-- Location: LCCOMB_X21_Y20_N10
\red[1]~205\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~205_combout\ = (\color14~regout\ & ((\red[1]~78_combout\) # ((\color16~regout\ & \red[1]~80_combout\)))) # (!\color14~regout\ & (\color16~regout\ & ((\red[1]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color14~regout\,
	datab => \color16~regout\,
	datac => \red[1]~78_combout\,
	datad => \red[1]~80_combout\,
	combout => \red[1]~205_combout\);

-- Location: LCCOMB_X26_Y17_N18
\red[1]~209\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~209_combout\ = (\red[1]~30_combout\ & (((\process_0~34_combout\ & \process_0~27_combout\)) # (!\process_0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~30_combout\,
	datab => \process_0~34_combout\,
	datac => \process_0~27_combout\,
	datad => \process_0~14_combout\,
	combout => \red[1]~209_combout\);

-- Location: LCCOMB_X26_Y18_N12
\red[1]~211\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~211_combout\ = (!\process_0~22_combout\ & (!\color2~regout\ & (\line2~regout\ & \process_0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~22_combout\,
	datab => \color2~regout\,
	datac => \line2~regout\,
	datad => \process_0~14_combout\,
	combout => \red[1]~211_combout\);

-- Location: LCCOMB_X21_Y18_N6
\red[1]~223\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~223_combout\ = (\color21~regout\ & (!\color23~regout\ & ((\red[1]~144_combout\)))) # (!\color21~regout\ & ((\red[1]~143_combout\) # ((!\color23~regout\ & \red[1]~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color21~regout\,
	datab => \color23~regout\,
	datac => \red[1]~143_combout\,
	datad => \red[1]~144_combout\,
	combout => \red[1]~223_combout\);

-- Location: LCCOMB_X25_Y18_N2
\red[1]~231\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~231_combout\ = (!\color32~regout\ & (\red[1]~40_combout\ & \red[1]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color32~regout\,
	datac => \red[1]~40_combout\,
	datad => \red[1]~54_combout\,
	combout => \red[1]~231_combout\);

-- Location: LCCOMB_X25_Y18_N16
\red[1]~232\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~232_combout\ = (\red[1]~231_combout\) # ((!\color33~regout\ & (\red[1]~55_combout\ & \red[1]~149_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color33~regout\,
	datab => \red[1]~55_combout\,
	datac => \red[1]~149_combout\,
	datad => \red[1]~231_combout\,
	combout => \red[1]~232_combout\);

-- Location: LCCOMB_X24_Y15_N30
\red[1]~238\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~238_combout\ = (\scoreAdded1~regout\ & (\color1~regout\ & (!\process_0~16_combout\ & \process_0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scoreAdded1~regout\,
	datab => \color1~regout\,
	datac => \process_0~16_combout\,
	datad => \process_0~55_combout\,
	combout => \red[1]~238_combout\);

-- Location: LCCOMB_X24_Y17_N20
\red[1]~239\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~239_combout\ = (\red[1]~109_combout\ & ((\red[1]~238_combout\) # ((\color2~regout\ & \red[1]~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~238_combout\,
	datab => \color2~regout\,
	datac => \red[1]~159_combout\,
	datad => \red[1]~109_combout\,
	combout => \red[1]~239_combout\);

-- Location: LCCOMB_X25_Y16_N10
\red[1]~242\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~242_combout\ = (\line37~regout\ & !\color37~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \line37~regout\,
	datad => \color37~regout\,
	combout => \red[1]~242_combout\);

-- Location: LCCOMB_X25_Y16_N4
\red[1]~243\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~243_combout\ = (!\color38~regout\ & (\line38~regout\ & !\process_0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \color38~regout\,
	datac => \line38~regout\,
	datad => \process_0~51_combout\,
	combout => \red[1]~243_combout\);

-- Location: LCCOMB_X25_Y16_N14
\red[1]~244\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~244_combout\ = (\process_0~65_combout\ & ((\process_0~47_combout\ & ((\red[1]~243_combout\))) # (!\process_0~47_combout\ & (\red[1]~242_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~47_combout\,
	datab => \red[1]~242_combout\,
	datac => \red[1]~243_combout\,
	datad => \process_0~65_combout\,
	combout => \red[1]~244_combout\);

-- Location: LCCOMB_X24_Y16_N26
\red[1]~245\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~245_combout\ = (\red[1]~44_combout\ & ((\red[1]~244_combout\) # ((!\color36~regout\ & \red[1]~46_combout\)))) # (!\red[1]~44_combout\ & (!\color36~regout\ & ((\red[1]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~44_combout\,
	datab => \color36~regout\,
	datac => \red[1]~244_combout\,
	datad => \red[1]~46_combout\,
	combout => \red[1]~245_combout\);

-- Location: LCCOMB_X22_Y19_N6
\red[1]~249\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~249_combout\ = (\color15~regout\ & ((\red[1]~197_combout\) # ((\color16~regout\ & \red[1]~198_combout\)))) # (!\color15~regout\ & (\color16~regout\ & ((\red[1]~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color15~regout\,
	datab => \color16~regout\,
	datac => \red[1]~197_combout\,
	datad => \red[1]~198_combout\,
	combout => \red[1]~249_combout\);

-- Location: LCCOMB_X21_Y20_N14
\red[1]~257\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~257_combout\ = (!\color20~regout\ & (\red[1]~73_combout\ & \red[1]~139_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color20~regout\,
	datac => \red[1]~73_combout\,
	datad => \red[1]~139_combout\,
	combout => \red[1]~257_combout\);

-- Location: LCCOMB_X21_Y20_N24
\red[1]~258\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~258_combout\ = (\color14~regout\ & (!\color16~regout\ & ((\red[1]~80_combout\)))) # (!\color14~regout\ & ((\red[1]~78_combout\) # ((!\color16~regout\ & \red[1]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color14~regout\,
	datab => \color16~regout\,
	datac => \red[1]~78_combout\,
	datad => \red[1]~80_combout\,
	combout => \red[1]~258_combout\);

-- Location: LCCOMB_X22_Y20_N2
\red[1]~259\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~259_combout\ = (\color15~regout\ & (((!\color17~regout\ & \red[1]~83_combout\)))) # (!\color15~regout\ & ((\red[1]~82_combout\) # ((!\color17~regout\ & \red[1]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color15~regout\,
	datab => \red[1]~82_combout\,
	datac => \color17~regout\,
	datad => \red[1]~83_combout\,
	combout => \red[1]~259_combout\);

-- Location: LCCOMB_X21_Y20_N18
\red[1]~260\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~260_combout\ = (\red[1]~258_combout\) # ((\red[1]~259_combout\) # ((\red[1]~77_combout\ & !\color18~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~258_combout\,
	datab => \red[1]~77_combout\,
	datac => \color18~regout\,
	datad => \red[1]~259_combout\,
	combout => \red[1]~260_combout\);

-- Location: LCCOMB_X21_Y20_N8
\red[1]~261\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~261_combout\ = (\red[1]~257_combout\) # ((\red[1]~260_combout\) # ((!\color19~regout\ & \red[1]~204_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color19~regout\,
	datab => \red[1]~204_combout\,
	datac => \red[1]~257_combout\,
	datad => \red[1]~260_combout\,
	combout => \red[1]~261_combout\);

-- Location: LCCOMB_X20_Y18_N20
\process_0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~79_combout\ = (\line23~regout\ & (\line24~regout\ & \line3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line23~regout\,
	datab => \line24~regout\,
	datad => \line3~regout\,
	combout => \process_0~79_combout\);

-- Location: LCCOMB_X24_Y20_N28
\process_0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~80_combout\ = (\line11~regout\ & (\line28~regout\ & \line29~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line11~regout\,
	datac => \line28~regout\,
	datad => \line29~regout\,
	combout => \process_0~80_combout\);

-- Location: LCCOMB_X22_Y20_N4
\score1[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \score1[4]~10_combout\ = (\scoreAdded3~regout\ & (!\scoreAdded7~regout\ & (\process_0~80_combout\))) # (!\scoreAdded3~regout\ & ((\process_0~79_combout\) # ((!\scoreAdded7~regout\ & \process_0~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scoreAdded3~regout\,
	datab => \scoreAdded7~regout\,
	datac => \process_0~80_combout\,
	datad => \process_0~79_combout\,
	combout => \score1[4]~10_combout\);

-- Location: LCCOMB_X18_Y18_N0
\process_0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~81_combout\ = (\line25~regout\ & (\line4~regout\ & \line24~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line25~regout\,
	datac => \line4~regout\,
	datad => \line24~regout\,
	combout => \process_0~81_combout\);

-- Location: LCCOMB_X22_Y20_N18
\process_0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~82_combout\ = (\line12~regout\ & (\line30~regout\ & \line29~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line12~regout\,
	datac => \line30~regout\,
	datad => \line29~regout\,
	combout => \process_0~82_combout\);

-- Location: LCCOMB_X21_Y20_N2
\score1[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \score1[4]~11_combout\ = (\process_0~81_combout\ & (((!\scoreAdded8~regout\ & \process_0~82_combout\)) # (!\scoreAdded4~regout\))) # (!\process_0~81_combout\ & (!\scoreAdded8~regout\ & ((\process_0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~81_combout\,
	datab => \scoreAdded8~regout\,
	datac => \scoreAdded4~regout\,
	datad => \process_0~82_combout\,
	combout => \score1[4]~11_combout\);

-- Location: LCCOMB_X21_Y20_N16
\score1[4]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \score1[4]~12_combout\ = (\score1[4]~10_combout\ & ((\line7~regout\) # ((\line8~regout\ & \score1[4]~11_combout\)))) # (!\score1[4]~10_combout\ & (((\line8~regout\ & \score1[4]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \score1[4]~10_combout\,
	datab => \line7~regout\,
	datac => \line8~regout\,
	datad => \score1[4]~11_combout\,
	combout => \score1[4]~12_combout\);

-- Location: LCCOMB_X21_Y16_N24
\process_0~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~85_combout\ = (\line10~regout\ & (\line32~regout\ & \line33~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line10~regout\,
	datac => \line32~regout\,
	datad => \line33~regout\,
	combout => \process_0~85_combout\);

-- Location: LCCOMB_X24_Y19_N10
\process_0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~88_combout\ = (\line39~regout\ & (\line19~regout\ & \line38~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line39~regout\,
	datac => \line19~regout\,
	datad => \line38~regout\,
	combout => \process_0~88_combout\);

-- Location: LCCOMB_X23_Y19_N24
\line35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line35~0_combout\ = (\line35~regout\) # ((\color21~0_combout\ & (\Equal5~2_combout\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color21~0_combout\,
	datab => \Equal5~2_combout\,
	datac => \line35~regout\,
	datad => \Equal3~0_combout\,
	combout => \line35~0_combout\);

-- Location: LCCOMB_X25_Y16_N6
\drawn38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawn38~0_combout\ = (\line38~regout\) # ((\Equal1~1_combout\ & (\Equal7~1_combout\ & \color21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal7~1_combout\,
	datac => \line38~regout\,
	datad => \color21~0_combout\,
	combout => \drawn38~0_combout\);

-- Location: LCCOMB_X25_Y18_N22
\drawn30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawn30~0_combout\ = (\line30~regout\) # ((\Equal2~2_combout\ & (\color21~0_combout\ & \Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => \color21~0_combout\,
	datac => \line30~regout\,
	datad => \Equal5~2_combout\,
	combout => \drawn30~0_combout\);

-- Location: LCCOMB_X21_Y15_N0
\line23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line23~0_combout\ = (\line23~regout\) # ((\color21~0_combout\ & (\Equal1~1_combout\ & \Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color21~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \line23~regout\,
	datad => \Equal8~1_combout\,
	combout => \line23~0_combout\);

-- Location: LCCOMB_X22_Y15_N22
\color2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color2~0_combout\ = (!\line2~regout\ & (\Equal8~1_combout\ & \Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line2~regout\,
	datac => \Equal8~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \color2~0_combout\);

-- Location: LCCOMB_X22_Y18_N14
\color2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color2~1_combout\ = (\color1~0_combout\ & ((\color2~0_combout\ & (\turn~regout\)) # (!\color2~0_combout\ & ((\color2~regout\))))) # (!\color1~0_combout\ & (((\color2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color1~0_combout\,
	datab => \turn~regout\,
	datac => \color2~regout\,
	datad => \color2~0_combout\,
	combout => \color2~1_combout\);

-- Location: LCCOMB_X21_Y15_N24
\color3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color3~0_combout\ = (\Equal1~1_combout\ & (!\line3~regout\ & \Equal8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~1_combout\,
	datac => \line3~regout\,
	datad => \Equal8~1_combout\,
	combout => \color3~0_combout\);

-- Location: LCCOMB_X20_Y16_N16
\color6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color6~0_combout\ = (!\line6~regout\ & (\Equal2~2_combout\ & \Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line6~regout\,
	datab => \Equal2~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \color6~0_combout\);

-- Location: LCCOMB_X20_Y16_N6
\color12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color12~0_combout\ = (\Equal4~1_combout\ & (!\line12~regout\ & \Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~1_combout\,
	datac => \line12~regout\,
	datad => \Equal3~0_combout\,
	combout => \color12~0_combout\);

-- Location: LCCOMB_X20_Y16_N20
\color13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color13~0_combout\ = (!\line13~regout\ & (\Equal7~1_combout\ & \Equal9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line13~regout\,
	datab => \Equal7~1_combout\,
	datac => \Equal9~0_combout\,
	combout => \color13~0_combout\);

-- Location: LCCOMB_X21_Y16_N18
\color13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color13~1_combout\ = (\color13~0_combout\ & ((\color1~0_combout\ & (\turn~regout\)) # (!\color1~0_combout\ & ((\color13~regout\))))) # (!\color13~0_combout\ & (((\color13~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color13~0_combout\,
	datab => \turn~regout\,
	datac => \color13~regout\,
	datad => \color1~0_combout\,
	combout => \color13~1_combout\);

-- Location: LCCOMB_X20_Y20_N12
\color11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color11~0_combout\ = (\Equal1~1_combout\ & (!\line11~regout\ & \Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datac => \line11~regout\,
	datad => \Equal3~0_combout\,
	combout => \color11~0_combout\);

-- Location: LCCOMB_X20_Y20_N22
\color11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color11~1_combout\ = (\color1~0_combout\ & ((\color11~0_combout\ & (\turn~regout\)) # (!\color11~0_combout\ & ((\color11~regout\))))) # (!\color1~0_combout\ & (((\color11~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color1~0_combout\,
	datab => \turn~regout\,
	datac => \color11~regout\,
	datad => \color11~0_combout\,
	combout => \color11~1_combout\);

-- Location: LCCOMB_X18_Y18_N12
\color25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color25~0_combout\ = (\Equal8~1_combout\ & (\Equal5~2_combout\ & !\line25~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => \Equal5~2_combout\,
	datac => \line25~regout\,
	combout => \color25~0_combout\);

-- Location: LCCOMB_X21_Y15_N22
\color23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color23~0_combout\ = (\Equal1~1_combout\ & (!\line23~regout\ & \Equal8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~1_combout\,
	datac => \line23~regout\,
	datad => \Equal8~1_combout\,
	combout => \color23~0_combout\);

-- Location: LCCOMB_X22_Y18_N30
\color23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color23~1_combout\ = (\color23~0_combout\ & ((\color21~0_combout\ & ((\turn~regout\))) # (!\color21~0_combout\ & (\color23~regout\)))) # (!\color23~0_combout\ & (((\color23~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color23~0_combout\,
	datab => \color21~0_combout\,
	datac => \color23~regout\,
	datad => \turn~regout\,
	combout => \color23~1_combout\);

-- Location: LCCOMB_X21_Y15_N8
\color21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color21~1_combout\ = (!\line21~regout\ & (\Equal9~0_combout\ & \Equal8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line21~regout\,
	datab => \Equal9~0_combout\,
	datad => \Equal8~1_combout\,
	combout => \color21~1_combout\);

-- Location: LCCOMB_X21_Y15_N14
\color21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \color21~2_combout\ = (\color21~0_combout\ & ((\color21~1_combout\ & ((\turn~regout\))) # (!\color21~1_combout\ & (\color21~regout\)))) # (!\color21~0_combout\ & (((\color21~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color21~0_combout\,
	datab => \color21~1_combout\,
	datac => \color21~regout\,
	datad => \turn~regout\,
	combout => \color21~2_combout\);

-- Location: LCCOMB_X26_Y17_N24
\color30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color30~0_combout\ = (\Equal2~2_combout\ & (!\line30~regout\ & \Equal5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~2_combout\,
	datac => \line30~regout\,
	datad => \Equal5~2_combout\,
	combout => \color30~0_combout\);

-- Location: LCCOMB_X20_Y17_N22
\color28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color28~0_combout\ = (!\line28~regout\ & (\Equal2~2_combout\ & \Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line28~regout\,
	datac => \Equal2~2_combout\,
	datad => \Equal1~1_combout\,
	combout => \color28~0_combout\);

-- Location: LCCOMB_X20_Y17_N8
\color28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color28~1_combout\ = (\color28~0_combout\ & ((\color21~0_combout\ & (\turn~regout\)) # (!\color21~0_combout\ & ((\color28~regout\))))) # (!\color28~0_combout\ & (((\color28~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \color28~0_combout\,
	datac => \color28~regout\,
	datad => \color21~0_combout\,
	combout => \color28~1_combout\);

-- Location: LCCOMB_X21_Y15_N2
\color31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color31~0_combout\ = (\Equal9~0_combout\ & (\Equal3~0_combout\ & !\line31~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal9~0_combout\,
	datac => \Equal3~0_combout\,
	datad => \line31~regout\,
	combout => \color31~0_combout\);

-- Location: LCCOMB_X21_Y15_N28
\color31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color31~1_combout\ = (\color21~0_combout\ & ((\color31~0_combout\ & (\turn~regout\)) # (!\color31~0_combout\ & ((\color31~regout\))))) # (!\color21~0_combout\ & (((\color31~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color21~0_combout\,
	datab => \turn~regout\,
	datac => \color31~regout\,
	datad => \color31~0_combout\,
	combout => \color31~1_combout\);

-- Location: LCCOMB_X21_Y15_N12
\color33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color33~0_combout\ = (\Equal3~0_combout\ & (\Equal1~1_combout\ & !\line33~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~0_combout\,
	datac => \Equal1~1_combout\,
	datad => \line33~regout\,
	combout => \color33~0_combout\);

-- Location: LCCOMB_X21_Y15_N18
\color33~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color33~1_combout\ = (\color21~0_combout\ & ((\color33~0_combout\ & (\turn~regout\)) # (!\color33~0_combout\ & ((\color33~regout\))))) # (!\color21~0_combout\ & (((\color33~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color21~0_combout\,
	datab => \turn~regout\,
	datac => \color33~regout\,
	datad => \color33~0_combout\,
	combout => \color33~1_combout\);

-- Location: LCCOMB_X22_Y15_N28
\scoreAdded1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \scoreAdded1~0_combout\ = (\scoreAdded1~regout\) # ((\line5~regout\ & \process_0~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line5~regout\,
	datac => \scoreAdded1~regout\,
	datad => \process_0~77_combout\,
	combout => \scoreAdded1~0_combout\);

-- Location: LCCOMB_X24_Y19_N2
\color40~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color40~1_combout\ = (\color40~0_combout\ & ((\color21~0_combout\ & ((\turn~regout\))) # (!\color21~0_combout\ & (\color40~regout\)))) # (!\color40~0_combout\ & (((\color40~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color40~0_combout\,
	datab => \color21~0_combout\,
	datac => \color40~regout\,
	datad => \turn~regout\,
	combout => \color40~1_combout\);

-- Location: LCCOMB_X25_Y20_N26
\color39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color39~0_combout\ = (!\line39~regout\ & (\Equal7~1_combout\ & \Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line39~regout\,
	datac => \Equal7~1_combout\,
	datad => \Equal4~1_combout\,
	combout => \color39~0_combout\);

-- Location: LCCOMB_X22_Y19_N16
\scoreAdded4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \scoreAdded4~0_combout\ = (\scoreAdded4~regout\) # ((\line8~regout\ & \process_0~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line8~regout\,
	datac => \scoreAdded4~regout\,
	datad => \process_0~81_combout\,
	combout => \scoreAdded4~0_combout\);

-- Location: LCCOMB_X21_Y20_N30
\scoreAdded8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \scoreAdded8~0_combout\ = (\scoreAdded8~regout\) # ((\line8~regout\ & \process_0~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line8~regout\,
	datac => \scoreAdded8~regout\,
	datad => \process_0~82_combout\,
	combout => \scoreAdded8~0_combout\);

-- Location: LCCOMB_X20_Y16_N10
\color14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color14~0_combout\ = (\Equal7~1_combout\ & (!\line14~regout\ & \Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal7~1_combout\,
	datac => \line14~regout\,
	datad => \Equal0~3_combout\,
	combout => \color14~0_combout\);

-- Location: LCCOMB_X25_Y16_N22
\color36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color36~0_combout\ = (\Equal9~0_combout\ & (\Equal7~1_combout\ & !\line36~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datac => \Equal7~1_combout\,
	datad => \line36~regout\,
	combout => \color36~0_combout\);

-- Location: LCCOMB_X25_Y16_N28
\color36~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color36~1_combout\ = (\color21~0_combout\ & ((\color36~0_combout\ & (\turn~regout\)) # (!\color36~0_combout\ & ((\color36~regout\))))) # (!\color21~0_combout\ & (((\color36~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \color21~0_combout\,
	datac => \color36~regout\,
	datad => \color36~0_combout\,
	combout => \color36~1_combout\);

-- Location: LCCOMB_X25_Y16_N12
\color38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color38~0_combout\ = (\Equal7~1_combout\ & (\Equal1~1_combout\ & !\line38~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal7~1_combout\,
	datac => \Equal1~1_combout\,
	datad => \line38~regout\,
	combout => \color38~0_combout\);

-- Location: LCCOMB_X25_Y16_N30
\color37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color37~0_combout\ = (!\line37~regout\ & (\Equal7~1_combout\ & \Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line37~regout\,
	datac => \Equal7~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \color37~0_combout\);

-- Location: LCCOMB_X25_Y16_N0
\color37~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color37~1_combout\ = (\color21~0_combout\ & ((\color37~0_combout\ & (\turn~regout\)) # (!\color37~0_combout\ & ((\color37~regout\))))) # (!\color21~0_combout\ & (((\color37~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \color21~0_combout\,
	datac => \color37~regout\,
	datad => \color37~0_combout\,
	combout => \color37~1_combout\);

-- Location: LCCOMB_X21_Y16_N20
\color15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color15~0_combout\ = (\Equal7~1_combout\ & (\Equal1~1_combout\ & !\line15~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal7~1_combout\,
	datac => \Equal1~1_combout\,
	datad => \line15~regout\,
	combout => \color15~0_combout\);

-- Location: LCCOMB_X21_Y16_N14
\color15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color15~1_combout\ = (\color15~0_combout\ & ((\color1~0_combout\ & (\turn~regout\)) # (!\color1~0_combout\ & ((\color15~regout\))))) # (!\color15~0_combout\ & (((\color15~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color15~0_combout\,
	datab => \turn~regout\,
	datac => \color15~regout\,
	datad => \color1~0_combout\,
	combout => \color15~1_combout\);

-- Location: LCCOMB_X21_Y16_N10
\color16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color16~0_combout\ = (\Equal4~1_combout\ & (\Equal7~1_combout\ & !\line16~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~1_combout\,
	datac => \Equal7~1_combout\,
	datad => \line16~regout\,
	combout => \color16~0_combout\);

-- Location: LCCOMB_X20_Y20_N20
\color20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color20~0_combout\ = (\Equal6~2_combout\ & (!\line20~regout\ & \Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~2_combout\,
	datab => \line20~regout\,
	datad => \Equal4~1_combout\,
	combout => \color20~0_combout\);

-- Location: LCCOMB_X20_Y20_N14
\color20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color20~1_combout\ = (\color20~0_combout\ & ((\color1~0_combout\ & (\turn~regout\)) # (!\color1~0_combout\ & ((\color20~regout\))))) # (!\color20~0_combout\ & (((\color20~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color20~0_combout\,
	datab => \turn~regout\,
	datac => \color20~regout\,
	datad => \color1~0_combout\,
	combout => \color20~1_combout\);

-- Location: LCCOMB_X25_Y20_N24
\color17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color17~0_combout\ = (\Equal9~0_combout\ & (!\line17~regout\ & \Equal6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datac => \line17~regout\,
	datad => \Equal6~2_combout\,
	combout => \color17~0_combout\);

-- Location: LCCOMB_X19_Y18_N4
\turn~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~0_combout\ = (\Equal8~1_combout\ & (\Equal0~3_combout\ & (\line22~regout\ $ (!\turn~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => \line22~regout\,
	datac => \turn~regout\,
	datad => \Equal0~3_combout\,
	combout => \turn~0_combout\);

-- Location: LCCOMB_X19_Y18_N10
\turn~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~1_combout\ = (\turn~0_combout\) # ((\process_0~105_combout\ & (\line23~regout\ $ (!\turn~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line23~regout\,
	datab => \turn~regout\,
	datac => \turn~0_combout\,
	datad => \process_0~105_combout\,
	combout => \turn~1_combout\);

-- Location: LCCOMB_X18_Y18_N18
\turn~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~2_combout\ = (\Equal4~1_combout\ & (\Equal8~1_combout\ & (\turn~regout\ $ (!\line24~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \Equal4~1_combout\,
	datac => \Equal8~1_combout\,
	datad => \line24~regout\,
	combout => \turn~2_combout\);

-- Location: LCCOMB_X18_Y18_N24
\turn~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~3_combout\ = \line25~regout\ $ (\turn~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \line25~regout\,
	datad => \turn~regout\,
	combout => \turn~3_combout\);

-- Location: LCCOMB_X18_Y18_N30
\turn~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~4_combout\ = (\turn~2_combout\) # ((\Equal8~1_combout\ & (!\turn~3_combout\ & \Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => \turn~2_combout\,
	datac => \turn~3_combout\,
	datad => \Equal5~2_combout\,
	combout => \turn~4_combout\);

-- Location: LCCOMB_X19_Y18_N2
\turn~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~5_combout\ = \turn~regout\ $ (\line26~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \turn~regout\,
	datac => \line26~regout\,
	combout => \turn~5_combout\);

-- Location: LCCOMB_X19_Y18_N28
\turn~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~6_combout\ = (\turn~4_combout\) # ((\turn~1_combout\) # ((!\turn~5_combout\ & \process_0~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~4_combout\,
	datab => \turn~5_combout\,
	datac => \process_0~92_combout\,
	datad => \turn~1_combout\,
	combout => \turn~6_combout\);

-- Location: LCCOMB_X26_Y19_N6
\turn~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~12_combout\ = (\Equal0~2_combout\ & (!\turn~regout\)) # (!\Equal0~2_combout\ & ((\Equal1~1_combout\ & (!\turn~regout\)) # (!\Equal1~1_combout\ & ((\line39~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \turn~regout\,
	datac => \Equal1~1_combout\,
	datad => \line39~regout\,
	combout => \turn~12_combout\);

-- Location: LCCOMB_X24_Y19_N20
\turn~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~20_combout\ = (\Equal3~0_combout\ & (\Equal4~1_combout\ & (\turn~regout\ $ (!\line34~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \Equal3~0_combout\,
	datac => \line34~regout\,
	datad => \Equal4~1_combout\,
	combout => \turn~20_combout\);

-- Location: LCCOMB_X24_Y19_N14
\turn~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~21_combout\ = (\turn~20_combout\) # ((\process_0~106_combout\ & (\line35~regout\ $ (!\turn~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~106_combout\,
	datab => \line35~regout\,
	datac => \turn~20_combout\,
	datad => \turn~regout\,
	combout => \turn~21_combout\);

-- Location: LCCOMB_X24_Y19_N4
\turn~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~29_combout\ = (\Equal4~1_combout\ & (\Equal2~2_combout\ & (\line29~regout\ $ (!\turn~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line29~regout\,
	datab => \Equal4~1_combout\,
	datac => \Equal2~2_combout\,
	datad => \turn~regout\,
	combout => \turn~29_combout\);

-- Location: LCCOMB_X24_Y19_N22
\turn~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~30_combout\ = (\turn~29_combout\) # ((\process_0~107_combout\ & (\line30~regout\ $ (!\turn~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line30~regout\,
	datab => \turn~regout\,
	datac => \turn~29_combout\,
	datad => \process_0~107_combout\,
	combout => \turn~30_combout\);

-- Location: LCCOMB_X19_Y20_N12
\turn~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~35_combout\ = (\Equal0~3_combout\ & (\Equal2~2_combout\ & (\turn~regout\ $ (!\line6~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \line6~regout\,
	datac => \Equal0~3_combout\,
	datad => \Equal2~2_combout\,
	combout => \turn~35_combout\);

-- Location: LCCOMB_X21_Y19_N22
\turn~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~41_combout\ = (\Equal0~3_combout\ & (\turn~regout\)) # (!\Equal0~3_combout\ & (\Equal1~1_combout\ & (\turn~regout\ $ (!\line19~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \line19~regout\,
	datac => \Equal1~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \turn~41_combout\);

-- Location: LCCOMB_X21_Y19_N12
\turn~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~42_combout\ = (\Equal6~2_combout\ & (\turn~41_combout\ $ (((!\line18~regout\ & \Equal0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line18~regout\,
	datab => \Equal0~3_combout\,
	datac => \Equal6~2_combout\,
	datad => \turn~41_combout\,
	combout => \turn~42_combout\);

-- Location: LCCOMB_X26_Y19_N10
\process_0~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~98_combout\ = (\Equal4~0_combout\ & (\Equal0~1_combout\ & (\Equal0~4_combout\ & \Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal7~1_combout\,
	combout => \process_0~98_combout\);

-- Location: LCCOMB_X22_Y19_N0
\turn~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~49_combout\ = (\Equal7~1_combout\ & (\Equal1~1_combout\ & (\turn~regout\ $ (!\line15~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \line15~regout\,
	datac => \Equal7~1_combout\,
	datad => \Equal1~1_combout\,
	combout => \turn~49_combout\);

-- Location: LCCOMB_X22_Y19_N26
\turn~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~50_combout\ = (\process_0~93_combout\ & (\line14~regout\ $ ((!\turn~regout\)))) # (!\process_0~93_combout\ & (((\turn~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line14~regout\,
	datab => \process_0~93_combout\,
	datac => \turn~regout\,
	datad => \turn~49_combout\,
	combout => \turn~50_combout\);

-- Location: LCCOMB_X25_Y19_N30
\process_0~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~99_combout\ = (\Equal3~0_combout\ & \Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal3~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \process_0~99_combout\);

-- Location: LCCOMB_X25_Y19_N24
\turn~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~56_combout\ = (\process_0~94_combout\ & (!\process_0~99_combout\ & (\turn~regout\ $ (!\line11~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \line11~regout\,
	datac => \process_0~94_combout\,
	datad => \process_0~99_combout\,
	combout => \turn~56_combout\);

-- Location: LCCOMB_X25_Y19_N26
\turn~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~57_combout\ = (\turn~56_combout\) # ((\process_0~99_combout\ & (\turn~regout\ $ (!\line10~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \line10~regout\,
	datac => \turn~56_combout\,
	datad => \process_0~99_combout\,
	combout => \turn~57_combout\);

-- Location: LCCOMB_X19_Y19_N18
\turn~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~59_combout\ = (\Equal2~2_combout\ & (\Equal4~1_combout\ & (\line8~regout\ $ (!\turn~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => \line8~regout\,
	datac => \Equal4~1_combout\,
	datad => \turn~regout\,
	combout => \turn~59_combout\);

-- Location: LCCOMB_X19_Y19_N8
\turn~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~60_combout\ = (\process_0~96_combout\ & (\turn~regout\ $ (((!\line7~regout\))))) # (!\process_0~96_combout\ & (((\turn~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \turn~59_combout\,
	datac => \process_0~96_combout\,
	datad => \line7~regout\,
	combout => \turn~60_combout\);

-- Location: LCCOMB_X20_Y19_N6
\turn~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~65_combout\ = (\lastbtn1State~regout\ & (!\reset~combout\ & !\btn1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lastbtn1State~regout\,
	datac => \reset~combout\,
	datad => \btn1~combout\,
	combout => \turn~65_combout\);

-- Location: LCCOMB_X25_Y18_N0
\red[1]~267\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~267_combout\ = (\process_0~43_combout\ & (\process_0~42_combout\ & (\line36~regout\ & \process_0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~43_combout\,
	datab => \process_0~42_combout\,
	datac => \line36~regout\,
	datad => \process_0~41_combout\,
	combout => \red[1]~267_combout\);

-- Location: LCCOMB_X20_Y18_N10
\red[1]~269\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~269_combout\ = (\line27~regout\ & (\process_0~56_combout\ & (\red[1]~70_combout\ & !\process_0~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line27~regout\,
	datab => \process_0~56_combout\,
	datac => \red[1]~70_combout\,
	datad => \process_0~47_combout\,
	combout => \red[1]~269_combout\);

-- Location: LCCOMB_X26_Y17_N22
\red[1]~273\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~273_combout\ = (\red[1]~30_combout\ & (\red[1]~27_combout\ & ((\process_0~22_combout\) # (!\process_0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~30_combout\,
	datab => \process_0~22_combout\,
	datac => \red[1]~27_combout\,
	datad => \process_0~14_combout\,
	combout => \red[1]~273_combout\);

-- Location: LCCOMB_X24_Y19_N12
\process_0~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~106_combout\ = (\Equal5~1_combout\ & (!xPos(6) & (\Equal5~0_combout\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => xPos(6),
	datac => \Equal5~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \process_0~106_combout\);

-- Location: LCCOMB_X26_Y17_N8
\red[1]~274\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~274_combout\ = (\red[1]~27_combout\ & (((\process_0~22_combout\ & \process_0~16_combout\)) # (!\process_0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~22_combout\,
	datab => \process_0~16_combout\,
	datac => \red[1]~27_combout\,
	datad => \process_0~14_combout\,
	combout => \red[1]~274_combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\updownSwitch~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_updownSwitch,
	combout => \updownSwitch~combout\);

-- Location: LCCOMB_X4_Y19_N2
\score1[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \score1[0]~5_combout\ = score1(0) $ (VCC)
-- \score1[0]~6\ = CARRY(score1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => score1(0),
	datad => VCC,
	combout => \score1[0]~5_combout\,
	cout => \score1[0]~6\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G2
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\goBackSwitch~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_goBackSwitch,
	combout => \goBackSwitch~combout\);

-- Location: LCCOMB_X26_Y20_N8
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = yPos(1) $ (VCC)
-- \Add2~3\ = CARRY(yPos(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yPos(1),
	datad => VCC,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X26_Y20_N10
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\updownSwitch~combout\ & ((yPos(2) & (!\Add2~3\)) # (!yPos(2) & ((\Add2~3\) # (GND))))) # (!\updownSwitch~combout\ & ((yPos(2) & (\Add2~3\ & VCC)) # (!yPos(2) & (!\Add2~3\))))
-- \Add2~5\ = CARRY((\updownSwitch~combout\ & ((!\Add2~3\) # (!yPos(2)))) # (!\updownSwitch~combout\ & (!yPos(2) & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \updownSwitch~combout\,
	datab => yPos(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\btn3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_btn3,
	combout => \btn3~combout\);

-- Location: LCFF_X27_Y17_N1
lastbtn3State : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \btn3~combout\,
	sload => VCC,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lastbtn3State~regout\);

-- Location: LCCOMB_X27_Y17_N0
\xPos[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xPos[1]~0_combout\ = (!\btn3~combout\ & \lastbtn3State~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn3~combout\,
	datac => \lastbtn3State~regout\,
	combout => \xPos[1]~0_combout\);

-- Location: LCCOMB_X26_Y20_N18
\Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\updownSwitch~combout\ & ((yPos(6) & (!\Add2~11\)) # (!yPos(6) & ((\Add2~11\) # (GND))))) # (!\updownSwitch~combout\ & ((yPos(6) & (\Add2~11\ & VCC)) # (!yPos(6) & (!\Add2~11\))))
-- \Add2~13\ = CARRY((\updownSwitch~combout\ & ((!\Add2~11\) # (!yPos(6)))) # (!\updownSwitch~combout\ & (!yPos(6) & !\Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \updownSwitch~combout\,
	datab => yPos(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X26_Y20_N20
\Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = ((\updownSwitch~combout\ $ (yPos(7) $ (!\Add2~13\)))) # (GND)
-- \Add2~15\ = CARRY((\updownSwitch~combout\ & ((yPos(7)) # (!\Add2~13\))) # (!\updownSwitch~combout\ & (yPos(7) & !\Add2~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \updownSwitch~combout\,
	datab => yPos(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCFF_X26_Y20_N21
\yPos[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~14_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \goBackSwitch~combout\,
	ena => \yPos[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => yPos(7));

-- Location: LCCOMB_X26_Y20_N22
\Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (\updownSwitch~combout\ & ((yPos(8) & (\Add2~15\ & VCC)) # (!yPos(8) & (!\Add2~15\)))) # (!\updownSwitch~combout\ & ((yPos(8) & (!\Add2~15\)) # (!yPos(8) & ((\Add2~15\) # (GND)))))
-- \Add2~17\ = CARRY((\updownSwitch~combout\ & (!yPos(8) & !\Add2~15\)) # (!\updownSwitch~combout\ & ((!\Add2~15\) # (!yPos(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \updownSwitch~combout\,
	datab => yPos(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCFF_X26_Y20_N23
\yPos[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~16_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \goBackSwitch~combout\,
	ena => \yPos[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => yPos(8));

-- Location: LCCOMB_X26_Y20_N24
\Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = \updownSwitch~combout\ $ (\Add2~17\ $ (!yPos(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \updownSwitch~combout\,
	datad => yPos(9),
	cin => \Add2~17\,
	combout => \Add2~18_combout\);

-- Location: LCFF_X26_Y20_N25
\yPos[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~18_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \goBackSwitch~combout\,
	ena => \yPos[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => yPos(9));

-- Location: LCCOMB_X25_Y20_N2
\Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (!yPos(3) & (!yPos(9) & (!yPos(4) & !yPos(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yPos(3),
	datab => yPos(9),
	datac => yPos(4),
	datad => yPos(7),
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X25_Y20_N20
\Equal8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal8~1_combout\ = (\Equal6~0_combout\ & (!yPos(8) & \Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal6~0_combout\,
	datac => yPos(8),
	datad => \Equal8~0_combout\,
	combout => \Equal8~1_combout\);

-- Location: LCCOMB_X26_Y20_N4
\Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!yPos(2) & (!yPos(6) & yPos(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yPos(2),
	datab => yPos(6),
	datad => yPos(8),
	combout => \Equal7~0_combout\);

-- Location: LCFF_X26_Y20_N9
\yPos[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \goBackSwitch~combout\,
	ena => \yPos[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => yPos(1));

-- Location: LCCOMB_X26_Y20_N2
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (yPos(3) & (yPos(1) & (!yPos(9) & !yPos(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yPos(3),
	datab => yPos(1),
	datac => yPos(9),
	datad => yPos(4),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X26_Y20_N26
\Equal7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (yPos(5) & (\Equal7~0_combout\ & (!yPos(7) & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yPos(5),
	datab => \Equal7~0_combout\,
	datac => yPos(7),
	datad => \Equal2~1_combout\,
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X26_Y20_N30
\Equal6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (yPos(7) & (!yPos(4) & (!yPos(9) & yPos(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yPos(7),
	datab => yPos(4),
	datac => yPos(9),
	datad => yPos(3),
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X25_Y20_N12
\Equal6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = (yPos(8) & (\Equal6~0_combout\ & \Equal6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yPos(8),
	datac => \Equal6~0_combout\,
	datad => \Equal6~1_combout\,
	combout => \Equal6~2_combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lineDirection1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lineDirection1,
	combout => \lineDirection1~combout\);

-- Location: LCCOMB_X27_Y17_N12
\yPos[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \yPos[6]~0_combout\ = (!\updownSwitch~combout\ & ((\lineDirection1~combout\ & (\Equal7~1_combout\)) # (!\lineDirection1~combout\ & ((\Equal6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \updownSwitch~combout\,
	datab => \Equal7~1_combout\,
	datac => \Equal6~2_combout\,
	datad => \lineDirection1~combout\,
	combout => \yPos[6]~0_combout\);

-- Location: LCCOMB_X27_Y17_N26
\yPos[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \yPos[6]~1_combout\ = (\yPos[6]~0_combout\) # ((\updownSwitch~combout\ & \Equal8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \updownSwitch~combout\,
	datac => \Equal8~1_combout\,
	datad => \yPos[6]~0_combout\,
	combout => \yPos[6]~1_combout\);

-- Location: LCCOMB_X27_Y17_N6
\yPos[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \yPos[6]~2_combout\ = (\goBackSwitch~combout\) # ((!\process_0~91_combout\ & (\xPos[1]~0_combout\ & !\yPos[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~91_combout\,
	datab => \xPos[1]~0_combout\,
	datac => \goBackSwitch~combout\,
	datad => \yPos[6]~1_combout\,
	combout => \yPos[6]~2_combout\);

-- Location: LCFF_X26_Y20_N11
\yPos[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \goBackSwitch~combout\,
	ena => \yPos[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => yPos(2));

-- Location: LCCOMB_X26_Y20_N12
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = ((\updownSwitch~combout\ $ (yPos(3) $ (!\Add2~5\)))) # (GND)
-- \Add2~7\ = CARRY((\updownSwitch~combout\ & (!yPos(3) & !\Add2~5\)) # (!\updownSwitch~combout\ & ((!\Add2~5\) # (!yPos(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \updownSwitch~combout\,
	datab => yPos(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X26_Y20_N6
\yPos~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \yPos~4_combout\ = (!\goBackSwitch~combout\ & !\Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \goBackSwitch~combout\,
	datad => \Add2~6_combout\,
	combout => \yPos~4_combout\);

-- Location: LCFF_X26_Y20_N7
\yPos[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \yPos~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \yPos[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => yPos(3));

-- Location: LCCOMB_X26_Y20_N14
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\updownSwitch~combout\ & ((yPos(4) & ((\Add2~7\) # (GND))) # (!yPos(4) & (!\Add2~7\)))) # (!\updownSwitch~combout\ & ((yPos(4) & (!\Add2~7\)) # (!yPos(4) & (\Add2~7\ & VCC))))
-- \Add2~9\ = CARRY((\updownSwitch~combout\ & ((yPos(4)) # (!\Add2~7\))) # (!\updownSwitch~combout\ & (yPos(4) & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \updownSwitch~combout\,
	datab => yPos(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X26_Y20_N28
\yPos~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \yPos~3_combout\ = (!\Add2~8_combout\ & !\goBackSwitch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~8_combout\,
	datac => \goBackSwitch~combout\,
	combout => \yPos~3_combout\);

-- Location: LCFF_X26_Y20_N29
\yPos[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \yPos~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \yPos[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => yPos(4));

-- Location: LCCOMB_X26_Y20_N16
\Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = ((\updownSwitch~combout\ $ (yPos(5) $ (!\Add2~9\)))) # (GND)
-- \Add2~11\ = CARRY((\updownSwitch~combout\ & ((yPos(5)) # (!\Add2~9\))) # (!\updownSwitch~combout\ & (yPos(5) & !\Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \updownSwitch~combout\,
	datab => yPos(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCFF_X26_Y20_N17
\yPos[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~10_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \goBackSwitch~combout\,
	ena => \yPos[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => yPos(5));

-- Location: LCFF_X26_Y20_N19
\yPos[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add2~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \goBackSwitch~combout\,
	ena => \yPos[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => yPos(6));

-- Location: LCCOMB_X26_Y20_N0
\Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!yPos(5) & (!yPos(6) & (!yPos(1) & !yPos(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yPos(5),
	datab => yPos(6),
	datac => yPos(1),
	datad => yPos(2),
	combout => \Equal6~0_combout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\btn2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_btn2,
	combout => \btn2~combout\);

-- Location: LCFF_X27_Y17_N23
lastbtn2State : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \btn2~combout\,
	sload => VCC,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lastbtn2State~regout\);

-- Location: LCCOMB_X27_Y17_N22
\process_0~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~91_combout\ = (!\btn2~combout\ & \lastbtn2State~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn2~combout\,
	datac => \lastbtn2State~regout\,
	combout => \process_0~91_combout\);

-- Location: LCCOMB_X27_Y16_N6
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = xPos(1) $ (GND)
-- \Add0~3\ = CARRY(!xPos(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => xPos(1),
	datad => VCC,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X27_Y16_N4
\xPos~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \xPos~7_combout\ = (!\goBackSwitch~combout\ & !\Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \goBackSwitch~combout\,
	datad => \Add0~2_combout\,
	combout => \xPos~7_combout\);

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\btn4~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_btn4,
	combout => \btn4~combout\);

-- Location: LCFF_X27_Y17_N25
lastbtn4State : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \btn4~combout\,
	sload => VCC,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lastbtn4State~regout\);

-- Location: LCCOMB_X27_Y17_N24
\xPos[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \xPos[1]~2_combout\ = (\btn4~combout\) # ((\xPos[1]~0_combout\) # ((\Equal9~0_combout\) # (!\lastbtn4State~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn4~combout\,
	datab => \xPos[1]~0_combout\,
	datac => \lastbtn4State~regout\,
	datad => \Equal9~0_combout\,
	combout => \xPos[1]~2_combout\);

-- Location: LCCOMB_X27_Y16_N14
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = ((xPos(5) $ (\process_0~91_combout\ $ (\Add0~9\)))) # (GND)
-- \Add0~11\ = CARRY((xPos(5) & ((!\Add0~9\) # (!\process_0~91_combout\))) # (!xPos(5) & (!\process_0~91_combout\ & !\Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xPos(5),
	datab => \process_0~91_combout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCFF_X27_Y16_N15
\xPos[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~10_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \goBackSwitch~combout\,
	ena => \xPos[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => xPos(5));

-- Location: LCCOMB_X27_Y16_N8
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (xPos(2) & ((\process_0~91_combout\ & (!\Add0~3\)) # (!\process_0~91_combout\ & ((\Add0~3\) # (GND))))) # (!xPos(2) & ((\process_0~91_combout\ & (\Add0~3\ & VCC)) # (!\process_0~91_combout\ & (!\Add0~3\))))
-- \Add0~5\ = CARRY((xPos(2) & ((!\Add0~3\) # (!\process_0~91_combout\))) # (!xPos(2) & (!\process_0~91_combout\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xPos(2),
	datab => \process_0~91_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X27_Y16_N30
\xPos~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \xPos~6_combout\ = (!\goBackSwitch~combout\ & !\Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \goBackSwitch~combout\,
	datac => \Add0~4_combout\,
	combout => \xPos~6_combout\);

-- Location: LCFF_X27_Y16_N31
\xPos[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \xPos~6_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \xPos[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => xPos(2));

-- Location: LCCOMB_X27_Y16_N28
\Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!xPos(8) & (!xPos(5) & (!xPos(1) & !xPos(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xPos(8),
	datab => xPos(5),
	datac => xPos(1),
	datad => xPos(2),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X27_Y16_N16
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (xPos(6) & ((\process_0~91_combout\ & (\Add0~11\ & VCC)) # (!\process_0~91_combout\ & (!\Add0~11\)))) # (!xPos(6) & ((\process_0~91_combout\ & (!\Add0~11\)) # (!\process_0~91_combout\ & ((\Add0~11\) # (GND)))))
-- \Add0~13\ = CARRY((xPos(6) & (!\process_0~91_combout\ & !\Add0~11\)) # (!xPos(6) & ((!\Add0~11\) # (!\process_0~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xPos(6),
	datab => \process_0~91_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCFF_X27_Y16_N17
\xPos[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \goBackSwitch~combout\,
	ena => \xPos[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => xPos(6));

-- Location: LCCOMB_X27_Y16_N10
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = ((xPos(3) $ (\process_0~91_combout\ $ (\Add0~5\)))) # (GND)
-- \Add0~7\ = CARRY((xPos(3) & (\process_0~91_combout\ & !\Add0~5\)) # (!xPos(3) & ((\process_0~91_combout\) # (!\Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xPos(3),
	datab => \process_0~91_combout\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X27_Y16_N24
\xPos~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \xPos~5_combout\ = (!\goBackSwitch~combout\ & !\Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \goBackSwitch~combout\,
	datad => \Add0~6_combout\,
	combout => \xPos~5_combout\);

-- Location: LCFF_X27_Y16_N25
\xPos[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \xPos~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \xPos[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => xPos(3));

-- Location: LCCOMB_X27_Y16_N12
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (xPos(4) & ((\process_0~91_combout\ & (\Add0~7\ & VCC)) # (!\process_0~91_combout\ & (!\Add0~7\)))) # (!xPos(4) & ((\process_0~91_combout\ & (!\Add0~7\)) # (!\process_0~91_combout\ & ((\Add0~7\) # (GND)))))
-- \Add0~9\ = CARRY((xPos(4) & (!\process_0~91_combout\ & !\Add0~7\)) # (!xPos(4) & ((!\Add0~7\) # (!\process_0~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xPos(4),
	datab => \process_0~91_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCFF_X27_Y16_N13
\xPos[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~8_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \goBackSwitch~combout\,
	ena => \xPos[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => xPos(4));

-- Location: LCCOMB_X27_Y16_N18
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = ((xPos(7) $ (\process_0~91_combout\ $ (!\Add0~13\)))) # (GND)
-- \Add0~15\ = CARRY((xPos(7) & (!\process_0~91_combout\ & !\Add0~13\)) # (!xPos(7) & ((!\Add0~13\) # (!\process_0~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xPos(7),
	datab => \process_0~91_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X27_Y16_N20
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (xPos(8) & ((\process_0~91_combout\ & (!\Add0~15\)) # (!\process_0~91_combout\ & (\Add0~15\ & VCC)))) # (!xPos(8) & ((\process_0~91_combout\ & ((\Add0~15\) # (GND))) # (!\process_0~91_combout\ & (!\Add0~15\))))
-- \Add0~17\ = CARRY((xPos(8) & (\process_0~91_combout\ & !\Add0~15\)) # (!xPos(8) & ((\process_0~91_combout\) # (!\Add0~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xPos(8),
	datab => \process_0~91_combout\,
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X27_Y16_N22
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \process_0~91_combout\ $ (\Add0~17\ $ (xPos(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \process_0~91_combout\,
	datad => xPos(9),
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCFF_X27_Y16_N23
\xPos[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~18_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \goBackSwitch~combout\,
	ena => \xPos[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => xPos(9));

-- Location: LCCOMB_X26_Y16_N26
\Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (xPos(7) & (xPos(3) & (!xPos(4) & xPos(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xPos(7),
	datab => xPos(3),
	datac => xPos(4),
	datad => xPos(9),
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X26_Y16_N0
\Equal5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (\Equal5~0_combout\ & (!xPos(6) & \Equal5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~0_combout\,
	datac => xPos(6),
	datad => \Equal5~1_combout\,
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X27_Y16_N26
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!xPos(9) & (!xPos(3) & !xPos(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => xPos(9),
	datac => xPos(3),
	datad => xPos(4),
	combout => \Equal0~0_combout\);

-- Location: LCFF_X27_Y16_N21
\xPos[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Add0~16_combout\,
	aclr => \reset~clkctrl_outclk\,
	sclr => \goBackSwitch~combout\,
	ena => \xPos[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => xPos(8));

-- Location: LCCOMB_X26_Y19_N16
\Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (xPos(2) & (!xPos(6) & xPos(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => xPos(2),
	datac => xPos(6),
	datad => xPos(8),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X26_Y19_N30
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (xPos(5) & xPos(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => xPos(5),
	datad => xPos(1),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X26_Y19_N26
\Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!xPos(7) & (\Equal0~0_combout\ & (\Equal4~0_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xPos(7),
	datab => \Equal0~0_combout\,
	datac => \Equal4~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X26_Y16_N22
\xPos[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \xPos[1]~1_combout\ = (\process_0~91_combout\ & ((\lineDirection1~combout\ & (\Equal5~2_combout\)) # (!\lineDirection1~combout\ & ((\Equal4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~91_combout\,
	datab => \Equal5~2_combout\,
	datac => \Equal4~1_combout\,
	datad => \lineDirection1~combout\,
	combout => \xPos[1]~1_combout\);

-- Location: LCCOMB_X26_Y16_N24
\xPos[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \xPos[1]~3_combout\ = (\goBackSwitch~combout\) # ((!\xPos[1]~1_combout\ & ((\process_0~91_combout\) # (!\xPos[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \goBackSwitch~combout\,
	datab => \xPos[1]~2_combout\,
	datac => \xPos[1]~1_combout\,
	datad => \process_0~91_combout\,
	combout => \xPos[1]~3_combout\);

-- Location: LCFF_X27_Y16_N5
\xPos[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \xPos~7_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \xPos[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => xPos(1));

-- Location: LCCOMB_X26_Y16_N8
\xPos~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \xPos~4_combout\ = (!\Add0~14_combout\ & !\goBackSwitch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	datad => \goBackSwitch~combout\,
	combout => \xPos~4_combout\);

-- Location: LCFF_X26_Y16_N9
\xPos[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \xPos~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \xPos[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => xPos(7));

-- Location: LCCOMB_X26_Y16_N4
\Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (!xPos(6) & (!xPos(7) & (\Equal0~0_combout\ & \Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xPos(6),
	datab => xPos(7),
	datac => \Equal0~0_combout\,
	datad => \Equal5~0_combout\,
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X20_Y20_N18
\process_0~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~104_combout\ = (\Equal8~0_combout\ & (\Equal6~0_combout\ & (!yPos(8) & \Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \Equal6~0_combout\,
	datac => yPos(8),
	datad => \Equal9~0_combout\,
	combout => \process_0~104_combout\);

-- Location: LCCOMB_X22_Y15_N6
\drawn21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawn21~0_combout\ = (\line21~regout\) # ((\color21~0_combout\ & (\Equal8~1_combout\ & \Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color21~0_combout\,
	datab => \Equal8~1_combout\,
	datac => \line21~regout\,
	datad => \Equal9~0_combout\,
	combout => \drawn21~0_combout\);

-- Location: LCFF_X22_Y15_N7
line21 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \drawn21~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line21~regout\);

-- Location: LCCOMB_X27_Y16_N0
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (xPos(8) & (!xPos(5) & (!xPos(1) & xPos(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xPos(8),
	datab => xPos(5),
	datac => xPos(1),
	datad => xPos(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X26_Y19_N28
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (xPos(6) & (xPos(7) & (\Equal1~0_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xPos(6),
	datab => xPos(7),
	datac => \Equal1~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X26_Y19_N24
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~2_combout\ & (\Equal0~0_combout\ & (!xPos(7) & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~0_combout\,
	datac => xPos(7),
	datad => \Equal0~1_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X21_Y19_N28
\turn~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~33_combout\ = ((!\Equal5~2_combout\ & (!\Equal1~1_combout\ & !\Equal0~3_combout\))) # (!\Equal8~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => \Equal5~2_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \turn~33_combout\);

-- Location: LCCOMB_X25_Y20_N22
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (yPos(2) & (!yPos(8) & yPos(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yPos(2),
	datac => yPos(8),
	datad => yPos(6),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X25_Y20_N14
\Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (yPos(5) & (!yPos(7) & (\Equal2~1_combout\ & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yPos(5),
	datab => yPos(7),
	datac => \Equal2~1_combout\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X19_Y19_N20
\turn~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~32_combout\ = (\Equal4~1_combout\ & (!\Equal8~1_combout\ & ((!\Equal2~2_combout\) # (!\Equal9~0_combout\)))) # (!\Equal4~1_combout\ & (((!\Equal2~2_combout\)) # (!\Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \Equal9~0_combout\,
	datac => \Equal8~1_combout\,
	datad => \Equal2~2_combout\,
	combout => \turn~32_combout\);

-- Location: LCCOMB_X25_Y20_N16
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!yPos(5) & (\Equal2~0_combout\ & (!yPos(1) & \Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => yPos(5),
	datab => \Equal2~0_combout\,
	datac => yPos(1),
	datad => \Equal6~1_combout\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X24_Y19_N26
\turn~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~26_combout\ = (\Equal9~0_combout\ & (\Equal3~0_combout\ & (\line31~regout\ $ (!\turn~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line31~regout\,
	datab => \turn~regout\,
	datac => \Equal9~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \turn~26_combout\);

-- Location: LCCOMB_X21_Y19_N8
\drawn28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawn28~0_combout\ = (\line28~regout\) # ((\color21~0_combout\ & (\Equal2~2_combout\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color21~0_combout\,
	datab => \Equal2~2_combout\,
	datac => \line28~regout\,
	datad => \Equal1~1_combout\,
	combout => \drawn28~0_combout\);

-- Location: LCFF_X21_Y19_N9
line28 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \drawn28~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line28~regout\);

-- Location: LCCOMB_X20_Y17_N10
\line27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line27~0_combout\ = (\line27~regout\) # ((\color21~0_combout\ & (\Equal2~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color21~0_combout\,
	datab => \Equal2~2_combout\,
	datac => \line27~regout\,
	datad => \Equal0~3_combout\,
	combout => \line27~0_combout\);

-- Location: LCFF_X20_Y17_N11
line27 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line27~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line27~regout\);

-- Location: LCCOMB_X20_Y19_N16
\turn~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~27_combout\ = (\Equal2~2_combout\ & (\Equal0~3_combout\ & (\turn~regout\ $ (!\line27~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \line27~regout\,
	datac => \Equal2~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \turn~27_combout\);

-- Location: LCCOMB_X19_Y19_N14
\process_0~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~96_combout\ = (\Equal2~2_combout\ & \Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datac => \Equal1~1_combout\,
	combout => \process_0~96_combout\);

-- Location: LCCOMB_X20_Y19_N18
\turn~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~28_combout\ = (\turn~27_combout\) # ((\process_0~96_combout\ & (\turn~regout\ $ (!\line28~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \line28~regout\,
	datac => \turn~27_combout\,
	datad => \process_0~96_combout\,
	combout => \turn~28_combout\);

-- Location: LCCOMB_X25_Y19_N10
\turn~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~23_combout\ = (\Equal2~2_combout\ & ((\Equal1~1_combout\) # (\Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~1_combout\,
	datac => \Equal4~1_combout\,
	datad => \Equal2~2_combout\,
	combout => \turn~23_combout\);

-- Location: LCCOMB_X25_Y19_N28
\turn~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~24_combout\ = (!\turn~23_combout\ & ((!\Equal3~0_combout\) # (!\Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datac => \Equal3~0_combout\,
	datad => \turn~23_combout\,
	combout => \turn~24_combout\);

-- Location: LCCOMB_X24_Y19_N30
\process_0~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~107_combout\ = (\Equal2~2_combout\ & (\Equal5~0_combout\ & (\Equal5~1_combout\ & !xPos(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => \Equal5~0_combout\,
	datac => \Equal5~1_combout\,
	datad => xPos(6),
	combout => \process_0~107_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\btn1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_btn1,
	combout => \btn1~combout\);

-- Location: LCCOMB_X20_Y19_N26
\lastbtn1State~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \lastbtn1State~feeder_combout\ = \btn1~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \btn1~combout\,
	combout => \lastbtn1State~feeder_combout\);

-- Location: LCFF_X20_Y19_N27
lastbtn1State : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \lastbtn1State~feeder_combout\,
	ena => \ALT_INV_reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lastbtn1State~regout\);

-- Location: LCCOMB_X20_Y19_N22
\color21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color21~0_combout\ = (!\btn1~combout\ & (\lineDirection1~combout\ & \lastbtn1State~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn1~combout\,
	datac => \lineDirection1~combout\,
	datad => \lastbtn1State~regout\,
	combout => \color21~0_combout\);

-- Location: LCCOMB_X25_Y18_N8
\line36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line36~0_combout\ = (\line36~regout\) # ((\Equal9~0_combout\ & (\color21~0_combout\ & \Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => \color21~0_combout\,
	datac => \line36~regout\,
	datad => \Equal7~1_combout\,
	combout => \line36~0_combout\);

-- Location: LCFF_X25_Y18_N9
line36 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line36~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line36~regout\);

-- Location: LCCOMB_X25_Y20_N6
\turn~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~7_combout\ = (\Equal9~0_combout\ & (\Equal7~1_combout\ & (\line36~regout\ $ (!\turn~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => \line36~regout\,
	datac => \turn~regout\,
	datad => \Equal7~1_combout\,
	combout => \turn~7_combout\);

-- Location: LCCOMB_X21_Y15_N10
\line33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line33~0_combout\ = (\line33~regout\) # ((\color21~0_combout\ & (\Equal1~1_combout\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color21~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \line33~regout\,
	datad => \Equal3~0_combout\,
	combout => \line33~0_combout\);

-- Location: LCFF_X21_Y15_N11
line33 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line33~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line33~regout\);

-- Location: LCCOMB_X25_Y19_N16
\process_0~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~94_combout\ = (\Equal3~0_combout\ & \Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal3~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \process_0~94_combout\);

-- Location: LCCOMB_X20_Y17_N20
\line32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line32~0_combout\ = (\line32~regout\) # ((\color21~0_combout\ & (\Equal3~0_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color21~0_combout\,
	datab => \Equal3~0_combout\,
	datac => \line32~regout\,
	datad => \Equal0~3_combout\,
	combout => \line32~0_combout\);

-- Location: LCFF_X20_Y17_N21
line32 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line32~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line32~regout\);

-- Location: LCCOMB_X25_Y19_N2
\turn~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~18_combout\ = (\Equal3~0_combout\ & (\Equal0~3_combout\ & (\turn~regout\ $ (!\line32~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \line32~regout\,
	datac => \Equal3~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \turn~18_combout\);

-- Location: LCCOMB_X25_Y19_N14
\turn~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~19_combout\ = (\turn~18_combout\) # ((\process_0~94_combout\ & (\turn~regout\ $ (!\line33~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \line33~regout\,
	datac => \process_0~94_combout\,
	datad => \turn~18_combout\,
	combout => \turn~19_combout\);

-- Location: LCCOMB_X25_Y19_N8
\turn~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~8_combout\ = (\Equal1~1_combout\) # ((\Equal4~1_combout\) # (\Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~1_combout\,
	datac => \Equal4~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \turn~8_combout\);

-- Location: LCCOMB_X25_Y19_N18
\turn~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~9_combout\ = (\Equal7~1_combout\ & (!\Equal9~0_combout\ & ((!\Equal3~0_combout\) # (!\turn~8_combout\)))) # (!\Equal7~1_combout\ & (((!\Equal3~0_combout\)) # (!\turn~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~1_combout\,
	datab => \turn~8_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal9~0_combout\,
	combout => \turn~9_combout\);

-- Location: LCCOMB_X26_Y16_N10
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!xPos(7) & (!xPos(9) & (!xPos(4) & !xPos(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xPos(7),
	datab => xPos(9),
	datac => xPos(4),
	datad => xPos(3),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X27_Y16_N2
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (xPos(6) & (!xPos(8) & !xPos(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xPos(6),
	datac => xPos(8),
	datad => xPos(2),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X26_Y19_N22
\turn~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~10_combout\ = (\Equal0~4_combout\ & ((\Equal4~0_combout\) # (\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~4_combout\,
	datac => \Equal4~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \turn~10_combout\);

-- Location: LCCOMB_X26_Y19_N4
\turn~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~11_combout\ = (\Equal7~1_combout\ & ((\Equal1~1_combout\) # ((\Equal0~1_combout\ & \turn~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~1_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal1~1_combout\,
	datad => \turn~10_combout\,
	combout => \turn~11_combout\);

-- Location: LCCOMB_X27_Y17_N28
\line40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line40~0_combout\ = (\line40~regout\) # ((\color21~0_combout\ & (\Equal7~1_combout\ & \Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color21~0_combout\,
	datab => \Equal7~1_combout\,
	datac => \line40~regout\,
	datad => \Equal5~2_combout\,
	combout => \line40~0_combout\);

-- Location: LCFF_X27_Y17_N29
line40 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line40~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line40~regout\);

-- Location: LCCOMB_X27_Y17_N2
\color40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color40~0_combout\ = (!\line40~regout\ & (\Equal5~2_combout\ & \Equal7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line40~regout\,
	datac => \Equal5~2_combout\,
	datad => \Equal7~1_combout\,
	combout => \color40~0_combout\);

-- Location: LCCOMB_X26_Y19_N12
\turn~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~13_combout\ = \turn~regout\ $ (((\turn~11_combout\ & (!\turn~12_combout\)) # (!\turn~11_combout\ & ((\color40~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~12_combout\,
	datab => \turn~regout\,
	datac => \turn~11_combout\,
	datad => \color40~0_combout\,
	combout => \turn~13_combout\);

-- Location: LCCOMB_X26_Y19_N2
\turn~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~14_combout\ = (\Equal1~1_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~1_combout\)) # (!\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal1~1_combout\,
	combout => \turn~14_combout\);

-- Location: LCCOMB_X25_Y16_N16
\turn~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~15_combout\ = (\Equal7~1_combout\ & (\turn~14_combout\ & (\line38~regout\ $ (!\turn~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line38~regout\,
	datab => \turn~regout\,
	datac => \Equal7~1_combout\,
	datad => \turn~14_combout\,
	combout => \turn~15_combout\);

-- Location: LCCOMB_X26_Y19_N20
\process_0~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~93_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\Equal0~4_combout\ & \Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal7~1_combout\,
	combout => \process_0~93_combout\);

-- Location: LCCOMB_X25_Y16_N2
\turn~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~16_combout\ = (\turn~15_combout\) # ((\process_0~93_combout\ & (\line37~regout\ $ (!\turn~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line37~regout\,
	datab => \turn~regout\,
	datac => \turn~15_combout\,
	datad => \process_0~93_combout\,
	combout => \turn~16_combout\);

-- Location: LCCOMB_X25_Y19_N12
\turn~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~17_combout\ = (!\process_0~106_combout\ & (\turn~9_combout\ & ((\turn~13_combout\) # (\turn~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~106_combout\,
	datab => \turn~9_combout\,
	datac => \turn~13_combout\,
	datad => \turn~16_combout\,
	combout => \turn~17_combout\);

-- Location: LCCOMB_X25_Y19_N0
\turn~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~22_combout\ = (\turn~21_combout\) # ((\turn~7_combout\) # ((\turn~19_combout\) # (\turn~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~21_combout\,
	datab => \turn~7_combout\,
	datac => \turn~19_combout\,
	datad => \turn~17_combout\,
	combout => \turn~22_combout\);

-- Location: LCCOMB_X25_Y19_N22
\turn~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~25_combout\ = (!\process_0~95_combout\ & (\turn~24_combout\ & (!\process_0~107_combout\ & \turn~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~95_combout\,
	datab => \turn~24_combout\,
	datac => \process_0~107_combout\,
	datad => \turn~22_combout\,
	combout => \turn~25_combout\);

-- Location: LCCOMB_X25_Y19_N20
\turn~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~31_combout\ = (\turn~30_combout\) # ((\turn~26_combout\) # ((\turn~28_combout\) # (\turn~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~30_combout\,
	datab => \turn~26_combout\,
	datac => \turn~28_combout\,
	datad => \turn~25_combout\,
	combout => \turn~31_combout\);

-- Location: LCCOMB_X20_Y19_N4
\turn~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~34_combout\ = (\turn~6_combout\) # ((\turn~33_combout\ & (\turn~32_combout\ & \turn~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~6_combout\,
	datab => \turn~33_combout\,
	datac => \turn~32_combout\,
	datad => \turn~31_combout\,
	combout => \turn~34_combout\);

-- Location: LCCOMB_X22_Y15_N30
\line2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line2~0_combout\ = (\line2~regout\) # ((\color1~0_combout\ & (\Equal8~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color1~0_combout\,
	datab => \Equal8~1_combout\,
	datac => \line2~regout\,
	datad => \Equal0~3_combout\,
	combout => \line2~0_combout\);

-- Location: LCFF_X22_Y15_N31
line2 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line2~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line2~regout\);

-- Location: LCCOMB_X20_Y20_N2
\process_0~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~108_combout\ = (\Equal8~0_combout\ & (\Equal6~0_combout\ & (!yPos(8) & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \Equal6~0_combout\,
	datac => yPos(8),
	datad => \Equal0~3_combout\,
	combout => \process_0~108_combout\);

-- Location: LCCOMB_X20_Y20_N8
\process_0~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~105_combout\ = (\Equal8~0_combout\ & (\Equal6~0_combout\ & (!yPos(8) & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \Equal6~0_combout\,
	datac => yPos(8),
	datad => \Equal1~1_combout\,
	combout => \process_0~105_combout\);

-- Location: LCCOMB_X24_Y19_N8
\process_0~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~95_combout\ = (\Equal2~2_combout\ & \Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \process_0~95_combout\);

-- Location: LCCOMB_X20_Y19_N14
\process_0~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~100_combout\ = (\Equal9~0_combout\ & \Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal9~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \process_0~100_combout\);

-- Location: LCCOMB_X20_Y20_N6
\line9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line9~0_combout\ = (\line9~regout\) # ((\color1~0_combout\ & (\Equal9~0_combout\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color1~0_combout\,
	datab => \Equal9~0_combout\,
	datac => \line9~regout\,
	datad => \Equal3~0_combout\,
	combout => \line9~0_combout\);

-- Location: LCFF_X20_Y20_N7
line9 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line9~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line9~regout\);

-- Location: LCCOMB_X19_Y19_N6
\process_0~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~101_combout\ = (\Equal2~2_combout\ & \Equal4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datac => \Equal4~1_combout\,
	combout => \process_0~101_combout\);

-- Location: LCCOMB_X19_Y19_N4
\turn~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~61_combout\ = (!\process_0~96_combout\ & (!\process_0~101_combout\ & (\turn~regout\ $ (!\line9~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \line9~regout\,
	datac => \process_0~96_combout\,
	datad => \process_0~101_combout\,
	combout => \turn~61_combout\);

-- Location: LCCOMB_X20_Y16_N28
\drawn12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawn12~0_combout\ = (\line12~regout\) # ((\color1~0_combout\ & (\Equal4~1_combout\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color1~0_combout\,
	datab => \Equal4~1_combout\,
	datac => \line12~regout\,
	datad => \Equal3~0_combout\,
	combout => \drawn12~0_combout\);

-- Location: LCFF_X20_Y16_N29
line12 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \drawn12~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line12~regout\);

-- Location: LCCOMB_X20_Y16_N18
\turn~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~53_combout\ = \line12~regout\ $ (\turn~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \line12~regout\,
	datad => \turn~regout\,
	combout => \turn~53_combout\);

-- Location: LCCOMB_X20_Y16_N24
\turn~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~52_combout\ = (\Equal7~1_combout\ & (\Equal9~0_combout\ & (\line13~regout\ $ (!\turn~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line13~regout\,
	datab => \turn~regout\,
	datac => \Equal7~1_combout\,
	datad => \Equal9~0_combout\,
	combout => \turn~52_combout\);

-- Location: LCCOMB_X20_Y16_N4
\turn~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~54_combout\ = (\Equal1~1_combout\ & (((\turn~52_combout\)))) # (!\Equal1~1_combout\ & (\Equal4~1_combout\ & (\turn~53_combout\ $ (!\turn~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \turn~53_combout\,
	datac => \turn~52_combout\,
	datad => \Equal4~1_combout\,
	combout => \turn~54_combout\);

-- Location: LCCOMB_X20_Y16_N30
\turn~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~55_combout\ = (\Equal3~0_combout\ & (!\Equal0~3_combout\ & (\turn~52_combout\ $ (\turn~54_combout\)))) # (!\Equal3~0_combout\ & (\turn~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~52_combout\,
	datab => \Equal3~0_combout\,
	datac => \turn~54_combout\,
	datad => \Equal0~3_combout\,
	combout => \turn~55_combout\);

-- Location: LCCOMB_X20_Y19_N24
\color1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color1~0_combout\ = (!\btn1~combout\ & (!\lineDirection1~combout\ & \lastbtn1State~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn1~combout\,
	datac => \lineDirection1~combout\,
	datad => \lastbtn1State~regout\,
	combout => \color1~0_combout\);

-- Location: LCCOMB_X25_Y16_N24
\line16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line16~0_combout\ = (\line16~regout\) # ((\Equal4~1_combout\ & (\Equal7~1_combout\ & \color1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \Equal7~1_combout\,
	datac => \line16~regout\,
	datad => \color1~0_combout\,
	combout => \line16~0_combout\);

-- Location: LCFF_X25_Y16_N25
line16 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line16~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line16~regout\);

-- Location: LCCOMB_X25_Y20_N8
\line17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line17~0_combout\ = (\line17~regout\) # ((\Equal6~2_combout\ & (\Equal9~0_combout\ & \color1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~2_combout\,
	datab => \Equal9~0_combout\,
	datac => \line17~regout\,
	datad => \color1~0_combout\,
	combout => \line17~0_combout\);

-- Location: LCFF_X25_Y20_N9
line17 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line17~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line17~regout\);

-- Location: LCCOMB_X25_Y20_N4
\turn~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~46_combout\ = (\Equal6~2_combout\ & (\Equal9~0_combout\ & (\line17~regout\ $ (!\turn~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~2_combout\,
	datab => \line17~regout\,
	datac => \turn~regout\,
	datad => \Equal9~0_combout\,
	combout => \turn~46_combout\);

-- Location: LCCOMB_X26_Y19_N0
\turn~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~47_combout\ = (\process_0~98_combout\ & (\turn~regout\ $ ((!\line16~regout\)))) # (!\process_0~98_combout\ & (((\turn~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~98_combout\,
	datab => \turn~regout\,
	datac => \line16~regout\,
	datad => \turn~46_combout\,
	combout => \turn~47_combout\);

-- Location: LCCOMB_X26_Y19_N18
\turn~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~48_combout\ = (\turn~47_combout\ & (((!\Equal1~1_combout\ & !\Equal0~3_combout\)) # (!\Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal7~1_combout\,
	datac => \Equal0~3_combout\,
	datad => \turn~47_combout\,
	combout => \turn~48_combout\);

-- Location: LCCOMB_X21_Y19_N2
\line20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line20~0_combout\ = (\line20~regout\) # ((\Equal6~2_combout\ & (\color1~0_combout\ & \Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~2_combout\,
	datab => \color1~0_combout\,
	datac => \line20~regout\,
	datad => \Equal4~1_combout\,
	combout => \line20~0_combout\);

-- Location: LCFF_X21_Y19_N3
line20 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line20~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line20~regout\);

-- Location: LCCOMB_X21_Y19_N14
\turn~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~43_combout\ = \turn~regout\ $ (((!\line20~regout\ & (\Equal6~2_combout\ & \Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \line20~regout\,
	datac => \Equal6~2_combout\,
	datad => \Equal4~1_combout\,
	combout => \turn~43_combout\);

-- Location: LCCOMB_X21_Y19_N20
\turn~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~44_combout\ = ((!\Equal1~1_combout\ & !\Equal0~3_combout\)) # (!\Equal6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~2_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \turn~44_combout\);

-- Location: LCCOMB_X26_Y19_N14
\turn~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~38_combout\ = (\Equal1~1_combout\) # ((\Equal4~0_combout\ & (\Equal0~1_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal1~1_combout\,
	combout => \turn~38_combout\);

-- Location: LCCOMB_X26_Y16_N28
\turn~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~39_combout\ = (\Equal0~4_combout\ & (\Equal5~0_combout\ & (!xPos(6) & \Equal6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal5~0_combout\,
	datac => xPos(6),
	datad => \Equal6~2_combout\,
	combout => \turn~39_combout\);

-- Location: LCCOMB_X26_Y19_N8
\turn~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~40_combout\ = (!\process_0~93_combout\ & (!\turn~39_combout\ & ((!\turn~38_combout\) # (!\Equal7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~93_combout\,
	datab => \Equal7~1_combout\,
	datac => \turn~38_combout\,
	datad => \turn~39_combout\,
	combout => \turn~40_combout\);

-- Location: LCCOMB_X21_Y19_N10
\turn~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~45_combout\ = (\turn~40_combout\ & ((\turn~42_combout\) # ((\turn~43_combout\ & \turn~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~42_combout\,
	datab => \turn~43_combout\,
	datac => \turn~44_combout\,
	datad => \turn~40_combout\,
	combout => \turn~45_combout\);

-- Location: LCCOMB_X21_Y19_N0
\turn~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~51_combout\ = (\turn~9_combout\ & ((\turn~50_combout\) # ((\turn~48_combout\) # (\turn~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~50_combout\,
	datab => \turn~9_combout\,
	datac => \turn~48_combout\,
	datad => \turn~45_combout\,
	combout => \turn~51_combout\);

-- Location: LCCOMB_X21_Y19_N30
\turn~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~58_combout\ = (\turn~24_combout\ & ((\turn~57_combout\) # ((\turn~55_combout\) # (\turn~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~57_combout\,
	datab => \turn~24_combout\,
	datac => \turn~55_combout\,
	datad => \turn~51_combout\,
	combout => \turn~58_combout\);

-- Location: LCCOMB_X20_Y19_N8
\turn~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~62_combout\ = (\turn~60_combout\) # ((\turn~58_combout\) # ((\process_0~100_combout\ & \turn~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~60_combout\,
	datab => \process_0~100_combout\,
	datac => \turn~61_combout\,
	datad => \turn~58_combout\,
	combout => \turn~62_combout\);

-- Location: LCCOMB_X19_Y18_N16
\process_0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~92_combout\ = (\Equal9~0_combout\ & \Equal2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal9~0_combout\,
	datad => \Equal2~2_combout\,
	combout => \process_0~92_combout\);

-- Location: LCCOMB_X19_Y19_N24
\line5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line5~0_combout\ = (\line5~regout\) # ((\color1~0_combout\ & (\Equal9~0_combout\ & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color1~0_combout\,
	datab => \Equal9~0_combout\,
	datac => \line5~regout\,
	datad => \Equal2~2_combout\,
	combout => \line5~0_combout\);

-- Location: LCFF_X19_Y19_N25
line5 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line5~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line5~regout\);

-- Location: LCCOMB_X20_Y20_N4
\process_0~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~97_combout\ = (\Equal8~0_combout\ & (\Equal6~0_combout\ & (!yPos(8) & \Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~0_combout\,
	datab => \Equal6~0_combout\,
	datac => yPos(8),
	datad => \Equal4~1_combout\,
	combout => \process_0~97_combout\);

-- Location: LCCOMB_X19_Y20_N14
\turn~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~36_combout\ = \turn~regout\ $ (((\process_0~97_combout\ & (\line4~regout\)) # (!\process_0~97_combout\ & ((\line5~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line4~regout\,
	datab => \turn~regout\,
	datac => \line5~regout\,
	datad => \process_0~97_combout\,
	combout => \turn~36_combout\);

-- Location: LCCOMB_X19_Y20_N16
\turn~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~37_combout\ = (\process_0~92_combout\ & (((!\turn~36_combout\)))) # (!\process_0~92_combout\ & ((\process_0~97_combout\ & ((!\turn~36_combout\))) # (!\process_0~97_combout\ & (\turn~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~35_combout\,
	datab => \process_0~92_combout\,
	datac => \turn~36_combout\,
	datad => \process_0~97_combout\,
	combout => \turn~37_combout\);

-- Location: LCCOMB_X20_Y19_N10
\turn~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~63_combout\ = (\turn~37_combout\) # ((\turn~32_combout\ & (!\process_0~95_combout\ & \turn~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~32_combout\,
	datab => \process_0~95_combout\,
	datac => \turn~62_combout\,
	datad => \turn~37_combout\,
	combout => \turn~63_combout\);

-- Location: LCCOMB_X20_Y19_N30
\turn~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~68_combout\ = (\process_0~105_combout\ & (\line3~regout\ $ ((!\turn~regout\)))) # (!\process_0~105_combout\ & (((\turn~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line3~regout\,
	datab => \process_0~105_combout\,
	datac => \turn~regout\,
	datad => \turn~63_combout\,
	combout => \turn~68_combout\);

-- Location: LCCOMB_X20_Y19_N0
\turn~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~69_combout\ = (\process_0~108_combout\ & (\turn~regout\ $ ((!\line2~regout\)))) # (!\process_0~108_combout\ & (((\turn~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \line2~regout\,
	datac => \process_0~108_combout\,
	datad => \turn~68_combout\,
	combout => \turn~69_combout\);

-- Location: LCCOMB_X20_Y19_N28
\turn~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~64_combout\ = (\lineDirection1~combout\ & ((\process_0~104_combout\) # ((\turn~34_combout\)))) # (!\lineDirection1~combout\ & (!\process_0~104_combout\ & ((\turn~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lineDirection1~combout\,
	datab => \process_0~104_combout\,
	datac => \turn~34_combout\,
	datad => \turn~69_combout\,
	combout => \turn~64_combout\);

-- Location: LCCOMB_X20_Y19_N12
\turn~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~66_combout\ = (\process_0~104_combout\ & ((\turn~64_combout\ & ((!\line21~regout\))) # (!\turn~64_combout\ & (!\line1~regout\)))) # (!\process_0~104_combout\ & (((\turn~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1~regout\,
	datab => \line21~regout\,
	datac => \process_0~104_combout\,
	datad => \turn~64_combout\,
	combout => \turn~66_combout\);

-- Location: LCCOMB_X20_Y19_N20
\turn~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \turn~67_combout\ = (\turn~65_combout\ & (\turn~66_combout\ $ (((\process_0~104_combout\ & \turn~regout\))))) # (!\turn~65_combout\ & (((\turn~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~65_combout\,
	datab => \process_0~104_combout\,
	datac => \turn~regout\,
	datad => \turn~66_combout\,
	combout => \turn~67_combout\);

-- Location: LCFF_X20_Y19_N21
turn : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \turn~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \turn~regout\);

-- Location: LCCOMB_X19_Y18_N0
\process_0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~78_combout\ = (\line26~regout\ & (\line27~regout\ & \line9~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line26~regout\,
	datac => \line27~regout\,
	datad => \line9~regout\,
	combout => \process_0~78_combout\);

-- Location: LCCOMB_X22_Y15_N2
\scoreAdded5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \scoreAdded5~0_combout\ = (\scoreAdded5~regout\) # ((\line5~regout\ & \process_0~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line5~regout\,
	datac => \scoreAdded5~regout\,
	datad => \process_0~78_combout\,
	combout => \scoreAdded5~0_combout\);

-- Location: LCFF_X22_Y15_N3
scoreAdded5 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \scoreAdded5~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scoreAdded5~regout\);

-- Location: LCCOMB_X22_Y15_N24
\line22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line22~0_combout\ = (\line22~regout\) # ((\color21~0_combout\ & (\Equal8~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color21~0_combout\,
	datab => \Equal8~1_combout\,
	datac => \line22~regout\,
	datad => \Equal0~3_combout\,
	combout => \line22~0_combout\);

-- Location: LCFF_X22_Y15_N25
line22 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line22~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line22~regout\);

-- Location: LCCOMB_X22_Y15_N12
\drawn1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawn1~0_combout\ = (\line1~regout\) # ((\color1~0_combout\ & (\Equal8~1_combout\ & \Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color1~0_combout\,
	datab => \Equal8~1_combout\,
	datac => \line1~regout\,
	datad => \Equal9~0_combout\,
	combout => \drawn1~0_combout\);

-- Location: LCFF_X22_Y15_N13
line1 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \drawn1~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line1~regout\);

-- Location: LCCOMB_X22_Y15_N0
\process_0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~77_combout\ = (\line21~regout\ & (\line22~regout\ & \line1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line21~regout\,
	datac => \line22~regout\,
	datad => \line1~regout\,
	combout => \process_0~77_combout\);

-- Location: LCCOMB_X22_Y15_N14
\score1[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \score1[4]~8_combout\ = (\scoreAdded1~regout\ & (!\scoreAdded5~regout\ & (\process_0~78_combout\))) # (!\scoreAdded1~regout\ & ((\process_0~77_combout\) # ((!\scoreAdded5~regout\ & \process_0~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scoreAdded1~regout\,
	datab => \scoreAdded5~regout\,
	datac => \process_0~78_combout\,
	datad => \process_0~77_combout\,
	combout => \score1[4]~8_combout\);

-- Location: LCCOMB_X19_Y18_N8
\line6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line6~0_combout\ = (\line6~regout\) # ((\color1~0_combout\ & (\Equal2~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color1~0_combout\,
	datab => \Equal2~2_combout\,
	datac => \line6~regout\,
	datad => \Equal0~3_combout\,
	combout => \line6~0_combout\);

-- Location: LCFF_X19_Y18_N9
line6 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line6~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line6~regout\);

-- Location: LCCOMB_X22_Y15_N4
\process_0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~75_combout\ = (\line23~regout\ & (\line22~regout\ & \line2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line23~regout\,
	datac => \line22~regout\,
	datad => \line2~regout\,
	combout => \process_0~75_combout\);

-- Location: LCCOMB_X22_Y18_N8
\scoreAdded2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \scoreAdded2~0_combout\ = (\scoreAdded2~regout\) # ((\line6~regout\ & \process_0~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line6~regout\,
	datac => \scoreAdded2~regout\,
	datad => \process_0~75_combout\,
	combout => \scoreAdded2~0_combout\);

-- Location: LCFF_X22_Y18_N9
scoreAdded2 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \scoreAdded2~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scoreAdded2~regout\);

-- Location: LCCOMB_X20_Y17_N24
\line10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line10~0_combout\ = (\line10~regout\) # ((\color1~0_combout\ & (\Equal3~0_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color1~0_combout\,
	datab => \Equal3~0_combout\,
	datac => \line10~regout\,
	datad => \Equal0~3_combout\,
	combout => \line10~0_combout\);

-- Location: LCFF_X20_Y17_N25
line10 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line10~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line10~regout\);

-- Location: LCCOMB_X21_Y19_N18
\process_0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~76_combout\ = (\line27~regout\ & (\line28~regout\ & \line10~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line27~regout\,
	datac => \line28~regout\,
	datad => \line10~regout\,
	combout => \process_0~76_combout\);

-- Location: LCCOMB_X22_Y15_N10
\score1[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \score1[4]~7_combout\ = (\scoreAdded6~regout\ & (!\scoreAdded2~regout\ & (\process_0~75_combout\))) # (!\scoreAdded6~regout\ & ((\process_0~76_combout\) # ((!\scoreAdded2~regout\ & \process_0~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scoreAdded6~regout\,
	datab => \scoreAdded2~regout\,
	datac => \process_0~75_combout\,
	datad => \process_0~76_combout\,
	combout => \score1[4]~7_combout\);

-- Location: LCCOMB_X22_Y15_N8
\score1[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \score1[4]~9_combout\ = (\line6~regout\ & ((\score1[4]~7_combout\) # ((\line5~regout\ & \score1[4]~8_combout\)))) # (!\line6~regout\ & (\line5~regout\ & (\score1[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line6~regout\,
	datab => \line5~regout\,
	datac => \score1[4]~8_combout\,
	datad => \score1[4]~7_combout\,
	combout => \score1[4]~9_combout\);

-- Location: LCCOMB_X21_Y16_N26
\line15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line15~0_combout\ = (\line15~regout\) # ((\Equal7~1_combout\ & (\Equal1~1_combout\ & \color1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~1_combout\,
	datab => \Equal1~1_combout\,
	datac => \line15~regout\,
	datad => \color1~0_combout\,
	combout => \line15~0_combout\);

-- Location: LCFF_X21_Y16_N27
line15 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line15~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line15~regout\);

-- Location: LCCOMB_X25_Y19_N4
\drawn11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawn11~0_combout\ = (\line11~regout\) # ((\Equal3~0_combout\ & (\Equal1~1_combout\ & \color1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \line11~regout\,
	datad => \color1~0_combout\,
	combout => \drawn11~0_combout\);

-- Location: LCFF_X25_Y19_N5
line11 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \drawn11~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line11~regout\);

-- Location: LCCOMB_X22_Y18_N0
\drawn34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawn34~0_combout\ = (\line34~regout\) # ((\Equal3~0_combout\ & (\color21~0_combout\ & \Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \color21~0_combout\,
	datac => \line34~regout\,
	datad => \Equal4~1_combout\,
	combout => \drawn34~0_combout\);

-- Location: LCFF_X22_Y18_N1
line34 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \drawn34~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line34~regout\);

-- Location: LCCOMB_X22_Y19_N12
\process_0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~87_combout\ = (\line33~regout\ & (\line11~regout\ & \line34~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line33~regout\,
	datac => \line11~regout\,
	datad => \line34~regout\,
	combout => \process_0~87_combout\);

-- Location: LCCOMB_X22_Y19_N20
\scoreAdded15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \scoreAdded15~0_combout\ = (\scoreAdded15~regout\) # ((\process_0~88_combout\ & \line15~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~88_combout\,
	datac => \scoreAdded15~regout\,
	datad => \line15~regout\,
	combout => \scoreAdded15~0_combout\);

-- Location: LCFF_X22_Y19_N21
scoreAdded15 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \scoreAdded15~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scoreAdded15~regout\);

-- Location: LCCOMB_X22_Y19_N30
\scoreAdded11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \scoreAdded11~0_combout\ = (\scoreAdded11~regout\) # ((\process_0~87_combout\ & \line15~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scoreAdded11~regout\,
	datac => \process_0~87_combout\,
	datad => \line15~regout\,
	combout => \scoreAdded11~0_combout\);

-- Location: LCFF_X23_Y19_N5
scoreAdded11 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \scoreAdded11~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scoreAdded11~regout\);

-- Location: LCCOMB_X22_Y19_N2
\score1[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \score1[4]~16_combout\ = (\process_0~88_combout\ & (((\process_0~87_combout\ & !\scoreAdded11~regout\)) # (!\scoreAdded15~regout\))) # (!\process_0~88_combout\ & (\process_0~87_combout\ & ((!\scoreAdded11~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~88_combout\,
	datab => \process_0~87_combout\,
	datac => \scoreAdded15~regout\,
	datad => \scoreAdded11~regout\,
	combout => \score1[4]~16_combout\);

-- Location: LCCOMB_X22_Y19_N24
\process_0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~89_combout\ = (\line35~regout\ & (\line34~regout\ & \line12~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line35~regout\,
	datab => \line34~regout\,
	datac => \line12~regout\,
	combout => \process_0~89_combout\);

-- Location: LCCOMB_X22_Y19_N22
\scoreAdded12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \scoreAdded12~0_combout\ = (\scoreAdded12~regout\) # ((\line16~regout\ & \process_0~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line16~regout\,
	datac => \scoreAdded12~regout\,
	datad => \process_0~89_combout\,
	combout => \scoreAdded12~0_combout\);

-- Location: LCFF_X22_Y19_N23
scoreAdded12 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \scoreAdded12~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scoreAdded12~regout\);

-- Location: LCCOMB_X24_Y19_N28
\line39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line39~0_combout\ = (\line39~regout\) # ((\Equal7~1_combout\ & (\color21~0_combout\ & \Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~1_combout\,
	datab => \color21~0_combout\,
	datac => \line39~regout\,
	datad => \Equal4~1_combout\,
	combout => \line39~0_combout\);

-- Location: LCFF_X24_Y19_N29
line39 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line39~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line39~regout\);

-- Location: LCCOMB_X23_Y19_N4
\process_0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~90_combout\ = (\line40~regout\ & (\line20~regout\ & \line39~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line40~regout\,
	datab => \line20~regout\,
	datad => \line39~regout\,
	combout => \process_0~90_combout\);

-- Location: LCCOMB_X22_Y19_N4
\scoreAdded16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \scoreAdded16~0_combout\ = (\scoreAdded16~regout\) # ((\line16~regout\ & \process_0~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line16~regout\,
	datac => \scoreAdded16~regout\,
	datad => \process_0~90_combout\,
	combout => \scoreAdded16~0_combout\);

-- Location: LCFF_X22_Y19_N5
scoreAdded16 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \scoreAdded16~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scoreAdded16~regout\);

-- Location: LCCOMB_X22_Y19_N18
\score1[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \score1[4]~17_combout\ = (\process_0~89_combout\ & (((!\scoreAdded16~regout\ & \process_0~90_combout\)) # (!\scoreAdded12~regout\))) # (!\process_0~89_combout\ & (((!\scoreAdded16~regout\ & \process_0~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~89_combout\,
	datab => \scoreAdded12~regout\,
	datac => \scoreAdded16~regout\,
	datad => \process_0~90_combout\,
	combout => \score1[4]~17_combout\);

-- Location: LCCOMB_X22_Y19_N8
\score1[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \score1[4]~18_combout\ = (\line16~regout\ & ((\score1[4]~17_combout\) # ((\line15~regout\ & \score1[4]~16_combout\)))) # (!\line16~regout\ & (\line15~regout\ & (\score1[4]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line16~regout\,
	datab => \line15~regout\,
	datac => \score1[4]~16_combout\,
	datad => \score1[4]~17_combout\,
	combout => \score1[4]~18_combout\);

-- Location: LCCOMB_X20_Y16_N26
\line13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line13~0_combout\ = (\line13~regout\) # ((\Equal9~0_combout\ & (\color1~0_combout\ & \Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => \color1~0_combout\,
	datac => \line13~regout\,
	datad => \Equal7~1_combout\,
	combout => \line13~0_combout\);

-- Location: LCFF_X20_Y16_N27
line13 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line13~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line13~regout\);

-- Location: LCCOMB_X21_Y16_N30
\scoreAdded9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \scoreAdded9~0_combout\ = (\scoreAdded9~regout\) # ((\process_0~83_combout\ & \line13~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~83_combout\,
	datab => \line13~regout\,
	datad => \scoreAdded9~regout\,
	combout => \scoreAdded9~0_combout\);

-- Location: LCFF_X22_Y16_N31
scoreAdded9 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \scoreAdded9~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scoreAdded9~regout\);

-- Location: LCCOMB_X25_Y16_N20
\drawn37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawn37~0_combout\ = (\line37~regout\) # ((\color21~0_combout\ & (\Equal7~1_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color21~0_combout\,
	datab => \Equal7~1_combout\,
	datac => \line37~regout\,
	datad => \Equal0~3_combout\,
	combout => \drawn37~0_combout\);

-- Location: LCFF_X25_Y16_N21
line37 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \drawn37~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line37~regout\);

-- Location: LCCOMB_X25_Y17_N24
\process_0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~84_combout\ = (\line36~regout\ & (\line37~regout\ & \line17~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line36~regout\,
	datac => \line37~regout\,
	datad => \line17~regout\,
	combout => \process_0~84_combout\);

-- Location: LCCOMB_X20_Y16_N0
\line31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line31~0_combout\ = (\line31~regout\) # ((\Equal9~0_combout\ & (\color21~0_combout\ & \Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => \color21~0_combout\,
	datac => \line31~regout\,
	datad => \Equal3~0_combout\,
	combout => \line31~0_combout\);

-- Location: LCFF_X20_Y16_N1
line31 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line31~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line31~regout\);

-- Location: LCCOMB_X20_Y16_N12
\process_0~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~83_combout\ = (\line31~regout\ & (\line9~regout\ & \line32~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line31~regout\,
	datac => \line9~regout\,
	datad => \line32~regout\,
	combout => \process_0~83_combout\);

-- Location: LCCOMB_X21_Y16_N22
\score1[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \score1[4]~13_combout\ = (\scoreAdded13~regout\ & (!\scoreAdded9~regout\ & ((\process_0~83_combout\)))) # (!\scoreAdded13~regout\ & ((\process_0~84_combout\) # ((!\scoreAdded9~regout\ & \process_0~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scoreAdded13~regout\,
	datab => \scoreAdded9~regout\,
	datac => \process_0~84_combout\,
	datad => \process_0~83_combout\,
	combout => \score1[4]~13_combout\);

-- Location: LCCOMB_X21_Y16_N16
\line14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line14~0_combout\ = (\line14~regout\) # ((\Equal0~3_combout\ & (\Equal7~1_combout\ & \color1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal7~1_combout\,
	datac => \line14~regout\,
	datad => \color1~0_combout\,
	combout => \line14~0_combout\);

-- Location: LCFF_X21_Y16_N17
line14 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line14~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line14~regout\);

-- Location: LCCOMB_X20_Y20_N28
\line18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line18~0_combout\ = (\line18~regout\) # ((\color1~0_combout\ & (\Equal6~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color1~0_combout\,
	datab => \Equal6~2_combout\,
	datac => \line18~regout\,
	datad => \Equal0~3_combout\,
	combout => \line18~0_combout\);

-- Location: LCFF_X20_Y20_N29
line18 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line18~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line18~regout\);

-- Location: LCCOMB_X25_Y16_N8
\process_0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~86_combout\ = (\line38~regout\ & (\line37~regout\ & \line18~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line38~regout\,
	datac => \line37~regout\,
	datad => \line18~regout\,
	combout => \process_0~86_combout\);

-- Location: LCCOMB_X21_Y16_N8
\scoreAdded14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \scoreAdded14~0_combout\ = (\scoreAdded14~regout\) # ((\line14~regout\ & \process_0~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line14~regout\,
	datac => \scoreAdded14~regout\,
	datad => \process_0~86_combout\,
	combout => \scoreAdded14~0_combout\);

-- Location: LCFF_X21_Y16_N9
scoreAdded14 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \scoreAdded14~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scoreAdded14~regout\);

-- Location: LCCOMB_X21_Y16_N4
\scoreAdded10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \scoreAdded10~0_combout\ = (\scoreAdded10~regout\) # ((\process_0~85_combout\ & \line14~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~85_combout\,
	datac => \scoreAdded10~regout\,
	datad => \line14~regout\,
	combout => \scoreAdded10~0_combout\);

-- Location: LCFF_X21_Y16_N5
scoreAdded10 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \scoreAdded10~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scoreAdded10~regout\);

-- Location: LCCOMB_X21_Y16_N2
\score1[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \score1[4]~14_combout\ = (\process_0~85_combout\ & (((!\scoreAdded14~regout\ & \process_0~86_combout\)) # (!\scoreAdded10~regout\))) # (!\process_0~85_combout\ & (!\scoreAdded14~regout\ & ((\process_0~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~85_combout\,
	datab => \scoreAdded14~regout\,
	datac => \scoreAdded10~regout\,
	datad => \process_0~86_combout\,
	combout => \score1[4]~14_combout\);

-- Location: LCCOMB_X21_Y16_N12
\score1[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \score1[4]~15_combout\ = (\line14~regout\ & ((\score1[4]~14_combout\) # ((\score1[4]~13_combout\ & \line13~regout\)))) # (!\line14~regout\ & (\score1[4]~13_combout\ & (\line13~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line14~regout\,
	datab => \score1[4]~13_combout\,
	datac => \line13~regout\,
	datad => \score1[4]~14_combout\,
	combout => \score1[4]~15_combout\);

-- Location: LCCOMB_X21_Y19_N24
\score1[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \score1[4]~19_combout\ = (\score1[4]~12_combout\) # ((\score1[4]~9_combout\) # ((\score1[4]~18_combout\) # (\score1[4]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \score1[4]~12_combout\,
	datab => \score1[4]~9_combout\,
	datac => \score1[4]~18_combout\,
	datad => \score1[4]~15_combout\,
	combout => \score1[4]~19_combout\);

-- Location: LCCOMB_X4_Y19_N26
\score1[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \score1[4]~20_combout\ = (!\turn~regout\ & \score1[4]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \turn~regout\,
	datad => \score1[4]~19_combout\,
	combout => \score1[4]~20_combout\);

-- Location: LCFF_X4_Y19_N3
\score1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \score1[0]~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \score1[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score1(0));

-- Location: LCCOMB_X4_Y19_N4
\score1[1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \score1[1]~21_combout\ = (score1(1) & (!\score1[0]~6\)) # (!score1(1) & ((\score1[0]~6\) # (GND)))
-- \score1[1]~22\ = CARRY((!\score1[0]~6\) # (!score1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => score1(1),
	datad => VCC,
	cin => \score1[0]~6\,
	combout => \score1[1]~21_combout\,
	cout => \score1[1]~22\);

-- Location: LCFF_X4_Y19_N5
\score1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \score1[1]~21_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \score1[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score1(1));

-- Location: LCCOMB_X4_Y19_N6
\score1[2]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \score1[2]~23_combout\ = (score1(2) & (\score1[1]~22\ $ (GND))) # (!score1(2) & (!\score1[1]~22\ & VCC))
-- \score1[2]~24\ = CARRY((score1(2) & !\score1[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => score1(2),
	datad => VCC,
	cin => \score1[1]~22\,
	combout => \score1[2]~23_combout\,
	cout => \score1[2]~24\);

-- Location: LCCOMB_X4_Y19_N8
\score1[3]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \score1[3]~25_combout\ = (score1(3) & (!\score1[2]~24\)) # (!score1(3) & ((\score1[2]~24\) # (GND)))
-- \score1[3]~26\ = CARRY((!\score1[2]~24\) # (!score1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => score1(3),
	datad => VCC,
	cin => \score1[2]~24\,
	combout => \score1[3]~25_combout\,
	cout => \score1[3]~26\);

-- Location: LCFF_X4_Y19_N9
\score1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \score1[3]~25_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \score1[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score1(3));

-- Location: LCCOMB_X4_Y19_N10
\score1[4]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \score1[4]~27_combout\ = \score1[3]~26\ $ (!score1(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => score1(4),
	cin => \score1[3]~26\,
	combout => \score1[4]~27_combout\);

-- Location: LCFF_X4_Y19_N11
\score1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \score1[4]~27_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \score1[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score1(4));

-- Location: LCCOMB_X3_Y19_N18
\SegDisplay1|result1[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result1[3]~1_combout\ = (score1(0) & (!score1(4) & (score1(3) & score1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score1(0),
	datab => score1(4),
	datac => score1(3),
	datad => score1(1),
	combout => \SegDisplay1|result1[3]~1_combout\);

-- Location: LCCOMB_X3_Y19_N28
\SegDisplay1|result1[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result1[0]~2_combout\ = (!score1(4) & ((\SegDisplay1|result1[0]~0_combout\) # ((\SegDisplay1|result1[3]~1_combout\ & score1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay1|result1[0]~0_combout\,
	datab => \SegDisplay1|result1[3]~1_combout\,
	datac => score1(4),
	datad => score1(1),
	combout => \SegDisplay1|result1[0]~2_combout\);

-- Location: LCCOMB_X3_Y19_N30
\SegDisplay1|result1[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result1[6]~3_combout\ = (!score1(2) & (!score1(0) & (!score1(3) & !score1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score1(2),
	datab => score1(0),
	datac => score1(3),
	datad => score1(1),
	combout => \SegDisplay1|result1[6]~3_combout\);

-- Location: LCCOMB_X3_Y19_N10
\SegDisplay1|comb~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|comb~21_combout\ = (\SegDisplay1|result1[0]~2_combout\) # ((score1(4) & !\SegDisplay1|result1[6]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SegDisplay1|result1[0]~2_combout\,
	datac => score1(4),
	datad => \SegDisplay1|result1[6]~3_combout\,
	combout => \SegDisplay1|comb~21_combout\);

-- Location: LCCOMB_X3_Y19_N26
\SegDisplay1|result1[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result1\(0) = (\SegDisplay1|comb~21_combout\ & ((\SegDisplay1|result1[0]~2_combout\) # (\SegDisplay1|result1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay1|comb~21_combout\,
	datab => \SegDisplay1|result1[0]~2_combout\,
	datad => \SegDisplay1|result1\(0),
	combout => \SegDisplay1|result1\(0));

-- Location: LCCOMB_X2_Y19_N24
\SegDisplay1|result1[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result1[6]~4_combout\ = (\SegDisplay1|result1[6]~3_combout\) # (!score1(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SegDisplay1|result1[6]~3_combout\,
	datad => score1(4),
	combout => \SegDisplay1|result1[6]~4_combout\);

-- Location: LCCOMB_X3_Y19_N24
\SegDisplay1|comb~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|comb~12_combout\ = (score1(2) & ((score1(0) & (!score1(3) & !score1(1))) # (!score1(0) & ((score1(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score1(2),
	datab => score1(0),
	datac => score1(3),
	datad => score1(1),
	combout => \SegDisplay1|comb~12_combout\);

-- Location: LCCOMB_X2_Y19_N14
\SegDisplay1|comb~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|comb~13_combout\ = (\SegDisplay1|comb~12_combout\) # (score1(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SegDisplay1|comb~12_combout\,
	datad => score1(4),
	combout => \SegDisplay1|comb~13_combout\);

-- Location: LCCOMB_X1_Y19_N12
\SegDisplay1|result1[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result1\(1) = (\SegDisplay1|comb~13_combout\ & ((\SegDisplay1|result1[6]~4_combout\) # (\SegDisplay1|result1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SegDisplay1|result1[6]~4_combout\,
	datac => \SegDisplay1|comb~13_combout\,
	datad => \SegDisplay1|result1\(1),
	combout => \SegDisplay1|result1\(1));

-- Location: LCCOMB_X3_Y19_N14
\SegDisplay1|result1[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result1[2]~5_combout\ = (!score1(0) & ((score1(2) & (score1(3))) # (!score1(2) & (!score1(3) & score1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score1(2),
	datab => score1(0),
	datac => score1(3),
	datad => score1(1),
	combout => \SegDisplay1|result1[2]~5_combout\);

-- Location: LCCOMB_X2_Y19_N4
\SegDisplay1|comb~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|comb~14_combout\ = (score1(4) & (\SegDisplay1|result1[6]~3_combout\)) # (!score1(4) & ((!\SegDisplay1|result1[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SegDisplay1|result1[6]~3_combout\,
	datac => \SegDisplay1|result1[2]~5_combout\,
	datad => score1(4),
	combout => \SegDisplay1|comb~14_combout\);

-- Location: LCCOMB_X2_Y19_N22
\SegDisplay1|comb~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|comb~15_combout\ = (\SegDisplay1|result1[2]~5_combout\ & !score1(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SegDisplay1|result1[2]~5_combout\,
	datad => score1(4),
	combout => \SegDisplay1|comb~15_combout\);

-- Location: LCCOMB_X1_Y19_N18
\SegDisplay1|result1[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result1\(2) = (!\SegDisplay1|comb~14_combout\ & ((\SegDisplay1|comb~15_combout\) # (\SegDisplay1|result1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay1|comb~14_combout\,
	datab => \SegDisplay1|comb~15_combout\,
	datad => \SegDisplay1|result1\(2),
	combout => \SegDisplay1|result1\(2));

-- Location: LCCOMB_X2_Y19_N8
\SegDisplay1|result1[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result1[3]~9_combout\ = (\SegDisplay1|result1[3]~8_combout\ & !score1(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay1|result1[3]~8_combout\,
	datad => score1(4),
	combout => \SegDisplay1|result1[3]~9_combout\);

-- Location: LCCOMB_X2_Y19_N12
\SegDisplay1|comb~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|comb~22_combout\ = (score1(4) & ((!\SegDisplay1|result1[6]~3_combout\))) # (!score1(4) & (\SegDisplay1|result1[3]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay1|result1[3]~8_combout\,
	datab => \SegDisplay1|result1[6]~3_combout\,
	datad => score1(4),
	combout => \SegDisplay1|comb~22_combout\);

-- Location: LCCOMB_X1_Y19_N0
\SegDisplay1|result1[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result1\(3) = (\SegDisplay1|comb~22_combout\ & ((\SegDisplay1|result1[3]~9_combout\) # (\SegDisplay1|result1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SegDisplay1|result1[3]~9_combout\,
	datac => \SegDisplay1|comb~22_combout\,
	datad => \SegDisplay1|result1\(3),
	combout => \SegDisplay1|result1\(3));

-- Location: LCCOMB_X4_Y19_N28
\SegDisplay1|result1[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result1[6]~10_combout\ = (!score1(1) & !score1(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => score1(1),
	datad => score1(3),
	combout => \SegDisplay1|result1[6]~10_combout\);

-- Location: LCFF_X4_Y19_N7
\score1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \score1[2]~23_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \score1[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score1(2));

-- Location: LCCOMB_X4_Y19_N12
\SegDisplay1|comb~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|comb~17_combout\ = (!score1(4) & ((score1(0)) # ((\SegDisplay1|result1[6]~10_combout\ & score1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score1(4),
	datab => \SegDisplay1|result1[6]~10_combout\,
	datac => score1(0),
	datad => score1(2),
	combout => \SegDisplay1|comb~17_combout\);

-- Location: LCCOMB_X4_Y19_N24
\SegDisplay1|comb~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|comb~16_combout\ = (!score1(0) & ((\SegDisplay1|result1[6]~10_combout\ & (!score1(2))) # (!\SegDisplay1|result1[6]~10_combout\ & ((!score1(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score1(2),
	datab => \SegDisplay1|result1[6]~10_combout\,
	datac => score1(4),
	datad => score1(0),
	combout => \SegDisplay1|comb~16_combout\);

-- Location: LCCOMB_X4_Y19_N30
\SegDisplay1|result1[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result1\(4) = (!\SegDisplay1|comb~16_combout\ & ((\SegDisplay1|comb~17_combout\) # (\SegDisplay1|result1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay1|comb~17_combout\,
	datac => \SegDisplay1|comb~16_combout\,
	datad => \SegDisplay1|result1\(4),
	combout => \SegDisplay1|result1\(4));

-- Location: LCCOMB_X2_Y19_N10
\SegDisplay1|comb~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|comb~18_combout\ = (score1(4) & ((!\SegDisplay1|result1[6]~3_combout\))) # (!score1(4) & (\SegDisplay1|result1[5]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay1|result1[5]~11_combout\,
	datab => \SegDisplay1|result1[6]~3_combout\,
	datad => score1(4),
	combout => \SegDisplay1|comb~18_combout\);

-- Location: LCCOMB_X2_Y19_N0
\SegDisplay1|result1[5]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result1[5]~12_combout\ = (\SegDisplay1|result1[5]~11_combout\ & !score1(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay1|result1[5]~11_combout\,
	datad => score1(4),
	combout => \SegDisplay1|result1[5]~12_combout\);

-- Location: LCCOMB_X2_Y19_N26
\SegDisplay1|result1[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result1\(5) = (\SegDisplay1|comb~18_combout\ & ((\SegDisplay1|result1[5]~12_combout\) # (\SegDisplay1|result1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay1|comb~18_combout\,
	datab => \SegDisplay1|result1[5]~12_combout\,
	datad => \SegDisplay1|result1\(5),
	combout => \SegDisplay1|result1\(5));

-- Location: LCCOMB_X3_Y19_N16
\SegDisplay1|result1[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result1[6]~13_combout\ = (score1(2) & (score1(0) & (!score1(3) & score1(1)))) # (!score1(2) & ((score1(3) $ (!score1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score1(2),
	datab => score1(0),
	datac => score1(3),
	datad => score1(1),
	combout => \SegDisplay1|result1[6]~13_combout\);

-- Location: LCCOMB_X2_Y19_N6
\SegDisplay1|comb~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|comb~19_combout\ = (score1(4) & (!\SegDisplay1|result1[6]~3_combout\)) # (!score1(4) & ((\SegDisplay1|result1[6]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SegDisplay1|result1[6]~3_combout\,
	datac => \SegDisplay1|result1[6]~13_combout\,
	datad => score1(4),
	combout => \SegDisplay1|comb~19_combout\);

-- Location: LCCOMB_X2_Y19_N28
\SegDisplay1|result1[6]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result1[6]~14_combout\ = (\SegDisplay1|result1[6]~13_combout\ & !score1(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SegDisplay1|result1[6]~13_combout\,
	datad => score1(4),
	combout => \SegDisplay1|result1[6]~14_combout\);

-- Location: LCCOMB_X1_Y19_N2
\SegDisplay1|result1[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result1\(6) = (\SegDisplay1|comb~19_combout\ & ((\SegDisplay1|result1[6]~14_combout\) # (\SegDisplay1|result1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay1|comb~19_combout\,
	datab => \SegDisplay1|result1[6]~14_combout\,
	datad => \SegDisplay1|result1\(6),
	combout => \SegDisplay1|result1\(6));

-- Location: LCCOMB_X3_Y19_N22
\SegDisplay1|result2[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result2[6]~0_combout\ = (((!score1(1)) # (!score1(3))) # (!score1(0))) # (!score1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score1(2),
	datab => score1(0),
	datac => score1(3),
	datad => score1(1),
	combout => \SegDisplay1|result2[6]~0_combout\);

-- Location: LCCOMB_X3_Y19_N8
\SegDisplay1|result2[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result2[5]~1_combout\ = (score1(4)) # ((score1(3) & ((score1(2)) # (score1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score1(2),
	datab => score1(4),
	datac => score1(3),
	datad => score1(1),
	combout => \SegDisplay1|result2[5]~1_combout\);

-- Location: LCCOMB_X2_Y19_N2
\SegDisplay1|comb~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|comb~20_combout\ = (\SegDisplay1|result2[5]~1_combout\ & ((\SegDisplay1|result1[6]~3_combout\) # ((!score1(4) & \SegDisplay1|result2[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score1(4),
	datab => \SegDisplay1|result2[6]~0_combout\,
	datac => \SegDisplay1|result2[5]~1_combout\,
	datad => \SegDisplay1|result1[6]~3_combout\,
	combout => \SegDisplay1|comb~20_combout\);

-- Location: LCCOMB_X3_Y19_N0
\SegDisplay1|comb~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|comb~23_combout\ = (!score1(4) & (((!score1(2) & !score1(1))) # (!score1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score1(2),
	datab => score1(4),
	datac => score1(3),
	datad => score1(1),
	combout => \SegDisplay1|comb~23_combout\);

-- Location: LCCOMB_X1_Y21_N12
\SegDisplay1|result2[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result2\(0) = (!\SegDisplay1|comb~23_combout\ & ((\SegDisplay1|comb~20_combout\) # (\SegDisplay1|result2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay1|comb~20_combout\,
	datac => \SegDisplay1|comb~23_combout\,
	datad => \SegDisplay1|result2\(0),
	combout => \SegDisplay1|result2\(0));

-- Location: LCCOMB_X1_Y21_N18
\SegDisplay1|result2[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result2\(3) = (!\SegDisplay1|comb~23_combout\ & ((\SegDisplay1|comb~20_combout\) # (\SegDisplay1|result2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay1|comb~20_combout\,
	datac => \SegDisplay1|comb~23_combout\,
	datad => \SegDisplay1|result2\(3),
	combout => \SegDisplay1|result2\(3));

-- Location: LCCOMB_X1_Y21_N0
\SegDisplay1|result2[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result2\(4) = (!\SegDisplay1|comb~23_combout\ & ((\SegDisplay1|comb~20_combout\) # (\SegDisplay1|result2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay1|comb~20_combout\,
	datac => \SegDisplay1|comb~23_combout\,
	datad => \SegDisplay1|result2\(4),
	combout => \SegDisplay1|result2\(4));

-- Location: LCCOMB_X1_Y21_N2
\SegDisplay1|result2[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay1|result2\(5) = (!\SegDisplay1|comb~23_combout\ & ((\SegDisplay1|comb~20_combout\) # (\SegDisplay1|result2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay1|comb~20_combout\,
	datac => \SegDisplay1|comb~23_combout\,
	datad => \SegDisplay1|result2\(5),
	combout => \SegDisplay1|result2\(5));

-- Location: LCCOMB_X4_Y19_N14
\score2[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \score2[0]~5_combout\ = score2(0) $ (VCC)
-- \score2[0]~6\ = CARRY(score2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => score2(0),
	datad => VCC,
	combout => \score2[0]~5_combout\,
	cout => \score2[0]~6\);

-- Location: LCCOMB_X4_Y19_N0
\score2[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \score2[0]~7_combout\ = (\turn~regout\ & \score1[4]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \turn~regout\,
	datad => \score1[4]~19_combout\,
	combout => \score2[0]~7_combout\);

-- Location: LCFF_X4_Y19_N15
\score2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \score2[0]~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \score2[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score2(0));

-- Location: LCCOMB_X4_Y19_N16
\score2[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \score2[1]~8_combout\ = (score2(1) & (!\score2[0]~6\)) # (!score2(1) & ((\score2[0]~6\) # (GND)))
-- \score2[1]~9\ = CARRY((!\score2[0]~6\) # (!score2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => score2(1),
	datad => VCC,
	cin => \score2[0]~6\,
	combout => \score2[1]~8_combout\,
	cout => \score2[1]~9\);

-- Location: LCCOMB_X4_Y19_N18
\score2[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \score2[2]~10_combout\ = (score2(2) & (\score2[1]~9\ $ (GND))) # (!score2(2) & (!\score2[1]~9\ & VCC))
-- \score2[2]~11\ = CARRY((score2(2) & !\score2[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => score2(2),
	datad => VCC,
	cin => \score2[1]~9\,
	combout => \score2[2]~10_combout\,
	cout => \score2[2]~11\);

-- Location: LCFF_X4_Y19_N19
\score2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \score2[2]~10_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \score2[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score2(2));

-- Location: LCCOMB_X4_Y19_N20
\score2[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \score2[3]~12_combout\ = (score2(3) & (!\score2[2]~11\)) # (!score2(3) & ((\score2[2]~11\) # (GND)))
-- \score2[3]~13\ = CARRY((!\score2[2]~11\) # (!score2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => score2(3),
	datad => VCC,
	cin => \score2[2]~11\,
	combout => \score2[3]~12_combout\,
	cout => \score2[3]~13\);

-- Location: LCCOMB_X4_Y19_N22
\score2[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \score2[4]~14_combout\ = \score2[3]~13\ $ (!score2(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => score2(4),
	cin => \score2[3]~13\,
	combout => \score2[4]~14_combout\);

-- Location: LCFF_X4_Y19_N23
\score2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \score2[4]~14_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \score2[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score2(4));

-- Location: LCFF_X4_Y19_N21
\score2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \score2[3]~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \score2[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score2(3));

-- Location: LCCOMB_X3_Y22_N18
\SegDisplay2|result1[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result1[3]~1_combout\ = (score2(1) & (!score2(4) & (score2(0) & score2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score2(1),
	datab => score2(4),
	datac => score2(0),
	datad => score2(3),
	combout => \SegDisplay2|result1[3]~1_combout\);

-- Location: LCFF_X4_Y19_N17
\score2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \score2[1]~8_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \score2[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => score2(1));

-- Location: LCCOMB_X3_Y22_N24
\SegDisplay2|result1[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result1[0]~2_combout\ = (!score2(4) & ((\SegDisplay2|result1[0]~0_combout\) # ((\SegDisplay2|result1[3]~1_combout\ & score2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay2|result1[0]~0_combout\,
	datab => \SegDisplay2|result1[3]~1_combout\,
	datac => score2(1),
	datad => score2(4),
	combout => \SegDisplay2|result1[0]~2_combout\);

-- Location: LCCOMB_X3_Y22_N30
\SegDisplay2|result1[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result1[6]~3_combout\ = (!score2(1) & (!score2(3) & (!score2(0) & !score2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score2(1),
	datab => score2(3),
	datac => score2(0),
	datad => score2(2),
	combout => \SegDisplay2|result1[6]~3_combout\);

-- Location: LCCOMB_X2_Y22_N14
\SegDisplay2|comb~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|comb~21_combout\ = (\SegDisplay2|result1[0]~2_combout\) # ((score2(4) & !\SegDisplay2|result1[6]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SegDisplay2|result1[0]~2_combout\,
	datac => score2(4),
	datad => \SegDisplay2|result1[6]~3_combout\,
	combout => \SegDisplay2|comb~21_combout\);

-- Location: LCCOMB_X2_Y22_N22
\SegDisplay2|result1[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result1\(0) = (\SegDisplay2|comb~21_combout\ & ((\SegDisplay2|result1[0]~2_combout\) # (\SegDisplay2|result1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SegDisplay2|result1[0]~2_combout\,
	datac => \SegDisplay2|comb~21_combout\,
	datad => \SegDisplay2|result1\(0),
	combout => \SegDisplay2|result1\(0));

-- Location: LCCOMB_X2_Y22_N2
\SegDisplay2|comb~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|comb~13_combout\ = (\SegDisplay2|comb~12_combout\) # (score2(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay2|comb~12_combout\,
	datac => score2(4),
	combout => \SegDisplay2|comb~13_combout\);

-- Location: LCCOMB_X2_Y22_N24
\SegDisplay2|result1[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result1[6]~4_combout\ = (\SegDisplay2|result1[6]~3_combout\) # (!score2(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SegDisplay2|result1[6]~3_combout\,
	datac => score2(4),
	combout => \SegDisplay2|result1[6]~4_combout\);

-- Location: LCCOMB_X1_Y22_N28
\SegDisplay2|result1[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result1\(1) = (\SegDisplay2|comb~13_combout\ & ((\SegDisplay2|result1[6]~4_combout\) # (\SegDisplay2|result1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay2|comb~13_combout\,
	datab => \SegDisplay2|result1[6]~4_combout\,
	datad => \SegDisplay2|result1\(1),
	combout => \SegDisplay2|result1\(1));

-- Location: LCCOMB_X3_Y22_N10
\SegDisplay2|result1[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result1[2]~5_combout\ = (!score2(0) & ((score2(3) & ((score2(2)))) # (!score2(3) & (score2(1) & !score2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score2(1),
	datab => score2(3),
	datac => score2(0),
	datad => score2(2),
	combout => \SegDisplay2|result1[2]~5_combout\);

-- Location: LCCOMB_X2_Y22_N18
\SegDisplay2|comb~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|comb~15_combout\ = (!score2(4) & \SegDisplay2|result1[2]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score2(4),
	datac => \SegDisplay2|result1[2]~5_combout\,
	combout => \SegDisplay2|comb~15_combout\);

-- Location: LCCOMB_X2_Y22_N8
\SegDisplay2|comb~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|comb~14_combout\ = (score2(4) & (\SegDisplay2|result1[6]~3_combout\)) # (!score2(4) & ((!\SegDisplay2|result1[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score2(4),
	datab => \SegDisplay2|result1[6]~3_combout\,
	datac => \SegDisplay2|result1[2]~5_combout\,
	combout => \SegDisplay2|comb~14_combout\);

-- Location: LCCOMB_X1_Y22_N6
\SegDisplay2|result1[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result1\(2) = (!\SegDisplay2|comb~14_combout\ & ((\SegDisplay2|comb~15_combout\) # (\SegDisplay2|result1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SegDisplay2|comb~15_combout\,
	datac => \SegDisplay2|comb~14_combout\,
	datad => \SegDisplay2|result1\(2),
	combout => \SegDisplay2|result1\(2));

-- Location: LCCOMB_X3_Y22_N28
\SegDisplay2|result1[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result1[3]~8_combout\ = (score2(2) & (!\SegDisplay2|result1[3]~7_combout\ & (score2(0) $ (!score2(1))))) # (!score2(2) & ((score2(1) & (\SegDisplay2|result1[3]~7_combout\)) # (!score2(1) & ((score2(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay2|result1[3]~7_combout\,
	datab => score2(0),
	datac => score2(1),
	datad => score2(2),
	combout => \SegDisplay2|result1[3]~8_combout\);

-- Location: LCCOMB_X2_Y22_N4
\SegDisplay2|result1[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result1[3]~9_combout\ = (\SegDisplay2|result1[3]~8_combout\ & !score2(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SegDisplay2|result1[3]~8_combout\,
	datac => score2(4),
	combout => \SegDisplay2|result1[3]~9_combout\);

-- Location: LCCOMB_X2_Y22_N0
\SegDisplay2|comb~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|comb~22_combout\ = (score2(4) & ((!\SegDisplay2|result1[6]~3_combout\))) # (!score2(4) & (\SegDisplay2|result1[3]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SegDisplay2|result1[3]~8_combout\,
	datac => score2(4),
	datad => \SegDisplay2|result1[6]~3_combout\,
	combout => \SegDisplay2|comb~22_combout\);

-- Location: LCCOMB_X1_Y22_N0
\SegDisplay2|result1[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result1\(3) = (\SegDisplay2|comb~22_combout\ & ((\SegDisplay2|result1[3]~9_combout\) # (\SegDisplay2|result1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay2|result1[3]~9_combout\,
	datac => \SegDisplay2|comb~22_combout\,
	datad => \SegDisplay2|result1\(3),
	combout => \SegDisplay2|result1\(3));

-- Location: LCCOMB_X3_Y23_N0
\SegDisplay2|result1[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result1[6]~10_combout\ = (!score2(1) & !score2(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => score2(1),
	datad => score2(3),
	combout => \SegDisplay2|result1[6]~10_combout\);

-- Location: LCCOMB_X3_Y23_N12
\SegDisplay2|comb~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|comb~17_combout\ = (!score2(4) & ((score2(0)) # ((score2(2) & \SegDisplay2|result1[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score2(2),
	datab => \SegDisplay2|result1[6]~10_combout\,
	datac => score2(0),
	datad => score2(4),
	combout => \SegDisplay2|comb~17_combout\);

-- Location: LCCOMB_X3_Y23_N2
\SegDisplay2|comb~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|comb~16_combout\ = (!score2(0) & ((\SegDisplay2|result1[6]~10_combout\ & (!score2(2))) # (!\SegDisplay2|result1[6]~10_combout\ & ((!score2(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score2(2),
	datab => \SegDisplay2|result1[6]~10_combout\,
	datac => score2(0),
	datad => score2(4),
	combout => \SegDisplay2|comb~16_combout\);

-- Location: LCCOMB_X3_Y23_N18
\SegDisplay2|result1[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result1\(4) = (!\SegDisplay2|comb~16_combout\ & ((\SegDisplay2|comb~17_combout\) # (\SegDisplay2|result1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay2|comb~17_combout\,
	datab => \SegDisplay2|comb~16_combout\,
	datad => \SegDisplay2|result1\(4),
	combout => \SegDisplay2|result1\(4));

-- Location: LCCOMB_X3_Y22_N14
\SegDisplay2|result1[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result1[5]~11_combout\ = (score2(1) & ((score2(3) & (score2(0) & !score2(2))) # (!score2(3) & ((score2(0)) # (!score2(2)))))) # (!score2(1) & ((score2(3) & ((score2(2)))) # (!score2(3) & (score2(0) & !score2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score2(1),
	datab => score2(3),
	datac => score2(0),
	datad => score2(2),
	combout => \SegDisplay2|result1[5]~11_combout\);

-- Location: LCCOMB_X2_Y22_N26
\SegDisplay2|comb~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|comb~18_combout\ = (score2(4) & (!\SegDisplay2|result1[6]~3_combout\)) # (!score2(4) & ((\SegDisplay2|result1[5]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score2(4),
	datab => \SegDisplay2|result1[6]~3_combout\,
	datac => \SegDisplay2|result1[5]~11_combout\,
	combout => \SegDisplay2|comb~18_combout\);

-- Location: LCCOMB_X2_Y22_N20
\SegDisplay2|result1[5]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result1[5]~12_combout\ = (!score2(4) & \SegDisplay2|result1[5]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score2(4),
	datac => \SegDisplay2|result1[5]~11_combout\,
	combout => \SegDisplay2|result1[5]~12_combout\);

-- Location: LCCOMB_X2_Y22_N28
\SegDisplay2|result1[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result1\(5) = (\SegDisplay2|comb~18_combout\ & ((\SegDisplay2|result1[5]~12_combout\) # (\SegDisplay2|result1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SegDisplay2|comb~18_combout\,
	datac => \SegDisplay2|result1[5]~12_combout\,
	datad => \SegDisplay2|result1\(5),
	combout => \SegDisplay2|result1\(5));

-- Location: LCCOMB_X3_Y22_N0
\SegDisplay2|result1[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result1[6]~13_combout\ = (score2(2) & (score2(1) & (!score2(3) & score2(0)))) # (!score2(2) & (score2(1) $ ((!score2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score2(1),
	datab => score2(3),
	datac => score2(0),
	datad => score2(2),
	combout => \SegDisplay2|result1[6]~13_combout\);

-- Location: LCCOMB_X2_Y22_N10
\SegDisplay2|comb~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|comb~19_combout\ = (score2(4) & (!\SegDisplay2|result1[6]~3_combout\)) # (!score2(4) & ((\SegDisplay2|result1[6]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score2(4),
	datab => \SegDisplay2|result1[6]~3_combout\,
	datac => \SegDisplay2|result1[6]~13_combout\,
	combout => \SegDisplay2|comb~19_combout\);

-- Location: LCCOMB_X2_Y22_N12
\SegDisplay2|result1[6]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result1[6]~14_combout\ = (!score2(4) & \SegDisplay2|result1[6]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score2(4),
	datac => \SegDisplay2|result1[6]~13_combout\,
	combout => \SegDisplay2|result1[6]~14_combout\);

-- Location: LCCOMB_X1_Y22_N2
\SegDisplay2|result1[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result1\(6) = (\SegDisplay2|comb~19_combout\ & ((\SegDisplay2|result1[6]~14_combout\) # (\SegDisplay2|result1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SegDisplay2|comb~19_combout\,
	datac => \SegDisplay2|result1[6]~14_combout\,
	datad => \SegDisplay2|result1\(6),
	combout => \SegDisplay2|result1\(6));

-- Location: LCCOMB_X3_Y22_N12
\SegDisplay2|comb~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|comb~23_combout\ = (!score2(4) & (((!score2(1) & !score2(2))) # (!score2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score2(3),
	datab => score2(4),
	datac => score2(1),
	datad => score2(2),
	combout => \SegDisplay2|comb~23_combout\);

-- Location: LCCOMB_X3_Y22_N2
\SegDisplay2|result2[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result2[6]~0_combout\ = (((!score2(2)) # (!score2(0))) # (!score2(3))) # (!score2(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score2(1),
	datab => score2(3),
	datac => score2(0),
	datad => score2(2),
	combout => \SegDisplay2|result2[6]~0_combout\);

-- Location: LCCOMB_X3_Y22_N8
\SegDisplay2|result2[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result2[5]~1_combout\ = (score2(4)) # ((score2(3) & ((score2(1)) # (score2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => score2(3),
	datab => score2(4),
	datac => score2(1),
	datad => score2(2),
	combout => \SegDisplay2|result2[5]~1_combout\);

-- Location: LCCOMB_X3_Y22_N22
\SegDisplay2|comb~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|comb~20_combout\ = (\SegDisplay2|result2[5]~1_combout\ & ((\SegDisplay2|result1[6]~3_combout\) # ((\SegDisplay2|result2[6]~0_combout\ & !score2(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay2|result1[6]~3_combout\,
	datab => \SegDisplay2|result2[6]~0_combout\,
	datac => \SegDisplay2|result2[5]~1_combout\,
	datad => score2(4),
	combout => \SegDisplay2|comb~20_combout\);

-- Location: LCCOMB_X4_Y22_N0
\SegDisplay2|result2[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result2\(0) = (!\SegDisplay2|comb~23_combout\ & ((\SegDisplay2|comb~20_combout\) # (\SegDisplay2|result2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay2|comb~23_combout\,
	datab => \SegDisplay2|comb~20_combout\,
	datad => \SegDisplay2|result2\(0),
	combout => \SegDisplay2|result2\(0));

-- Location: LCCOMB_X4_Y22_N2
\SegDisplay2|result2[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result2\(3) = (!\SegDisplay2|comb~23_combout\ & ((\SegDisplay2|comb~20_combout\) # (\SegDisplay2|result2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay2|comb~23_combout\,
	datab => \SegDisplay2|comb~20_combout\,
	datad => \SegDisplay2|result2\(3),
	combout => \SegDisplay2|result2\(3));

-- Location: LCCOMB_X4_Y22_N12
\SegDisplay2|result2[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result2\(4) = (!\SegDisplay2|comb~23_combout\ & ((\SegDisplay2|comb~20_combout\) # (\SegDisplay2|result2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay2|comb~23_combout\,
	datab => \SegDisplay2|comb~20_combout\,
	datad => \SegDisplay2|result2\(4),
	combout => \SegDisplay2|result2\(4));

-- Location: LCCOMB_X3_Y22_N26
\SegDisplay2|result2[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \SegDisplay2|result2\(5) = (!\SegDisplay2|comb~23_combout\ & ((\SegDisplay2|comb~20_combout\) # (\SegDisplay2|result2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SegDisplay2|comb~23_combout\,
	datab => \SegDisplay2|comb~20_combout\,
	datad => \SegDisplay2|result2\(5),
	combout => \SegDisplay2|result2\(5));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G10
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y15_N22
\VGA|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add0~12_combout\ = (\VGA|column\(6) & (\VGA|Add0~11\ $ (GND))) # (!\VGA|column\(6) & (!\VGA|Add0~11\ & VCC))
-- \VGA|Add0~13\ = CARRY((\VGA|column\(6) & !\VGA|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(6),
	datad => VCC,
	cin => \VGA|Add0~11\,
	combout => \VGA|Add0~12_combout\,
	cout => \VGA|Add0~13\);

-- Location: LCCOMB_X26_Y15_N24
\VGA|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add0~14_combout\ = (\VGA|column\(7) & (!\VGA|Add0~13\)) # (!\VGA|column\(7) & ((\VGA|Add0~13\) # (GND)))
-- \VGA|Add0~15\ = CARRY((!\VGA|Add0~13\) # (!\VGA|column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|column\(7),
	datad => VCC,
	cin => \VGA|Add0~13\,
	combout => \VGA|Add0~14_combout\,
	cout => \VGA|Add0~15\);

-- Location: LCCOMB_X25_Y15_N10
\VGA|horizontal~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|horizontal~7_combout\ = (\VGA|LessThan0~2_combout\ & \VGA|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|LessThan0~2_combout\,
	datad => \VGA|Add0~14_combout\,
	combout => \VGA|horizontal~7_combout\);

-- Location: LCFF_X25_Y18_N25
\VGA|column[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \VGA|horizontal~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|column\(7));

-- Location: LCCOMB_X26_Y15_N26
\VGA|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add0~16_combout\ = (\VGA|column\(8) & (\VGA|Add0~15\ $ (GND))) # (!\VGA|column\(8) & (!\VGA|Add0~15\ & VCC))
-- \VGA|Add0~17\ = CARRY((\VGA|column\(8) & !\VGA|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|column\(8),
	datad => VCC,
	cin => \VGA|Add0~15\,
	combout => \VGA|Add0~16_combout\,
	cout => \VGA|Add0~17\);

-- Location: LCCOMB_X25_Y15_N12
\VGA|horizontal~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|horizontal~6_combout\ = (\VGA|Add0~16_combout\ & \VGA|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA|Add0~16_combout\,
	datad => \VGA|LessThan0~2_combout\,
	combout => \VGA|horizontal~6_combout\);

-- Location: LCFF_X25_Y18_N11
\VGA|column[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \VGA|horizontal~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|column\(8));

-- Location: LCCOMB_X26_Y15_N28
\VGA|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add0~18_combout\ = \VGA|column\(9) $ (\VGA|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|column\(9),
	cin => \VGA|Add0~17\,
	combout => \VGA|Add0~18_combout\);

-- Location: LCCOMB_X25_Y15_N28
\VGA|horizontal~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|horizontal~8_combout\ = (\VGA|LessThan0~2_combout\ & \VGA|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|LessThan0~2_combout\,
	datad => \VGA|Add0~18_combout\,
	combout => \VGA|horizontal~8_combout\);

-- Location: LCFF_X24_Y18_N1
\VGA|column[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \VGA|horizontal~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|column\(9));

-- Location: LCCOMB_X26_Y15_N10
\VGA|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add0~0_combout\ = \VGA|column\(0) $ (VCC)
-- \VGA|Add0~1\ = CARRY(\VGA|column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|column\(0),
	datad => VCC,
	combout => \VGA|Add0~0_combout\,
	cout => \VGA|Add0~1\);

-- Location: LCCOMB_X24_Y18_N4
\VGA|horizontal~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|horizontal~9_combout\ = (\VGA|LessThan0~2_combout\ & \VGA|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|LessThan0~2_combout\,
	datac => \VGA|Add0~0_combout\,
	combout => \VGA|horizontal~9_combout\);

-- Location: LCFF_X24_Y18_N5
\VGA|column[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \VGA|horizontal~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|column\(0));

-- Location: LCCOMB_X26_Y15_N12
\VGA|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add0~2_combout\ = (\VGA|column\(1) & (!\VGA|Add0~1\)) # (!\VGA|column\(1) & ((\VGA|Add0~1\) # (GND)))
-- \VGA|Add0~3\ = CARRY((!\VGA|Add0~1\) # (!\VGA|column\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|column\(1),
	datad => VCC,
	cin => \VGA|Add0~1\,
	combout => \VGA|Add0~2_combout\,
	cout => \VGA|Add0~3\);

-- Location: LCCOMB_X26_Y15_N30
\VGA|horizontal~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|horizontal~5_combout\ = (\VGA|LessThan0~2_combout\ & \VGA|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|LessThan0~2_combout\,
	datad => \VGA|Add0~2_combout\,
	combout => \VGA|horizontal~5_combout\);

-- Location: LCFF_X23_Y18_N9
\VGA|column[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \VGA|horizontal~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|column\(1));

-- Location: LCCOMB_X26_Y15_N14
\VGA|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add0~4_combout\ = (\VGA|column\(2) & (\VGA|Add0~3\ $ (GND))) # (!\VGA|column\(2) & (!\VGA|Add0~3\ & VCC))
-- \VGA|Add0~5\ = CARRY((\VGA|column\(2) & !\VGA|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|column\(2),
	datad => VCC,
	cin => \VGA|Add0~3\,
	combout => \VGA|Add0~4_combout\,
	cout => \VGA|Add0~5\);

-- Location: LCCOMB_X26_Y15_N0
\VGA|horizontal~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|horizontal~4_combout\ = (\VGA|Add0~4_combout\ & \VGA|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|Add0~4_combout\,
	datad => \VGA|LessThan0~2_combout\,
	combout => \VGA|horizontal~4_combout\);

-- Location: LCFF_X23_Y18_N15
\VGA|column[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \VGA|horizontal~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|column\(2));

-- Location: LCCOMB_X26_Y15_N16
\VGA|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add0~6_combout\ = (\VGA|column\(3) & (!\VGA|Add0~5\)) # (!\VGA|column\(3) & ((\VGA|Add0~5\) # (GND)))
-- \VGA|Add0~7\ = CARRY((!\VGA|Add0~5\) # (!\VGA|column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|column\(3),
	datad => VCC,
	cin => \VGA|Add0~5\,
	combout => \VGA|Add0~6_combout\,
	cout => \VGA|Add0~7\);

-- Location: LCCOMB_X26_Y15_N6
\VGA|horizontal~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|horizontal~3_combout\ = (\VGA|Add0~6_combout\ & \VGA|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA|Add0~6_combout\,
	datad => \VGA|LessThan0~2_combout\,
	combout => \VGA|horizontal~3_combout\);

-- Location: LCFF_X23_Y18_N17
\VGA|column[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \VGA|horizontal~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|column\(3));

-- Location: LCCOMB_X26_Y15_N18
\VGA|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add0~8_combout\ = (\VGA|column\(4) & (\VGA|Add0~7\ $ (GND))) # (!\VGA|column\(4) & (!\VGA|Add0~7\ & VCC))
-- \VGA|Add0~9\ = CARRY((\VGA|column\(4) & !\VGA|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(4),
	datad => VCC,
	cin => \VGA|Add0~7\,
	combout => \VGA|Add0~8_combout\,
	cout => \VGA|Add0~9\);

-- Location: LCCOMB_X26_Y15_N8
\VGA|horizontal~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|horizontal~0_combout\ = (\VGA|LessThan0~2_combout\ & \VGA|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|LessThan0~2_combout\,
	datad => \VGA|Add0~8_combout\,
	combout => \VGA|horizontal~0_combout\);

-- Location: LCFF_X24_Y15_N5
\VGA|column[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \VGA|horizontal~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|column\(4));

-- Location: LCCOMB_X23_Y18_N8
\LessThan38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan38~0_combout\ = (\VGA|column\(2) & \VGA|column\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|column\(2),
	datad => \VGA|column\(3),
	combout => \LessThan38~0_combout\);

-- Location: LCCOMB_X24_Y15_N4
\VGA|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|LessThan0~0_combout\ = (((!\LessThan38~0_combout\) # (!\VGA|column\(4))) # (!\VGA|column\(0))) # (!\VGA|column\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(1),
	datab => \VGA|column\(0),
	datac => \VGA|column\(4),
	datad => \LessThan38~0_combout\,
	combout => \VGA|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y18_N0
\VGA|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|LessThan0~2_combout\ = (((\VGA|LessThan0~1_combout\ & \VGA|LessThan0~0_combout\)) # (!\VGA|column\(9))) # (!\VGA|column\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|LessThan0~1_combout\,
	datab => \VGA|column\(8),
	datac => \VGA|column\(9),
	datad => \VGA|LessThan0~0_combout\,
	combout => \VGA|LessThan0~2_combout\);

-- Location: LCCOMB_X26_Y15_N20
\VGA|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add0~10_combout\ = (\VGA|column\(5) & (!\VGA|Add0~9\)) # (!\VGA|column\(5) & ((\VGA|Add0~9\) # (GND)))
-- \VGA|Add0~11\ = CARRY((!\VGA|Add0~9\) # (!\VGA|column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|column\(5),
	datad => VCC,
	cin => \VGA|Add0~9\,
	combout => \VGA|Add0~10_combout\,
	cout => \VGA|Add0~11\);

-- Location: LCCOMB_X25_Y15_N18
\VGA|horizontal~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|horizontal~1_combout\ = (\VGA|LessThan0~2_combout\ & \VGA|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|LessThan0~2_combout\,
	datad => \VGA|Add0~10_combout\,
	combout => \VGA|horizontal~1_combout\);

-- Location: LCFF_X23_Y18_N31
\VGA|column[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \VGA|horizontal~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|column\(5));

-- Location: LCCOMB_X25_Y15_N8
\VGA|horizontal~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|horizontal~2_combout\ = (\VGA|Add0~12_combout\ & \VGA|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA|Add0~12_combout\,
	datad => \VGA|LessThan0~2_combout\,
	combout => \VGA|horizontal~2_combout\);

-- Location: LCCOMB_X25_Y15_N14
\VGA|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|process_0~1_combout\ = (\VGA|process_0~0_combout\ & (\VGA|horizontal~1_combout\ & (\VGA|horizontal~0_combout\ & \VGA|horizontal~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~0_combout\,
	datab => \VGA|horizontal~1_combout\,
	datac => \VGA|horizontal~0_combout\,
	datad => \VGA|horizontal~2_combout\,
	combout => \VGA|process_0~1_combout\);

-- Location: LCCOMB_X25_Y15_N22
\VGA|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|process_0~2_combout\ = (\VGA|horizontal~6_combout\) # (((\VGA|process_0~1_combout\) # (!\VGA|horizontal~7_combout\)) # (!\VGA|horizontal~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|horizontal~6_combout\,
	datab => \VGA|horizontal~8_combout\,
	datac => \VGA|process_0~1_combout\,
	datad => \VGA|horizontal~7_combout\,
	combout => \VGA|process_0~2_combout\);

-- Location: LCCOMB_X25_Y15_N4
\VGA|process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|process_0~4_combout\ = (\VGA|process_0~2_combout\) # ((\VGA|process_0~3_combout\ & (!\VGA|horizontal~2_combout\ & !\VGA|horizontal~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|process_0~3_combout\,
	datab => \VGA|horizontal~2_combout\,
	datac => \VGA|horizontal~1_combout\,
	datad => \VGA|process_0~2_combout\,
	combout => \VGA|process_0~4_combout\);

-- Location: LCFF_X25_Y15_N5
\VGA|H\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \VGA|process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|H~regout\);

-- Location: LCCOMB_X27_Y21_N2
\VGA|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add1~24_combout\ = (\VGA|Add1~22_combout\ & ((\VGA|Add1~0_combout\) # ((\VGA|LessThan0~2_combout\ & \VGA|row\(7))))) # (!\VGA|Add1~22_combout\ & (\VGA|LessThan0~2_combout\ & (\VGA|row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Add1~22_combout\,
	datab => \VGA|LessThan0~2_combout\,
	datac => \VGA|row\(7),
	datad => \VGA|Add1~0_combout\,
	combout => \VGA|Add1~24_combout\);

-- Location: LCFF_X23_Y19_N13
\VGA|row[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \VGA|Add1~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|row\(7));

-- Location: LCCOMB_X24_Y21_N6
\VGA|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add1~30_combout\ = (\VGA|Add1~25_combout\ & ((\VGA|Add1~0_combout\) # ((\VGA|LessThan0~2_combout\ & \VGA|row\(8))))) # (!\VGA|Add1~25_combout\ & (\VGA|LessThan0~2_combout\ & (\VGA|row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Add1~25_combout\,
	datab => \VGA|LessThan0~2_combout\,
	datac => \VGA|row\(8),
	datad => \VGA|Add1~0_combout\,
	combout => \VGA|Add1~30_combout\);

-- Location: LCFF_X24_Y21_N7
\VGA|row[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \VGA|Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|row\(8));

-- Location: LCCOMB_X27_Y21_N0
\VGA|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|LessThan1~1_combout\ = (!\VGA|row\(7) & !\VGA|row\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA|row\(7),
	datad => \VGA|row\(8),
	combout => \VGA|LessThan1~1_combout\);

-- Location: LCCOMB_X26_Y21_N30
\VGA|Add1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add1~15_combout\ = (\VGA|Add1~13_combout\ & ((\VGA|Add1~0_combout\) # ((\VGA|row\(4) & \VGA|LessThan0~2_combout\)))) # (!\VGA|Add1~13_combout\ & (((\VGA|row\(4) & \VGA|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Add1~13_combout\,
	datab => \VGA|Add1~0_combout\,
	datac => \VGA|row\(4),
	datad => \VGA|LessThan0~2_combout\,
	combout => \VGA|Add1~15_combout\);

-- Location: LCFF_X24_Y21_N25
\VGA|row[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \VGA|Add1~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|row\(4));

-- Location: LCCOMB_X27_Y21_N28
\VGA|Add1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add1~9_combout\ = (\VGA|Add1~3_combout\ & ((\VGA|Add1~0_combout\) # ((\VGA|LessThan0~2_combout\ & \VGA|row\(1))))) # (!\VGA|Add1~3_combout\ & (((\VGA|LessThan0~2_combout\ & \VGA|row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Add1~3_combout\,
	datab => \VGA|Add1~0_combout\,
	datac => \VGA|LessThan0~2_combout\,
	datad => \VGA|row\(1),
	combout => \VGA|Add1~9_combout\);

-- Location: LCFF_X24_Y21_N15
\VGA|row[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \VGA|Add1~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|row\(1));

-- Location: LCCOMB_X27_Y21_N12
\VGA|Add1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add1~5_combout\ = (\VGA|row\(2) & (\VGA|Add1~4\ $ (GND))) # (!\VGA|row\(2) & (!\VGA|Add1~4\ & VCC))
-- \VGA|Add1~6\ = CARRY((\VGA|row\(2) & !\VGA|Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|row\(2),
	datad => VCC,
	cin => \VGA|Add1~4\,
	combout => \VGA|Add1~5_combout\,
	cout => \VGA|Add1~6\);

-- Location: LCCOMB_X26_Y21_N28
\VGA|Add1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add1~7_combout\ = (\VGA|LessThan0~2_combout\ & ((\VGA|row\(2)) # ((\VGA|Add1~0_combout\ & \VGA|Add1~5_combout\)))) # (!\VGA|LessThan0~2_combout\ & (\VGA|Add1~0_combout\ & ((\VGA|Add1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|LessThan0~2_combout\,
	datab => \VGA|Add1~0_combout\,
	datac => \VGA|row\(2),
	datad => \VGA|Add1~5_combout\,
	combout => \VGA|Add1~7_combout\);

-- Location: LCFF_X24_Y21_N17
\VGA|row[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \VGA|Add1~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|row\(2));

-- Location: LCCOMB_X27_Y21_N14
\VGA|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add1~10_combout\ = (\VGA|row\(3) & (!\VGA|Add1~6\)) # (!\VGA|row\(3) & ((\VGA|Add1~6\) # (GND)))
-- \VGA|Add1~11\ = CARRY((!\VGA|Add1~6\) # (!\VGA|row\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(3),
	datad => VCC,
	cin => \VGA|Add1~6\,
	combout => \VGA|Add1~10_combout\,
	cout => \VGA|Add1~11\);

-- Location: LCCOMB_X27_Y21_N18
\VGA|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add1~16_combout\ = (\VGA|row\(5) & (!\VGA|Add1~14\)) # (!\VGA|row\(5) & ((\VGA|Add1~14\) # (GND)))
-- \VGA|Add1~17\ = CARRY((!\VGA|Add1~14\) # (!\VGA|row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(5),
	datad => VCC,
	cin => \VGA|Add1~14\,
	combout => \VGA|Add1~16_combout\,
	cout => \VGA|Add1~17\);

-- Location: LCCOMB_X27_Y21_N20
\VGA|Add1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add1~19_combout\ = (\VGA|row\(6) & (\VGA|Add1~17\ $ (GND))) # (!\VGA|row\(6) & (!\VGA|Add1~17\ & VCC))
-- \VGA|Add1~20\ = CARRY((\VGA|row\(6) & !\VGA|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(6),
	datad => VCC,
	cin => \VGA|Add1~17\,
	combout => \VGA|Add1~19_combout\,
	cout => \VGA|Add1~20\);

-- Location: LCCOMB_X26_Y21_N26
\VGA|Add1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add1~21_combout\ = (\VGA|LessThan0~2_combout\ & ((\VGA|row\(6)) # ((\VGA|Add1~19_combout\ & \VGA|Add1~0_combout\)))) # (!\VGA|LessThan0~2_combout\ & (\VGA|Add1~19_combout\ & ((\VGA|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|LessThan0~2_combout\,
	datab => \VGA|Add1~19_combout\,
	datac => \VGA|row\(6),
	datad => \VGA|Add1~0_combout\,
	combout => \VGA|Add1~21_combout\);

-- Location: LCFF_X25_Y21_N5
\VGA|row[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \VGA|Add1~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|row\(6));

-- Location: LCCOMB_X26_Y21_N20
\VGA|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add1~18_combout\ = (\VGA|row\(5) & ((\VGA|LessThan0~2_combout\) # ((\VGA|Add1~16_combout\ & \VGA|Add1~0_combout\)))) # (!\VGA|row\(5) & (\VGA|Add1~16_combout\ & ((\VGA|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(5),
	datab => \VGA|Add1~16_combout\,
	datac => \VGA|LessThan0~2_combout\,
	datad => \VGA|Add1~0_combout\,
	combout => \VGA|Add1~18_combout\);

-- Location: LCFF_X25_Y21_N31
\VGA|row[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \VGA|Add1~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|row\(5));

-- Location: LCCOMB_X25_Y21_N10
\LessThan9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan9~2_combout\ = (!\VGA|row\(6) & !\VGA|row\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA|row\(6),
	datad => \VGA|row\(5),
	combout => \LessThan9~2_combout\);

-- Location: LCCOMB_X24_Y20_N4
\VGA|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|LessThan1~0_combout\ = (!\VGA|row\(4) & (\LessThan9~2_combout\ & ((!\VGA|row\(2)) # (!\VGA|row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(3),
	datab => \VGA|row\(4),
	datac => \VGA|row\(2),
	datad => \LessThan9~2_combout\,
	combout => \VGA|LessThan1~0_combout\);

-- Location: LCCOMB_X27_Y21_N30
\VGA|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add1~0_combout\ = (!\VGA|LessThan0~2_combout\ & (((\VGA|LessThan1~1_combout\ & \VGA|LessThan1~0_combout\)) # (!\VGA|row\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(9),
	datab => \VGA|LessThan1~1_combout\,
	datac => \VGA|LessThan1~0_combout\,
	datad => \VGA|LessThan0~2_combout\,
	combout => \VGA|Add1~0_combout\);

-- Location: LCFF_X24_Y21_N23
\VGA|row[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \VGA|Add1~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|row\(3));

-- Location: LCCOMB_X26_Y21_N24
\VGA|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add1~12_combout\ = (\VGA|LessThan0~2_combout\ & ((\VGA|row\(3)) # ((\VGA|Add1~0_combout\ & \VGA|Add1~10_combout\)))) # (!\VGA|LessThan0~2_combout\ & (\VGA|Add1~0_combout\ & (\VGA|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|LessThan0~2_combout\,
	datab => \VGA|Add1~0_combout\,
	datac => \VGA|Add1~10_combout\,
	datad => \VGA|row\(3),
	combout => \VGA|Add1~12_combout\);

-- Location: LCFF_X25_Y21_N1
\VGA|row[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \VGA|Add1~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|row\(0));

-- Location: LCCOMB_X26_Y21_N22
\VGA|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add1~8_combout\ = (\VGA|Add1~1_combout\ & ((\VGA|Add1~0_combout\) # ((\VGA|row\(0) & \VGA|LessThan0~2_combout\)))) # (!\VGA|Add1~1_combout\ & (((\VGA|row\(0) & \VGA|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Add1~1_combout\,
	datab => \VGA|Add1~0_combout\,
	datac => \VGA|row\(0),
	datad => \VGA|LessThan0~2_combout\,
	combout => \VGA|Add1~8_combout\);

-- Location: LCCOMB_X25_Y21_N0
\VGA|process_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|process_0~5_combout\ = ((\VGA|Add1~9_combout\ & ((\VGA|Add1~7_combout\) # (!\VGA|Add1~8_combout\))) # (!\VGA|Add1~9_combout\ & ((\VGA|Add1~8_combout\) # (!\VGA|Add1~7_combout\)))) # (!\VGA|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Add1~9_combout\,
	datab => \VGA|Add1~12_combout\,
	datac => \VGA|Add1~8_combout\,
	datad => \VGA|Add1~7_combout\,
	combout => \VGA|process_0~5_combout\);

-- Location: LCCOMB_X27_Y21_N26
\VGA|Add1~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add1~27_combout\ = \VGA|row\(9) $ (\VGA|Add1~26\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(9),
	cin => \VGA|Add1~26\,
	combout => \VGA|Add1~27_combout\);

-- Location: LCFF_X24_Y21_N21
\VGA|row[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \VGA|Add1~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|row\(9));

-- Location: LCCOMB_X24_Y21_N20
\VGA|Add1~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|Add1~29_combout\ = (\VGA|LessThan0~2_combout\ & ((\VGA|row\(9)) # ((\VGA|Add1~27_combout\ & \VGA|Add1~0_combout\)))) # (!\VGA|LessThan0~2_combout\ & (\VGA|Add1~27_combout\ & ((\VGA|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|LessThan0~2_combout\,
	datab => \VGA|Add1~27_combout\,
	datac => \VGA|row\(9),
	datad => \VGA|Add1~0_combout\,
	combout => \VGA|Add1~29_combout\);

-- Location: LCCOMB_X25_Y21_N30
\VGA|process_0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|process_0~6_combout\ = ((\VGA|Add1~15_combout\) # ((!\VGA|Add1~24_combout\) # (!\VGA|Add1~18_combout\))) # (!\VGA|Add1~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Add1~21_combout\,
	datab => \VGA|Add1~15_combout\,
	datac => \VGA|Add1~18_combout\,
	datad => \VGA|Add1~24_combout\,
	combout => \VGA|process_0~6_combout\);

-- Location: LCCOMB_X25_Y21_N8
\VGA|process_0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \VGA|process_0~7_combout\ = ((\VGA|process_0~5_combout\) # ((\VGA|Add1~29_combout\) # (\VGA|process_0~6_combout\))) # (!\VGA|Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|Add1~30_combout\,
	datab => \VGA|process_0~5_combout\,
	datac => \VGA|Add1~29_combout\,
	datad => \VGA|process_0~6_combout\,
	combout => \VGA|process_0~7_combout\);

-- Location: LCFF_X25_Y21_N9
\VGA|V\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \VGA|process_0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|V~regout\);

-- Location: LCCOMB_X24_Y20_N22
\LessThan8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan8~2_combout\ = (\VGA|row\(5)) # ((\VGA|row\(6)) # ((\VGA|row\(8)) # (\VGA|row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(5),
	datab => \VGA|row\(6),
	datac => \VGA|row\(8),
	datad => \VGA|row\(7),
	combout => \LessThan8~2_combout\);

-- Location: LCCOMB_X24_Y21_N8
\LessThan9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan9~3_combout\ = (!\VGA|row\(8) & (!\VGA|row\(9) & !\VGA|row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(8),
	datac => \VGA|row\(9),
	datad => \VGA|row\(7),
	combout => \LessThan9~3_combout\);

-- Location: LCCOMB_X24_Y21_N16
\LessThan16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan16~0_combout\ = (!\VGA|row\(2) & !\VGA|row\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA|row\(2),
	datad => \VGA|row\(1),
	combout => \LessThan16~0_combout\);

-- Location: LCCOMB_X25_Y20_N28
\LessThan9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan9~4_combout\ = (((!\VGA|row\(0) & \LessThan16~0_combout\)) # (!\VGA|row\(4))) # (!\VGA|row\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(0),
	datab => \VGA|row\(3),
	datac => \LessThan16~0_combout\,
	datad => \VGA|row\(4),
	combout => \LessThan9~4_combout\);

-- Location: LCCOMB_X25_Y20_N10
\LessThan9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan9~5_combout\ = (!\VGA|row\(5) & (!\VGA|row\(6) & (\LessThan9~3_combout\ & \LessThan9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(5),
	datab => \VGA|row\(6),
	datac => \LessThan9~3_combout\,
	datad => \LessThan9~4_combout\,
	combout => \LessThan9~5_combout\);

-- Location: LCCOMB_X24_Y20_N26
\LessThan14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan14~4_combout\ = (\VGA|row\(2) & (\VGA|row\(3) & (\VGA|row\(1) & \VGA|row\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(2),
	datab => \VGA|row\(3),
	datac => \VGA|row\(1),
	datad => \VGA|row\(0),
	combout => \LessThan14~4_combout\);

-- Location: LCCOMB_X24_Y20_N0
\LessThan14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan14~2_combout\ = (\VGA|row\(8) & (\VGA|row\(5) & \VGA|row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|row\(8),
	datac => \VGA|row\(5),
	datad => \VGA|row\(4),
	combout => \LessThan14~2_combout\);

-- Location: LCCOMB_X24_Y20_N18
\LessThan14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan14~6_combout\ = (\LessThan14~2_combout\) # ((\VGA|row\(8) & ((\VGA|row\(7)) # (\VGA|row\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(7),
	datab => \VGA|row\(8),
	datac => \VGA|row\(6),
	datad => \LessThan14~2_combout\,
	combout => \LessThan14~6_combout\);

-- Location: LCCOMB_X24_Y20_N8
\LessThan14~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan14~5_combout\ = (\LessThan14~6_combout\) # ((\VGA|row\(5) & (\LessThan14~4_combout\ & \VGA|row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(5),
	datab => \LessThan14~4_combout\,
	datac => \VGA|row\(8),
	datad => \LessThan14~6_combout\,
	combout => \LessThan14~5_combout\);

-- Location: LCCOMB_X25_Y21_N6
\LessThan15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan15~0_combout\ = (!\VGA|row\(3) & (!\VGA|row\(2) & ((!\VGA|row\(0)) # (!\VGA|row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(1),
	datab => \VGA|row\(3),
	datac => \VGA|row\(0),
	datad => \VGA|row\(2),
	combout => \LessThan15~0_combout\);

-- Location: LCCOMB_X24_Y20_N10
\LessThan15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan15~1_combout\ = (\VGA|row\(5) & (!\LessThan15~0_combout\ & \VGA|row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(5),
	datac => \LessThan15~0_combout\,
	datad => \VGA|row\(4),
	combout => \LessThan15~1_combout\);

-- Location: LCCOMB_X24_Y20_N12
\LessThan15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan15~2_combout\ = ((!\VGA|row\(7) & (!\VGA|row\(6) & !\LessThan15~1_combout\))) # (!\VGA|row\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(7),
	datab => \VGA|row\(6),
	datac => \VGA|row\(8),
	datad => \LessThan15~1_combout\,
	combout => \LessThan15~2_combout\);

-- Location: LCCOMB_X24_Y20_N30
\process_0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~39_combout\ = (!\VGA|row\(9) & (\LessThan14~5_combout\ & \LessThan15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|row\(9),
	datac => \LessThan14~5_combout\,
	datad => \LessThan15~2_combout\,
	combout => \process_0~39_combout\);

-- Location: LCCOMB_X24_Y20_N6
\process_0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~72_combout\ = (\process_0~39_combout\) # ((\LessThan9~5_combout\ & ((\LessThan8~1_combout\) # (\LessThan8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~1_combout\,
	datab => \LessThan8~2_combout\,
	datac => \LessThan9~5_combout\,
	datad => \process_0~39_combout\,
	combout => \process_0~72_combout\);

-- Location: LCCOMB_X24_Y18_N20
\process_0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~50_combout\ = ((\VGA|column\(5)) # ((\VGA|column\(7)) # (\VGA|column\(4)))) # (!\VGA|column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(6),
	datab => \VGA|column\(5),
	datac => \VGA|column\(7),
	datad => \VGA|column\(4),
	combout => \process_0~50_combout\);

-- Location: LCCOMB_X24_Y18_N26
\process_0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~49_combout\ = (\VGA|column\(2) & ((\VGA|column\(3)) # ((!\VGA|column\(1)) # (!\VGA|column\(0))))) # (!\VGA|column\(2) & (((\VGA|column\(0) & \VGA|column\(1))) # (!\VGA|column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(2),
	datab => \VGA|column\(3),
	datac => \VGA|column\(0),
	datad => \VGA|column\(1),
	combout => \process_0~49_combout\);

-- Location: LCCOMB_X24_Y18_N14
\process_0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~51_combout\ = ((\VGA|column\(9)) # ((\process_0~50_combout\) # (\process_0~49_combout\))) # (!\VGA|column\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(8),
	datab => \VGA|column\(9),
	datac => \process_0~50_combout\,
	datad => \process_0~49_combout\,
	combout => \process_0~51_combout\);

-- Location: LCCOMB_X25_Y18_N12
\process_0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~43_combout\ = (\VGA|column\(7) & (!\VGA|column\(9) & \VGA|column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(7),
	datac => \VGA|column\(9),
	datad => \VGA|column\(3),
	combout => \process_0~43_combout\);

-- Location: LCFF_X24_Y18_N7
\VGA|column[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \VGA|horizontal~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \VGA|column\(6));

-- Location: LCCOMB_X24_Y18_N10
\process_0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~46_combout\ = (\VGA|column\(5) & \VGA|column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA|column\(5),
	datad => \VGA|column\(6),
	combout => \process_0~46_combout\);

-- Location: LCCOMB_X24_Y18_N24
\process_0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~47_combout\ = (\process_0~45_combout\) # ((\VGA|column\(8)) # ((!\process_0~46_combout\) # (!\process_0~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~45_combout\,
	datab => \VGA|column\(8),
	datac => \process_0~43_combout\,
	datad => \process_0~46_combout\,
	combout => \process_0~47_combout\);

-- Location: LCCOMB_X25_Y18_N14
\process_0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~42_combout\ = (!\VGA|column\(8) & (\VGA|column\(2) $ (((\VGA|column\(0) & \VGA|column\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(8),
	datab => \VGA|column\(0),
	datac => \VGA|column\(1),
	datad => \VGA|column\(2),
	combout => \process_0~42_combout\);

-- Location: LCCOMB_X25_Y18_N24
\process_0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~58_combout\ = ((\VGA|column\(7)) # (\VGA|column\(3))) # (!\VGA|column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(9),
	datac => \VGA|column\(7),
	datad => \VGA|column\(3),
	combout => \process_0~58_combout\);

-- Location: LCCOMB_X25_Y18_N10
\process_0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~59_combout\ = ((\process_0~58_combout\) # (!\process_0~42_combout\)) # (!\process_0~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~41_combout\,
	datab => \process_0~42_combout\,
	datad => \process_0~58_combout\,
	combout => \process_0~59_combout\);

-- Location: LCCOMB_X26_Y16_N12
\process_0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~73_combout\ = ((!\process_0~59_combout\) # (!\process_0~47_combout\)) # (!\process_0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~44_combout\,
	datab => \process_0~47_combout\,
	datad => \process_0~59_combout\,
	combout => \process_0~73_combout\);

-- Location: LCCOMB_X26_Y16_N14
\process_0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~74_combout\ = ((\process_0~73_combout\) # (!\process_0~51_combout\)) # (!\process_0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~54_combout\,
	datab => \process_0~51_combout\,
	datad => \process_0~73_combout\,
	combout => \process_0~74_combout\);

-- Location: LCCOMB_X30_Y20_N18
\Add9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (yPos(3) & (!\Add9~1\)) # (!yPos(3) & (\Add9~1\ & VCC))
-- \Add9~3\ = CARRY((yPos(3) & !\Add9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => yPos(3),
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X30_Y20_N20
\Add9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (yPos(4) & (\Add9~3\ $ (GND))) # (!yPos(4) & ((GND) # (!\Add9~3\)))
-- \Add9~5\ = CARRY((!\Add9~3\) # (!yPos(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => yPos(4),
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X30_Y20_N22
\Add9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (yPos(5) & (!\Add9~5\)) # (!yPos(5) & ((\Add9~5\) # (GND)))
-- \Add9~7\ = CARRY((!\Add9~5\) # (!yPos(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yPos(5),
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X30_Y20_N24
\Add9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = (yPos(6) & ((GND) # (!\Add9~7\))) # (!yPos(6) & (\Add9~7\ $ (GND)))
-- \Add9~9\ = CARRY((yPos(6)) # (!\Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yPos(6),
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X30_Y20_N28
\Add9~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = (yPos(8) & (\Add9~11\ $ (GND))) # (!yPos(8) & (!\Add9~11\ & VCC))
-- \Add9~13\ = CARRY((yPos(8) & !\Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => yPos(8),
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: LCCOMB_X30_Y20_N30
\Add9~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = \Add9~13\ $ (yPos(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => yPos(9),
	cin => \Add9~13\,
	combout => \Add9~14_combout\);

-- Location: LCCOMB_X29_Y20_N4
\LessThan7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan7~1_cout\ = CARRY((!yPos(1) & !\VGA|row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yPos(1),
	datab => \VGA|row\(1),
	datad => VCC,
	cout => \LessThan7~1_cout\);

-- Location: LCCOMB_X29_Y20_N6
\LessThan7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan7~3_cout\ = CARRY((\Add9~0_combout\ & (\VGA|row\(2) & !\LessThan7~1_cout\)) # (!\Add9~0_combout\ & ((\VGA|row\(2)) # (!\LessThan7~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datab => \VGA|row\(2),
	datad => VCC,
	cin => \LessThan7~1_cout\,
	cout => \LessThan7~3_cout\);

-- Location: LCCOMB_X29_Y20_N8
\LessThan7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan7~5_cout\ = CARRY((\VGA|row\(3) & (\Add9~2_combout\ & !\LessThan7~3_cout\)) # (!\VGA|row\(3) & ((\Add9~2_combout\) # (!\LessThan7~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(3),
	datab => \Add9~2_combout\,
	datad => VCC,
	cin => \LessThan7~3_cout\,
	cout => \LessThan7~5_cout\);

-- Location: LCCOMB_X29_Y20_N10
\LessThan7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan7~7_cout\ = CARRY((\VGA|row\(4) & ((!\LessThan7~5_cout\) # (!\Add9~4_combout\))) # (!\VGA|row\(4) & (!\Add9~4_combout\ & !\LessThan7~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(4),
	datab => \Add9~4_combout\,
	datad => VCC,
	cin => \LessThan7~5_cout\,
	cout => \LessThan7~7_cout\);

-- Location: LCCOMB_X29_Y20_N12
\LessThan7~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan7~9_cout\ = CARRY((\VGA|row\(5) & (\Add9~6_combout\ & !\LessThan7~7_cout\)) # (!\VGA|row\(5) & ((\Add9~6_combout\) # (!\LessThan7~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(5),
	datab => \Add9~6_combout\,
	datad => VCC,
	cin => \LessThan7~7_cout\,
	cout => \LessThan7~9_cout\);

-- Location: LCCOMB_X29_Y20_N14
\LessThan7~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan7~11_cout\ = CARRY((\VGA|row\(6) & ((!\LessThan7~9_cout\) # (!\Add9~8_combout\))) # (!\VGA|row\(6) & (!\Add9~8_combout\ & !\LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(6),
	datab => \Add9~8_combout\,
	datad => VCC,
	cin => \LessThan7~9_cout\,
	cout => \LessThan7~11_cout\);

-- Location: LCCOMB_X29_Y20_N16
\LessThan7~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan7~13_cout\ = CARRY((\Add9~10_combout\ & ((!\LessThan7~11_cout\) # (!\VGA|row\(7)))) # (!\Add9~10_combout\ & (!\VGA|row\(7) & !\LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~10_combout\,
	datab => \VGA|row\(7),
	datad => VCC,
	cin => \LessThan7~11_cout\,
	cout => \LessThan7~13_cout\);

-- Location: LCCOMB_X29_Y20_N18
\LessThan7~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan7~15_cout\ = CARRY((\VGA|row\(8) & ((!\LessThan7~13_cout\) # (!\Add9~12_combout\))) # (!\VGA|row\(8) & (!\Add9~12_combout\ & !\LessThan7~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(8),
	datab => \Add9~12_combout\,
	datad => VCC,
	cin => \LessThan7~13_cout\,
	cout => \LessThan7~15_cout\);

-- Location: LCCOMB_X29_Y20_N20
\LessThan7~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan7~16_combout\ = (\VGA|row\(9) & (!\LessThan7~15_cout\ & \Add9~14_combout\)) # (!\VGA|row\(9) & ((\Add9~14_combout\) # (!\LessThan7~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|row\(9),
	datad => \Add9~14_combout\,
	cin => \LessThan7~15_cout\,
	combout => \LessThan7~16_combout\);

-- Location: LCCOMB_X24_Y15_N6
\LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~1_cout\ = CARRY(\VGA|column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|column\(0),
	datad => VCC,
	cout => \LessThan5~1_cout\);

-- Location: LCCOMB_X24_Y15_N8
\LessThan5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~3_cout\ = CARRY((\VGA|column\(1) & (!xPos(1) & !\LessThan5~1_cout\)) # (!\VGA|column\(1) & ((!\LessThan5~1_cout\) # (!xPos(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(1),
	datab => xPos(1),
	datad => VCC,
	cin => \LessThan5~1_cout\,
	cout => \LessThan5~3_cout\);

-- Location: LCCOMB_X24_Y15_N10
\LessThan5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~5_cout\ = CARRY((\VGA|column\(2) & ((xPos(2)) # (!\LessThan5~3_cout\))) # (!\VGA|column\(2) & (xPos(2) & !\LessThan5~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(2),
	datab => xPos(2),
	datad => VCC,
	cin => \LessThan5~3_cout\,
	cout => \LessThan5~5_cout\);

-- Location: LCCOMB_X24_Y15_N12
\LessThan5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~7_cout\ = CARRY((xPos(3) & (!\VGA|column\(3) & !\LessThan5~5_cout\)) # (!xPos(3) & ((!\LessThan5~5_cout\) # (!\VGA|column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xPos(3),
	datab => \VGA|column\(3),
	datad => VCC,
	cin => \LessThan5~5_cout\,
	cout => \LessThan5~7_cout\);

-- Location: LCCOMB_X24_Y15_N14
\LessThan5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~9_cout\ = CARRY((xPos(4) & (\VGA|column\(4) & !\LessThan5~7_cout\)) # (!xPos(4) & ((\VGA|column\(4)) # (!\LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xPos(4),
	datab => \VGA|column\(4),
	datad => VCC,
	cin => \LessThan5~7_cout\,
	cout => \LessThan5~9_cout\);

-- Location: LCCOMB_X24_Y15_N16
\LessThan5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~11_cout\ = CARRY((xPos(5) & ((!\LessThan5~9_cout\) # (!\VGA|column\(5)))) # (!xPos(5) & (!\VGA|column\(5) & !\LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xPos(5),
	datab => \VGA|column\(5),
	datad => VCC,
	cin => \LessThan5~9_cout\,
	cout => \LessThan5~11_cout\);

-- Location: LCCOMB_X24_Y15_N18
\LessThan5~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~13_cout\ = CARRY((xPos(6) & (\VGA|column\(6) & !\LessThan5~11_cout\)) # (!xPos(6) & ((\VGA|column\(6)) # (!\LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xPos(6),
	datab => \VGA|column\(6),
	datad => VCC,
	cin => \LessThan5~11_cout\,
	cout => \LessThan5~13_cout\);

-- Location: LCCOMB_X24_Y15_N20
\LessThan5~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~15_cout\ = CARRY((\VGA|column\(7) & (!xPos(7) & !\LessThan5~13_cout\)) # (!\VGA|column\(7) & ((!\LessThan5~13_cout\) # (!xPos(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(7),
	datab => xPos(7),
	datad => VCC,
	cin => \LessThan5~13_cout\,
	cout => \LessThan5~15_cout\);

-- Location: LCCOMB_X24_Y15_N22
\LessThan5~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~17_cout\ = CARRY((\VGA|column\(8) & ((!\LessThan5~15_cout\) # (!xPos(8)))) # (!\VGA|column\(8) & (!xPos(8) & !\LessThan5~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(8),
	datab => xPos(8),
	datad => VCC,
	cin => \LessThan5~15_cout\,
	cout => \LessThan5~17_cout\);

-- Location: LCCOMB_X24_Y15_N24
\LessThan5~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~18_combout\ = (\VGA|column\(9) & (!\LessThan5~17_cout\ & xPos(9))) # (!\VGA|column\(9) & ((xPos(9)) # (!\LessThan5~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA|column\(9),
	datad => xPos(9),
	cin => \LessThan5~17_cout\,
	combout => \LessThan5~18_combout\);

-- Location: LCCOMB_X25_Y21_N12
\LessThan6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan6~1_cout\ = CARRY((\VGA|row\(1) & !yPos(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(1),
	datab => yPos(1),
	datad => VCC,
	cout => \LessThan6~1_cout\);

-- Location: LCCOMB_X25_Y21_N14
\LessThan6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan6~3_cout\ = CARRY((yPos(2) & ((!\LessThan6~1_cout\) # (!\VGA|row\(2)))) # (!yPos(2) & (!\VGA|row\(2) & !\LessThan6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yPos(2),
	datab => \VGA|row\(2),
	datad => VCC,
	cin => \LessThan6~1_cout\,
	cout => \LessThan6~3_cout\);

-- Location: LCCOMB_X25_Y21_N16
\LessThan6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan6~5_cout\ = CARRY((yPos(3) & ((\VGA|row\(3)) # (!\LessThan6~3_cout\))) # (!yPos(3) & (\VGA|row\(3) & !\LessThan6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yPos(3),
	datab => \VGA|row\(3),
	datad => VCC,
	cin => \LessThan6~3_cout\,
	cout => \LessThan6~5_cout\);

-- Location: LCCOMB_X25_Y21_N18
\LessThan6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan6~7_cout\ = CARRY((\VGA|row\(4) & (!yPos(4) & !\LessThan6~5_cout\)) # (!\VGA|row\(4) & ((!\LessThan6~5_cout\) # (!yPos(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(4),
	datab => yPos(4),
	datad => VCC,
	cin => \LessThan6~5_cout\,
	cout => \LessThan6~7_cout\);

-- Location: LCCOMB_X25_Y21_N20
\LessThan6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan6~9_cout\ = CARRY((yPos(5) & (\VGA|row\(5) & !\LessThan6~7_cout\)) # (!yPos(5) & ((\VGA|row\(5)) # (!\LessThan6~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yPos(5),
	datab => \VGA|row\(5),
	datad => VCC,
	cin => \LessThan6~7_cout\,
	cout => \LessThan6~9_cout\);

-- Location: LCCOMB_X25_Y21_N22
\LessThan6~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan6~11_cout\ = CARRY((\VGA|row\(6) & (yPos(6) & !\LessThan6~9_cout\)) # (!\VGA|row\(6) & ((yPos(6)) # (!\LessThan6~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(6),
	datab => yPos(6),
	datad => VCC,
	cin => \LessThan6~9_cout\,
	cout => \LessThan6~11_cout\);

-- Location: LCCOMB_X25_Y21_N24
\LessThan6~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan6~13_cout\ = CARRY((yPos(7) & (\VGA|row\(7) & !\LessThan6~11_cout\)) # (!yPos(7) & ((\VGA|row\(7)) # (!\LessThan6~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yPos(7),
	datab => \VGA|row\(7),
	datad => VCC,
	cin => \LessThan6~11_cout\,
	cout => \LessThan6~13_cout\);

-- Location: LCCOMB_X25_Y21_N26
\LessThan6~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan6~15_cout\ = CARRY((yPos(8) & ((!\LessThan6~13_cout\) # (!\VGA|row\(8)))) # (!yPos(8) & (!\VGA|row\(8) & !\LessThan6~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yPos(8),
	datab => \VGA|row\(8),
	datad => VCC,
	cin => \LessThan6~13_cout\,
	cout => \LessThan6~15_cout\);

-- Location: LCCOMB_X25_Y21_N28
\LessThan6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan6~16_combout\ = (yPos(9) & (!\LessThan6~15_cout\ & \VGA|row\(9))) # (!yPos(9) & ((\VGA|row\(9)) # (!\LessThan6~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => yPos(9),
	datad => \VGA|row\(9),
	cin => \LessThan6~15_cout\,
	combout => \LessThan6~16_combout\);

-- Location: LCCOMB_X30_Y16_N0
\Add8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add8~1_cout\ = CARRY(!xPos(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => xPos(2),
	datad => VCC,
	cout => \Add8~1_cout\);

-- Location: LCCOMB_X30_Y16_N8
\Add8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (xPos(6) & ((GND) # (!\Add8~7\))) # (!xPos(6) & (\Add8~7\ $ (GND)))
-- \Add8~9\ = CARRY((xPos(6)) # (!\Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => xPos(6),
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X30_Y16_N10
\Add8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (xPos(7) & (!\Add8~9\)) # (!xPos(7) & (\Add8~9\ & VCC))
-- \Add8~11\ = CARRY((xPos(7) & !\Add8~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => xPos(7),
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X30_Y16_N12
\Add8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = (xPos(8) & ((GND) # (!\Add8~11\))) # (!xPos(8) & (\Add8~11\ $ (GND)))
-- \Add8~13\ = CARRY((xPos(8)) # (!\Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => xPos(8),
	datad => VCC,
	cin => \Add8~11\,
	combout => \Add8~12_combout\,
	cout => \Add8~13\);

-- Location: LCCOMB_X30_Y16_N14
\Add8~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add8~14_combout\ = \Add8~13\ $ (!xPos(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => xPos(9),
	cin => \Add8~13\,
	combout => \Add8~14_combout\);

-- Location: LCCOMB_X29_Y16_N0
\LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~1_cout\ = CARRY(\VGA|column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|column\(0),
	datad => VCC,
	cout => \LessThan4~1_cout\);

-- Location: LCCOMB_X29_Y16_N2
\LessThan4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~3_cout\ = CARRY((\VGA|column\(1) & (!xPos(1) & !\LessThan4~1_cout\)) # (!\VGA|column\(1) & ((!\LessThan4~1_cout\) # (!xPos(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(1),
	datab => xPos(1),
	datad => VCC,
	cin => \LessThan4~1_cout\,
	cout => \LessThan4~3_cout\);

-- Location: LCCOMB_X29_Y16_N4
\LessThan4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~5_cout\ = CARRY((xPos(2) & (\VGA|column\(2) & !\LessThan4~3_cout\)) # (!xPos(2) & ((\VGA|column\(2)) # (!\LessThan4~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xPos(2),
	datab => \VGA|column\(2),
	datad => VCC,
	cin => \LessThan4~3_cout\,
	cout => \LessThan4~5_cout\);

-- Location: LCCOMB_X29_Y16_N6
\LessThan4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~7_cout\ = CARRY((\Add8~2_combout\ & ((!\LessThan4~5_cout\) # (!\VGA|column\(3)))) # (!\Add8~2_combout\ & (!\VGA|column\(3) & !\LessThan4~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~2_combout\,
	datab => \VGA|column\(3),
	datad => VCC,
	cin => \LessThan4~5_cout\,
	cout => \LessThan4~7_cout\);

-- Location: LCCOMB_X29_Y16_N8
\LessThan4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~9_cout\ = CARRY((\Add8~4_combout\ & (\VGA|column\(4) & !\LessThan4~7_cout\)) # (!\Add8~4_combout\ & ((\VGA|column\(4)) # (!\LessThan4~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~4_combout\,
	datab => \VGA|column\(4),
	datad => VCC,
	cin => \LessThan4~7_cout\,
	cout => \LessThan4~9_cout\);

-- Location: LCCOMB_X29_Y16_N10
\LessThan4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~11_cout\ = CARRY((\Add8~6_combout\ & ((!\LessThan4~9_cout\) # (!\VGA|column\(5)))) # (!\Add8~6_combout\ & (!\VGA|column\(5) & !\LessThan4~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~6_combout\,
	datab => \VGA|column\(5),
	datad => VCC,
	cin => \LessThan4~9_cout\,
	cout => \LessThan4~11_cout\);

-- Location: LCCOMB_X29_Y16_N12
\LessThan4~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~13_cout\ = CARRY((\VGA|column\(6) & ((!\LessThan4~11_cout\) # (!\Add8~8_combout\))) # (!\VGA|column\(6) & (!\Add8~8_combout\ & !\LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(6),
	datab => \Add8~8_combout\,
	datad => VCC,
	cin => \LessThan4~11_cout\,
	cout => \LessThan4~13_cout\);

-- Location: LCCOMB_X29_Y16_N14
\LessThan4~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~15_cout\ = CARRY((\VGA|column\(7) & (\Add8~10_combout\ & !\LessThan4~13_cout\)) # (!\VGA|column\(7) & ((\Add8~10_combout\) # (!\LessThan4~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(7),
	datab => \Add8~10_combout\,
	datad => VCC,
	cin => \LessThan4~13_cout\,
	cout => \LessThan4~15_cout\);

-- Location: LCCOMB_X29_Y16_N16
\LessThan4~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~17_cout\ = CARRY((\VGA|column\(8) & ((!\LessThan4~15_cout\) # (!\Add8~12_combout\))) # (!\VGA|column\(8) & (!\Add8~12_combout\ & !\LessThan4~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(8),
	datab => \Add8~12_combout\,
	datad => VCC,
	cin => \LessThan4~15_cout\,
	cout => \LessThan4~17_cout\);

-- Location: LCCOMB_X29_Y16_N18
\LessThan4~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan4~18_combout\ = (\Add8~14_combout\ & (\LessThan4~17_cout\ & \VGA|column\(9))) # (!\Add8~14_combout\ & ((\LessThan4~17_cout\) # (\VGA|column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add8~14_combout\,
	datad => \VGA|column\(9),
	cin => \LessThan4~17_cout\,
	combout => \LessThan4~18_combout\);

-- Location: LCCOMB_X26_Y16_N20
\process_0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~69_combout\ = (\lineDirection1~combout\ & (\LessThan5~18_combout\ & (\LessThan6~16_combout\ & \LessThan4~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lineDirection1~combout\,
	datab => \LessThan5~18_combout\,
	datac => \LessThan6~16_combout\,
	datad => \LessThan4~18_combout\,
	combout => \process_0~69_combout\);

-- Location: LCCOMB_X27_Y15_N8
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((xPos(1) & \VGA|column\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xPos(1),
	datab => \VGA|column\(1),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X27_Y15_N10
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((xPos(2) & (!\VGA|column\(2) & !\LessThan0~1_cout\)) # (!xPos(2) & ((!\LessThan0~1_cout\) # (!\VGA|column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xPos(2),
	datab => \VGA|column\(2),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X27_Y15_N12
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((xPos(3) & ((\VGA|column\(3)) # (!\LessThan0~3_cout\))) # (!xPos(3) & (\VGA|column\(3) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xPos(3),
	datab => \VGA|column\(3),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X27_Y15_N14
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((xPos(4) & ((!\LessThan0~5_cout\) # (!\VGA|column\(4)))) # (!xPos(4) & (!\VGA|column\(4) & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xPos(4),
	datab => \VGA|column\(4),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X27_Y15_N16
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\VGA|column\(5) & ((!\LessThan0~7_cout\) # (!xPos(5)))) # (!\VGA|column\(5) & (!xPos(5) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(5),
	datab => xPos(5),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X27_Y15_N18
\LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((xPos(6) & ((!\LessThan0~9_cout\) # (!\VGA|column\(6)))) # (!xPos(6) & (!\VGA|column\(6) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xPos(6),
	datab => \VGA|column\(6),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X27_Y15_N20
\LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((xPos(7) & ((\VGA|column\(7)) # (!\LessThan0~11_cout\))) # (!xPos(7) & (\VGA|column\(7) & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xPos(7),
	datab => \VGA|column\(7),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X27_Y15_N22
\LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\VGA|column\(8) & (xPos(8) & !\LessThan0~13_cout\)) # (!\VGA|column\(8) & ((xPos(8)) # (!\LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(8),
	datab => xPos(8),
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X27_Y15_N24
\LessThan0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~16_combout\ = (xPos(9) & (!\LessThan0~15_cout\ & \VGA|column\(9))) # (!xPos(9) & ((\VGA|column\(9)) # (!\LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => xPos(9),
	datad => \VGA|column\(9),
	cin => \LessThan0~15_cout\,
	combout => \LessThan0~16_combout\);

-- Location: LCCOMB_X30_Y16_N16
\Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = (xPos(1) & (!xPos(2) & VCC)) # (!xPos(1) & (xPos(2) $ (GND)))
-- \Add6~1\ = CARRY((!xPos(1) & !xPos(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => xPos(1),
	datab => xPos(2),
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X30_Y16_N18
\Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (xPos(3) & (!\Add6~1\)) # (!xPos(3) & (\Add6~1\ & VCC))
-- \Add6~3\ = CARRY((xPos(3) & !\Add6~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => xPos(3),
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X30_Y16_N22
\Add6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (xPos(5) & (!\Add6~5\)) # (!xPos(5) & ((\Add6~5\) # (GND)))
-- \Add6~7\ = CARRY((!\Add6~5\) # (!xPos(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => xPos(5),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X30_Y16_N24
\Add6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (xPos(6) & ((GND) # (!\Add6~7\))) # (!xPos(6) & (\Add6~7\ $ (GND)))
-- \Add6~9\ = CARRY((xPos(6)) # (!\Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => xPos(6),
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X30_Y16_N26
\Add6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (xPos(7) & ((\Add6~9\) # (GND))) # (!xPos(7) & (!\Add6~9\))
-- \Add6~11\ = CARRY((xPos(7)) # (!\Add6~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => xPos(7),
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X31_Y16_N12
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((xPos(1) & !\VGA|column\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => xPos(1),
	datab => \VGA|column\(1),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X31_Y16_N14
\LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((\VGA|column\(2) & ((!\LessThan1~1_cout\) # (!\Add6~0_combout\))) # (!\VGA|column\(2) & (!\Add6~0_combout\ & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(2),
	datab => \Add6~0_combout\,
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X31_Y16_N16
\LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((\VGA|column\(3) & (\Add6~2_combout\ & !\LessThan1~3_cout\)) # (!\VGA|column\(3) & ((\Add6~2_combout\) # (!\LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(3),
	datab => \Add6~2_combout\,
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X31_Y16_N18
\LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((\Add6~4_combout\ & (\VGA|column\(4) & !\LessThan1~5_cout\)) # (!\Add6~4_combout\ & ((\VGA|column\(4)) # (!\LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~4_combout\,
	datab => \VGA|column\(4),
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X31_Y16_N20
\LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((\VGA|column\(5) & (\Add6~6_combout\ & !\LessThan1~7_cout\)) # (!\VGA|column\(5) & ((\Add6~6_combout\) # (!\LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(5),
	datab => \Add6~6_combout\,
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X31_Y16_N22
\LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((\VGA|column\(6) & ((!\LessThan1~9_cout\) # (!\Add6~8_combout\))) # (!\VGA|column\(6) & (!\Add6~8_combout\ & !\LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(6),
	datab => \Add6~8_combout\,
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X31_Y16_N24
\LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((\VGA|column\(7) & (\Add6~10_combout\ & !\LessThan1~11_cout\)) # (!\VGA|column\(7) & ((\Add6~10_combout\) # (!\LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(7),
	datab => \Add6~10_combout\,
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X31_Y16_N26
\LessThan1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~15_cout\ = CARRY((\VGA|column\(8) & ((!\LessThan1~13_cout\) # (!\Add6~12_combout\))) # (!\VGA|column\(8) & (!\Add6~12_combout\ & !\LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(8),
	datab => \Add6~12_combout\,
	datad => VCC,
	cin => \LessThan1~13_cout\,
	cout => \LessThan1~15_cout\);

-- Location: LCCOMB_X31_Y16_N28
\LessThan1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~16_combout\ = (\Add6~14_combout\ & ((!\VGA|column\(9)) # (!\LessThan1~15_cout\))) # (!\Add6~14_combout\ & (!\LessThan1~15_cout\ & !\VGA|column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~14_combout\,
	datad => \VGA|column\(9),
	cin => \LessThan1~15_cout\,
	combout => \LessThan1~16_combout\);

-- Location: LCCOMB_X30_Y20_N0
\Add7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~1_cout\ = CARRY(yPos(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => yPos(2),
	datad => VCC,
	cout => \Add7~1_cout\);

-- Location: LCCOMB_X30_Y20_N2
\Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (yPos(3) & (!\Add7~1_cout\)) # (!yPos(3) & (\Add7~1_cout\ & VCC))
-- \Add7~3\ = CARRY((yPos(3) & !\Add7~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => yPos(3),
	datad => VCC,
	cin => \Add7~1_cout\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X30_Y20_N6
\Add7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (yPos(5) & (\Add7~5\ & VCC)) # (!yPos(5) & (!\Add7~5\))
-- \Add7~7\ = CARRY((!yPos(5) & !\Add7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yPos(5),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X30_Y20_N8
\Add7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (yPos(6) & ((GND) # (!\Add7~7\))) # (!yPos(6) & (\Add7~7\ $ (GND)))
-- \Add7~9\ = CARRY((yPos(6)) # (!\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yPos(6),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X30_Y20_N12
\Add7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (yPos(8) & ((GND) # (!\Add7~11\))) # (!yPos(8) & (\Add7~11\ $ (GND)))
-- \Add7~13\ = CARRY((yPos(8)) # (!\Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => yPos(8),
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X30_Y20_N14
\Add7~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = \Add7~13\ $ (!yPos(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => yPos(9),
	cin => \Add7~13\,
	combout => \Add7~14_combout\);

-- Location: LCCOMB_X27_Y20_N2
\LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~1_cout\ = CARRY(\VGA|row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|row\(0),
	datad => VCC,
	cout => \LessThan2~1_cout\);

-- Location: LCCOMB_X27_Y20_N4
\LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~3_cout\ = CARRY((yPos(1) & ((!\LessThan2~1_cout\) # (!\VGA|row\(1)))) # (!yPos(1) & (!\VGA|row\(1) & !\LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yPos(1),
	datab => \VGA|row\(1),
	datad => VCC,
	cin => \LessThan2~1_cout\,
	cout => \LessThan2~3_cout\);

-- Location: LCCOMB_X27_Y20_N6
\LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~5_cout\ = CARRY((yPos(2) & ((\VGA|row\(2)) # (!\LessThan2~3_cout\))) # (!yPos(2) & (\VGA|row\(2) & !\LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => yPos(2),
	datab => \VGA|row\(2),
	datad => VCC,
	cin => \LessThan2~3_cout\,
	cout => \LessThan2~5_cout\);

-- Location: LCCOMB_X27_Y20_N8
\LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~7_cout\ = CARRY((\VGA|row\(3) & (\Add7~2_combout\ & !\LessThan2~5_cout\)) # (!\VGA|row\(3) & ((\Add7~2_combout\) # (!\LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(3),
	datab => \Add7~2_combout\,
	datad => VCC,
	cin => \LessThan2~5_cout\,
	cout => \LessThan2~7_cout\);

-- Location: LCCOMB_X27_Y20_N10
\LessThan2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~9_cout\ = CARRY((\Add7~4_combout\ & (\VGA|row\(4) & !\LessThan2~7_cout\)) # (!\Add7~4_combout\ & ((\VGA|row\(4)) # (!\LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datab => \VGA|row\(4),
	datad => VCC,
	cin => \LessThan2~7_cout\,
	cout => \LessThan2~9_cout\);

-- Location: LCCOMB_X27_Y20_N12
\LessThan2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~11_cout\ = CARRY((\VGA|row\(5) & (\Add7~6_combout\ & !\LessThan2~9_cout\)) # (!\VGA|row\(5) & ((\Add7~6_combout\) # (!\LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(5),
	datab => \Add7~6_combout\,
	datad => VCC,
	cin => \LessThan2~9_cout\,
	cout => \LessThan2~11_cout\);

-- Location: LCCOMB_X27_Y20_N14
\LessThan2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~13_cout\ = CARRY((\VGA|row\(6) & ((!\LessThan2~11_cout\) # (!\Add7~8_combout\))) # (!\VGA|row\(6) & (!\Add7~8_combout\ & !\LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(6),
	datab => \Add7~8_combout\,
	datad => VCC,
	cin => \LessThan2~11_cout\,
	cout => \LessThan2~13_cout\);

-- Location: LCCOMB_X27_Y20_N16
\LessThan2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~15_cout\ = CARRY((\Add7~10_combout\ & ((!\LessThan2~13_cout\) # (!\VGA|row\(7)))) # (!\Add7~10_combout\ & (!\VGA|row\(7) & !\LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~10_combout\,
	datab => \VGA|row\(7),
	datad => VCC,
	cin => \LessThan2~13_cout\,
	cout => \LessThan2~15_cout\);

-- Location: LCCOMB_X27_Y20_N18
\LessThan2~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~17_cout\ = CARRY((\VGA|row\(8) & ((!\LessThan2~15_cout\) # (!\Add7~12_combout\))) # (!\VGA|row\(8) & (!\Add7~12_combout\ & !\LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(8),
	datab => \Add7~12_combout\,
	datad => VCC,
	cin => \LessThan2~15_cout\,
	cout => \LessThan2~17_cout\);

-- Location: LCCOMB_X27_Y20_N20
\LessThan2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~18_combout\ = (\VGA|row\(9) & ((\LessThan2~17_cout\) # (!\Add7~14_combout\))) # (!\VGA|row\(9) & (\LessThan2~17_cout\ & !\Add7~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(9),
	datad => \Add7~14_combout\,
	cin => \LessThan2~17_cout\,
	combout => \LessThan2~18_combout\);

-- Location: LCCOMB_X26_Y16_N2
\process_0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~68_combout\ = (!\lineDirection1~combout\ & (\LessThan0~16_combout\ & (\LessThan1~16_combout\ & \LessThan2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lineDirection1~combout\,
	datab => \LessThan0~16_combout\,
	datac => \LessThan1~16_combout\,
	datad => \LessThan2~18_combout\,
	combout => \process_0~68_combout\);

-- Location: LCCOMB_X26_Y16_N30
\green~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \green~0_combout\ = (\LessThan3~18_combout\ & (!\process_0~68_combout\ & ((!\process_0~69_combout\) # (!\LessThan7~16_combout\)))) # (!\LessThan3~18_combout\ & (((!\process_0~69_combout\)) # (!\LessThan7~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~18_combout\,
	datab => \LessThan7~16_combout\,
	datac => \process_0~69_combout\,
	datad => \process_0~68_combout\,
	combout => \green~0_combout\);

-- Location: LCCOMB_X25_Y16_N26
\green~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \green~1_combout\ = (\green~0_combout\ & (((!\process_0~71_combout\ & !\process_0~72_combout\)) # (!\process_0~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~71_combout\,
	datab => \process_0~72_combout\,
	datac => \process_0~74_combout\,
	datad => \green~0_combout\,
	combout => \green~1_combout\);

-- Location: LCCOMB_X23_Y18_N16
\process_0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~32_combout\ = (\VGA|column\(6)) # (\VGA|column\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|column\(6),
	datac => \VGA|column\(3),
	combout => \process_0~32_combout\);

-- Location: LCCOMB_X23_Y18_N18
\process_0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~31_combout\ = (\VGA|column\(5)) # (\VGA|column\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|column\(5),
	datac => \VGA|column\(6),
	combout => \process_0~31_combout\);

-- Location: LCCOMB_X23_Y18_N20
\process_0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~33_combout\ = (\VGA|column\(4) & (((!\process_0~31_combout\)) # (!\VGA|column\(9)))) # (!\VGA|column\(4) & (\process_0~32_combout\ & (\VGA|column\(9) $ (\process_0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(4),
	datab => \VGA|column\(9),
	datac => \process_0~32_combout\,
	datad => \process_0~31_combout\,
	combout => \process_0~33_combout\);

-- Location: LCCOMB_X24_Y18_N30
\process_0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~28_combout\ = (!\VGA|column\(6) & (!\VGA|column\(9) & !\VGA|column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(6),
	datab => \VGA|column\(9),
	datad => \VGA|column\(4),
	combout => \process_0~28_combout\);

-- Location: LCCOMB_X23_Y18_N28
\process_0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~30_combout\ = (\process_0~29_combout\ & ((\VGA|column\(7)) # ((!\VGA|column\(8))))) # (!\process_0~29_combout\ & ((\process_0~28_combout\ & ((!\VGA|column\(8)))) # (!\process_0~28_combout\ & (\VGA|column\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~29_combout\,
	datab => \VGA|column\(7),
	datac => \VGA|column\(8),
	datad => \process_0~28_combout\,
	combout => \process_0~30_combout\);

-- Location: LCCOMB_X23_Y18_N10
\process_0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~34_combout\ = (\process_0~31_combout\ & (((!\process_0~30_combout\) # (!\process_0~33_combout\)) # (!\VGA|column\(8)))) # (!\process_0~31_combout\ & ((\VGA|column\(8)) # ((\process_0~33_combout\) # (\process_0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~31_combout\,
	datab => \VGA|column\(8),
	datac => \process_0~33_combout\,
	datad => \process_0~30_combout\,
	combout => \process_0~34_combout\);

-- Location: LCCOMB_X23_Y18_N30
\process_0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~21_combout\ = (\VGA|column\(8) & (\VGA|column\(7))) # (!\VGA|column\(8) & (((!\VGA|column\(5)) # (!\VGA|column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(7),
	datab => \VGA|column\(6),
	datac => \VGA|column\(5),
	datad => \VGA|column\(8),
	combout => \process_0~21_combout\);

-- Location: LCCOMB_X23_Y18_N22
\process_0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~19_combout\ = (\VGA|column\(3)) # ((\VGA|column\(4)) # ((\VGA|column\(1) & \VGA|column\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(1),
	datab => \VGA|column\(3),
	datac => \VGA|column\(2),
	datad => \VGA|column\(4),
	combout => \process_0~19_combout\);

-- Location: LCCOMB_X23_Y18_N0
\process_0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~20_combout\ = (!\VGA|column\(7) & (\VGA|column\(6) & ((\VGA|column\(5)) # (\process_0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(7),
	datab => \VGA|column\(5),
	datac => \VGA|column\(6),
	datad => \process_0~19_combout\,
	combout => \process_0~20_combout\);

-- Location: LCCOMB_X23_Y18_N26
\process_0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~22_combout\ = (\process_0~18_combout\) # ((\VGA|column\(9)) # ((\process_0~21_combout\) # (\process_0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~18_combout\,
	datab => \VGA|column\(9),
	datac => \process_0~21_combout\,
	datad => \process_0~20_combout\,
	combout => \process_0~22_combout\);

-- Location: LCCOMB_X24_Y21_N22
\LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (\VGA|row\(3)) # ((\VGA|row\(2) & ((\VGA|row\(0)) # (\VGA|row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(2),
	datab => \VGA|row\(0),
	datac => \VGA|row\(3),
	datad => \VGA|row\(1),
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X23_Y21_N28
\LessThan8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan8~1_combout\ = (\VGA|row\(4) & \LessThan8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA|row\(4),
	datad => \LessThan8~0_combout\,
	combout => \LessThan8~1_combout\);

-- Location: LCCOMB_X25_Y20_N18
\process_0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~14_combout\ = (\LessThan9~5_combout\ & ((\LessThan8~2_combout\) # ((\VGA|row\(9)) # (\LessThan8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~5_combout\,
	datab => \LessThan8~2_combout\,
	datac => \VGA|row\(9),
	datad => \LessThan8~1_combout\,
	combout => \process_0~14_combout\);

-- Location: LCCOMB_X26_Y17_N10
\red[1]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~100_combout\ = ((\process_0~27_combout\ & (\process_0~34_combout\ & \process_0~22_combout\))) # (!\process_0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~27_combout\,
	datab => \process_0~34_combout\,
	datac => \process_0~22_combout\,
	datad => \process_0~14_combout\,
	combout => \red[1]~100_combout\);

-- Location: LCCOMB_X24_Y15_N26
\process_0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~15_combout\ = (\VGA|column\(6) & (\VGA|column\(5) & ((\VGA|column\(4)) # (\VGA|column\(3))))) # (!\VGA|column\(6) & (!\VGA|column\(5) & (!\VGA|column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(6),
	datab => \VGA|column\(5),
	datac => \VGA|column\(4),
	datad => \VGA|column\(3),
	combout => \process_0~15_combout\);

-- Location: LCCOMB_X24_Y15_N28
\process_0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~16_combout\ = ((\VGA|column\(9)) # ((\VGA|column\(8)) # (\process_0~15_combout\))) # (!\VGA|column\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(7),
	datab => \VGA|column\(9),
	datac => \VGA|column\(8),
	datad => \process_0~15_combout\,
	combout => \process_0~16_combout\);

-- Location: LCCOMB_X26_Y17_N20
\process_0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~17_combout\ = (!\process_0~16_combout\ & \process_0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_0~16_combout\,
	datad => \process_0~14_combout\,
	combout => \process_0~17_combout\);

-- Location: LCCOMB_X23_Y21_N26
\LessThan11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan11~0_combout\ = (!\VGA|row\(3) & (((!\VGA|row\(2)) # (!\VGA|row\(0))) # (!\VGA|row\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(1),
	datab => \VGA|row\(0),
	datac => \VGA|row\(3),
	datad => \VGA|row\(2),
	combout => \LessThan11~0_combout\);

-- Location: LCCOMB_X24_Y21_N26
\LessThan10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan10~0_combout\ = (\VGA|row\(5) & (\VGA|row\(4) & \VGA|row\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|row\(5),
	datac => \VGA|row\(4),
	datad => \VGA|row\(6),
	combout => \LessThan10~0_combout\);

-- Location: LCCOMB_X23_Y21_N12
\LessThan11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan11~1_combout\ = (\LessThan9~3_combout\ & ((\LessThan11~0_combout\) # (!\LessThan10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan11~0_combout\,
	datac => \LessThan9~3_combout\,
	datad => \LessThan10~0_combout\,
	combout => \LessThan11~1_combout\);

-- Location: LCCOMB_X25_Y21_N2
\LessThan10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan10~1_combout\ = (\VGA|row\(8)) # ((\VGA|row\(7)) # ((!\LessThan15~0_combout\ & \LessThan10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~0_combout\,
	datab => \VGA|row\(8),
	datac => \VGA|row\(7),
	datad => \LessThan10~0_combout\,
	combout => \LessThan10~1_combout\);

-- Location: LCCOMB_X22_Y21_N0
\process_0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~37_combout\ = (\LessThan11~1_combout\ & ((\VGA|row\(9)) # (\LessThan10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|row\(9),
	datac => \LessThan11~1_combout\,
	datad => \LessThan10~1_combout\,
	combout => \process_0~37_combout\);

-- Location: LCCOMB_X22_Y21_N14
\red[1]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~30_combout\ = ((\process_0~22_combout\ & \process_0~16_combout\)) # (!\process_0~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~37_combout\,
	datac => \process_0~22_combout\,
	datad => \process_0~16_combout\,
	combout => \red[1]~30_combout\);

-- Location: LCCOMB_X19_Y19_N0
\line7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line7~0_combout\ = (\line7~regout\) # ((\color1~0_combout\ & (\Equal1~1_combout\ & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color1~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \line7~regout\,
	datad => \Equal2~2_combout\,
	combout => \line7~0_combout\);

-- Location: LCFF_X19_Y19_N1
line7 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line7~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line7~regout\);

-- Location: LCCOMB_X23_Y20_N18
\red[1]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~94_combout\ = (!\process_0~27_combout\ & (\line7~regout\ & \process_0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~27_combout\,
	datab => \line7~regout\,
	datad => \process_0~37_combout\,
	combout => \red[1]~94_combout\);

-- Location: LCCOMB_X24_Y21_N24
\LessThan17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan17~0_combout\ = (!\VGA|row\(9) & !\VGA|row\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(9),
	datad => \VGA|row\(8),
	combout => \LessThan17~0_combout\);

-- Location: LCCOMB_X23_Y19_N2
\LessThan32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan32~0_combout\ = (\VGA|row\(7) & \VGA|row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(7),
	datac => \VGA|row\(6),
	combout => \LessThan32~0_combout\);

-- Location: LCCOMB_X23_Y21_N14
\LessThan13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan13~0_combout\ = (\LessThan17~0_combout\ & (((!\VGA|row\(5) & !\LessThan8~1_combout\)) # (!\LessThan32~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(5),
	datab => \LessThan8~1_combout\,
	datac => \LessThan17~0_combout\,
	datad => \LessThan32~0_combout\,
	combout => \LessThan13~0_combout\);

-- Location: LCCOMB_X23_Y21_N0
\LessThan17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan17~1_combout\ = ((!\VGA|row\(0) & (!\VGA|row\(3) & \LessThan16~0_combout\))) # (!\VGA|row\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(4),
	datab => \VGA|row\(0),
	datac => \VGA|row\(3),
	datad => \LessThan16~0_combout\,
	combout => \LessThan17~1_combout\);

-- Location: LCCOMB_X23_Y21_N22
\LessThan12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan12~0_combout\ = (\VGA|row\(8)) # ((\LessThan32~0_combout\ & ((\VGA|row\(5)) # (!\LessThan17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(5),
	datab => \LessThan17~1_combout\,
	datac => \VGA|row\(8),
	datad => \LessThan32~0_combout\,
	combout => \LessThan12~0_combout\);

-- Location: LCCOMB_X23_Y21_N8
\process_0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~38_combout\ = (\LessThan13~0_combout\ & ((\VGA|row\(9)) # (\LessThan12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(9),
	datac => \LessThan13~0_combout\,
	datad => \LessThan12~0_combout\,
	combout => \process_0~38_combout\);

-- Location: LCCOMB_X23_Y18_N6
\process_0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~25_combout\ = (!\VGA|column\(5) & (!\VGA|column\(4) & ((!\VGA|column\(2)) # (!\VGA|column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(3),
	datab => \VGA|column\(5),
	datac => \VGA|column\(2),
	datad => \VGA|column\(4),
	combout => \process_0~25_combout\);

-- Location: LCCOMB_X23_Y18_N4
\process_0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~26_combout\ = ((\VGA|column\(7) & (\VGA|column\(6))) # (!\VGA|column\(7) & ((\process_0~25_combout\) # (!\VGA|column\(6))))) # (!\VGA|column\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(7),
	datab => \VGA|column\(6),
	datac => \VGA|column\(8),
	datad => \process_0~25_combout\,
	combout => \process_0~26_combout\);

-- Location: LCCOMB_X24_Y15_N2
\process_0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~23_combout\ = (!\VGA|column\(4) & !\VGA|column\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA|column\(4),
	datad => \VGA|column\(3),
	combout => \process_0~23_combout\);

-- Location: LCCOMB_X23_Y18_N12
\process_0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~24_combout\ = (\VGA|column\(5) & (\VGA|column\(7) & ((\VGA|column\(2)) # (!\process_0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(2),
	datab => \VGA|column\(5),
	datac => \VGA|column\(7),
	datad => \process_0~23_combout\,
	combout => \process_0~24_combout\);

-- Location: LCCOMB_X23_Y18_N2
\process_0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~27_combout\ = (\VGA|column\(9)) # ((\process_0~26_combout\) # (\process_0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|column\(9),
	datac => \process_0~26_combout\,
	datad => \process_0~24_combout\,
	combout => \process_0~27_combout\);

-- Location: LCCOMB_X22_Y21_N10
\red[1]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~28_combout\ = ((\process_0~34_combout\ & \process_0~27_combout\)) # (!\process_0~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~37_combout\,
	datac => \process_0~34_combout\,
	datad => \process_0~27_combout\,
	combout => \red[1]~28_combout\);

-- Location: LCCOMB_X22_Y21_N30
\red[1]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~95_combout\ = (!\process_0~16_combout\ & (\line9~regout\ & (\process_0~38_combout\ & \red[1]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~16_combout\,
	datab => \line9~regout\,
	datac => \process_0~38_combout\,
	datad => \red[1]~28_combout\,
	combout => \red[1]~95_combout\);

-- Location: LCCOMB_X22_Y21_N8
\red[1]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~96_combout\ = (\red[1]~30_combout\ & ((\red[1]~93_combout\) # ((\red[1]~94_combout\) # (\red[1]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~93_combout\,
	datab => \red[1]~94_combout\,
	datac => \red[1]~30_combout\,
	datad => \red[1]~95_combout\,
	combout => \red[1]~96_combout\);

-- Location: LCCOMB_X22_Y21_N28
\red[1]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~29_combout\ = (\red[1]~28_combout\ & (((\process_0~22_combout\ & \process_0~16_combout\)) # (!\process_0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~22_combout\,
	datab => \process_0~16_combout\,
	datac => \process_0~38_combout\,
	datad => \red[1]~28_combout\,
	combout => \red[1]~29_combout\);

-- Location: LCCOMB_X22_Y21_N2
\red[1]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~97_combout\ = (!\process_0~27_combout\ & (\line11~regout\ & (\process_0~38_combout\ & \red[1]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~27_combout\,
	datab => \line11~regout\,
	datac => \process_0~38_combout\,
	datad => \red[1]~29_combout\,
	combout => \red[1]~97_combout\);

-- Location: LCCOMB_X22_Y21_N24
\red[1]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~98_combout\ = (\red[1]~91_combout\) # ((\red[1]~96_combout\) # ((\red[1]~30_combout\ & \red[1]~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~91_combout\,
	datab => \red[1]~30_combout\,
	datac => \red[1]~96_combout\,
	datad => \red[1]~97_combout\,
	combout => \red[1]~98_combout\);

-- Location: LCCOMB_X26_Y17_N0
\process_0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~35_combout\ = (!\process_0~22_combout\ & \process_0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~22_combout\,
	datad => \process_0~14_combout\,
	combout => \process_0~35_combout\);

-- Location: LCCOMB_X21_Y15_N4
\line3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line3~0_combout\ = (\line3~regout\) # ((\color1~0_combout\ & (\Equal1~1_combout\ & \Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color1~0_combout\,
	datab => \Equal1~1_combout\,
	datac => \line3~regout\,
	datad => \Equal8~1_combout\,
	combout => \line3~0_combout\);

-- Location: LCFF_X21_Y15_N5
line3 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line3~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line3~regout\);

-- Location: LCCOMB_X26_Y18_N26
\red[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~22_combout\ = (!\process_0~27_combout\ & (\line3~regout\ & (\process_0~22_combout\ & \process_0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~27_combout\,
	datab => \line3~regout\,
	datac => \process_0~22_combout\,
	datad => \process_0~14_combout\,
	combout => \red[1]~22_combout\);

-- Location: LCCOMB_X18_Y18_N16
\line4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line4~0_combout\ = (\line4~regout\) # ((\Equal8~1_combout\ & (\Equal4~1_combout\ & \color1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => \Equal4~1_combout\,
	datac => \line4~regout\,
	datad => \color1~0_combout\,
	combout => \line4~0_combout\);

-- Location: LCFF_X18_Y18_N17
line4 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line4~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line4~regout\);

-- Location: LCCOMB_X26_Y17_N30
\red[1]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~23_combout\ = (\process_0~27_combout\ & (\line4~regout\ & (!\process_0~34_combout\ & \process_0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~27_combout\,
	datab => \line4~regout\,
	datac => \process_0~34_combout\,
	datad => \process_0~14_combout\,
	combout => \red[1]~23_combout\);

-- Location: LCCOMB_X26_Y17_N26
\red[1]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~24_combout\ = (!\process_0~17_combout\ & ((\red[1]~22_combout\) # ((!\process_0~35_combout\ & \red[1]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~17_combout\,
	datab => \process_0~35_combout\,
	datac => \red[1]~22_combout\,
	datad => \red[1]~23_combout\,
	combout => \red[1]~24_combout\);

-- Location: LCCOMB_X26_Y17_N2
\red[1]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~26_combout\ = (\red[1]~24_combout\) # ((\process_0~17_combout\ & ((\line1~regout\))) # (!\process_0~17_combout\ & (\red[1]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~25_combout\,
	datab => \line1~regout\,
	datac => \process_0~17_combout\,
	datad => \red[1]~24_combout\,
	combout => \red[1]~26_combout\);

-- Location: LCCOMB_X21_Y20_N0
\red[1]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~79_combout\ = (\process_0~22_combout\ & (!\process_0~34_combout\ & (\process_0~27_combout\ & \process_0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~22_combout\,
	datab => \process_0~34_combout\,
	datac => \process_0~27_combout\,
	datad => \process_0~39_combout\,
	combout => \red[1]~79_combout\);

-- Location: LCCOMB_X21_Y20_N22
\red[1]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~80_combout\ = (\line16~regout\ & \red[1]~79_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line16~regout\,
	datad => \red[1]~79_combout\,
	combout => \red[1]~80_combout\);

-- Location: LCCOMB_X23_Y20_N10
\red[1]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~34_combout\ = (\process_0~16_combout\ & ((\process_0~34_combout\) # ((!\process_0~38_combout\)))) # (!\process_0~16_combout\ & (!\process_0~39_combout\ & ((\process_0~34_combout\) # (!\process_0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~16_combout\,
	datab => \process_0~34_combout\,
	datac => \process_0~38_combout\,
	datad => \process_0~39_combout\,
	combout => \red[1]~34_combout\);

-- Location: LCCOMB_X23_Y21_N2
\LessThan14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan14~3_combout\ = (\VGA|row\(8) & \VGA|row\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(8),
	datac => \VGA|row\(7),
	combout => \LessThan14~3_combout\);

-- Location: LCCOMB_X23_Y21_N16
\LessThan16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan16~1_combout\ = (\VGA|row\(3) & (\VGA|row\(2) & ((\VGA|row\(1)) # (\VGA|row\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(1),
	datab => \VGA|row\(0),
	datac => \VGA|row\(3),
	datad => \VGA|row\(2),
	combout => \LessThan16~1_combout\);

-- Location: LCCOMB_X23_Y21_N18
\LessThan16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan16~2_combout\ = (\LessThan14~3_combout\ & ((\VGA|row\(4)) # ((\LessThan16~1_combout\) # (!\LessThan9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(4),
	datab => \LessThan14~3_combout\,
	datac => \LessThan16~1_combout\,
	datad => \LessThan9~2_combout\,
	combout => \LessThan16~2_combout\);

-- Location: LCCOMB_X23_Y21_N4
\LessThan17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan17~2_combout\ = (!\VGA|row\(9) & ((!\VGA|row\(8)) # (!\VGA|row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|row\(7),
	datac => \VGA|row\(9),
	datad => \VGA|row\(8),
	combout => \LessThan17~2_combout\);

-- Location: LCCOMB_X23_Y21_N10
\LessThan17~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan17~3_combout\ = (\LessThan17~2_combout\) # ((\LessThan9~2_combout\ & (!\VGA|row\(9) & \LessThan17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~2_combout\,
	datab => \LessThan17~2_combout\,
	datac => \VGA|row\(9),
	datad => \LessThan17~1_combout\,
	combout => \LessThan17~3_combout\);

-- Location: LCCOMB_X23_Y21_N24
\process_0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~40_combout\ = (\LessThan17~3_combout\ & ((\LessThan16~2_combout\) # (\VGA|row\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan16~2_combout\,
	datac => \VGA|row\(9),
	datad => \LessThan17~3_combout\,
	combout => \process_0~40_combout\);

-- Location: LCCOMB_X23_Y20_N24
\red[1]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~32_combout\ = ((\process_0~34_combout\ & (\process_0~22_combout\ & \process_0~27_combout\))) # (!\process_0~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~34_combout\,
	datab => \process_0~22_combout\,
	datac => \process_0~27_combout\,
	datad => \process_0~39_combout\,
	combout => \red[1]~32_combout\);

-- Location: LCCOMB_X22_Y20_N12
\red[1]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~33_combout\ = (\red[1]~32_combout\ & ((\process_0~16_combout\) # (!\process_0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~16_combout\,
	datac => \process_0~40_combout\,
	datad => \red[1]~32_combout\,
	combout => \red[1]~33_combout\);

-- Location: LCCOMB_X22_Y20_N28
\red[1]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~77_combout\ = (\process_0~40_combout\ & (!\process_0~22_combout\ & (\line18~regout\ & \red[1]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~40_combout\,
	datab => \process_0~22_combout\,
	datac => \line18~regout\,
	datad => \red[1]~33_combout\,
	combout => \red[1]~77_combout\);

-- Location: LCCOMB_X22_Y20_N30
\red[1]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~81_combout\ = (\red[1]~34_combout\ & ((\red[1]~78_combout\) # ((\red[1]~80_combout\) # (\red[1]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~78_combout\,
	datab => \red[1]~80_combout\,
	datac => \red[1]~34_combout\,
	datad => \red[1]~77_combout\,
	combout => \red[1]~81_combout\);

-- Location: LCCOMB_X24_Y20_N24
\process_0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~67_combout\ = (!\process_0~34_combout\ & (\LessThan13~0_combout\ & ((\VGA|row\(9)) # (\LessThan12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~34_combout\,
	datab => \VGA|row\(9),
	datac => \LessThan13~0_combout\,
	datad => \LessThan12~0_combout\,
	combout => \process_0~67_combout\);

-- Location: LCCOMB_X23_Y20_N30
\red[1]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~83_combout\ = (!\process_0~16_combout\ & (\line17~regout\ & (\red[1]~32_combout\ & \process_0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~16_combout\,
	datab => \line17~regout\,
	datac => \red[1]~32_combout\,
	datad => \process_0~40_combout\,
	combout => \red[1]~83_combout\);

-- Location: LCCOMB_X23_Y20_N20
\red[1]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~82_combout\ = (!\process_0~27_combout\ & (\line15~regout\ & (\process_0~22_combout\ & \process_0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~27_combout\,
	datab => \line15~regout\,
	datac => \process_0~22_combout\,
	datad => \process_0~39_combout\,
	combout => \red[1]~82_combout\);

-- Location: LCCOMB_X23_Y20_N8
\red[1]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~84_combout\ = (\red[1]~34_combout\ & ((\red[1]~83_combout\) # (\red[1]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \red[1]~83_combout\,
	datac => \red[1]~82_combout\,
	datad => \red[1]~34_combout\,
	combout => \red[1]~84_combout\);

-- Location: LCCOMB_X23_Y20_N2
\red[1]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~85_combout\ = (!\process_0~16_combout\ & (\process_0~39_combout\ & (\line13~regout\ & !\process_0~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~16_combout\,
	datab => \process_0~39_combout\,
	datac => \line13~regout\,
	datad => \process_0~67_combout\,
	combout => \red[1]~85_combout\);

-- Location: LCCOMB_X23_Y20_N0
\red[1]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~86_combout\ = (\red[1]~84_combout\) # ((\red[1]~85_combout\) # ((\line12~regout\ & \process_0~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line12~regout\,
	datab => \process_0~67_combout\,
	datac => \red[1]~84_combout\,
	datad => \red[1]~85_combout\,
	combout => \red[1]~86_combout\);

-- Location: LCCOMB_X24_Y18_N8
\process_0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~52_combout\ = (\VGA|column\(2) & ((\VGA|column\(3)) # ((!\VGA|column\(0) & !\VGA|column\(1))))) # (!\VGA|column\(2) & (((\VGA|column\(0)) # (\VGA|column\(1))) # (!\VGA|column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(2),
	datab => \VGA|column\(3),
	datac => \VGA|column\(0),
	datad => \VGA|column\(1),
	combout => \process_0~52_combout\);

-- Location: LCCOMB_X24_Y18_N6
\process_0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~53_combout\ = (\VGA|column\(7) & \VGA|column\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(7),
	datad => \VGA|column\(8),
	combout => \process_0~53_combout\);

-- Location: LCCOMB_X24_Y18_N22
\process_0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~54_combout\ = ((\process_0~52_combout\) # ((!\process_0~28_combout\) # (!\process_0~53_combout\))) # (!\VGA|column\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(5),
	datab => \process_0~52_combout\,
	datac => \process_0~53_combout\,
	datad => \process_0~28_combout\,
	combout => \process_0~54_combout\);

-- Location: LCCOMB_X23_Y19_N0
\process_0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~63_combout\ = (!\VGA|row\(7) & !\VGA|row\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(7),
	datac => \VGA|row\(9),
	combout => \process_0~63_combout\);

-- Location: LCCOMB_X23_Y19_N8
\process_0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~61_combout\ = (\VGA|row\(3) & (((\VGA|row\(4)) # (!\VGA|row\(1))) # (!\VGA|row\(2)))) # (!\VGA|row\(3) & (((\VGA|row\(2) & \VGA|row\(1))) # (!\VGA|row\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(2),
	datab => \VGA|row\(1),
	datac => \VGA|row\(3),
	datad => \VGA|row\(4),
	combout => \process_0~61_combout\);

-- Location: LCCOMB_X23_Y19_N14
\process_0~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~103_combout\ = (!\VGA|row\(6) & (((!\VGA|row\(4) & \process_0~61_combout\)) # (!\VGA|row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(5),
	datab => \VGA|row\(4),
	datac => \process_0~61_combout\,
	datad => \VGA|row\(6),
	combout => \process_0~103_combout\);

-- Location: LCCOMB_X23_Y19_N30
\process_0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~62_combout\ = (\LessThan32~0_combout\ & ((\VGA|row\(5)) # ((\VGA|row\(4) & \process_0~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(5),
	datab => \VGA|row\(4),
	datac => \process_0~61_combout\,
	datad => \LessThan32~0_combout\,
	combout => \process_0~62_combout\);

-- Location: LCCOMB_X23_Y19_N18
\process_0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~64_combout\ = (\LessThan17~0_combout\ & (((\process_0~62_combout\)))) # (!\LessThan17~0_combout\ & (\process_0~63_combout\ & (\process_0~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan17~0_combout\,
	datab => \process_0~63_combout\,
	datac => \process_0~103_combout\,
	datad => \process_0~62_combout\,
	combout => \process_0~64_combout\);

-- Location: LCCOMB_X23_Y17_N4
\red[1]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~43_combout\ = ((\process_0~51_combout\ & \process_0~54_combout\)) # (!\process_0~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~51_combout\,
	datac => \process_0~54_combout\,
	datad => \process_0~64_combout\,
	combout => \red[1]~43_combout\);

-- Location: LCCOMB_X24_Y20_N20
\LessThan42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan42~0_combout\ = (\VGA|row\(9)) # ((\VGA|row\(8) & ((\VGA|row\(7)) # (\VGA|row\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(7),
	datab => \VGA|row\(9),
	datac => \VGA|row\(6),
	datad => \VGA|row\(8),
	combout => \LessThan42~0_combout\);

-- Location: LCCOMB_X24_Y20_N14
\LessThan42~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan42~1_combout\ = (\LessThan42~0_combout\) # ((\LessThan14~2_combout\ & ((\VGA|row\(2)) # (\VGA|row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(2),
	datab => \VGA|row\(3),
	datac => \LessThan42~0_combout\,
	datad => \LessThan14~2_combout\,
	combout => \LessThan42~1_combout\);

-- Location: LCCOMB_X24_Y20_N16
\process_0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~65_combout\ = (!\VGA|row\(9) & (\LessThan42~1_combout\ & ((\VGA|LessThan1~0_combout\) # (!\LessThan14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(9),
	datab => \VGA|LessThan1~0_combout\,
	datac => \LessThan42~1_combout\,
	datad => \LessThan14~3_combout\,
	combout => \process_0~65_combout\);

-- Location: LCCOMB_X25_Y17_N2
\red[1]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~48_combout\ = (\line38~regout\ & (!\process_0~51_combout\ & (\process_0~47_combout\ & \process_0~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line38~regout\,
	datab => \process_0~51_combout\,
	datac => \process_0~47_combout\,
	datad => \process_0~65_combout\,
	combout => \red[1]~48_combout\);

-- Location: LCCOMB_X25_Y17_N8
\red[1]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~49_combout\ = ((\process_0~51_combout\ & \process_0~47_combout\)) # (!\process_0~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~51_combout\,
	datac => \process_0~47_combout\,
	datad => \process_0~65_combout\,
	combout => \red[1]~49_combout\);

-- Location: LCCOMB_X25_Y17_N26
\red[1]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~50_combout\ = (\process_0~54_combout\ & (((\line40~regout\)))) # (!\process_0~54_combout\ & ((\process_0~65_combout\ & (\line39~regout\)) # (!\process_0~65_combout\ & ((\line40~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line39~regout\,
	datab => \line40~regout\,
	datac => \process_0~54_combout\,
	datad => \process_0~65_combout\,
	combout => \red[1]~50_combout\);

-- Location: LCCOMB_X25_Y17_N20
\red[1]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~51_combout\ = (\red[1]~47_combout\) # ((\red[1]~48_combout\) # ((\red[1]~49_combout\ & \red[1]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~47_combout\,
	datab => \red[1]~48_combout\,
	datac => \red[1]~49_combout\,
	datad => \red[1]~50_combout\,
	combout => \red[1]~51_combout\);

-- Location: LCCOMB_X23_Y16_N0
\red[1]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~44_combout\ = (\process_0~44_combout\ & (((\process_0~59_combout\) # (!\process_0~64_combout\)))) # (!\process_0~44_combout\ & (!\process_0~65_combout\ & ((\process_0~59_combout\) # (!\process_0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~44_combout\,
	datab => \process_0~65_combout\,
	datac => \process_0~59_combout\,
	datad => \process_0~64_combout\,
	combout => \red[1]~44_combout\);

-- Location: LCCOMB_X23_Y19_N20
\red[1]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~46_combout\ = (\red[1]~267_combout\ & (\process_0~65_combout\ & ((\process_0~59_combout\) # (!\process_0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~267_combout\,
	datab => \process_0~64_combout\,
	datac => \process_0~65_combout\,
	datad => \process_0~59_combout\,
	combout => \red[1]~46_combout\);

-- Location: LCCOMB_X24_Y17_N8
\red[1]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~52_combout\ = (\red[1]~45_combout\) # ((\red[1]~46_combout\) # ((\red[1]~51_combout\ & \red[1]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~45_combout\,
	datab => \red[1]~51_combout\,
	datac => \red[1]~44_combout\,
	datad => \red[1]~46_combout\,
	combout => \red[1]~52_combout\);

-- Location: LCCOMB_X24_Y21_N18
\LessThan31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan31~0_combout\ = (((!\VGA|row\(5) & !\VGA|row\(4))) # (!\VGA|row\(7))) # (!\VGA|row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(6),
	datab => \VGA|row\(5),
	datac => \VGA|row\(4),
	datad => \VGA|row\(7),
	combout => \LessThan31~0_combout\);

-- Location: LCCOMB_X24_Y21_N30
\process_0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~56_combout\ = (\LessThan17~0_combout\ & (\LessThan31~0_combout\ & ((\LessThan30~0_combout\) # (!\LessThan9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan30~0_combout\,
	datab => \LessThan17~0_combout\,
	datac => \LessThan9~3_combout\,
	datad => \LessThan31~0_combout\,
	combout => \process_0~56_combout\);

-- Location: LCCOMB_X24_Y18_N28
\red[1]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~40_combout\ = ((\process_0~51_combout\ & (\process_0~54_combout\ & \process_0~59_combout\))) # (!\process_0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~51_combout\,
	datab => \process_0~54_combout\,
	datac => \process_0~59_combout\,
	datad => \process_0~56_combout\,
	combout => \red[1]~40_combout\);

-- Location: LCCOMB_X23_Y21_N30
\red[1]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~36_combout\ = ((\process_0~34_combout\ & \process_0~27_combout\)) # (!\process_0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~40_combout\,
	datac => \process_0~34_combout\,
	datad => \process_0~27_combout\,
	combout => \red[1]~36_combout\);

-- Location: LCCOMB_X24_Y21_N14
\LessThan28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan28~0_combout\ = (\VGA|row\(4) & (\VGA|row\(3) & ((\VGA|row\(1)) # (\VGA|row\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(4),
	datab => \VGA|row\(3),
	datac => \VGA|row\(1),
	datad => \VGA|row\(2),
	combout => \LessThan28~0_combout\);

-- Location: LCCOMB_X24_Y21_N10
\process_0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~48_combout\ = (!\VGA|row\(7) & (\LessThan17~0_combout\ & ((\LessThan28~0_combout\) # (!\LessThan9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(7),
	datab => \LessThan28~0_combout\,
	datac => \LessThan9~2_combout\,
	datad => \LessThan17~0_combout\,
	combout => \process_0~48_combout\);

-- Location: LCCOMB_X24_Y21_N28
\LessThan29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan29~0_combout\ = ((!\VGA|row\(2) & (!\VGA|row\(3) & !\VGA|row\(1)))) # (!\LessThan10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|row\(2),
	datab => \VGA|row\(3),
	datac => \VGA|row\(1),
	datad => \LessThan10~0_combout\,
	combout => \LessThan29~0_combout\);

-- Location: LCCOMB_X21_Y18_N8
\process_0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~60_combout\ = (\process_0~48_combout\ & (!\process_0~59_combout\ & \LessThan29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~48_combout\,
	datac => \process_0~59_combout\,
	datad => \LessThan29~0_combout\,
	combout => \process_0~60_combout\);

-- Location: LCCOMB_X25_Y18_N28
\process_0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~41_combout\ = (!\VGA|column\(6) & (!\VGA|column\(5) & !\VGA|column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA|column\(6),
	datac => \VGA|column\(5),
	datad => \VGA|column\(4),
	combout => \process_0~41_combout\);

-- Location: LCCOMB_X25_Y18_N6
\process_0~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~102_combout\ = (\process_0~43_combout\ & (\process_0~42_combout\ & (\process_0~41_combout\ & \process_0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~43_combout\,
	datab => \process_0~42_combout\,
	datac => \process_0~41_combout\,
	datad => \process_0~56_combout\,
	combout => \process_0~102_combout\);

-- Location: LCCOMB_X24_Y21_N4
\process_0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~55_combout\ = (\LessThan9~3_combout\ & (\LessThan29~0_combout\ & ((\LessThan28~0_combout\) # (!\LessThan9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~2_combout\,
	datab => \LessThan28~0_combout\,
	datac => \LessThan9~3_combout\,
	datad => \LessThan29~0_combout\,
	combout => \process_0~55_combout\);

-- Location: LCCOMB_X25_Y18_N30
\process_0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~44_combout\ = ((!\process_0~43_combout\) # (!\process_0~42_combout\)) # (!\process_0~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~41_combout\,
	datac => \process_0~42_combout\,
	datad => \process_0~43_combout\,
	combout => \process_0~44_combout\);

-- Location: LCCOMB_X20_Y18_N0
\red[1]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~37_combout\ = (((\process_0~47_combout\ & \process_0~44_combout\)) # (!\LessThan29~0_combout\)) # (!\process_0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~48_combout\,
	datab => \LessThan29~0_combout\,
	datac => \process_0~47_combout\,
	datad => \process_0~44_combout\,
	combout => \red[1]~37_combout\);

-- Location: LCCOMB_X20_Y18_N22
\red[1]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~38_combout\ = (\red[1]~37_combout\ & (((\process_0~54_combout\ & \process_0~51_combout\)) # (!\process_0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~54_combout\,
	datab => \process_0~51_combout\,
	datac => \process_0~55_combout\,
	datad => \red[1]~37_combout\,
	combout => \red[1]~38_combout\);

-- Location: LCCOMB_X20_Y18_N26
\red[1]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~39_combout\ = (!\process_0~57_combout\ & (!\process_0~60_combout\ & (!\process_0~102_combout\ & \red[1]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~57_combout\,
	datab => \process_0~60_combout\,
	datac => \process_0~102_combout\,
	datad => \red[1]~38_combout\,
	combout => \red[1]~39_combout\);

-- Location: LCCOMB_X24_Y17_N12
\red[1]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~41_combout\ = (\red[1]~40_combout\ & (\red[1]~36_combout\ & \red[1]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \red[1]~40_combout\,
	datac => \red[1]~36_combout\,
	datad => \red[1]~39_combout\,
	combout => \red[1]~41_combout\);

-- Location: LCCOMB_X24_Y17_N26
\red[1]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~53_combout\ = (\red[1]~42_combout\ & (\red[1]~43_combout\ & (\red[1]~52_combout\ & \red[1]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~42_combout\,
	datab => \red[1]~43_combout\,
	datac => \red[1]~52_combout\,
	datad => \red[1]~41_combout\,
	combout => \red[1]~53_combout\);

-- Location: LCCOMB_X21_Y18_N10
\red[1]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~63_combout\ = (!\process_0~47_combout\ & (\line22~regout\ & (\process_0~55_combout\ & \process_0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~47_combout\,
	datab => \line22~regout\,
	datac => \process_0~55_combout\,
	datad => \process_0~44_combout\,
	combout => \red[1]~63_combout\);

-- Location: LCCOMB_X21_Y18_N4
\red[1]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~64_combout\ = (\red[1]~63_combout\) # ((\line21~regout\ & (!\process_0~44_combout\ & \process_0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line21~regout\,
	datab => \process_0~44_combout\,
	datac => \process_0~55_combout\,
	datad => \red[1]~63_combout\,
	combout => \red[1]~64_combout\);

-- Location: LCCOMB_X18_Y18_N14
\line25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line25~0_combout\ = (\line25~regout\) # ((\Equal8~1_combout\ & (\color21~0_combout\ & \Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => \color21~0_combout\,
	datac => \line25~regout\,
	datad => \Equal5~2_combout\,
	combout => \line25~0_combout\);

-- Location: LCFF_X18_Y18_N15
line25 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line25~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line25~regout\);

-- Location: LCCOMB_X21_Y18_N30
\red[1]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~65_combout\ = (\process_0~60_combout\ & (((\line25~regout\)))) # (!\process_0~60_combout\ & (\line26~regout\ & ((\process_0~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line26~regout\,
	datab => \line25~regout\,
	datac => \process_0~60_combout\,
	datad => \process_0~102_combout\,
	combout => \red[1]~65_combout\);

-- Location: LCCOMB_X22_Y18_N16
\red[1]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~66_combout\ = (\red[1]~36_combout\ & ((\red[1]~64_combout\) # ((\red[1]~38_combout\ & \red[1]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~38_combout\,
	datab => \red[1]~64_combout\,
	datac => \red[1]~65_combout\,
	datad => \red[1]~36_combout\,
	combout => \red[1]~66_combout\);

-- Location: LCCOMB_X22_Y18_N22
\line29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line29~0_combout\ = (\line29~regout\) # ((\Equal2~2_combout\ & (\color21~0_combout\ & \Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => \color21~0_combout\,
	datac => \line29~regout\,
	datad => \Equal4~1_combout\,
	combout => \line29~0_combout\);

-- Location: LCFF_X22_Y18_N23
line29 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line29~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line29~regout\);

-- Location: LCCOMB_X25_Y18_N20
\red[1]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~60_combout\ = (\line30~regout\ & (\process_0~54_combout\ & (!\process_0~59_combout\ & \process_0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line30~regout\,
	datab => \process_0~54_combout\,
	datac => \process_0~59_combout\,
	datad => \process_0~56_combout\,
	combout => \red[1]~60_combout\);

-- Location: LCCOMB_X25_Y18_N26
\red[1]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~61_combout\ = (\red[1]~60_combout\) # ((!\process_0~54_combout\ & (\line29~regout\ & \process_0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~54_combout\,
	datab => \line29~regout\,
	datac => \red[1]~60_combout\,
	datad => \process_0~56_combout\,
	combout => \red[1]~61_combout\);

-- Location: LCCOMB_X20_Y18_N6
\red[1]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~62_combout\ = (!\process_0~66_combout\ & (\red[1]~39_combout\ & (\red[1]~61_combout\ & \red[1]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~66_combout\,
	datab => \red[1]~39_combout\,
	datac => \red[1]~61_combout\,
	datad => \red[1]~36_combout\,
	combout => \red[1]~62_combout\);

-- Location: LCCOMB_X20_Y18_N16
\process_0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~57_combout\ = (!\process_0~47_combout\ & \process_0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_0~47_combout\,
	datad => \process_0~56_combout\,
	combout => \process_0~57_combout\);

-- Location: LCCOMB_X20_Y18_N12
\process_0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~66_combout\ = (!\process_0~51_combout\ & \process_0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_0~51_combout\,
	datad => \process_0~56_combout\,
	combout => \process_0~66_combout\);

-- Location: LCCOMB_X20_Y18_N28
\red[1]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~71_combout\ = (\process_0~57_combout\ & (\line27~regout\)) # (!\process_0~57_combout\ & (((\line28~regout\ & \process_0~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line27~regout\,
	datab => \line28~regout\,
	datac => \process_0~57_combout\,
	datad => \process_0~66_combout\,
	combout => \red[1]~71_combout\);

-- Location: LCCOMB_X20_Y18_N14
\red[1]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~70_combout\ = (!\process_0~60_combout\ & (!\process_0~102_combout\ & \red[1]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~60_combout\,
	datac => \process_0~102_combout\,
	datad => \red[1]~38_combout\,
	combout => \red[1]~70_combout\);

-- Location: LCCOMB_X20_Y18_N18
\red[1]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~72_combout\ = (\red[1]~36_combout\ & ((\red[1]~69_combout\) # ((\red[1]~71_combout\ & \red[1]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~69_combout\,
	datab => \red[1]~71_combout\,
	datac => \red[1]~70_combout\,
	datad => \red[1]~36_combout\,
	combout => \red[1]~72_combout\);

-- Location: LCCOMB_X21_Y17_N8
\red[1]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~75_combout\ = (\red[1]~74_combout\) # ((\red[1]~66_combout\) # ((\red[1]~62_combout\) # (\red[1]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~74_combout\,
	datab => \red[1]~66_combout\,
	datac => \red[1]~62_combout\,
	datad => \red[1]~72_combout\,
	combout => \red[1]~75_combout\);

-- Location: LCCOMB_X24_Y17_N28
\red[1]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~56_combout\ = (\line34~regout\ & (\process_0~51_combout\ & (!\process_0~54_combout\ & \process_0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line34~regout\,
	datab => \process_0~51_combout\,
	datac => \process_0~54_combout\,
	datad => \process_0~64_combout\,
	combout => \red[1]~56_combout\);

-- Location: LCCOMB_X24_Y17_N4
\red[1]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~54_combout\ = (!\process_0~47_combout\ & (\line32~regout\ & (\process_0~44_combout\ & \process_0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~47_combout\,
	datab => \line32~regout\,
	datac => \process_0~44_combout\,
	datad => \process_0~64_combout\,
	combout => \red[1]~54_combout\);

-- Location: LCCOMB_X24_Y17_N30
\red[1]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~55_combout\ = (\line33~regout\ & (!\process_0~51_combout\ & \process_0~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line33~regout\,
	datab => \process_0~51_combout\,
	datad => \process_0~64_combout\,
	combout => \red[1]~55_combout\);

-- Location: LCCOMB_X24_Y17_N22
\red[1]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~57_combout\ = (\red[1]~54_combout\) # ((\red[1]~42_combout\ & ((\red[1]~56_combout\) # (\red[1]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~42_combout\,
	datab => \red[1]~56_combout\,
	datac => \red[1]~54_combout\,
	datad => \red[1]~55_combout\,
	combout => \red[1]~57_combout\);

-- Location: LCCOMB_X25_Y17_N14
\red[1]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~58_combout\ = (\red[1]~57_combout\) # ((\line31~regout\ & (!\process_0~44_combout\ & \process_0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line31~regout\,
	datab => \process_0~44_combout\,
	datac => \process_0~64_combout\,
	datad => \red[1]~57_combout\,
	combout => \red[1]~58_combout\);

-- Location: LCCOMB_X25_Y17_N28
\red[1]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~59_combout\ = (\red[1]~40_combout\ & (\red[1]~36_combout\ & (\red[1]~58_combout\ & \red[1]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~40_combout\,
	datab => \red[1]~36_combout\,
	datac => \red[1]~58_combout\,
	datad => \red[1]~39_combout\,
	combout => \red[1]~59_combout\);

-- Location: LCCOMB_X21_Y17_N18
\red[1]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~76_combout\ = (\red[1]~35_combout\ & ((\red[1]~53_combout\) # ((\red[1]~75_combout\) # (\red[1]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~35_combout\,
	datab => \red[1]~53_combout\,
	datac => \red[1]~75_combout\,
	datad => \red[1]~59_combout\,
	combout => \red[1]~76_combout\);

-- Location: LCCOMB_X21_Y17_N28
\red[1]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~87_combout\ = (\red[1]~31_combout\ & ((\red[1]~81_combout\) # ((\red[1]~86_combout\) # (\red[1]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~31_combout\,
	datab => \red[1]~81_combout\,
	datac => \red[1]~86_combout\,
	datad => \red[1]~76_combout\,
	combout => \red[1]~87_combout\);

-- Location: LCCOMB_X21_Y17_N22
\red[1]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~99_combout\ = (\red[1]~26_combout\) # ((\red[1]~274_combout\ & ((\red[1]~98_combout\) # (\red[1]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~274_combout\,
	datab => \red[1]~98_combout\,
	datac => \red[1]~26_combout\,
	datad => \red[1]~87_combout\,
	combout => \red[1]~99_combout\);

-- Location: LCCOMB_X21_Y17_N24
\red[1]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~101_combout\ = (\process_0~17_combout\ & (\line1~regout\)) # (!\process_0~17_combout\ & (((!\red[1]~100_combout\ & \red[1]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line1~regout\,
	datab => \red[1]~100_combout\,
	datac => \process_0~17_combout\,
	datad => \red[1]~99_combout\,
	combout => \red[1]~101_combout\);

-- Location: LCCOMB_X23_Y17_N26
\red[1]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~102_combout\ = ((\process_0~34_combout\ & \process_0~27_combout\)) # (!\process_0~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~65_combout\,
	datab => \process_0~34_combout\,
	datac => \process_0~27_combout\,
	combout => \red[1]~102_combout\);

-- Location: LCCOMB_X23_Y18_N24
\process_0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~18_combout\ = (\VGA|column\(7) & (!\VGA|column\(4) & ((!\LessThan38~0_combout\) # (!\VGA|column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA|column\(1),
	datab => \VGA|column\(7),
	datac => \LessThan38~0_combout\,
	datad => \VGA|column\(4),
	combout => \process_0~18_combout\);

-- Location: LCCOMB_X23_Y15_N0
\process_0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~36_combout\ = (\process_0~20_combout\) # ((\process_0~18_combout\) # (\process_0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~20_combout\,
	datac => \process_0~18_combout\,
	datad => \process_0~21_combout\,
	combout => \process_0~36_combout\);

-- Location: LCCOMB_X23_Y15_N10
\red[1]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~105_combout\ = (!\VGA|column\(9) & (((!\process_0~24_combout\ & !\process_0~26_combout\)) # (!\process_0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~24_combout\,
	datab => \VGA|column\(9),
	datac => \process_0~36_combout\,
	datad => \process_0~26_combout\,
	combout => \red[1]~105_combout\);

-- Location: LCCOMB_X23_Y17_N14
\red[1]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~106_combout\ = (\process_0~34_combout\ & (\process_0~16_combout\ & !\red[1]~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~34_combout\,
	datac => \process_0~16_combout\,
	datad => \red[1]~105_combout\,
	combout => \red[1]~106_combout\);

-- Location: LCCOMB_X23_Y16_N14
\red[1]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~103_combout\ = ((\process_0~16_combout\ & \process_0~22_combout\)) # (!\process_0~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~16_combout\,
	datac => \process_0~22_combout\,
	datad => \process_0~65_combout\,
	combout => \red[1]~103_combout\);

-- Location: LCCOMB_X23_Y17_N8
\red[1]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~107_combout\ = (((\red[1]~104_combout\ & !\red[1]~106_combout\)) # (!\red[1]~103_combout\)) # (!\red[1]~102_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~104_combout\,
	datab => \red[1]~102_combout\,
	datac => \red[1]~106_combout\,
	datad => \red[1]~103_combout\,
	combout => \red[1]~107_combout\);

-- Location: LCCOMB_X22_Y21_N16
\red[1]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~31_combout\ = (\red[1]~30_combout\ & (\red[1]~29_combout\ & ((\process_0~27_combout\) # (!\process_0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~27_combout\,
	datab => \red[1]~30_combout\,
	datac => \process_0~38_combout\,
	datad => \red[1]~29_combout\,
	combout => \red[1]~31_combout\);

-- Location: LCCOMB_X21_Y17_N26
\red[1]~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~112_combout\ = (\red[1]~111_combout\ & ((\red[1]~31_combout\ & (\red[1]~107_combout\)) # (!\red[1]~31_combout\ & ((\red[1]~99_combout\))))) # (!\red[1]~111_combout\ & (((\red[1]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~111_combout\,
	datab => \red[1]~107_combout\,
	datac => \red[1]~31_combout\,
	datad => \red[1]~99_combout\,
	combout => \red[1]~112_combout\);

-- Location: LCCOMB_X21_Y17_N14
\red~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \red~113_combout\ = ((\red[1]~101_combout\) # ((\red[1]~274_combout\ & \red[1]~112_combout\))) # (!\green~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~274_combout\,
	datab => \green~1_combout\,
	datac => \red[1]~101_combout\,
	datad => \red[1]~112_combout\,
	combout => \red~113_combout\);

-- Location: LCCOMB_X24_Y16_N0
\red[0]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[0]~118_combout\ = ((\process_0~16_combout\ & \process_0~22_combout\)) # (!\process_0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~16_combout\,
	datac => \process_0~56_combout\,
	datad => \process_0~22_combout\,
	combout => \red[0]~118_combout\);

-- Location: LCCOMB_X24_Y16_N28
\red[0]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[0]~116_combout\ = (((\process_0~16_combout\ & \process_0~22_combout\)) # (!\process_0~48_combout\)) # (!\LessThan29~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan29~0_combout\,
	datab => \process_0~16_combout\,
	datac => \process_0~48_combout\,
	datad => \process_0~22_combout\,
	combout => \red[0]~116_combout\);

-- Location: LCCOMB_X24_Y16_N14
\red[0]~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[0]~117_combout\ = (\red[0]~116_combout\ & (((\process_0~34_combout\ & \process_0~27_combout\)) # (!\process_0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~55_combout\,
	datab => \process_0~34_combout\,
	datac => \process_0~27_combout\,
	datad => \red[0]~116_combout\,
	combout => \red[0]~117_combout\);

-- Location: LCCOMB_X21_Y16_N0
\red[0]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[0]~122_combout\ = (((!\red[0]~117_combout\) # (!\red[0]~118_combout\)) # (!\red[1]~102_combout\)) # (!\red[0]~121_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[0]~121_combout\,
	datab => \red[1]~102_combout\,
	datac => \red[0]~118_combout\,
	datad => \red[0]~117_combout\,
	combout => \red[0]~122_combout\);

-- Location: LCCOMB_X21_Y17_N4
\red[0]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[0]~115_combout\ = (!\red[1]~114_combout\ & (\green~1_combout\ & ((!\process_0~17_combout\) # (!\line1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~114_combout\,
	datab => \line1~regout\,
	datac => \process_0~17_combout\,
	datad => \green~1_combout\,
	combout => \red[0]~115_combout\);

-- Location: LCCOMB_X21_Y17_N16
\red[0]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[0]~124_combout\ = (\red[0]~115_combout\ & ((\red[0]~123_combout\ & (\red[0]~122_combout\)) # (!\red[0]~123_combout\ & ((\red[1]~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[0]~123_combout\,
	datab => \red[0]~122_combout\,
	datac => \red[0]~115_combout\,
	datad => \red[1]~99_combout\,
	combout => \red[0]~124_combout\);

-- Location: LCCOMB_X24_Y18_N2
\color3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color3~1_combout\ = (\color3~0_combout\ & ((\color1~0_combout\ & ((\turn~regout\))) # (!\color1~0_combout\ & (\color3~regout\)))) # (!\color3~0_combout\ & (((\color3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color3~0_combout\,
	datab => \color1~0_combout\,
	datac => \color3~regout\,
	datad => \turn~regout\,
	combout => \color3~1_combout\);

-- Location: LCFF_X24_Y18_N3
color3 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color3~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color3~regout\);

-- Location: LCCOMB_X18_Y18_N10
\color4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color4~0_combout\ = (\Equal8~1_combout\ & (\Equal4~1_combout\ & !\line4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => \Equal4~1_combout\,
	datac => \line4~regout\,
	combout => \color4~0_combout\);

-- Location: LCCOMB_X18_Y18_N4
\color4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color4~1_combout\ = (\color1~0_combout\ & ((\color4~0_combout\ & (\turn~regout\)) # (!\color4~0_combout\ & ((\color4~regout\))))) # (!\color1~0_combout\ & (((\color4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color1~0_combout\,
	datab => \turn~regout\,
	datac => \color4~regout\,
	datad => \color4~0_combout\,
	combout => \color4~1_combout\);

-- Location: LCFF_X18_Y18_N5
color4 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color4~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color4~regout\);

-- Location: LCCOMB_X20_Y16_N14
\color6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color6~1_combout\ = (\color6~0_combout\ & ((\color1~0_combout\ & ((\turn~regout\))) # (!\color1~0_combout\ & (\color6~regout\)))) # (!\color6~0_combout\ & (((\color6~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color6~0_combout\,
	datab => \color1~0_combout\,
	datac => \color6~regout\,
	datad => \turn~regout\,
	combout => \color6~1_combout\);

-- Location: LCFF_X20_Y16_N15
color6 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color6~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color6~regout\);

-- Location: LCCOMB_X22_Y21_N4
\red[1]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~89_combout\ = (\line6~regout\ & (\process_0~37_combout\ & (!\process_0~22_combout\ & \process_0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line6~regout\,
	datab => \process_0~37_combout\,
	datac => \process_0~22_combout\,
	datad => \process_0~16_combout\,
	combout => \red[1]~89_combout\);

-- Location: LCCOMB_X26_Y18_N6
\red[1]~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~129_combout\ = (\red[1]~89_combout\ & (((\process_0~27_combout\ & \process_0~34_combout\)) # (!\process_0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~27_combout\,
	datab => \process_0~14_combout\,
	datac => \process_0~34_combout\,
	datad => \red[1]~89_combout\,
	combout => \red[1]~129_combout\);

-- Location: LCCOMB_X22_Y21_N22
\red[1]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~88_combout\ = (\line5~regout\ & (!\process_0~16_combout\ & \process_0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line5~regout\,
	datac => \process_0~16_combout\,
	datad => \process_0~37_combout\,
	combout => \red[1]~88_combout\);

-- Location: LCCOMB_X26_Y18_N10
\red[1]~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~127_combout\ = (\red[1]~88_combout\ & (((\process_0~27_combout\ & \process_0~34_combout\)) # (!\process_0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~27_combout\,
	datab => \process_0~14_combout\,
	datac => \process_0~34_combout\,
	datad => \red[1]~88_combout\,
	combout => \red[1]~127_combout\);

-- Location: LCCOMB_X26_Y18_N22
\red[1]~212\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~212_combout\ = (\color5~regout\ & (!\color6~regout\ & (\red[1]~129_combout\))) # (!\color5~regout\ & ((\red[1]~127_combout\) # ((!\color6~regout\ & \red[1]~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color5~regout\,
	datab => \color6~regout\,
	datac => \red[1]~129_combout\,
	datad => \red[1]~127_combout\,
	combout => \red[1]~212_combout\);

-- Location: LCCOMB_X26_Y18_N0
\red[1]~213\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~213_combout\ = (!\process_0~35_combout\ & ((\red[1]~212_combout\) # ((\red[1]~23_combout\ & !\color4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~23_combout\,
	datab => \process_0~35_combout\,
	datac => \color4~regout\,
	datad => \red[1]~212_combout\,
	combout => \red[1]~213_combout\);

-- Location: LCCOMB_X26_Y18_N18
\red[1]~214\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~214_combout\ = (\red[1]~211_combout\) # ((\red[1]~213_combout\) # ((\red[1]~22_combout\ & !\color3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~211_combout\,
	datab => \red[1]~22_combout\,
	datac => \color3~regout\,
	datad => \red[1]~213_combout\,
	combout => \red[1]~214_combout\);

-- Location: LCCOMB_X22_Y21_N18
\red[1]~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~138_combout\ = (\red[1]~34_combout\ & (\red[1]~29_combout\ & ((\process_0~27_combout\) # (!\process_0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~27_combout\,
	datab => \process_0~38_combout\,
	datac => \red[1]~34_combout\,
	datad => \red[1]~29_combout\,
	combout => \red[1]~138_combout\);

-- Location: LCCOMB_X20_Y17_N28
\color27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color27~0_combout\ = (!\line27~regout\ & (\Equal2~2_combout\ & \Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line27~regout\,
	datac => \Equal2~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \color27~0_combout\);

-- Location: LCCOMB_X20_Y17_N18
\color27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color27~1_combout\ = (\color21~0_combout\ & ((\color27~0_combout\ & (\turn~regout\)) # (!\color27~0_combout\ & ((\color27~regout\))))) # (!\color21~0_combout\ & (((\color27~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \color21~0_combout\,
	datac => \color27~regout\,
	datad => \color27~0_combout\,
	combout => \color27~1_combout\);

-- Location: LCFF_X20_Y17_N19
color27 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color27~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color27~regout\);

-- Location: LCCOMB_X19_Y18_N6
\line24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line24~0_combout\ = (\line24~regout\) # ((\Equal8~1_combout\ & (\color21~0_combout\ & \Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => \color21~0_combout\,
	datac => \line24~regout\,
	datad => \Equal4~1_combout\,
	combout => \line24~0_combout\);

-- Location: LCFF_X19_Y18_N7
line24 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line24~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line24~regout\);

-- Location: LCCOMB_X19_Y18_N22
\color24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color24~0_combout\ = (\Equal8~1_combout\ & (!\line24~regout\ & \Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal8~1_combout\,
	datab => \line24~regout\,
	datac => \Equal4~1_combout\,
	combout => \color24~0_combout\);

-- Location: LCCOMB_X19_Y18_N30
\color24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color24~1_combout\ = (\color21~0_combout\ & ((\color24~0_combout\ & (\turn~regout\)) # (!\color24~0_combout\ & ((\color24~regout\))))) # (!\color21~0_combout\ & (((\color24~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \color21~0_combout\,
	datac => \color24~regout\,
	datad => \color24~0_combout\,
	combout => \color24~1_combout\);

-- Location: LCFF_X19_Y18_N31
color24 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color24~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color24~regout\);

-- Location: LCCOMB_X20_Y18_N2
\red[1]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~68_combout\ = (\process_0~51_combout\ & (\line24~regout\ & (\process_0~55_combout\ & !\process_0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~51_combout\,
	datab => \line24~regout\,
	datac => \process_0~55_combout\,
	datad => \process_0~54_combout\,
	combout => \red[1]~68_combout\);

-- Location: LCCOMB_X20_Y18_N30
\red[1]~221\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~221_combout\ = (\red[1]~37_combout\ & (!\color24~regout\ & \red[1]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \red[1]~37_combout\,
	datac => \color24~regout\,
	datad => \red[1]~68_combout\,
	combout => \red[1]~221_combout\);

-- Location: LCCOMB_X19_Y18_N26
\color26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color26~0_combout\ = (!\line26~regout\ & (\Equal9~0_combout\ & \Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line26~regout\,
	datac => \Equal9~0_combout\,
	datad => \Equal2~2_combout\,
	combout => \color26~0_combout\);

-- Location: LCCOMB_X19_Y18_N18
\color26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color26~1_combout\ = (\color21~0_combout\ & ((\color26~0_combout\ & (\turn~regout\)) # (!\color26~0_combout\ & ((\color26~regout\))))) # (!\color21~0_combout\ & (((\color26~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \color21~0_combout\,
	datac => \color26~regout\,
	datad => \color26~0_combout\,
	combout => \color26~1_combout\);

-- Location: LCFF_X19_Y18_N19
color26 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color26~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color26~regout\);

-- Location: LCCOMB_X19_Y18_N12
\color22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color22~0_combout\ = (!\line22~regout\ & (\Equal8~1_combout\ & \Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line22~regout\,
	datac => \Equal8~1_combout\,
	datad => \Equal0~3_combout\,
	combout => \color22~0_combout\);

-- Location: LCCOMB_X19_Y18_N24
\color22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color22~1_combout\ = (\color21~0_combout\ & ((\color22~0_combout\ & (\turn~regout\)) # (!\color22~0_combout\ & ((\color22~regout\))))) # (!\color21~0_combout\ & (((\color22~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \color21~0_combout\,
	datac => \color22~regout\,
	datad => \color22~0_combout\,
	combout => \color22~1_combout\);

-- Location: LCFF_X19_Y18_N25
color22 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color22~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color22~regout\);

-- Location: LCCOMB_X18_Y18_N26
\color25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color25~1_combout\ = (\color25~0_combout\ & ((\color21~0_combout\ & ((\turn~regout\))) # (!\color21~0_combout\ & (\color25~regout\)))) # (!\color25~0_combout\ & (((\color25~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color25~0_combout\,
	datab => \color21~0_combout\,
	datac => \color25~regout\,
	datad => \turn~regout\,
	combout => \color25~1_combout\);

-- Location: LCFF_X18_Y18_N27
color25 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color25~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color25~regout\);

-- Location: LCCOMB_X21_Y18_N12
\red[1]~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~141_combout\ = (\process_0~60_combout\ & (\line25~regout\ & \red[1]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~60_combout\,
	datac => \line25~regout\,
	datad => \red[1]~38_combout\,
	combout => \red[1]~141_combout\);

-- Location: LCCOMB_X21_Y18_N20
\red[1]~222\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~222_combout\ = (\red[1]~63_combout\ & (((!\color25~regout\ & \red[1]~141_combout\)) # (!\color22~regout\))) # (!\red[1]~63_combout\ & (((!\color25~regout\ & \red[1]~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~63_combout\,
	datab => \color22~regout\,
	datac => \color25~regout\,
	datad => \red[1]~141_combout\,
	combout => \red[1]~222_combout\);

-- Location: LCCOMB_X19_Y18_N20
\drawn26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawn26~0_combout\ = (\line26~regout\) # ((\Equal9~0_combout\ & (\color21~0_combout\ & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => \color21~0_combout\,
	datac => \line26~regout\,
	datad => \Equal2~2_combout\,
	combout => \drawn26~0_combout\);

-- Location: LCFF_X19_Y18_N21
line26 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \drawn26~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line26~regout\);

-- Location: LCCOMB_X21_Y18_N22
\red[1]~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~146_combout\ = (\process_0~102_combout\ & (!\process_0~60_combout\ & (\line26~regout\ & \red[1]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~102_combout\,
	datab => \process_0~60_combout\,
	datac => \line26~regout\,
	datad => \red[1]~38_combout\,
	combout => \red[1]~146_combout\);

-- Location: LCCOMB_X21_Y18_N28
\red[1]~224\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~224_combout\ = (\red[1]~223_combout\) # ((\red[1]~222_combout\) # ((!\color26~regout\ & \red[1]~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~223_combout\,
	datab => \color26~regout\,
	datac => \red[1]~222_combout\,
	datad => \red[1]~146_combout\,
	combout => \red[1]~224_combout\);

-- Location: LCCOMB_X21_Y18_N18
\red[1]~225\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~225_combout\ = (\red[1]~221_combout\) # ((\red[1]~224_combout\) # ((\red[1]~269_combout\ & !\color27~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~269_combout\,
	datab => \color27~regout\,
	datac => \red[1]~221_combout\,
	datad => \red[1]~224_combout\,
	combout => \red[1]~225_combout\);

-- Location: LCCOMB_X22_Y16_N14
\red[0]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[0]~120_combout\ = (\process_0~34_combout\ & (((\process_0~27_combout\) # (!\process_0~56_combout\)))) # (!\process_0~34_combout\ & (!\process_0~64_combout\ & (!\process_0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~34_combout\,
	datab => \process_0~64_combout\,
	datac => \process_0~56_combout\,
	datad => \process_0~27_combout\,
	combout => \red[0]~120_combout\);

-- Location: LCCOMB_X22_Y16_N28
\red[0]~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[0]~119_combout\ = ((\process_0~16_combout\ & (\process_0~22_combout\ & \process_0~27_combout\))) # (!\process_0~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~16_combout\,
	datab => \process_0~64_combout\,
	datac => \process_0~22_combout\,
	datad => \process_0~27_combout\,
	combout => \red[0]~119_combout\);

-- Location: LCCOMB_X22_Y16_N6
\red[0]~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[0]~193_combout\ = (\red[0]~120_combout\ & \red[0]~119_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \red[0]~120_combout\,
	datad => \red[0]~119_combout\,
	combout => \red[0]~193_combout\);

-- Location: LCCOMB_X20_Y16_N2
\color5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color5~0_combout\ = (\Equal2~2_combout\ & (\Equal9~0_combout\ & !\line5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~2_combout\,
	datac => \Equal9~0_combout\,
	datad => \line5~regout\,
	combout => \color5~0_combout\);

-- Location: LCCOMB_X24_Y16_N18
\color5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color5~1_combout\ = (\color5~0_combout\ & ((\color1~0_combout\ & (\turn~regout\)) # (!\color1~0_combout\ & ((\color5~regout\))))) # (!\color5~0_combout\ & (((\color5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \color5~0_combout\,
	datac => \color5~regout\,
	datad => \color1~0_combout\,
	combout => \color5~1_combout\);

-- Location: LCFF_X24_Y16_N19
color5 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color5~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color5~regout\);

-- Location: LCCOMB_X24_Y16_N24
\red[1]~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~186_combout\ = (\scoreAdded5~regout\ & (!\process_0~16_combout\ & \process_0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scoreAdded5~regout\,
	datac => \process_0~16_combout\,
	datad => \process_0~56_combout\,
	combout => \red[1]~186_combout\);

-- Location: LCCOMB_X24_Y16_N22
\red[1]~226\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~226_combout\ = (\scoreAdded6~regout\ & (\color6~regout\ & (\process_0~16_combout\ & \process_0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scoreAdded6~regout\,
	datab => \color6~regout\,
	datac => \process_0~16_combout\,
	datad => \process_0~56_combout\,
	combout => \red[1]~226_combout\);

-- Location: LCCOMB_X24_Y16_N4
\red[1]~227\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~227_combout\ = (\process_0~22_combout\ & (\color5~regout\ & (\red[1]~186_combout\))) # (!\process_0~22_combout\ & ((\red[1]~226_combout\) # ((\color5~regout\ & \red[1]~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~22_combout\,
	datab => \color5~regout\,
	datac => \red[1]~186_combout\,
	datad => \red[1]~226_combout\,
	combout => \red[1]~227_combout\);

-- Location: LCCOMB_X23_Y16_N28
\red[1]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~108_combout\ = (\process_0~54_combout\ & (\process_0~47_combout\ & (\process_0~44_combout\ & \process_0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~54_combout\,
	datab => \process_0~47_combout\,
	datac => \process_0~44_combout\,
	datad => \process_0~51_combout\,
	combout => \red[1]~108_combout\);

-- Location: LCCOMB_X23_Y16_N6
\red[1]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~109_combout\ = (\process_0~59_combout\ & (((\red[1]~108_combout\)) # (!\process_0~65_combout\))) # (!\process_0~59_combout\ & (!\process_0~65_combout\ & (!\process_0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~59_combout\,
	datab => \process_0~65_combout\,
	datac => \process_0~64_combout\,
	datad => \red[1]~108_combout\,
	combout => \red[1]~109_combout\);

-- Location: LCCOMB_X24_Y16_N10
\red[1]~228\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~228_combout\ = (\red[0]~117_combout\ & (\red[1]~227_combout\ & \red[1]~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \red[0]~117_combout\,
	datac => \red[1]~227_combout\,
	datad => \red[1]~109_combout\,
	combout => \red[1]~228_combout\);

-- Location: LCCOMB_X20_Y16_N22
\color14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color14~1_combout\ = (\color14~0_combout\ & ((\color1~0_combout\ & ((\turn~regout\))) # (!\color1~0_combout\ & (\color14~regout\)))) # (!\color14~0_combout\ & (((\color14~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color14~0_combout\,
	datab => \color1~0_combout\,
	datac => \color14~regout\,
	datad => \turn~regout\,
	combout => \color14~1_combout\);

-- Location: LCFF_X20_Y16_N23
color14 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color14~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color14~regout\);

-- Location: LCCOMB_X21_Y16_N6
\scoreAdded13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \scoreAdded13~0_combout\ = (\scoreAdded13~regout\) # ((\process_0~84_combout\ & \line13~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~84_combout\,
	datac => \scoreAdded13~regout\,
	datad => \line13~regout\,
	combout => \scoreAdded13~0_combout\);

-- Location: LCFF_X21_Y16_N7
scoreAdded13 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \scoreAdded13~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scoreAdded13~regout\);

-- Location: LCCOMB_X24_Y16_N16
\red[1]~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~190_combout\ = (!\process_0~16_combout\ & (\process_0~65_combout\ & \scoreAdded13~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~16_combout\,
	datac => \process_0~65_combout\,
	datad => \scoreAdded13~regout\,
	combout => \red[1]~190_combout\);

-- Location: LCCOMB_X24_Y16_N30
\red[1]~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~191_combout\ = (\process_0~65_combout\ & (\process_0~16_combout\ & (\scoreAdded14~regout\ & !\process_0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~65_combout\,
	datab => \process_0~16_combout\,
	datac => \scoreAdded14~regout\,
	datad => \process_0~22_combout\,
	combout => \red[1]~191_combout\);

-- Location: LCCOMB_X24_Y16_N20
\red[1]~229\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~229_combout\ = (\color13~regout\ & ((\red[1]~190_combout\) # ((\color14~regout\ & \red[1]~191_combout\)))) # (!\color13~regout\ & (\color14~regout\ & ((\red[1]~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color13~regout\,
	datab => \color14~regout\,
	datac => \red[1]~190_combout\,
	datad => \red[1]~191_combout\,
	combout => \red[1]~229_combout\);

-- Location: LCCOMB_X23_Y16_N8
\red[1]~230\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~230_combout\ = (\red[1]~228_combout\) # ((\red[1]~176_combout\ & (\red[0]~193_combout\ & \red[1]~229_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~176_combout\,
	datab => \red[0]~193_combout\,
	datac => \red[1]~228_combout\,
	datad => \red[1]~229_combout\,
	combout => \red[1]~230_combout\);

-- Location: LCCOMB_X26_Y17_N12
\color30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color30~1_combout\ = (\color30~0_combout\ & ((\color21~0_combout\ & ((\turn~regout\))) # (!\color21~0_combout\ & (\color30~regout\)))) # (!\color30~0_combout\ & (((\color30~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color30~0_combout\,
	datab => \color21~0_combout\,
	datac => \color30~regout\,
	datad => \turn~regout\,
	combout => \color30~1_combout\);

-- Location: LCFF_X26_Y17_N13
color30 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color30~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color30~regout\);

-- Location: LCCOMB_X23_Y17_N0
\red[1]~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~150_combout\ = (!\process_0~51_combout\ & (\line28~regout\ & \process_0~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~51_combout\,
	datab => \line28~regout\,
	datad => \process_0~56_combout\,
	combout => \red[1]~150_combout\);

-- Location: LCCOMB_X25_Y18_N18
\red[1]~270\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~270_combout\ = (\red[1]~60_combout\ & ((\process_0~51_combout\) # (!\process_0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~56_combout\,
	datac => \red[1]~60_combout\,
	datad => \process_0~51_combout\,
	combout => \red[1]~270_combout\);

-- Location: LCCOMB_X24_Y17_N2
\red[1]~237\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~237_combout\ = (\color28~regout\ & (!\color30~regout\ & ((\red[1]~270_combout\)))) # (!\color28~regout\ & ((\red[1]~150_combout\) # ((!\color30~regout\ & \red[1]~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color28~regout\,
	datab => \color30~regout\,
	datac => \red[1]~150_combout\,
	datad => \red[1]~270_combout\,
	combout => \red[1]~237_combout\);

-- Location: LCCOMB_X22_Y18_N18
\color34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color34~0_combout\ = (\Equal3~0_combout\ & (!\line34~regout\ & \Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~0_combout\,
	datac => \line34~regout\,
	datad => \Equal4~1_combout\,
	combout => \color34~0_combout\);

-- Location: LCCOMB_X22_Y18_N20
\color34~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color34~1_combout\ = (\color21~0_combout\ & ((\color34~0_combout\ & (\turn~regout\)) # (!\color34~0_combout\ & ((\color34~regout\))))) # (!\color21~0_combout\ & (((\color34~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \color21~0_combout\,
	datac => \color34~regout\,
	datad => \color34~0_combout\,
	combout => \color34~1_combout\);

-- Location: LCFF_X22_Y18_N21
color34 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color34~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color34~regout\);

-- Location: LCCOMB_X25_Y17_N30
\red[1]~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~149_combout\ = (\red[1]~40_combout\ & (((\process_0~47_combout\ & \process_0~44_combout\)) # (!\process_0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~47_combout\,
	datab => \process_0~44_combout\,
	datac => \process_0~64_combout\,
	datad => \red[1]~40_combout\,
	combout => \red[1]~149_combout\);

-- Location: LCCOMB_X24_Y17_N16
\red[1]~236\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~236_combout\ = (\red[1]~56_combout\ & (!\color34~regout\ & \red[1]~149_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \red[1]~56_combout\,
	datac => \color34~regout\,
	datad => \red[1]~149_combout\,
	combout => \red[1]~236_combout\);

-- Location: LCCOMB_X25_Y17_N6
\red[1]~271\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~271_combout\ = (\red[1]~149_combout\ & (((\process_0~51_combout\ & \process_0~54_combout\)) # (!\process_0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~51_combout\,
	datab => \process_0~54_combout\,
	datac => \process_0~64_combout\,
	datad => \red[1]~149_combout\,
	combout => \red[1]~271_combout\);

-- Location: LCCOMB_X24_Y17_N18
\red[1]~240\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~240_combout\ = (\red[1]~237_combout\) # ((\red[1]~236_combout\) # ((\red[1]~239_combout\ & \red[1]~271_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~239_combout\,
	datab => \red[1]~237_combout\,
	datac => \red[1]~236_combout\,
	datad => \red[1]~271_combout\,
	combout => \red[1]~240_combout\);

-- Location: LCCOMB_X26_Y18_N4
\red[1]~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~166_combout\ = (\scoreAdded4~regout\ & (\process_0~55_combout\ & (!\process_0~34_combout\ & \process_0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scoreAdded4~regout\,
	datab => \process_0~55_combout\,
	datac => \process_0~34_combout\,
	datad => \process_0~27_combout\,
	combout => \red[1]~166_combout\);

-- Location: LCCOMB_X22_Y20_N6
\scoreAdded3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \scoreAdded3~0_combout\ = (\scoreAdded3~regout\) # ((\process_0~79_combout\ & \line7~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~79_combout\,
	datac => \scoreAdded3~regout\,
	datad => \line7~regout\,
	combout => \scoreAdded3~0_combout\);

-- Location: LCFF_X22_Y20_N7
scoreAdded3 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \scoreAdded3~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scoreAdded3~regout\);

-- Location: LCCOMB_X26_Y18_N30
\red[1]~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~165_combout\ = (\scoreAdded3~regout\ & (\process_0~55_combout\ & !\process_0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scoreAdded3~regout\,
	datac => \process_0~55_combout\,
	datad => \process_0~27_combout\,
	combout => \red[1]~165_combout\);

-- Location: LCCOMB_X26_Y18_N16
\red[1]~234\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~234_combout\ = (\color4~regout\ & ((\red[1]~166_combout\) # ((\color3~regout\ & \red[1]~165_combout\)))) # (!\color4~regout\ & (\color3~regout\ & ((\red[1]~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color4~regout\,
	datab => \color3~regout\,
	datac => \red[1]~166_combout\,
	datad => \red[1]~165_combout\,
	combout => \red[1]~234_combout\);

-- Location: LCCOMB_X24_Y18_N16
\red[1]~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~153_combout\ = (\line29~regout\ & (!\process_0~54_combout\ & (\process_0~51_combout\ & \process_0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line29~regout\,
	datab => \process_0~54_combout\,
	datac => \process_0~51_combout\,
	datad => \process_0~56_combout\,
	combout => \red[1]~153_combout\);

-- Location: LCCOMB_X20_Y17_N4
\color29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color29~0_combout\ = (!\line29~regout\ & (\Equal2~2_combout\ & \Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line29~regout\,
	datab => \Equal2~2_combout\,
	datad => \Equal4~1_combout\,
	combout => \color29~0_combout\);

-- Location: LCCOMB_X20_Y17_N26
\color29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color29~1_combout\ = (\color29~0_combout\ & ((\color21~0_combout\ & (\turn~regout\)) # (!\color21~0_combout\ & ((\color29~regout\))))) # (!\color29~0_combout\ & (((\color29~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \color29~0_combout\,
	datac => \color29~regout\,
	datad => \color21~0_combout\,
	combout => \color29~1_combout\);

-- Location: LCFF_X20_Y17_N27
color29 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color29~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color29~regout\);

-- Location: LCCOMB_X25_Y17_N12
\red[1]~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~152_combout\ = (\line31~regout\ & (!\process_0~44_combout\ & (\process_0~64_combout\ & \red[1]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line31~regout\,
	datab => \process_0~44_combout\,
	datac => \process_0~64_combout\,
	datad => \red[1]~40_combout\,
	combout => \red[1]~152_combout\);

-- Location: LCCOMB_X25_Y17_N4
\red[1]~233\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~233_combout\ = (\color31~regout\ & (\red[1]~153_combout\ & (!\color29~regout\))) # (!\color31~regout\ & ((\red[1]~152_combout\) # ((\red[1]~153_combout\ & !\color29~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color31~regout\,
	datab => \red[1]~153_combout\,
	datac => \color29~regout\,
	datad => \red[1]~152_combout\,
	combout => \red[1]~233_combout\);

-- Location: LCCOMB_X25_Y17_N0
\red[1]~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~169_combout\ = (\red[1]~168_combout\ & (\red[1]~49_combout\ & (\red[0]~116_combout\ & \red[1]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~168_combout\,
	datab => \red[1]~49_combout\,
	datac => \red[0]~116_combout\,
	datad => \red[1]~44_combout\,
	combout => \red[1]~169_combout\);

-- Location: LCCOMB_X25_Y17_N18
\red[1]~235\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~235_combout\ = (\red[1]~233_combout\) # ((\red[1]~271_combout\ & (\red[1]~234_combout\ & \red[1]~169_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~271_combout\,
	datab => \red[1]~234_combout\,
	datac => \red[1]~233_combout\,
	datad => \red[1]~169_combout\,
	combout => \red[1]~235_combout\);

-- Location: LCCOMB_X22_Y17_N14
\red[1]~241\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~241_combout\ = (\red[1]~232_combout\) # ((\red[1]~240_combout\) # (\red[1]~235_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~232_combout\,
	datab => \red[1]~240_combout\,
	datad => \red[1]~235_combout\,
	combout => \red[1]~241_combout\);

-- Location: LCCOMB_X23_Y16_N26
\red[1]~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~175_combout\ = ((\process_0~34_combout\ & \process_0~27_combout\)) # (!\process_0~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~34_combout\,
	datac => \process_0~55_combout\,
	datad => \process_0~27_combout\,
	combout => \red[1]~175_combout\);

-- Location: LCCOMB_X23_Y16_N24
\red[1]~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~176_combout\ = (\red[1]~109_combout\ & (\red[1]~175_combout\ & (\red[0]~118_combout\ & \red[0]~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~109_combout\,
	datab => \red[1]~175_combout\,
	datac => \red[0]~118_combout\,
	datad => \red[0]~116_combout\,
	combout => \red[1]~176_combout\);

-- Location: LCCOMB_X23_Y19_N12
\color35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color35~0_combout\ = (!\line35~regout\ & (\Equal5~2_combout\ & \Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line35~regout\,
	datab => \Equal5~2_combout\,
	datad => \Equal3~0_combout\,
	combout => \color35~0_combout\);

-- Location: LCCOMB_X22_Y18_N6
\color35~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color35~1_combout\ = (\color21~0_combout\ & ((\color35~0_combout\ & (\turn~regout\)) # (!\color35~0_combout\ & ((\color35~regout\))))) # (!\color21~0_combout\ & (((\color35~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \color21~0_combout\,
	datac => \color35~regout\,
	datad => \color35~0_combout\,
	combout => \color35~1_combout\);

-- Location: LCFF_X22_Y18_N7
color35 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color35~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color35~regout\);

-- Location: LCCOMB_X23_Y16_N10
\red[1]~272\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~272_combout\ = (\red[1]~44_combout\ & (((\process_0~51_combout\ & \process_0~47_combout\)) # (!\process_0~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~65_combout\,
	datab => \process_0~51_combout\,
	datac => \process_0~47_combout\,
	datad => \red[1]~44_combout\,
	combout => \red[1]~272_combout\);

-- Location: LCCOMB_X24_Y19_N24
\color39~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color39~1_combout\ = (\color39~0_combout\ & ((\color21~0_combout\ & ((\turn~regout\))) # (!\color21~0_combout\ & (\color39~regout\)))) # (!\color39~0_combout\ & (((\color39~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color39~0_combout\,
	datab => \color21~0_combout\,
	datac => \color39~regout\,
	datad => \turn~regout\,
	combout => \color39~1_combout\);

-- Location: LCFF_X24_Y19_N25
color39 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color39~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color39~regout\);

-- Location: LCCOMB_X23_Y19_N16
\red[1]~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~162_combout\ = (\line40~regout\ & (\process_0~65_combout\ & (\process_0~54_combout\ & !\process_0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line40~regout\,
	datab => \process_0~65_combout\,
	datac => \process_0~54_combout\,
	datad => \process_0~59_combout\,
	combout => \red[1]~162_combout\);

-- Location: LCCOMB_X23_Y19_N10
\red[1]~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~161_combout\ = (\line39~regout\ & (\process_0~65_combout\ & !\process_0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line39~regout\,
	datac => \process_0~65_combout\,
	datad => \process_0~54_combout\,
	combout => \red[1]~161_combout\);

-- Location: LCCOMB_X23_Y19_N28
\red[1]~246\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~246_combout\ = (\color40~regout\ & (!\color39~regout\ & ((\red[1]~161_combout\)))) # (!\color40~regout\ & ((\red[1]~162_combout\) # ((!\color39~regout\ & \red[1]~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color40~regout\,
	datab => \color39~regout\,
	datac => \red[1]~162_combout\,
	datad => \red[1]~161_combout\,
	combout => \red[1]~246_combout\);

-- Location: LCCOMB_X22_Y16_N20
\red[1]~247\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~247_combout\ = (\red[1]~45_combout\ & (((\red[1]~272_combout\ & \red[1]~246_combout\)) # (!\color35~regout\))) # (!\red[1]~45_combout\ & (((\red[1]~272_combout\ & \red[1]~246_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~45_combout\,
	datab => \color35~regout\,
	datac => \red[1]~272_combout\,
	datad => \red[1]~246_combout\,
	combout => \red[1]~247_combout\);

-- Location: LCCOMB_X22_Y16_N4
\red[0]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[0]~121_combout\ = (\red[1]~103_combout\ & (\red[0]~120_combout\ & \red[0]~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \red[1]~103_combout\,
	datac => \red[0]~120_combout\,
	datad => \red[0]~119_combout\,
	combout => \red[0]~121_combout\);

-- Location: LCCOMB_X19_Y19_N2
\drawn8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \drawn8~0_combout\ = (\line8~regout\) # ((\Equal4~1_combout\ & (\Equal2~2_combout\ & \color1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \Equal2~2_combout\,
	datac => \line8~regout\,
	datad => \color1~0_combout\,
	combout => \drawn8~0_combout\);

-- Location: LCFF_X19_Y19_N3
line8 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \drawn8~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line8~regout\);

-- Location: LCCOMB_X22_Y18_N4
\color8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color8~0_combout\ = (\Equal2~2_combout\ & (!\line8~regout\ & \Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~2_combout\,
	datac => \line8~regout\,
	datad => \Equal4~1_combout\,
	combout => \color8~0_combout\);

-- Location: LCCOMB_X22_Y18_N24
\color8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color8~1_combout\ = (\color1~0_combout\ & ((\color8~0_combout\ & ((\turn~regout\))) # (!\color8~0_combout\ & (\color8~regout\)))) # (!\color1~0_combout\ & (((\color8~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color1~0_combout\,
	datab => \color8~0_combout\,
	datac => \color8~regout\,
	datad => \turn~regout\,
	combout => \color8~1_combout\);

-- Location: LCFF_X22_Y18_N25
color8 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color8~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color8~regout\);

-- Location: LCCOMB_X22_Y20_N8
\red[1]~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~180_combout\ = (\scoreAdded8~regout\ & (\process_0~56_combout\ & (!\process_0~34_combout\ & \process_0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scoreAdded8~regout\,
	datab => \process_0~56_combout\,
	datac => \process_0~34_combout\,
	datad => \process_0~27_combout\,
	combout => \red[1]~180_combout\);

-- Location: LCCOMB_X22_Y20_N0
\scoreAdded7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \scoreAdded7~0_combout\ = (\scoreAdded7~regout\) # ((\process_0~80_combout\ & \line7~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~80_combout\,
	datab => \line7~regout\,
	datac => \scoreAdded7~regout\,
	combout => \scoreAdded7~0_combout\);

-- Location: LCFF_X22_Y20_N1
scoreAdded7 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \scoreAdded7~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scoreAdded7~regout\);

-- Location: LCCOMB_X22_Y20_N10
\red[1]~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~179_combout\ = (\scoreAdded7~regout\ & (\process_0~56_combout\ & !\process_0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scoreAdded7~regout\,
	datac => \process_0~56_combout\,
	datad => \process_0~27_combout\,
	combout => \red[1]~179_combout\);

-- Location: LCCOMB_X22_Y20_N16
\red[1]~248\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~248_combout\ = (\color7~regout\ & ((\red[1]~179_combout\) # ((\color8~regout\ & \red[1]~180_combout\)))) # (!\color7~regout\ & (\color8~regout\ & (\red[1]~180_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color7~regout\,
	datab => \color8~regout\,
	datac => \red[1]~180_combout\,
	datad => \red[1]~179_combout\,
	combout => \red[1]~248_combout\);

-- Location: LCCOMB_X22_Y16_N30
\red[1]~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~177_combout\ = ((\process_0~34_combout\ & \process_0~27_combout\)) # (!\process_0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~34_combout\,
	datab => \process_0~56_combout\,
	datad => \process_0~27_combout\,
	combout => \red[1]~177_combout\);

-- Location: LCCOMB_X20_Y20_N10
\color10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color10~0_combout\ = (\Equal0~3_combout\ & (\Equal3~0_combout\ & !\line10~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal3~0_combout\,
	datad => \line10~regout\,
	combout => \color10~0_combout\);

-- Location: LCCOMB_X20_Y20_N24
\color10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color10~1_combout\ = (\color1~0_combout\ & ((\color10~0_combout\ & (\turn~regout\)) # (!\color10~0_combout\ & ((\color10~regout\))))) # (!\color1~0_combout\ & (((\color10~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color1~0_combout\,
	datab => \turn~regout\,
	datac => \color10~regout\,
	datad => \color10~0_combout\,
	combout => \color10~1_combout\);

-- Location: LCFF_X20_Y20_N25
color10 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color10~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color10~regout\);

-- Location: LCCOMB_X22_Y16_N24
\red[1]~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~182_combout\ = (\scoreAdded9~regout\ & (!\process_0~16_combout\ & \process_0~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scoreAdded9~regout\,
	datac => \process_0~16_combout\,
	datad => \process_0~64_combout\,
	combout => \red[1]~182_combout\);

-- Location: LCCOMB_X22_Y16_N10
\red[1]~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~183_combout\ = (\process_0~16_combout\ & (!\process_0~22_combout\ & (\scoreAdded10~regout\ & \process_0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~16_combout\,
	datab => \process_0~22_combout\,
	datac => \scoreAdded10~regout\,
	datad => \process_0~64_combout\,
	combout => \red[1]~183_combout\);

-- Location: LCCOMB_X22_Y16_N8
\red[1]~251\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~251_combout\ = (\color9~regout\ & ((\red[1]~182_combout\) # ((\color10~regout\ & \red[1]~183_combout\)))) # (!\color9~regout\ & (\color10~regout\ & ((\red[1]~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color9~regout\,
	datab => \color10~regout\,
	datac => \red[1]~182_combout\,
	datad => \red[1]~183_combout\,
	combout => \red[1]~251_combout\);

-- Location: LCCOMB_X22_Y16_N2
\red[1]~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~172_combout\ = (\scoreAdded12~regout\ & (\process_0~27_combout\ & (!\process_0~34_combout\ & \process_0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scoreAdded12~regout\,
	datab => \process_0~27_combout\,
	datac => \process_0~34_combout\,
	datad => \process_0~64_combout\,
	combout => \red[1]~172_combout\);

-- Location: LCCOMB_X20_Y16_N8
\color12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color12~1_combout\ = (\color12~0_combout\ & ((\color1~0_combout\ & ((\turn~regout\))) # (!\color1~0_combout\ & (\color12~regout\)))) # (!\color12~0_combout\ & (((\color12~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color12~0_combout\,
	datab => \color1~0_combout\,
	datac => \color12~regout\,
	datad => \turn~regout\,
	combout => \color12~1_combout\);

-- Location: LCFF_X20_Y16_N9
color12 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color12~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color12~regout\);

-- Location: LCCOMB_X23_Y19_N22
\red[1]~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~171_combout\ = (\process_0~64_combout\ & (\scoreAdded11~regout\ & !\process_0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~64_combout\,
	datac => \scoreAdded11~regout\,
	datad => \process_0~27_combout\,
	combout => \red[1]~171_combout\);

-- Location: LCCOMB_X22_Y16_N22
\red[1]~250\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~250_combout\ = (\color11~regout\ & ((\red[1]~171_combout\) # ((\red[1]~172_combout\ & \color12~regout\)))) # (!\color11~regout\ & (\red[1]~172_combout\ & (\color12~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color11~regout\,
	datab => \red[1]~172_combout\,
	datac => \color12~regout\,
	datad => \red[1]~171_combout\,
	combout => \red[1]~250_combout\);

-- Location: LCCOMB_X22_Y16_N26
\red[1]~252\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~252_combout\ = (\red[1]~177_combout\ & ((\red[1]~251_combout\) # ((\red[1]~174_combout\ & \red[1]~250_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~174_combout\,
	datab => \red[1]~177_combout\,
	datac => \red[1]~251_combout\,
	datad => \red[1]~250_combout\,
	combout => \red[1]~252_combout\);

-- Location: LCCOMB_X22_Y16_N0
\red[1]~253\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~253_combout\ = (\red[1]~248_combout\) # ((\red[1]~252_combout\) # ((\red[1]~249_combout\ & \red[0]~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~249_combout\,
	datab => \red[0]~121_combout\,
	datac => \red[1]~248_combout\,
	datad => \red[1]~252_combout\,
	combout => \red[1]~253_combout\);

-- Location: LCCOMB_X22_Y16_N18
\red[1]~254\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~254_combout\ = (\red[1]~245_combout\) # ((\red[1]~247_combout\) # ((\red[1]~176_combout\ & \red[1]~253_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~245_combout\,
	datab => \red[1]~176_combout\,
	datac => \red[1]~247_combout\,
	datad => \red[1]~253_combout\,
	combout => \red[1]~254_combout\);

-- Location: LCCOMB_X22_Y17_N6
\red[1]~255\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~255_combout\ = (\red[1]~241_combout\) # ((\red[1]~271_combout\ & ((\red[1]~230_combout\) # (\red[1]~254_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~271_combout\,
	datab => \red[1]~230_combout\,
	datac => \red[1]~241_combout\,
	datad => \red[1]~254_combout\,
	combout => \red[1]~255_combout\);

-- Location: LCCOMB_X22_Y17_N20
\red[1]~256\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~256_combout\ = (\red[1]~268_combout\ & ((\red[1]~225_combout\) # ((\red[1]~39_combout\ & \red[1]~255_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~268_combout\,
	datab => \red[1]~39_combout\,
	datac => \red[1]~225_combout\,
	datad => \red[1]~255_combout\,
	combout => \red[1]~256_combout\);

-- Location: LCCOMB_X21_Y19_N26
\color7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color7~0_combout\ = (\Equal2~2_combout\ & (\Equal1~1_combout\ & !\line7~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~2_combout\,
	datac => \Equal1~1_combout\,
	datad => \line7~regout\,
	combout => \color7~0_combout\);

-- Location: LCCOMB_X22_Y20_N24
\color7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color7~1_combout\ = (\color1~0_combout\ & ((\color7~0_combout\ & (\turn~regout\)) # (!\color7~0_combout\ & ((\color7~regout\))))) # (!\color1~0_combout\ & (((\color7~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color1~0_combout\,
	datab => \turn~regout\,
	datac => \color7~regout\,
	datad => \color7~0_combout\,
	combout => \color7~1_combout\);

-- Location: LCFF_X22_Y20_N25
color7 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color7~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color7~regout\);

-- Location: LCCOMB_X23_Y20_N4
\red[1]~217\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~217_combout\ = (\color9~regout\ & (!\color7~regout\ & ((\red[1]~94_combout\)))) # (!\color9~regout\ & ((\red[1]~95_combout\) # ((!\color7~regout\ & \red[1]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color9~regout\,
	datab => \color7~regout\,
	datac => \red[1]~95_combout\,
	datad => \red[1]~94_combout\,
	combout => \red[1]~217_combout\);

-- Location: LCCOMB_X23_Y20_N12
\red[1]~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~132_combout\ = (\red[1]~29_combout\ & ((\process_0~27_combout\) # (!\process_0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~27_combout\,
	datac => \process_0~38_combout\,
	datad => \red[1]~29_combout\,
	combout => \red[1]~132_combout\);

-- Location: LCCOMB_X23_Y20_N22
\red[1]~218\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~218_combout\ = (\red[1]~217_combout\) # ((!\color13~regout\ & (\red[1]~85_combout\ & \red[1]~132_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color13~regout\,
	datab => \red[1]~85_combout\,
	datac => \red[1]~217_combout\,
	datad => \red[1]~132_combout\,
	combout => \red[1]~218_combout\);

-- Location: LCCOMB_X22_Y21_N6
\red[1]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~90_combout\ = (\line8~regout\ & (\process_0~37_combout\ & (!\process_0~34_combout\ & \process_0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line8~regout\,
	datab => \process_0~37_combout\,
	datac => \process_0~34_combout\,
	datad => \process_0~27_combout\,
	combout => \red[1]~90_combout\);

-- Location: LCCOMB_X23_Y20_N16
\red[1]~219\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~219_combout\ = (\color11~regout\ & (!\color8~regout\ & (\red[1]~90_combout\))) # (!\color11~regout\ & ((\red[1]~97_combout\) # ((!\color8~regout\ & \red[1]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color11~regout\,
	datab => \color8~regout\,
	datac => \red[1]~90_combout\,
	datad => \red[1]~97_combout\,
	combout => \red[1]~219_combout\);

-- Location: LCCOMB_X22_Y21_N26
\red[1]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~92_combout\ = (\red[1]~28_combout\ & ((\process_0~16_combout\) # (!\process_0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~16_combout\,
	datac => \process_0~38_combout\,
	datad => \red[1]~28_combout\,
	combout => \red[1]~92_combout\);

-- Location: LCCOMB_X22_Y21_N20
\red[1]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~93_combout\ = (!\process_0~22_combout\ & (\line10~regout\ & (\process_0~38_combout\ & \red[1]~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~22_combout\,
	datab => \line10~regout\,
	datac => \process_0~38_combout\,
	datad => \red[1]~92_combout\,
	combout => \red[1]~93_combout\);

-- Location: LCCOMB_X23_Y20_N28
\red[1]~215\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~215_combout\ = (!\color12~regout\ & (\process_0~67_combout\ & (\line12~regout\ & \red[1]~132_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color12~regout\,
	datab => \process_0~67_combout\,
	datac => \line12~regout\,
	datad => \red[1]~132_combout\,
	combout => \red[1]~215_combout\);

-- Location: LCCOMB_X23_Y20_N6
\red[1]~216\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~216_combout\ = (\red[1]~215_combout\) # ((!\color10~regout\ & \red[1]~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color10~regout\,
	datac => \red[1]~93_combout\,
	datad => \red[1]~215_combout\,
	combout => \red[1]~216_combout\);

-- Location: LCCOMB_X23_Y20_N26
\red[1]~220\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~220_combout\ = (\red[1]~218_combout\) # ((\red[1]~219_combout\) # (\red[1]~216_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \red[1]~218_combout\,
	datac => \red[1]~219_combout\,
	datad => \red[1]~216_combout\,
	combout => \red[1]~220_combout\);

-- Location: LCCOMB_X22_Y17_N26
\red[1]~262\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~262_combout\ = (\red[1]~220_combout\) # ((\red[1]~138_combout\ & ((\red[1]~261_combout\) # (\red[1]~256_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~261_combout\,
	datab => \red[1]~138_combout\,
	datac => \red[1]~256_combout\,
	datad => \red[1]~220_combout\,
	combout => \red[1]~262_combout\);

-- Location: LCCOMB_X22_Y17_N8
\red[1]~263\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~263_combout\ = (!\process_0~17_combout\ & ((\red[1]~214_combout\) # ((\red[1]~273_combout\ & \red[1]~262_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~273_combout\,
	datab => \process_0~17_combout\,
	datac => \red[1]~214_combout\,
	datad => \red[1]~262_combout\,
	combout => \red[1]~263_combout\);

-- Location: LCCOMB_X26_Y17_N14
\red[1]~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~125_combout\ = ((\process_0~22_combout\ & \process_0~16_combout\)) # (!\process_0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~22_combout\,
	datac => \process_0~16_combout\,
	datad => \process_0~14_combout\,
	combout => \red[1]~125_combout\);

-- Location: LCCOMB_X26_Y18_N28
\red[1]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~126_combout\ = (\line3~regout\ & (\color3~regout\ & (\process_0~14_combout\ & !\process_0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line3~regout\,
	datab => \color3~regout\,
	datac => \process_0~14_combout\,
	datad => \process_0~27_combout\,
	combout => \red[1]~126_combout\);

-- Location: LCCOMB_X26_Y18_N20
\red[1]~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~128_combout\ = (\red[1]~127_combout\ & ((\color5~regout\) # ((\color4~regout\ & \red[1]~23_combout\)))) # (!\red[1]~127_combout\ & (((\color4~regout\ & \red[1]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~127_combout\,
	datab => \color5~regout\,
	datac => \color4~regout\,
	datad => \red[1]~23_combout\,
	combout => \red[1]~128_combout\);

-- Location: LCCOMB_X26_Y18_N8
\red[1]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~130_combout\ = (\red[1]~126_combout\) # ((\red[1]~128_combout\) # ((\color6~regout\ & \red[1]~129_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color6~regout\,
	datab => \red[1]~126_combout\,
	datac => \red[1]~128_combout\,
	datad => \red[1]~129_combout\,
	combout => \red[1]~130_combout\);

-- Location: LCCOMB_X23_Y17_N28
\red[1]~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~136_combout\ = (\color11~regout\ & ((\red[1]~97_combout\) # ((\color8~regout\ & \red[1]~90_combout\)))) # (!\color11~regout\ & (\color8~regout\ & ((\red[1]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color11~regout\,
	datab => \color8~regout\,
	datac => \red[1]~97_combout\,
	datad => \red[1]~90_combout\,
	combout => \red[1]~136_combout\);

-- Location: LCCOMB_X23_Y20_N14
\red[1]~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~133_combout\ = (\color12~regout\ & (\process_0~67_combout\ & (\line12~regout\ & \red[1]~132_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color12~regout\,
	datab => \process_0~67_combout\,
	datac => \line12~regout\,
	datad => \red[1]~132_combout\,
	combout => \red[1]~133_combout\);

-- Location: LCCOMB_X19_Y19_N28
\color9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color9~0_combout\ = (!\line9~regout\ & (\Equal9~0_combout\ & \Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line9~regout\,
	datac => \Equal9~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \color9~0_combout\);

-- Location: LCCOMB_X19_Y19_N22
\color9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color9~1_combout\ = (\color9~0_combout\ & ((\color1~0_combout\ & (\turn~regout\)) # (!\color1~0_combout\ & ((\color9~regout\))))) # (!\color9~0_combout\ & (((\color9~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \color9~0_combout\,
	datac => \color9~regout\,
	datad => \color1~0_combout\,
	combout => \color9~1_combout\);

-- Location: LCFF_X19_Y19_N23
color9 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color9~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color9~regout\);

-- Location: LCCOMB_X23_Y17_N20
\red[1]~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~134_combout\ = (\color7~regout\ & ((\red[1]~94_combout\) # ((\color9~regout\ & \red[1]~95_combout\)))) # (!\color7~regout\ & (\color9~regout\ & (\red[1]~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color7~regout\,
	datab => \color9~regout\,
	datac => \red[1]~95_combout\,
	datad => \red[1]~94_combout\,
	combout => \red[1]~134_combout\);

-- Location: LCCOMB_X23_Y17_N22
\red[1]~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~135_combout\ = (\red[1]~134_combout\) # ((\color13~regout\ & (\red[1]~85_combout\ & \red[1]~132_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color13~regout\,
	datab => \red[1]~85_combout\,
	datac => \red[1]~134_combout\,
	datad => \red[1]~132_combout\,
	combout => \red[1]~135_combout\);

-- Location: LCCOMB_X23_Y17_N10
\red[1]~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~137_combout\ = (\red[1]~131_combout\) # ((\red[1]~136_combout\) # ((\red[1]~133_combout\) # (\red[1]~135_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~131_combout\,
	datab => \red[1]~136_combout\,
	datac => \red[1]~133_combout\,
	datad => \red[1]~135_combout\,
	combout => \red[1]~137_combout\);

-- Location: LCCOMB_X24_Y21_N0
\red[1]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~73_combout\ = (!\process_0~34_combout\ & (\process_0~40_combout\ & (\line20~regout\ & \process_0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~34_combout\,
	datab => \process_0~40_combout\,
	datac => \line20~regout\,
	datad => \process_0~27_combout\,
	combout => \red[1]~73_combout\);

-- Location: LCCOMB_X21_Y19_N4
\line19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \line19~0_combout\ = (\line19~regout\) # ((\Equal6~2_combout\ & (\Equal1~1_combout\ & \color1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~2_combout\,
	datab => \Equal1~1_combout\,
	datac => \line19~regout\,
	datad => \color1~0_combout\,
	combout => \line19~0_combout\);

-- Location: LCFF_X21_Y19_N5
line19 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \line19~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \line19~regout\);

-- Location: LCCOMB_X20_Y20_N26
\color19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color19~0_combout\ = (\Equal1~1_combout\ & (!\line19~regout\ & \Equal6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datac => \line19~regout\,
	datad => \Equal6~2_combout\,
	combout => \color19~0_combout\);

-- Location: LCCOMB_X20_Y20_N0
\color19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color19~1_combout\ = (\color1~0_combout\ & ((\color19~0_combout\ & (\turn~regout\)) # (!\color19~0_combout\ & ((\color19~regout\))))) # (!\color1~0_combout\ & (((\color19~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color1~0_combout\,
	datab => \turn~regout\,
	datac => \color19~regout\,
	datad => \color19~0_combout\,
	combout => \color19~1_combout\);

-- Location: LCFF_X20_Y20_N1
color19 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color19~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color19~regout\);

-- Location: LCCOMB_X20_Y20_N30
\color18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color18~0_combout\ = (\Equal0~3_combout\ & (!\line18~regout\ & \Equal6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \line18~regout\,
	datad => \Equal6~2_combout\,
	combout => \color18~0_combout\);

-- Location: LCCOMB_X20_Y20_N16
\color18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color18~1_combout\ = (\color1~0_combout\ & ((\color18~0_combout\ & (\turn~regout\)) # (!\color18~0_combout\ & ((\color18~regout\))))) # (!\color1~0_combout\ & (((\color18~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color1~0_combout\,
	datab => \turn~regout\,
	datac => \color18~regout\,
	datad => \color18~0_combout\,
	combout => \color18~1_combout\);

-- Location: LCFF_X20_Y20_N17
color18 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color18~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color18~regout\);

-- Location: LCCOMB_X22_Y20_N20
\color17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color17~1_combout\ = (\color17~0_combout\ & ((\color1~0_combout\ & (\turn~regout\)) # (!\color1~0_combout\ & ((\color17~regout\))))) # (!\color17~0_combout\ & (((\color17~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color17~0_combout\,
	datab => \turn~regout\,
	datac => \color17~regout\,
	datad => \color1~0_combout\,
	combout => \color17~1_combout\);

-- Location: LCFF_X22_Y20_N21
color17 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color17~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color17~regout\);

-- Location: LCCOMB_X22_Y20_N14
\red[1]~206\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~206_combout\ = (\color15~regout\ & ((\red[1]~82_combout\) # ((\color17~regout\ & \red[1]~83_combout\)))) # (!\color15~regout\ & (((\color17~regout\ & \red[1]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color15~regout\,
	datab => \red[1]~82_combout\,
	datac => \color17~regout\,
	datad => \red[1]~83_combout\,
	combout => \red[1]~206_combout\);

-- Location: LCCOMB_X21_Y20_N4
\red[1]~207\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~207_combout\ = (\red[1]~205_combout\) # ((\red[1]~206_combout\) # ((\color18~regout\ & \red[1]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~205_combout\,
	datab => \color18~regout\,
	datac => \red[1]~206_combout\,
	datad => \red[1]~77_combout\,
	combout => \red[1]~207_combout\);

-- Location: LCCOMB_X21_Y20_N12
\red[1]~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~139_combout\ = (\red[1]~32_combout\ & (((\process_0~16_combout\ & \process_0~22_combout\)) # (!\process_0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~40_combout\,
	datab => \process_0~16_combout\,
	datac => \process_0~22_combout\,
	datad => \red[1]~32_combout\,
	combout => \red[1]~139_combout\);

-- Location: LCCOMB_X21_Y20_N28
\red[1]~204\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~204_combout\ = (\process_0~40_combout\ & (\line19~regout\ & (!\process_0~27_combout\ & \red[1]~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~40_combout\,
	datab => \line19~regout\,
	datac => \process_0~27_combout\,
	datad => \red[1]~139_combout\,
	combout => \red[1]~204_combout\);

-- Location: LCCOMB_X21_Y20_N20
\red[1]~275\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~275_combout\ = (\red[1]~207_combout\) # ((\color19~regout\ & \red[1]~204_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \color19~regout\,
	datac => \red[1]~207_combout\,
	datad => \red[1]~204_combout\,
	combout => \red[1]~275_combout\);

-- Location: LCCOMB_X21_Y20_N6
\red[1]~276\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~276_combout\ = (\red[1]~275_combout\) # ((\color20~regout\ & (\red[1]~73_combout\ & \red[1]~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color20~regout\,
	datab => \red[1]~73_combout\,
	datac => \red[1]~275_combout\,
	datad => \red[1]~139_combout\,
	combout => \red[1]~276_combout\);

-- Location: LCCOMB_X20_Y18_N4
\red[1]~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~140_combout\ = (\color24~regout\ & (\red[1]~37_combout\ & \red[1]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color24~regout\,
	datac => \red[1]~37_combout\,
	datad => \red[1]~68_combout\,
	combout => \red[1]~140_combout\);

-- Location: LCCOMB_X21_Y18_N14
\red[1]~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~142_combout\ = (\red[1]~63_combout\ & ((\color22~regout\) # ((\color25~regout\ & \red[1]~141_combout\)))) # (!\red[1]~63_combout\ & (((\color25~regout\ & \red[1]~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~63_combout\,
	datab => \color22~regout\,
	datac => \color25~regout\,
	datad => \red[1]~141_combout\,
	combout => \red[1]~142_combout\);

-- Location: LCCOMB_X21_Y18_N0
\red[1]~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~147_combout\ = (\red[1]~145_combout\) # ((\red[1]~142_combout\) # ((\color26~regout\ & \red[1]~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~145_combout\,
	datab => \color26~regout\,
	datac => \red[1]~142_combout\,
	datad => \red[1]~146_combout\,
	combout => \red[1]~147_combout\);

-- Location: LCCOMB_X21_Y18_N26
\red[1]~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~148_combout\ = (\red[1]~140_combout\) # ((\red[1]~147_combout\) # ((\red[1]~269_combout\ & \color27~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~269_combout\,
	datab => \color27~regout\,
	datac => \red[1]~140_combout\,
	datad => \red[1]~147_combout\,
	combout => \red[1]~148_combout\);

-- Location: LCCOMB_X21_Y20_N26
\red[1]~268\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~268_combout\ = (\red[1]~139_combout\ & (((\process_0~27_combout\ & \process_0~34_combout\)) # (!\process_0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~40_combout\,
	datab => \process_0~27_combout\,
	datac => \process_0~34_combout\,
	datad => \red[1]~139_combout\,
	combout => \red[1]~268_combout\);

-- Location: LCCOMB_X23_Y16_N4
\red[1]~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~174_combout\ = ((\process_0~22_combout\ & \process_0~16_combout\)) # (!\process_0~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~22_combout\,
	datac => \process_0~16_combout\,
	datad => \process_0~64_combout\,
	combout => \red[1]~174_combout\);

-- Location: LCCOMB_X22_Y16_N12
\red[1]~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~173_combout\ = (\color11~regout\ & (\red[1]~172_combout\ & (!\color12~regout\))) # (!\color11~regout\ & ((\red[1]~171_combout\) # ((\red[1]~172_combout\ & !\color12~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color11~regout\,
	datab => \red[1]~172_combout\,
	datac => \color12~regout\,
	datad => \red[1]~171_combout\,
	combout => \red[1]~173_combout\);

-- Location: LCCOMB_X23_Y16_N22
\red[1]~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~178_combout\ = (\red[1]~177_combout\ & (\red[1]~174_combout\ & (\red[1]~176_combout\ & \red[1]~173_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~177_combout\,
	datab => \red[1]~174_combout\,
	datac => \red[1]~176_combout\,
	datad => \red[1]~173_combout\,
	combout => \red[1]~178_combout\);

-- Location: LCCOMB_X24_Y16_N8
\red[1]~192\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~192_combout\ = (\color13~regout\ & (!\color14~regout\ & ((\red[1]~191_combout\)))) # (!\color13~regout\ & ((\red[1]~190_combout\) # ((!\color14~regout\ & \red[1]~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color13~regout\,
	datab => \color14~regout\,
	datac => \red[1]~190_combout\,
	datad => \red[1]~191_combout\,
	combout => \red[1]~192_combout\);

-- Location: LCCOMB_X24_Y16_N2
\scoreAdded6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \scoreAdded6~0_combout\ = (\scoreAdded6~regout\) # ((\line6~regout\ & \process_0~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \line6~regout\,
	datab => \process_0~76_combout\,
	datac => \scoreAdded6~regout\,
	combout => \scoreAdded6~0_combout\);

-- Location: LCFF_X24_Y16_N3
scoreAdded6 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \scoreAdded6~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \scoreAdded6~regout\);

-- Location: LCCOMB_X24_Y16_N12
\red[1]~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~187_combout\ = (!\process_0~22_combout\ & (\scoreAdded6~regout\ & (\process_0~16_combout\ & \process_0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~22_combout\,
	datab => \scoreAdded6~regout\,
	datac => \process_0~16_combout\,
	datad => \process_0~56_combout\,
	combout => \red[1]~187_combout\);

-- Location: LCCOMB_X24_Y16_N6
\red[1]~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~188_combout\ = (\color6~regout\ & (!\color5~regout\ & (\red[1]~186_combout\))) # (!\color6~regout\ & ((\red[1]~187_combout\) # ((!\color5~regout\ & \red[1]~186_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color6~regout\,
	datab => \color5~regout\,
	datac => \red[1]~186_combout\,
	datad => \red[1]~187_combout\,
	combout => \red[1]~188_combout\);

-- Location: LCCOMB_X23_Y16_N18
\red[1]~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~189_combout\ = (\red[1]~109_combout\ & (\red[0]~117_combout\ & \red[1]~188_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~109_combout\,
	datac => \red[0]~117_combout\,
	datad => \red[1]~188_combout\,
	combout => \red[1]~189_combout\);

-- Location: LCCOMB_X23_Y16_N20
\red[1]~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~194_combout\ = (\red[1]~189_combout\) # ((\red[1]~176_combout\ & (\red[1]~192_combout\ & \red[0]~193_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~176_combout\,
	datab => \red[1]~192_combout\,
	datac => \red[0]~193_combout\,
	datad => \red[1]~189_combout\,
	combout => \red[1]~194_combout\);

-- Location: LCCOMB_X21_Y16_N28
\color16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color16~1_combout\ = (\color16~0_combout\ & ((\color1~0_combout\ & (\turn~regout\)) # (!\color1~0_combout\ & ((\color16~regout\))))) # (!\color16~0_combout\ & (((\color16~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color16~0_combout\,
	datab => \turn~regout\,
	datac => \color16~regout\,
	datad => \color1~0_combout\,
	combout => \color16~1_combout\);

-- Location: LCFF_X21_Y16_N29
color16 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color16~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color16~regout\);

-- Location: LCCOMB_X22_Y19_N14
\red[1]~197\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~197_combout\ = (\scoreAdded15~regout\ & (\process_0~65_combout\ & !\process_0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scoreAdded15~regout\,
	datac => \process_0~65_combout\,
	datad => \process_0~27_combout\,
	combout => \red[1]~197_combout\);

-- Location: LCCOMB_X22_Y19_N10
\red[1]~198\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~198_combout\ = (\scoreAdded16~regout\ & ((\process_0~27_combout\) # (!\process_0~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \scoreAdded16~regout\,
	datac => \process_0~65_combout\,
	datad => \process_0~27_combout\,
	combout => \red[1]~198_combout\);

-- Location: LCCOMB_X22_Y19_N28
\red[1]~199\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~199_combout\ = (\color15~regout\ & (!\color16~regout\ & ((\red[1]~198_combout\)))) # (!\color15~regout\ & ((\red[1]~197_combout\) # ((!\color16~regout\ & \red[1]~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color15~regout\,
	datab => \color16~regout\,
	datac => \red[1]~197_combout\,
	datad => \red[1]~198_combout\,
	combout => \red[1]~199_combout\);

-- Location: LCCOMB_X25_Y16_N18
\color38~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color38~1_combout\ = (\color38~0_combout\ & ((\color21~0_combout\ & ((\turn~regout\))) # (!\color21~0_combout\ & (\color38~regout\)))) # (!\color38~0_combout\ & (((\color38~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color38~0_combout\,
	datab => \color21~0_combout\,
	datac => \color38~regout\,
	datad => \turn~regout\,
	combout => \color38~1_combout\);

-- Location: LCFF_X25_Y16_N19
color38 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color38~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color38~regout\);

-- Location: LCCOMB_X25_Y17_N16
\red[1]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~47_combout\ = (\line37~regout\ & (!\process_0~47_combout\ & \process_0~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line37~regout\,
	datac => \process_0~47_combout\,
	datad => \process_0~65_combout\,
	combout => \red[1]~47_combout\);

-- Location: LCCOMB_X25_Y17_N22
\red[1]~195\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~195_combout\ = (\color37~regout\ & ((\red[1]~47_combout\) # ((\color38~regout\ & \red[1]~48_combout\)))) # (!\color37~regout\ & (\color38~regout\ & ((\red[1]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color37~regout\,
	datab => \color38~regout\,
	datac => \red[1]~47_combout\,
	datad => \red[1]~48_combout\,
	combout => \red[1]~195_combout\);

-- Location: LCCOMB_X23_Y16_N30
\red[1]~196\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~196_combout\ = (\color36~regout\ & ((\red[1]~46_combout\) # ((\red[1]~44_combout\ & \red[1]~195_combout\)))) # (!\color36~regout\ & (\red[1]~44_combout\ & ((\red[1]~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color36~regout\,
	datab => \red[1]~44_combout\,
	datac => \red[1]~46_combout\,
	datad => \red[1]~195_combout\,
	combout => \red[1]~196_combout\);

-- Location: LCCOMB_X23_Y16_N12
\red[1]~200\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~200_combout\ = (\red[1]~196_combout\) # ((\red[1]~176_combout\ & (\red[0]~121_combout\ & \red[1]~199_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~176_combout\,
	datab => \red[0]~121_combout\,
	datac => \red[1]~199_combout\,
	datad => \red[1]~196_combout\,
	combout => \red[1]~200_combout\);

-- Location: LCCOMB_X23_Y16_N2
\red[1]~201\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~201_combout\ = (\red[1]~185_combout\) # ((\red[1]~178_combout\) # ((\red[1]~194_combout\) # (\red[1]~200_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~185_combout\,
	datab => \red[1]~178_combout\,
	datac => \red[1]~194_combout\,
	datad => \red[1]~200_combout\,
	combout => \red[1]~201_combout\);

-- Location: LCCOMB_X25_Y17_N10
\red[1]~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~154_combout\ = (\color31~regout\ & ((\red[1]~152_combout\) # ((\color29~regout\ & \red[1]~153_combout\)))) # (!\color31~regout\ & (\color29~regout\ & (\red[1]~153_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color31~regout\,
	datab => \color29~regout\,
	datac => \red[1]~153_combout\,
	datad => \red[1]~152_combout\,
	combout => \red[1]~154_combout\);

-- Location: LCCOMB_X24_Y17_N0
\red[1]~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~151_combout\ = (\color28~regout\ & ((\red[1]~150_combout\) # ((\color30~regout\ & \red[1]~270_combout\)))) # (!\color28~regout\ & (\color30~regout\ & ((\red[1]~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color28~regout\,
	datab => \color30~regout\,
	datac => \red[1]~150_combout\,
	datad => \red[1]~270_combout\,
	combout => \red[1]~151_combout\);

-- Location: LCCOMB_X24_Y17_N24
\red[1]~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~156_combout\ = (\red[1]~154_combout\) # ((\red[1]~151_combout\) # ((\red[1]~155_combout\ & \red[1]~149_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~155_combout\,
	datab => \red[1]~149_combout\,
	datac => \red[1]~154_combout\,
	datad => \red[1]~151_combout\,
	combout => \red[1]~156_combout\);

-- Location: LCCOMB_X25_Y19_N6
\color32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \color32~0_combout\ = (!\line32~regout\ & (\Equal3~0_combout\ & \Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line32~regout\,
	datac => \Equal3~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \color32~0_combout\);

-- Location: LCCOMB_X25_Y18_N4
\color32~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color32~1_combout\ = (\color21~0_combout\ & ((\color32~0_combout\ & (\turn~regout\)) # (!\color32~0_combout\ & ((\color32~regout\))))) # (!\color21~0_combout\ & (((\color32~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \turn~regout\,
	datab => \color21~0_combout\,
	datac => \color32~regout\,
	datad => \color32~0_combout\,
	combout => \color32~1_combout\);

-- Location: LCFF_X25_Y18_N5
color32 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color32~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color32~regout\);

-- Location: LCCOMB_X24_Y17_N14
\red[1]~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~157_combout\ = (\red[1]~156_combout\) # ((\red[1]~54_combout\ & (\red[1]~40_combout\ & \color32~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~54_combout\,
	datab => \red[1]~40_combout\,
	datac => \red[1]~156_combout\,
	datad => \color32~regout\,
	combout => \red[1]~157_combout\);

-- Location: LCCOMB_X22_Y17_N22
\red[1]~202\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~202_combout\ = (\red[1]~157_combout\) # ((\red[1]~271_combout\ & ((\red[1]~170_combout\) # (\red[1]~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~170_combout\,
	datab => \red[1]~271_combout\,
	datac => \red[1]~201_combout\,
	datad => \red[1]~157_combout\,
	combout => \red[1]~202_combout\);

-- Location: LCCOMB_X22_Y17_N12
\red[1]~203\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~203_combout\ = (\red[1]~268_combout\ & ((\red[1]~148_combout\) # ((\red[1]~39_combout\ & \red[1]~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~39_combout\,
	datab => \red[1]~148_combout\,
	datac => \red[1]~268_combout\,
	datad => \red[1]~202_combout\,
	combout => \red[1]~203_combout\);

-- Location: LCCOMB_X22_Y17_N10
\red[1]~208\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~208_combout\ = (\red[1]~137_combout\) # ((\red[1]~138_combout\ & ((\red[1]~276_combout\) # (\red[1]~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~138_combout\,
	datab => \red[1]~137_combout\,
	datac => \red[1]~276_combout\,
	datad => \red[1]~203_combout\,
	combout => \red[1]~208_combout\);

-- Location: LCCOMB_X22_Y17_N0
\red[1]~210\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~210_combout\ = (\red[1]~125_combout\ & ((\red[1]~130_combout\) # ((\red[1]~209_combout\ & \red[1]~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~209_combout\,
	datab => \red[1]~125_combout\,
	datac => \red[1]~130_combout\,
	datad => \red[1]~208_combout\,
	combout => \red[1]~210_combout\);

-- Location: LCCOMB_X22_Y17_N30
\red[0]~264\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[0]~264_combout\ = (!\reset~combout\ & (((\red[1]~263_combout\) # (\red[1]~210_combout\)) # (!\red[0]~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \red[0]~124_combout\,
	datac => \red[1]~263_combout\,
	datad => \red[1]~210_combout\,
	combout => \red[0]~264_combout\);

-- Location: LCFF_X21_Y17_N13
\red[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \red~113_combout\,
	sload => VCC,
	ena => \red[0]~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => red(0));

-- Location: LCFF_X21_Y17_N15
\red[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \red~113_combout\,
	ena => \red[0]~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => red(1));

-- Location: LCCOMB_X21_Y17_N30
\red[1]~265\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[1]~265_combout\ = (\red[1]~101_combout\) # ((\red[1]~274_combout\ & \red[1]~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~274_combout\,
	datac => \red[1]~101_combout\,
	datad => \red[1]~112_combout\,
	combout => \red[1]~265_combout\);

-- Location: LCCOMB_X22_Y15_N20
\color1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \color1~1_combout\ = (!\line1~regout\ & (\Equal8~1_combout\ & \Equal9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \line1~regout\,
	datac => \Equal8~1_combout\,
	datad => \Equal9~0_combout\,
	combout => \color1~1_combout\);

-- Location: LCCOMB_X24_Y15_N0
\color1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \color1~2_combout\ = (\color1~0_combout\ & ((\color1~1_combout\ & (\turn~regout\)) # (!\color1~1_combout\ & ((\color1~regout\))))) # (!\color1~0_combout\ & (((\color1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \color1~0_combout\,
	datab => \turn~regout\,
	datac => \color1~regout\,
	datad => \color1~1_combout\,
	combout => \color1~2_combout\);

-- Location: LCFF_X24_Y15_N1
color1 : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \color1~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \color1~regout\);

-- Location: LCCOMB_X23_Y17_N30
\blue~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \blue~0_combout\ = (!\red[1]~263_combout\ & (((\color1~regout\) # (!\line1~regout\)) # (!\process_0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~17_combout\,
	datab => \color1~regout\,
	datac => \line1~regout\,
	datad => \red[1]~263_combout\,
	combout => \blue~0_combout\);

-- Location: LCCOMB_X22_Y17_N28
\red~266\ : cycloneii_lcell_comb
-- Equation(s):
-- \red~266_combout\ = ((\red[1]~265_combout\ & !\blue~0_combout\)) # (!\green~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \green~1_combout\,
	datac => \red[1]~265_combout\,
	datad => \blue~0_combout\,
	combout => \red~266_combout\);

-- Location: LCFF_X22_Y17_N29
\red[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \red~266_combout\,
	ena => \red[0]~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => red(2));

-- Location: LCCOMB_X22_Y17_N2
\red[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \red[3]~feeder_combout\ = \red~266_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \red~266_combout\,
	combout => \red[3]~feeder_combout\);

-- Location: LCFF_X22_Y17_N3
\red[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \red[3]~feeder_combout\,
	ena => \red[0]~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => red(3));

-- Location: LCCOMB_X21_Y17_N6
\green~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \green~2_combout\ = (\green~1_combout\ & ((\red[1]~101_combout\) # ((\red[1]~274_combout\ & \red[1]~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \red[1]~274_combout\,
	datab => \green~1_combout\,
	datac => \red[1]~101_combout\,
	datad => \red[1]~112_combout\,
	combout => \green~2_combout\);

-- Location: LCFF_X22_Y17_N25
\green[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \green~2_combout\,
	sload => VCC,
	ena => \red[0]~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => green(1));

-- Location: LCCOMB_X21_Y17_N0
\green[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \green[2]~feeder_combout\ = \green~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \green~2_combout\,
	combout => \green[2]~feeder_combout\);

-- Location: LCFF_X21_Y17_N1
\green[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \green[2]~feeder_combout\,
	ena => \red[0]~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => green(2));

-- Location: LCFF_X21_Y17_N7
\green[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \green~2_combout\,
	ena => \red[0]~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => green(3));

-- Location: LCFF_X22_Y17_N15
\blue[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \green~2_combout\,
	sload => VCC,
	ena => \red[0]~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blue(0));

-- Location: LCFF_X22_Y17_N17
\blue[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \green~2_combout\,
	sload => VCC,
	ena => \red[0]~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blue(1));

-- Location: LCCOMB_X22_Y17_N18
\blue~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \blue~1_combout\ = (\green~1_combout\ & (\red[1]~265_combout\ & \blue~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \green~1_combout\,
	datac => \red[1]~265_combout\,
	datad => \blue~0_combout\,
	combout => \blue~1_combout\);

-- Location: LCFF_X22_Y17_N19
\blue[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \blue~1_combout\,
	ena => \red[0]~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blue(2));

-- Location: LCCOMB_X22_Y17_N4
\blue[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \blue[3]~feeder_combout\ = \blue~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \blue~1_combout\,
	combout => \blue[3]~feeder_combout\);

-- Location: LCFF_X22_Y17_N5
\blue[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \blue[3]~feeder_combout\,
	ena => \red[0]~264_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => blue(3));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SegDisplay1|result1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight1(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SegDisplay1|result1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight1(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SegDisplay1|result1\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight1(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SegDisplay1|result1\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight1(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SegDisplay1|result1\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight1(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SegDisplay1|result1\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight1(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SegDisplay1|result1\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight1(6));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SegDisplay1|result2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight2(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight2(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight2(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SegDisplay1|result2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight2(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SegDisplay1|result2\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight2(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SegDisplay1|result2\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight2(5));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight2(6));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SegDisplay2|result1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight3(0));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SegDisplay2|result1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight3(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SegDisplay2|result1\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight3(2));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SegDisplay2|result1\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight3(3));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SegDisplay2|result1\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight3(4));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SegDisplay2|result1\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight3(5));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SegDisplay2|result1\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight3(6));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight4[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SegDisplay2|result2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight4(0));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight4[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight4(1));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight4[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight4(2));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight4[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SegDisplay2|result2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight4(3));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight4[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SegDisplay2|result2\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight4(4));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight4[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SegDisplay2|result2\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight4(5));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\seglight4[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_seglight4(6));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hsync~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA|H~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hsync);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\vsync~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \VGA|V~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_vsync);

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => red(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r(0));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => red(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r(1));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => red(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r(2));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => red(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r(3));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\g[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_g(0));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\g[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => green(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_g(1));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\g[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => green(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_g(2));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\g[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => green(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_g(3));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\b[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => blue(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_b(0));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\b[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => blue(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_b(1));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\b[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => blue(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_b(2));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\b[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => blue(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_b(3));
END structure;


