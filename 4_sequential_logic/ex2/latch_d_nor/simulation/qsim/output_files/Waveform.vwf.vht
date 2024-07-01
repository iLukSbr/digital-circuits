-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/26/2024 21:03:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          latch_d_nor
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY latch_d_nor_vhd_vec_tst IS
END latch_d_nor_vhd_vec_tst;
ARCHITECTURE latch_d_nor_arch OF latch_d_nor_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL din : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL q : STD_LOGIC;
SIGNAL qn : STD_LOGIC;
COMPONENT latch_d_nor
	PORT (
	din : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	q : OUT STD_LOGIC;
	qn : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : latch_d_nor
	PORT MAP (
-- list connections between master ports and signals
	din => din,
	enable => enable,
	q => q,
	qn => qn
	);

-- din
t_prcs_din: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		din <= '0';
		WAIT FOR 150000 ps;
		din <= '1';
		WAIT FOR 150000 ps;
	END LOOP;
	din <= '0';
WAIT;
END PROCESS t_prcs_din;

-- enable
t_prcs_enable: PROCESS
BEGIN
LOOP
	enable <= '0';
	WAIT FOR 50000 ps;
	enable <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_enable;
END latch_d_nor_arch;
