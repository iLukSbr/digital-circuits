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

-- DATE "05/03/2024 06:12:49"

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

ENTITY 	flip_flop_d_positivo IS
    PORT (
	d : IN std_logic;
	clk : IN std_logic;
	prn : IN std_logic;
	clrn : IN std_logic;
	q : OUT std_logic;
	qn : OUT std_logic
	);
END flip_flop_d_positivo;

-- Design Ports Information


ARCHITECTURE structure OF flip_flop_d_positivo IS
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
SIGNAL ww_prn : std_logic;
SIGNAL ww_clrn : std_logic;
SIGNAL ww_q : std_logic;
SIGNAL ww_qn : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \d~combout\ : std_logic;
SIGNAL \clrn~combout\ : std_logic;
SIGNAL \prn~combout\ : std_logic;
SIGNAL \qstate~regout\ : std_logic;
SIGNAL \ALT_INV_prn~combout\ : std_logic;
SIGNAL \ALT_INV_clrn~combout\ : std_logic;
SIGNAL \ALT_INV_qstate~regout\ : std_logic;

BEGIN

ww_d <= d;
ww_clk <= clk;
ww_prn <= prn;
ww_clrn <= clrn;
q <= ww_q;
qn <= ww_qn;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_prn~combout\ <= NOT \prn~combout\;
\ALT_INV_clrn~combout\ <= NOT \clrn~combout\;
\ALT_INV_qstate~regout\ <= NOT \qstate~regout\;

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

-- Location: PIN_52,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\clrn~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clrn,
	combout => \clrn~combout\);

-- Location: PIN_51,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\prn~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_prn,
	combout => \prn~combout\);

-- Location: LC_X7_Y1_N2
qstate : maxii_lcell
-- Equation(s):
-- \qstate~regout\ = DFFEAS((((\d~combout\))), \clk~combout\, \clrn~combout\, , , VCC, !\prn~combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => VCC,
	datad => \d~combout\,
	aclr => \ALT_INV_clrn~combout\,
	aload => \ALT_INV_prn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \qstate~regout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\q~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \qstate~regout\,
	oe => VCC,
	padio => ww_q);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\qn~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_qstate~regout\,
	oe => VCC,
	padio => ww_qn);
END structure;


