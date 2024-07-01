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
-- Generated on "05/03/2024 08:13:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ff_jk_deb
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ff_jk_deb_vhd_vec_tst IS
END ff_jk_deb_vhd_vec_tst;
ARCHITECTURE ff_jk_deb_arch OF ff_jk_deb_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_50m : STD_LOGIC;
SIGNAL clk_button : STD_LOGIC;
SIGNAL clrn : STD_LOGIC;
SIGNAL j : STD_LOGIC;
SIGNAL k : STD_LOGIC;
SIGNAL prn : STD_LOGIC;
SIGNAL q : STD_LOGIC;
SIGNAL qn : STD_LOGIC;
COMPONENT ff_jk_deb
	PORT (
	clk_50m : IN STD_LOGIC;
	clk_button : IN STD_LOGIC;
	clrn : IN STD_LOGIC;
	j : IN STD_LOGIC;
	k : IN STD_LOGIC;
	prn : IN STD_LOGIC;
	q : OUT STD_LOGIC;
	qn : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ff_jk_deb
	PORT MAP (
-- list connections between master ports and signals
	clk_50m => clk_50m,
	clk_button => clk_button,
	clrn => clrn,
	j => j,
	k => k,
	prn => prn,
	q => q,
	qn => qn
	);

-- clk_button
t_prcs_clk_button: PROCESS
BEGIN
	FOR i IN 1 TO 14
	LOOP
		clk_button <= '0';
		WAIT FOR 35000 ps;
		clk_button <= '1';
		WAIT FOR 35000 ps;
	END LOOP;
	clk_button <= '0';
WAIT;
END PROCESS t_prcs_clk_button;

-- clrn
t_prcs_clrn: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		clrn <= '0';
		WAIT FOR 150000 ps;
		clrn <= '1';
		WAIT FOR 150000 ps;
	END LOOP;
	clrn <= '0';
WAIT;
END PROCESS t_prcs_clrn;

-- j
t_prcs_j: PROCESS
BEGIN
	FOR i IN 1 TO 9
	LOOP
		j <= '0';
		WAIT FOR 55000 ps;
		j <= '1';
		WAIT FOR 55000 ps;
	END LOOP;
	j <= '0';
WAIT;
END PROCESS t_prcs_j;

-- k
t_prcs_k: PROCESS
BEGIN
	FOR i IN 1 TO 11
	LOOP
		k <= '0';
		WAIT FOR 45000 ps;
		k <= '1';
		WAIT FOR 45000 ps;
	END LOOP;
	k <= '0';
WAIT;
END PROCESS t_prcs_k;

-- prn
t_prcs_prn: PROCESS
BEGIN
LOOP
	prn <= '0';
	WAIT FOR 100000 ps;
	prn <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_prn;
END ff_jk_deb_arch;
