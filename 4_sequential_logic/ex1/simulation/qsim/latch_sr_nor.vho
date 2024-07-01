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

-- DATE "04/19/2024 20:45:44"

-- 
-- Device: Altera EPM240T100C3 Package TQFP100
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	latch_sr_nor IS
    PORT (
	S : IN std_logic;
	R : IN std_logic;
	Q : BUFFER std_logic;
	QN : BUFFER std_logic
	);
END latch_sr_nor;

-- Design Ports Information


ARCHITECTURE structure OF latch_sr_nor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL ww_QN : std_logic;
SIGNAL \S~combout\ : std_logic;
SIGNAL \R~combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \qstate~combout\ : std_logic;
SIGNAL \ALT_INV_qstate~combout\ : std_logic;

BEGIN

ww_S <= S;
ww_R <= R;
Q <= ww_Q;
QN <= ww_QN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_qstate~combout\ <= NOT \qstate~combout\;

-- Location: PIN_50,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\S~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_S,
	combout => \S~combout\);

-- Location: PIN_53,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\R~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_R,
	combout => \R~combout\);

-- Location: LC_X4_Y2_N7
\comb~0\ : maxii_lcell
-- Equation(s):
-- \comb~0_combout\ = ((\S~combout\) # ((!\R~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \S~combout\,
	datad => \R~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb~0_combout\);

-- Location: LC_X4_Y2_N5
\comb~1\ : maxii_lcell
-- Equation(s):
-- \comb~1_combout\ = (((\R~combout\)) # (!\S~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \S~combout\,
	datad => \R~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \comb~1_combout\);

-- Location: LC_X4_Y2_N8
qstate : maxii_lcell
-- Equation(s):
-- \qstate~combout\ = ((\comb~0_combout\ & ((\qstate~combout\) # (!\comb~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \comb~0_combout\,
	datac => \comb~1_combout\,
	datad => \qstate~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \qstate~combout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Q~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \qstate~combout\,
	oe => VCC,
	padio => ww_Q);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\QN~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_qstate~combout\,
	oe => VCC,
	padio => ww_QN);
END structure;


