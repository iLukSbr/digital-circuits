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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "04/26/2024 20:55:34"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	latch_d_nand IS
    PORT (
	enable : IN std_logic;
	din : IN std_logic;
	q : OUT std_logic;
	qn : OUT std_logic
	);
END latch_d_nand;

-- Design Ports Information


ARCHITECTURE structure OF latch_d_nand IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_din : std_logic;
SIGNAL ww_q : std_logic;
SIGNAL ww_qn : std_logic;
SIGNAL \din~combout\ : std_logic;
SIGNAL \enable~combout\ : std_logic;
SIGNAL \q$latch~combout\ : std_logic;
SIGNAL \qn$latch~combout\ : std_logic;

BEGIN

ww_enable <= enable;
ww_din <= din;
q <= ww_q;
qn <= ww_qn;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_50,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\din~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_din,
	combout => \din~combout\);

-- Location: PIN_53,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\enable~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_enable,
	combout => \enable~combout\);

-- Location: LC_X7_Y1_N9
\q$latch\ : maxii_lcell
-- Equation(s):
-- \q$latch~combout\ = ((GLOBAL(\enable~combout\) & (\din~combout\)) # (!GLOBAL(\enable~combout\) & ((\q$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \din~combout\,
	datac => \enable~combout\,
	datad => \q$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \q$latch~combout\);

-- Location: LC_X4_Y2_N2
\qn$latch\ : maxii_lcell
-- Equation(s):
-- \qn$latch~combout\ = ((GLOBAL(\enable~combout\) & (!\din~combout\)) # (!GLOBAL(\enable~combout\) & ((\qn$latch~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \din~combout\,
	datac => \enable~combout\,
	datad => \qn$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \qn$latch~combout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q$latch~combout\,
	oe => VCC,
	padio => ww_q);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\qn~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \qn$latch~combout\,
	oe => VCC,
	padio => ww_qn);
END structure;


