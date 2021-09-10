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
-- CREATED		"Thu Jul 15 14:09:04 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Shohag_DLatch_DFlip_Flop_Master_Slave_VHDL IS 
	PORT
	(
		Shohag_PRN :  IN  STD_LOGIC;
		Shohag_D :  IN  STD_LOGIC;
		Shohag_CLK :  IN  STD_LOGIC;
		Shohag_CLRN :  IN  STD_LOGIC;
		Shohag_Q :  OUT  STD_LOGIC
	);
END Shohag_DLatch_DFlip_Flop_Master_Slave_VHDL;

ARCHITECTURE bdf_type OF Shohag_DLatch_DFlip_Flop_Master_Slave_VHDL IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;


BEGIN 



PROCESS(Shohag_CLRN,Shohag_PRN,SYNTHESIZED_WIRE_0,Shohag_D)
BEGIN
IF (Shohag_CLRN = '0') THEN
	SYNTHESIZED_WIRE_1 <= '0';
ELSIF (Shohag_PRN = '0') THEN
	SYNTHESIZED_WIRE_1 <= '1';
ELSIF (SYNTHESIZED_WIRE_0 = '1') THEN
	SYNTHESIZED_WIRE_1 <= Shohag_D;
END IF;
END PROCESS;


PROCESS(Shohag_CLRN,Shohag_PRN,Shohag_CLK,SYNTHESIZED_WIRE_1)
BEGIN
IF (Shohag_CLRN = '0') THEN
	Shohag_Q <= '0';
ELSIF (Shohag_PRN = '0') THEN
	Shohag_Q <= '1';
ELSIF (Shohag_CLK = '1') THEN
	Shohag_Q <= SYNTHESIZED_WIRE_1;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_0 <= NOT(Shohag_CLK);



END bdf_type;