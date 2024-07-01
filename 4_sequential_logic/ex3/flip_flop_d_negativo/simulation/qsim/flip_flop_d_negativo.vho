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

-- DATE "05/02/2024 05:32:24"

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

ENTITY 	flip_flop_d_negativo IS
    PORT (
	d : IN std_logic;
	clk : IN std_logic;
	q : OUT std_logic;
	qn : OUT std_logic
	);
END flip_flop_d_negativo;

-- Design Ports Information


ARCHITECTURE structure OF flip_flop_d_negativo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_q : std_logic;
SIGNAL ww_qn : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \d~combout\ : std_logic;
SIGNAL \s1~regout\ : std_logic;
SIGNAL \q~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_clk~combout\ : std_logic;
SIGNAL \ALT_INV_s1~regout\ : std_logic;

BEGIN

ww_d <= d;
ww_clk <= clk;
q <= ww_q;
qn <= ww_qn;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_clk~combout\ <= NOT \clk~combout\;
\ALT_INV_s1~regout\ <= NOT \s1~regout\;

-- Location: PIN_53,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_50,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\d~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_d,
	combout => \d~combout\);

-- Location: LC_X5_Y1_N4
s1 : maxii_lcell
-- Equation(s):
-- \s1~regout\ = DFFEAS(GND, !GLOBAL(\clk~combout\), VCC, , , \d~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datac => \d~combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \s1~regout\);

-- Location: LC_X5_Y1_N6
\q~reg0\ : maxii_lcell
-- Equation(s):
-- \q~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \s1~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \s1~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q~reg0_regout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \q~reg0_regout\,
	oe => VCC,
	padio => ww_q);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\qn~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_s1~regout\,
	oe => VCC,
	padio => ww_qn);
END structure;


