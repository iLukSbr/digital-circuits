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
-- Generated on "05/02/2024 17:15:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ff_t_deb
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ff_t_deb_vhd_vec_tst IS
END ff_t_deb_vhd_vec_tst;
ARCHITECTURE ff_t_deb_arch OF ff_t_deb_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clk_50m : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
SIGNAL q : STD_LOGIC;
SIGNAL qn : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL t : STD_LOGIC;
COMPONENT ff_t_deb
	PORT (
	clk : IN STD_LOGIC;
	clk_50m : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	q : BUFFER STD_LOGIC;
	qn : BUFFER STD_LOGIC;
	rst : IN STD_LOGIC;
	t : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ff_t_deb
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clk_50m => clk_50m,
	clr => clr,
	q => q,
	qn => qn,
	rst => rst,
	t => t
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 14
	LOOP
		clk <= '0';
		WAIT FOR 35000 ps;
		clk <= '1';
		WAIT FOR 35000 ps;
	END LOOP;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- clr
t_prcs_clr: PROCESS
BEGIN
LOOP
	clr <= '0';
	WAIT FOR 100000 ps;
	clr <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clr;

-- rst
t_prcs_rst: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		rst <= '0';
		WAIT FOR 150000 ps;
		rst <= '1';
		WAIT FOR 150000 ps;
	END LOOP;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- t
t_prcs_t: PROCESS
BEGIN
	FOR i IN 1 TO 11
	LOOP
		t <= '0';
		WAIT FOR 45000 ps;
		t <= '1';
		WAIT FOR 45000 ps;
	END LOOP;
	t <= '0';
WAIT;
END PROCESS t_prcs_t;
END ff_t_deb_arch;
