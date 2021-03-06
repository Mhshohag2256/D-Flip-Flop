-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition"
-- CREATED		"Thu Jul 15 13:41:15 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Shohag_D_Flip_Flop_block_VHDL IS 
	PORT
	(
		Shohag_PRN :  IN  STD_LOGIC;
		Shohag_D :  IN  STD_LOGIC;
		Shohag_EDGE :  IN  STD_LOGIC;
		Shohag_CLRN :  IN  STD_LOGIC;
		Shohag_Q :  OUT  STD_LOGIC
	);
END Shohag_D_Flip_Flop_block_VHDL;

ARCHITECTURE bdf_type OF Shohag_D_Flip_Flop_block_VHDL IS 



BEGIN 



PROCESS(Shohag_EDGE,Shohag_CLRN,Shohag_PRN)
BEGIN
IF (Shohag_CLRN = '0') THEN
	Shohag_Q <= '0';
ELSIF (Shohag_PRN = '0') THEN
	Shohag_Q <= '1';
ELSIF (RISING_EDGE(Shohag_EDGE)) THEN
	Shohag_Q <= Shohag_D;
END IF;
END PROCESS;


END bdf_type;