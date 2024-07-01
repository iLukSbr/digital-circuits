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

-- DATE "05/03/2024 07:24:04"

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

ENTITY 	ff_t_deb IS
    PORT (
	t : IN std_logic;
	clrn : IN std_logic;
	prn : IN std_logic;
	clk_button : IN std_logic;
	clk_50m : IN std_logic;
	q : BUFFER std_logic;
	qn : BUFFER std_logic
	);
END ff_t_deb;

-- Design Ports Information


ARCHITECTURE structure OF ff_t_deb IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_t : std_logic;
SIGNAL ww_clrn : std_logic;
SIGNAL ww_prn : std_logic;
SIGNAL ww_clk_button : std_logic;
SIGNAL ww_clk_50m : std_logic;
SIGNAL ww_q : std_logic;
SIGNAL ww_qn : std_logic;
SIGNAL \clk_50m~combout\ : std_logic;
SIGNAL \clk_div_10ms|P_div:count[5]~regout\ : std_logic;
SIGNAL \clk_div_10ms|Add0~10_combout\ : std_logic;
SIGNAL \clk_div_10ms|P_div:count[0]~regout\ : std_logic;
SIGNAL \clk_div_10ms|Add0~12\ : std_logic;
SIGNAL \clk_div_10ms|Add0~12COUT1_91\ : std_logic;
SIGNAL \clk_div_10ms|Add0~15_combout\ : std_logic;
SIGNAL \clk_div_10ms|P_div:count[1]~regout\ : std_logic;
SIGNAL \clk_div_10ms|Add0~17\ : std_logic;
SIGNAL \clk_div_10ms|Add0~17COUT1_92\ : std_logic;
SIGNAL \clk_div_10ms|Add0~20_combout\ : std_logic;
SIGNAL \clk_div_10ms|P_div:count[2]~regout\ : std_logic;
SIGNAL \clk_div_10ms|Add0~22\ : std_logic;
SIGNAL \clk_div_10ms|Add0~22COUT1_93\ : std_logic;
SIGNAL \clk_div_10ms|Add0~25_combout\ : std_logic;
SIGNAL \clk_div_10ms|P_div:count[3]~regout\ : std_logic;
SIGNAL \clk_div_10ms|Add0~27\ : std_logic;
SIGNAL \clk_div_10ms|Add0~30_combout\ : std_logic;
SIGNAL \clk_div_10ms|P_div:count[4]~regout\ : std_logic;
SIGNAL \clk_div_10ms|Add0~32\ : std_logic;
SIGNAL \clk_div_10ms|Add0~32COUT1_94\ : std_logic;
SIGNAL \clk_div_10ms|Add0~40_combout\ : std_logic;
SIGNAL \clk_div_10ms|P_div:count[6]~regout\ : std_logic;
SIGNAL \clk_div_10ms|Add0~42\ : std_logic;
SIGNAL \clk_div_10ms|Add0~42COUT1_95\ : std_logic;
SIGNAL \clk_div_10ms|Add0~45_combout\ : std_logic;
SIGNAL \clk_div_10ms|P_div:count[7]~regout\ : std_logic;
SIGNAL \clk_div_10ms|Add0~47\ : std_logic;
SIGNAL \clk_div_10ms|Add0~47COUT1_96\ : std_logic;
SIGNAL \clk_div_10ms|Add0~35_combout\ : std_logic;
SIGNAL \clk_div_10ms|Equal0~1_combout\ : std_logic;
SIGNAL \clk_div_10ms|Equal0~0_combout\ : std_logic;
SIGNAL \clk_div_10ms|P_div:count[13]~regout\ : std_logic;
SIGNAL \clk_div_10ms|Add0~37\ : std_logic;
SIGNAL \clk_div_10ms|Add0~37COUT1_97\ : std_logic;
SIGNAL \clk_div_10ms|Add0~50_combout\ : std_logic;
SIGNAL \clk_div_10ms|P_div:count[8]~regout\ : std_logic;
SIGNAL \clk_div_10ms|Add0~52\ : std_logic;
SIGNAL \clk_div_10ms|Add0~55_combout\ : std_logic;
SIGNAL \clk_div_10ms|P_div:count[9]~regout\ : std_logic;
SIGNAL \clk_div_10ms|Add0~57\ : std_logic;
SIGNAL \clk_div_10ms|Add0~57COUT1_98\ : std_logic;
SIGNAL \clk_div_10ms|Add0~60_combout\ : std_logic;
SIGNAL \clk_div_10ms|P_div:count[10]~regout\ : std_logic;
SIGNAL \clk_div_10ms|Add0~62\ : std_logic;
SIGNAL \clk_div_10ms|Add0~62COUT1_99\ : std_logic;
SIGNAL \clk_div_10ms|Add0~65_combout\ : std_logic;
SIGNAL \clk_div_10ms|P_div:count[11]~regout\ : std_logic;
SIGNAL \clk_div_10ms|Add0~67\ : std_logic;
SIGNAL \clk_div_10ms|Add0~67COUT1_100\ : std_logic;
SIGNAL \clk_div_10ms|Add0~70_combout\ : std_logic;
SIGNAL \clk_div_10ms|P_div:count[12]~regout\ : std_logic;
SIGNAL \clk_div_10ms|Add0~72\ : std_logic;
SIGNAL \clk_div_10ms|Add0~72COUT1_101\ : std_logic;
SIGNAL \clk_div_10ms|Add0~85_combout\ : std_logic;
SIGNAL \clk_div_10ms|P_div:count[15]~regout\ : std_logic;
SIGNAL \clk_div_10ms|Add0~87\ : std_logic;
SIGNAL \clk_div_10ms|Add0~75_combout\ : std_logic;
SIGNAL \clk_div_10ms|P_div:count[14]~regout\ : std_logic;
SIGNAL \clk_div_10ms|Add0~77\ : std_logic;
SIGNAL \clk_div_10ms|Add0~77COUT1_102\ : std_logic;
SIGNAL \clk_div_10ms|Add0~80_combout\ : std_logic;
SIGNAL \clk_div_10ms|Equal0~3_combout\ : std_logic;
SIGNAL \clk_div_10ms|Equal0~2_combout\ : std_logic;
SIGNAL \clk_div_10ms|Equal0~4_combout\ : std_logic;
SIGNAL \clk_div_10ms|P_div:count[17]~regout\ : std_logic;
SIGNAL \clk_div_10ms|Add0~82\ : std_logic;
SIGNAL \clk_div_10ms|Add0~82COUT1_103\ : std_logic;
SIGNAL \clk_div_10ms|Add0~2\ : std_logic;
SIGNAL \clk_div_10ms|Add0~2COUT1_104\ : std_logic;
SIGNAL \clk_div_10ms|Add0~5_combout\ : std_logic;
SIGNAL \clk_div_10ms|P_div:count[16]~regout\ : std_logic;
SIGNAL \clk_div_10ms|Add0~0_combout\ : std_logic;
SIGNAL \clk_div_10ms|temp~regout\ : std_logic;
SIGNAL \clk_button~combout\ : std_logic;
SIGNAL \deb|result~0_combout\ : std_logic;
SIGNAL \deb|result~regout\ : std_logic;
SIGNAL \t~combout\ : std_logic;
SIGNAL \clrn~combout\ : std_logic;
SIGNAL \prn~combout\ : std_logic;
SIGNAL \qstate~regout\ : std_logic;
SIGNAL \deb|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \deb|counter_out\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_prn~combout\ : std_logic;
SIGNAL \ALT_INV_clrn~combout\ : std_logic;
SIGNAL \ALT_INV_qstate~regout\ : std_logic;

BEGIN

ww_t <= t;
ww_clrn <= clrn;
ww_prn <= prn;
ww_clk_button <= clk_button;
ww_clk_50m <= clk_50m;
q <= ww_q;
qn <= ww_qn;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_prn~combout\ <= NOT \prn~combout\;
\ALT_INV_clrn~combout\ <= NOT \clrn~combout\;
\ALT_INV_qstate~regout\ <= NOT \qstate~regout\;

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_50m~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk_50m,
	combout => \clk_50m~combout\);

-- Location: LC_X4_Y3_N9
\clk_div_10ms|P_div:count[5]\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|P_div:count[5]~regout\ = DFFEAS(GND, GLOBAL(\clk_50m~combout\), VCC, , , \clk_div_10ms|Add0~40_combout\, , , VCC)

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
	clk => \clk_50m~combout\,
	datac => \clk_div_10ms|Add0~40_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_div_10ms|P_div:count[5]~regout\);

-- Location: LC_X5_Y3_N1
\clk_div_10ms|Add0~10\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|Add0~10_combout\ = ((!\clk_div_10ms|P_div:count[0]~regout\))
-- \clk_div_10ms|Add0~12\ = CARRY(((\clk_div_10ms|P_div:count[0]~regout\)))
-- \clk_div_10ms|Add0~12COUT1_91\ = CARRY(((\clk_div_10ms|P_div:count[0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_10ms|P_div:count[0]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_div_10ms|Add0~10_combout\,
	cout0 => \clk_div_10ms|Add0~12\,
	cout1 => \clk_div_10ms|Add0~12COUT1_91\);

-- Location: LC_X4_Y3_N6
\clk_div_10ms|P_div:count[0]\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|P_div:count[0]~regout\ = DFFEAS((((\clk_div_10ms|Add0~10_combout\))), GLOBAL(\clk_50m~combout\), VCC, , , , , , )

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
	clk => \clk_50m~combout\,
	datad => \clk_div_10ms|Add0~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_div_10ms|P_div:count[0]~regout\);

-- Location: LC_X5_Y3_N2
\clk_div_10ms|Add0~15\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|Add0~15_combout\ = (\clk_div_10ms|P_div:count[1]~regout\ $ ((\clk_div_10ms|Add0~12\)))
-- \clk_div_10ms|Add0~17\ = CARRY(((!\clk_div_10ms|Add0~12\) # (!\clk_div_10ms|P_div:count[1]~regout\)))
-- \clk_div_10ms|Add0~17COUT1_92\ = CARRY(((!\clk_div_10ms|Add0~12COUT1_91\) # (!\clk_div_10ms|P_div:count[1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_10ms|P_div:count[1]~regout\,
	cin0 => \clk_div_10ms|Add0~12\,
	cin1 => \clk_div_10ms|Add0~12COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_div_10ms|Add0~15_combout\,
	cout0 => \clk_div_10ms|Add0~17\,
	cout1 => \clk_div_10ms|Add0~17COUT1_92\);

-- Location: LC_X4_Y3_N7
\clk_div_10ms|P_div:count[1]\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|P_div:count[1]~regout\ = DFFEAS(GND, GLOBAL(\clk_50m~combout\), VCC, , , \clk_div_10ms|Add0~15_combout\, , , VCC)

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
	clk => \clk_50m~combout\,
	datac => \clk_div_10ms|Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_div_10ms|P_div:count[1]~regout\);

-- Location: LC_X5_Y3_N3
\clk_div_10ms|Add0~20\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|Add0~20_combout\ = \clk_div_10ms|P_div:count[2]~regout\ $ ((((!\clk_div_10ms|Add0~17\))))
-- \clk_div_10ms|Add0~22\ = CARRY((\clk_div_10ms|P_div:count[2]~regout\ & ((!\clk_div_10ms|Add0~17\))))
-- \clk_div_10ms|Add0~22COUT1_93\ = CARRY((\clk_div_10ms|P_div:count[2]~regout\ & ((!\clk_div_10ms|Add0~17COUT1_92\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_10ms|P_div:count[2]~regout\,
	cin0 => \clk_div_10ms|Add0~17\,
	cin1 => \clk_div_10ms|Add0~17COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_div_10ms|Add0~20_combout\,
	cout0 => \clk_div_10ms|Add0~22\,
	cout1 => \clk_div_10ms|Add0~22COUT1_93\);

-- Location: LC_X4_Y3_N0
\clk_div_10ms|P_div:count[2]\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|P_div:count[2]~regout\ = DFFEAS(GND, GLOBAL(\clk_50m~combout\), VCC, , , \clk_div_10ms|Add0~20_combout\, , , VCC)

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
	clk => \clk_50m~combout\,
	datac => \clk_div_10ms|Add0~20_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_div_10ms|P_div:count[2]~regout\);

-- Location: LC_X5_Y3_N4
\clk_div_10ms|Add0~25\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|Add0~25_combout\ = (\clk_div_10ms|P_div:count[3]~regout\ $ ((\clk_div_10ms|Add0~22\)))
-- \clk_div_10ms|Add0~27\ = CARRY(((!\clk_div_10ms|Add0~22COUT1_93\) # (!\clk_div_10ms|P_div:count[3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_10ms|P_div:count[3]~regout\,
	cin0 => \clk_div_10ms|Add0~22\,
	cin1 => \clk_div_10ms|Add0~22COUT1_93\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_div_10ms|Add0~25_combout\,
	cout => \clk_div_10ms|Add0~27\);

-- Location: LC_X4_Y3_N2
\clk_div_10ms|P_div:count[3]\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|P_div:count[3]~regout\ = DFFEAS((((\clk_div_10ms|Add0~25_combout\))), GLOBAL(\clk_50m~combout\), VCC, , , , , , )

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
	clk => \clk_50m~combout\,
	datad => \clk_div_10ms|Add0~25_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_div_10ms|P_div:count[3]~regout\);

-- Location: LC_X5_Y3_N5
\clk_div_10ms|Add0~30\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|Add0~30_combout\ = (\clk_div_10ms|P_div:count[4]~regout\ $ ((!\clk_div_10ms|Add0~27\)))
-- \clk_div_10ms|Add0~32\ = CARRY(((\clk_div_10ms|P_div:count[4]~regout\ & !\clk_div_10ms|Add0~27\)))
-- \clk_div_10ms|Add0~32COUT1_94\ = CARRY(((\clk_div_10ms|P_div:count[4]~regout\ & !\clk_div_10ms|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_10ms|P_div:count[4]~regout\,
	cin => \clk_div_10ms|Add0~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_div_10ms|Add0~30_combout\,
	cout0 => \clk_div_10ms|Add0~32\,
	cout1 => \clk_div_10ms|Add0~32COUT1_94\);

-- Location: LC_X7_Y3_N2
\clk_div_10ms|P_div:count[4]\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|P_div:count[4]~regout\ = DFFEAS((\clk_div_10ms|Add0~30_combout\ & (((!\clk_div_10ms|Equal0~4_combout\) # (!\clk_div_10ms|Add0~5_combout\)) # (!\clk_div_10ms|Add0~0_combout\))), GLOBAL(\clk_50m~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~combout\,
	dataa => \clk_div_10ms|Add0~30_combout\,
	datab => \clk_div_10ms|Add0~0_combout\,
	datac => \clk_div_10ms|Add0~5_combout\,
	datad => \clk_div_10ms|Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_div_10ms|P_div:count[4]~regout\);

-- Location: LC_X5_Y3_N6
\clk_div_10ms|Add0~40\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|Add0~40_combout\ = \clk_div_10ms|P_div:count[5]~regout\ $ (((((!\clk_div_10ms|Add0~27\ & \clk_div_10ms|Add0~32\) # (\clk_div_10ms|Add0~27\ & \clk_div_10ms|Add0~32COUT1_94\)))))
-- \clk_div_10ms|Add0~42\ = CARRY(((!\clk_div_10ms|Add0~32\)) # (!\clk_div_10ms|P_div:count[5]~regout\))
-- \clk_div_10ms|Add0~42COUT1_95\ = CARRY(((!\clk_div_10ms|Add0~32COUT1_94\)) # (!\clk_div_10ms|P_div:count[5]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_10ms|P_div:count[5]~regout\,
	cin => \clk_div_10ms|Add0~27\,
	cin0 => \clk_div_10ms|Add0~32\,
	cin1 => \clk_div_10ms|Add0~32COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_div_10ms|Add0~40_combout\,
	cout0 => \clk_div_10ms|Add0~42\,
	cout1 => \clk_div_10ms|Add0~42COUT1_95\);

-- Location: LC_X4_Y3_N5
\clk_div_10ms|P_div:count[6]\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|P_div:count[6]~regout\ = DFFEAS((((\clk_div_10ms|Add0~45_combout\))), GLOBAL(\clk_50m~combout\), VCC, , , , , , )

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
	clk => \clk_50m~combout\,
	datad => \clk_div_10ms|Add0~45_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_div_10ms|P_div:count[6]~regout\);

-- Location: LC_X5_Y3_N7
\clk_div_10ms|Add0~45\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|Add0~45_combout\ = \clk_div_10ms|P_div:count[6]~regout\ $ ((((!(!\clk_div_10ms|Add0~27\ & \clk_div_10ms|Add0~42\) # (\clk_div_10ms|Add0~27\ & \clk_div_10ms|Add0~42COUT1_95\)))))
-- \clk_div_10ms|Add0~47\ = CARRY((\clk_div_10ms|P_div:count[6]~regout\ & ((!\clk_div_10ms|Add0~42\))))
-- \clk_div_10ms|Add0~47COUT1_96\ = CARRY((\clk_div_10ms|P_div:count[6]~regout\ & ((!\clk_div_10ms|Add0~42COUT1_95\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_10ms|P_div:count[6]~regout\,
	cin => \clk_div_10ms|Add0~27\,
	cin0 => \clk_div_10ms|Add0~42\,
	cin1 => \clk_div_10ms|Add0~42COUT1_95\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_div_10ms|Add0~45_combout\,
	cout0 => \clk_div_10ms|Add0~47\,
	cout1 => \clk_div_10ms|Add0~47COUT1_96\);

-- Location: LC_X7_Y3_N7
\clk_div_10ms|P_div:count[7]\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|P_div:count[7]~regout\ = DFFEAS((\clk_div_10ms|Add0~35_combout\ & (((!\clk_div_10ms|Equal0~4_combout\) # (!\clk_div_10ms|Add0~5_combout\)) # (!\clk_div_10ms|Add0~0_combout\))), GLOBAL(\clk_50m~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~combout\,
	dataa => \clk_div_10ms|Add0~35_combout\,
	datab => \clk_div_10ms|Add0~0_combout\,
	datac => \clk_div_10ms|Add0~5_combout\,
	datad => \clk_div_10ms|Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_div_10ms|P_div:count[7]~regout\);

-- Location: LC_X5_Y3_N8
\clk_div_10ms|Add0~35\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|Add0~35_combout\ = (\clk_div_10ms|P_div:count[7]~regout\ $ (((!\clk_div_10ms|Add0~27\ & \clk_div_10ms|Add0~47\) # (\clk_div_10ms|Add0~27\ & \clk_div_10ms|Add0~47COUT1_96\))))
-- \clk_div_10ms|Add0~37\ = CARRY(((!\clk_div_10ms|Add0~47\) # (!\clk_div_10ms|P_div:count[7]~regout\)))
-- \clk_div_10ms|Add0~37COUT1_97\ = CARRY(((!\clk_div_10ms|Add0~47COUT1_96\) # (!\clk_div_10ms|P_div:count[7]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_10ms|P_div:count[7]~regout\,
	cin => \clk_div_10ms|Add0~27\,
	cin0 => \clk_div_10ms|Add0~47\,
	cin1 => \clk_div_10ms|Add0~47COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_div_10ms|Add0~35_combout\,
	cout0 => \clk_div_10ms|Add0~37\,
	cout1 => \clk_div_10ms|Add0~37COUT1_97\);

-- Location: LC_X5_Y3_N0
\clk_div_10ms|Equal0~1\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|Equal0~1_combout\ = (!\clk_div_10ms|Add0~40_combout\ & (!\clk_div_10ms|Add0~45_combout\ & (\clk_div_10ms|Add0~30_combout\ & \clk_div_10ms|Add0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_10ms|Add0~40_combout\,
	datab => \clk_div_10ms|Add0~45_combout\,
	datac => \clk_div_10ms|Add0~30_combout\,
	datad => \clk_div_10ms|Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_div_10ms|Equal0~1_combout\);

-- Location: LC_X4_Y3_N8
\clk_div_10ms|Equal0~0\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|Equal0~0_combout\ = (!\clk_div_10ms|Add0~10_combout\ & (!\clk_div_10ms|Add0~15_combout\ & (!\clk_div_10ms|Add0~20_combout\ & !\clk_div_10ms|Add0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_10ms|Add0~10_combout\,
	datab => \clk_div_10ms|Add0~15_combout\,
	datac => \clk_div_10ms|Add0~20_combout\,
	datad => \clk_div_10ms|Add0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_div_10ms|Equal0~0_combout\);

-- Location: LC_X6_Y2_N0
\clk_div_10ms|P_div:count[13]\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|P_div:count[13]~regout\ = DFFEAS(GND, GLOBAL(\clk_50m~combout\), VCC, , , \clk_div_10ms|Add0~85_combout\, , , VCC)

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
	clk => \clk_50m~combout\,
	datac => \clk_div_10ms|Add0~85_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_div_10ms|P_div:count[13]~regout\);

-- Location: LC_X5_Y3_N9
\clk_div_10ms|Add0~50\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|Add0~50_combout\ = (\clk_div_10ms|P_div:count[8]~regout\ $ ((!(!\clk_div_10ms|Add0~27\ & \clk_div_10ms|Add0~37\) # (\clk_div_10ms|Add0~27\ & \clk_div_10ms|Add0~37COUT1_97\))))
-- \clk_div_10ms|Add0~52\ = CARRY(((\clk_div_10ms|P_div:count[8]~regout\ & !\clk_div_10ms|Add0~37COUT1_97\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_10ms|P_div:count[8]~regout\,
	cin => \clk_div_10ms|Add0~27\,
	cin0 => \clk_div_10ms|Add0~37\,
	cin1 => \clk_div_10ms|Add0~37COUT1_97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_div_10ms|Add0~50_combout\,
	cout => \clk_div_10ms|Add0~52\);

-- Location: LC_X4_Y3_N4
\clk_div_10ms|P_div:count[8]\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|P_div:count[8]~regout\ = DFFEAS(GND, GLOBAL(\clk_50m~combout\), VCC, , , \clk_div_10ms|Add0~50_combout\, , , VCC)

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
	clk => \clk_50m~combout\,
	datac => \clk_div_10ms|Add0~50_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_div_10ms|P_div:count[8]~regout\);

-- Location: LC_X6_Y3_N0
\clk_div_10ms|Add0~55\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|Add0~55_combout\ = (\clk_div_10ms|P_div:count[9]~regout\ $ ((\clk_div_10ms|Add0~52\)))
-- \clk_div_10ms|Add0~57\ = CARRY(((!\clk_div_10ms|Add0~52\) # (!\clk_div_10ms|P_div:count[9]~regout\)))
-- \clk_div_10ms|Add0~57COUT1_98\ = CARRY(((!\clk_div_10ms|Add0~52\) # (!\clk_div_10ms|P_div:count[9]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_10ms|P_div:count[9]~regout\,
	cin => \clk_div_10ms|Add0~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_div_10ms|Add0~55_combout\,
	cout0 => \clk_div_10ms|Add0~57\,
	cout1 => \clk_div_10ms|Add0~57COUT1_98\);

-- Location: LC_X7_Y3_N5
\clk_div_10ms|P_div:count[9]\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|P_div:count[9]~regout\ = DFFEAS(GND, GLOBAL(\clk_50m~combout\), VCC, , , \clk_div_10ms|Add0~55_combout\, , , VCC)

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
	clk => \clk_50m~combout\,
	datac => \clk_div_10ms|Add0~55_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_div_10ms|P_div:count[9]~regout\);

-- Location: LC_X6_Y3_N1
\clk_div_10ms|Add0~60\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|Add0~60_combout\ = (\clk_div_10ms|P_div:count[10]~regout\ $ ((!(!\clk_div_10ms|Add0~52\ & \clk_div_10ms|Add0~57\) # (\clk_div_10ms|Add0~52\ & \clk_div_10ms|Add0~57COUT1_98\))))
-- \clk_div_10ms|Add0~62\ = CARRY(((\clk_div_10ms|P_div:count[10]~regout\ & !\clk_div_10ms|Add0~57\)))
-- \clk_div_10ms|Add0~62COUT1_99\ = CARRY(((\clk_div_10ms|P_div:count[10]~regout\ & !\clk_div_10ms|Add0~57COUT1_98\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_10ms|P_div:count[10]~regout\,
	cin => \clk_div_10ms|Add0~52\,
	cin0 => \clk_div_10ms|Add0~57\,
	cin1 => \clk_div_10ms|Add0~57COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_div_10ms|Add0~60_combout\,
	cout0 => \clk_div_10ms|Add0~62\,
	cout1 => \clk_div_10ms|Add0~62COUT1_99\);

-- Location: LC_X6_Y2_N2
\clk_div_10ms|P_div:count[10]\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|P_div:count[10]~regout\ = DFFEAS((((\clk_div_10ms|Add0~60_combout\))), GLOBAL(\clk_50m~combout\), VCC, , , , , , )

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
	clk => \clk_50m~combout\,
	datad => \clk_div_10ms|Add0~60_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_div_10ms|P_div:count[10]~regout\);

-- Location: LC_X6_Y3_N2
\clk_div_10ms|Add0~65\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|Add0~65_combout\ = (\clk_div_10ms|P_div:count[11]~regout\ $ (((!\clk_div_10ms|Add0~52\ & \clk_div_10ms|Add0~62\) # (\clk_div_10ms|Add0~52\ & \clk_div_10ms|Add0~62COUT1_99\))))
-- \clk_div_10ms|Add0~67\ = CARRY(((!\clk_div_10ms|Add0~62\) # (!\clk_div_10ms|P_div:count[11]~regout\)))
-- \clk_div_10ms|Add0~67COUT1_100\ = CARRY(((!\clk_div_10ms|Add0~62COUT1_99\) # (!\clk_div_10ms|P_div:count[11]~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_10ms|P_div:count[11]~regout\,
	cin => \clk_div_10ms|Add0~52\,
	cin0 => \clk_div_10ms|Add0~62\,
	cin1 => \clk_div_10ms|Add0~62COUT1_99\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_div_10ms|Add0~65_combout\,
	cout0 => \clk_div_10ms|Add0~67\,
	cout1 => \clk_div_10ms|Add0~67COUT1_100\);

-- Location: LC_X6_Y4_N3
\clk_div_10ms|P_div:count[11]\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|P_div:count[11]~regout\ = DFFEAS(GND, GLOBAL(\clk_50m~combout\), VCC, , , \clk_div_10ms|Add0~65_combout\, , , VCC)

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
	clk => \clk_50m~combout\,
	datac => \clk_div_10ms|Add0~65_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_div_10ms|P_div:count[11]~regout\);

-- Location: LC_X6_Y3_N3
\clk_div_10ms|Add0~70\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|Add0~70_combout\ = (\clk_div_10ms|P_div:count[12]~regout\ $ ((!(!\clk_div_10ms|Add0~52\ & \clk_div_10ms|Add0~67\) # (\clk_div_10ms|Add0~52\ & \clk_div_10ms|Add0~67COUT1_100\))))
-- \clk_div_10ms|Add0~72\ = CARRY(((\clk_div_10ms|P_div:count[12]~regout\ & !\clk_div_10ms|Add0~67\)))
-- \clk_div_10ms|Add0~72COUT1_101\ = CARRY(((\clk_div_10ms|P_div:count[12]~regout\ & !\clk_div_10ms|Add0~67COUT1_100\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_10ms|P_div:count[12]~regout\,
	cin => \clk_div_10ms|Add0~52\,
	cin0 => \clk_div_10ms|Add0~67\,
	cin1 => \clk_div_10ms|Add0~67COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_div_10ms|Add0~70_combout\,
	cout0 => \clk_div_10ms|Add0~72\,
	cout1 => \clk_div_10ms|Add0~72COUT1_101\);

-- Location: LC_X7_Y3_N9
\clk_div_10ms|P_div:count[12]\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|P_div:count[12]~regout\ = DFFEAS((\clk_div_10ms|Add0~70_combout\ & (((!\clk_div_10ms|Equal0~4_combout\) # (!\clk_div_10ms|Add0~5_combout\)) # (!\clk_div_10ms|Add0~0_combout\))), GLOBAL(\clk_50m~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~combout\,
	dataa => \clk_div_10ms|Add0~70_combout\,
	datab => \clk_div_10ms|Add0~0_combout\,
	datac => \clk_div_10ms|Add0~5_combout\,
	datad => \clk_div_10ms|Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_div_10ms|P_div:count[12]~regout\);

-- Location: LC_X6_Y3_N4
\clk_div_10ms|Add0~85\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|Add0~85_combout\ = \clk_div_10ms|P_div:count[13]~regout\ $ (((((!\clk_div_10ms|Add0~52\ & \clk_div_10ms|Add0~72\) # (\clk_div_10ms|Add0~52\ & \clk_div_10ms|Add0~72COUT1_101\)))))
-- \clk_div_10ms|Add0~87\ = CARRY(((!\clk_div_10ms|Add0~72COUT1_101\)) # (!\clk_div_10ms|P_div:count[13]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_10ms|P_div:count[13]~regout\,
	cin => \clk_div_10ms|Add0~52\,
	cin0 => \clk_div_10ms|Add0~72\,
	cin1 => \clk_div_10ms|Add0~72COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_div_10ms|Add0~85_combout\,
	cout => \clk_div_10ms|Add0~87\);

-- Location: LC_X7_Y3_N6
\clk_div_10ms|P_div:count[15]\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|P_div:count[15]~regout\ = DFFEAS((\clk_div_10ms|Add0~80_combout\ & (((!\clk_div_10ms|Equal0~4_combout\) # (!\clk_div_10ms|Add0~0_combout\)) # (!\clk_div_10ms|Add0~5_combout\))), GLOBAL(\clk_50m~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~combout\,
	dataa => \clk_div_10ms|Add0~5_combout\,
	datab => \clk_div_10ms|Add0~0_combout\,
	datac => \clk_div_10ms|Add0~80_combout\,
	datad => \clk_div_10ms|Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_div_10ms|P_div:count[15]~regout\);

-- Location: LC_X6_Y3_N5
\clk_div_10ms|Add0~75\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|Add0~75_combout\ = (\clk_div_10ms|P_div:count[14]~regout\ $ ((!\clk_div_10ms|Add0~87\)))
-- \clk_div_10ms|Add0~77\ = CARRY(((\clk_div_10ms|P_div:count[14]~regout\ & !\clk_div_10ms|Add0~87\)))
-- \clk_div_10ms|Add0~77COUT1_102\ = CARRY(((\clk_div_10ms|P_div:count[14]~regout\ & !\clk_div_10ms|Add0~87\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_10ms|P_div:count[14]~regout\,
	cin => \clk_div_10ms|Add0~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_div_10ms|Add0~75_combout\,
	cout0 => \clk_div_10ms|Add0~77\,
	cout1 => \clk_div_10ms|Add0~77COUT1_102\);

-- Location: LC_X7_Y3_N8
\clk_div_10ms|P_div:count[14]\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|P_div:count[14]~regout\ = DFFEAS((\clk_div_10ms|Add0~75_combout\ & (((!\clk_div_10ms|Equal0~4_combout\) # (!\clk_div_10ms|Add0~5_combout\)) # (!\clk_div_10ms|Add0~0_combout\))), GLOBAL(\clk_50m~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~combout\,
	dataa => \clk_div_10ms|Add0~75_combout\,
	datab => \clk_div_10ms|Add0~0_combout\,
	datac => \clk_div_10ms|Add0~5_combout\,
	datad => \clk_div_10ms|Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_div_10ms|P_div:count[14]~regout\);

-- Location: LC_X6_Y3_N6
\clk_div_10ms|Add0~80\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|Add0~80_combout\ = \clk_div_10ms|P_div:count[15]~regout\ $ (((((!\clk_div_10ms|Add0~87\ & \clk_div_10ms|Add0~77\) # (\clk_div_10ms|Add0~87\ & \clk_div_10ms|Add0~77COUT1_102\)))))
-- \clk_div_10ms|Add0~82\ = CARRY(((!\clk_div_10ms|Add0~77\)) # (!\clk_div_10ms|P_div:count[15]~regout\))
-- \clk_div_10ms|Add0~82COUT1_103\ = CARRY(((!\clk_div_10ms|Add0~77COUT1_102\)) # (!\clk_div_10ms|P_div:count[15]~regout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_10ms|P_div:count[15]~regout\,
	cin => \clk_div_10ms|Add0~87\,
	cin0 => \clk_div_10ms|Add0~77\,
	cin1 => \clk_div_10ms|Add0~77COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_div_10ms|Add0~80_combout\,
	cout0 => \clk_div_10ms|Add0~82\,
	cout1 => \clk_div_10ms|Add0~82COUT1_103\);

-- Location: LC_X6_Y3_N9
\clk_div_10ms|Equal0~3\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|Equal0~3_combout\ = (!\clk_div_10ms|Add0~85_combout\ & (\clk_div_10ms|Add0~80_combout\ & (\clk_div_10ms|Add0~75_combout\ & \clk_div_10ms|Add0~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_10ms|Add0~85_combout\,
	datab => \clk_div_10ms|Add0~80_combout\,
	datac => \clk_div_10ms|Add0~75_combout\,
	datad => \clk_div_10ms|Add0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_div_10ms|Equal0~3_combout\);

-- Location: LC_X7_Y3_N0
\clk_div_10ms|Equal0~2\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|Equal0~2_combout\ = (!\clk_div_10ms|Add0~50_combout\ & (!\clk_div_10ms|Add0~65_combout\ & (!\clk_div_10ms|Add0~60_combout\ & !\clk_div_10ms|Add0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_10ms|Add0~50_combout\,
	datab => \clk_div_10ms|Add0~65_combout\,
	datac => \clk_div_10ms|Add0~60_combout\,
	datad => \clk_div_10ms|Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_div_10ms|Equal0~2_combout\);

-- Location: LC_X7_Y3_N1
\clk_div_10ms|Equal0~4\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|Equal0~4_combout\ = (\clk_div_10ms|Equal0~1_combout\ & (\clk_div_10ms|Equal0~0_combout\ & (\clk_div_10ms|Equal0~3_combout\ & \clk_div_10ms|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_10ms|Equal0~1_combout\,
	datab => \clk_div_10ms|Equal0~0_combout\,
	datac => \clk_div_10ms|Equal0~3_combout\,
	datad => \clk_div_10ms|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_div_10ms|Equal0~4_combout\);

-- Location: LC_X7_Y3_N3
\clk_div_10ms|P_div:count[17]\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|P_div:count[17]~regout\ = DFFEAS(((\clk_div_10ms|Add0~5_combout\ & ((!\clk_div_10ms|Equal0~4_combout\) # (!\clk_div_10ms|Add0~0_combout\)))), GLOBAL(\clk_50m~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~combout\,
	datab => \clk_div_10ms|Add0~0_combout\,
	datac => \clk_div_10ms|Add0~5_combout\,
	datad => \clk_div_10ms|Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_div_10ms|P_div:count[17]~regout\);

-- Location: LC_X6_Y3_N7
\clk_div_10ms|Add0~0\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|Add0~0_combout\ = (\clk_div_10ms|P_div:count[16]~regout\ $ ((!(!\clk_div_10ms|Add0~87\ & \clk_div_10ms|Add0~82\) # (\clk_div_10ms|Add0~87\ & \clk_div_10ms|Add0~82COUT1_103\))))
-- \clk_div_10ms|Add0~2\ = CARRY(((\clk_div_10ms|P_div:count[16]~regout\ & !\clk_div_10ms|Add0~82\)))
-- \clk_div_10ms|Add0~2COUT1_104\ = CARRY(((\clk_div_10ms|P_div:count[16]~regout\ & !\clk_div_10ms|Add0~82COUT1_103\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \clk_div_10ms|P_div:count[16]~regout\,
	cin => \clk_div_10ms|Add0~87\,
	cin0 => \clk_div_10ms|Add0~82\,
	cin1 => \clk_div_10ms|Add0~82COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_div_10ms|Add0~0_combout\,
	cout0 => \clk_div_10ms|Add0~2\,
	cout1 => \clk_div_10ms|Add0~2COUT1_104\);

-- Location: LC_X6_Y3_N8
\clk_div_10ms|Add0~5\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|Add0~5_combout\ = \clk_div_10ms|P_div:count[17]~regout\ $ (((((!\clk_div_10ms|Add0~87\ & \clk_div_10ms|Add0~2\) # (\clk_div_10ms|Add0~87\ & \clk_div_10ms|Add0~2COUT1_104\)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \clk_div_10ms|P_div:count[17]~regout\,
	cin => \clk_div_10ms|Add0~87\,
	cin0 => \clk_div_10ms|Add0~2\,
	cin1 => \clk_div_10ms|Add0~2COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \clk_div_10ms|Add0~5_combout\);

-- Location: LC_X6_Y4_N5
\clk_div_10ms|P_div:count[16]\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|P_div:count[16]~regout\ = DFFEAS(((\clk_div_10ms|Add0~0_combout\ & ((!\clk_div_10ms|Equal0~4_combout\) # (!\clk_div_10ms|Add0~5_combout\)))), GLOBAL(\clk_50m~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~combout\,
	datab => \clk_div_10ms|Add0~5_combout\,
	datac => \clk_div_10ms|Add0~0_combout\,
	datad => \clk_div_10ms|Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_div_10ms|P_div:count[16]~regout\);

-- Location: LC_X7_Y3_N4
\clk_div_10ms|temp\ : maxii_lcell
-- Equation(s):
-- \clk_div_10ms|temp~regout\ = DFFEAS(\clk_div_10ms|temp~regout\ $ (((\clk_div_10ms|Add0~0_combout\ & (\clk_div_10ms|Add0~5_combout\ & \clk_div_10ms|Equal0~4_combout\)))), GLOBAL(\clk_50m~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~combout\,
	dataa => \clk_div_10ms|temp~regout\,
	datab => \clk_div_10ms|Add0~0_combout\,
	datac => \clk_div_10ms|Add0~5_combout\,
	datad => \clk_div_10ms|Equal0~4_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clk_div_10ms|temp~regout\);

-- Location: PIN_51,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\clk_button~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk_button,
	combout => \clk_button~combout\);

-- Location: LC_X7_Y1_N3
\deb|flipflops[0]\ : maxii_lcell
-- Equation(s):
-- \deb|flipflops\(0) = DFFEAS(GND, GLOBAL(\clk_div_10ms|temp~regout\), VCC, , , \clk_button~combout\, , , VCC)

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
	clk => \clk_div_10ms|temp~regout\,
	datac => \clk_button~combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deb|flipflops\(0));

-- Location: LC_X7_Y1_N9
\deb|flipflops[1]\ : maxii_lcell
-- Equation(s):
-- \deb|flipflops\(1) = DFFEAS((((\deb|flipflops\(0)))), GLOBAL(\clk_div_10ms|temp~regout\), VCC, , , , , , )

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
	clk => \clk_div_10ms|temp~regout\,
	datad => \deb|flipflops\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deb|flipflops\(1));

-- Location: LC_X7_Y1_N8
\deb|counter_out[1]\ : maxii_lcell
-- Equation(s):
-- \deb|counter_out\(1) = DFFEAS((\deb|counter_out\(1) & (\deb|flipflops\(1) $ (((!\deb|flipflops\(0)))))) # (!\deb|counter_out\(1) & (\deb|counter_out\(0) & (\deb|flipflops\(1) $ (!\deb|flipflops\(0))))), GLOBAL(\clk_div_10ms|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c832",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_10ms|temp~regout\,
	dataa => \deb|counter_out\(1),
	datab => \deb|flipflops\(1),
	datac => \deb|counter_out\(0),
	datad => \deb|flipflops\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deb|counter_out\(1));

-- Location: LC_X7_Y1_N5
\deb|counter_out[0]\ : maxii_lcell
-- Equation(s):
-- \deb|counter_out\(0) = DFFEAS((\deb|counter_out\(0) & (\deb|counter_out\(1) & (\deb|flipflops\(0) $ (!\deb|flipflops\(1))))) # (!\deb|counter_out\(0) & (\deb|flipflops\(0) $ ((!\deb|flipflops\(1))))), GLOBAL(\clk_div_10ms|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9909",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_10ms|temp~regout\,
	dataa => \deb|flipflops\(0),
	datab => \deb|flipflops\(1),
	datac => \deb|counter_out\(0),
	datad => \deb|counter_out\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deb|counter_out\(0));

-- Location: LC_X7_Y1_N6
\deb|result~0\ : maxii_lcell
-- Equation(s):
-- \deb|result~0_combout\ = (((\deb|counter_out\(0) & \deb|counter_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \deb|counter_out\(0),
	datad => \deb|counter_out\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \deb|result~0_combout\);

-- Location: LC_X7_Y1_N7
\deb|result\ : maxii_lcell
-- Equation(s):
-- \deb|result~regout\ = DFFEAS((\deb|flipflops\(0) & ((\deb|result~regout\) # ((\deb|flipflops\(1) & \deb|result~0_combout\)))) # (!\deb|flipflops\(0) & (\deb|result~regout\ & ((\deb|flipflops\(1)) # (!\deb|result~0_combout\)))), 
-- GLOBAL(\clk_div_10ms|temp~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_div_10ms|temp~regout\,
	dataa => \deb|flipflops\(0),
	datab => \deb|flipflops\(1),
	datac => \deb|result~regout\,
	datad => \deb|result~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \deb|result~regout\);

-- Location: PIN_52,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\t~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_t,
	combout => \t~combout\);

-- Location: PIN_50,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\clrn~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clrn,
	combout => \clrn~combout\);

-- Location: PIN_53,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\prn~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_prn,
	combout => \prn~combout\);

-- Location: LC_X7_Y1_N1
qstate : maxii_lcell
-- Equation(s):
-- \qstate~regout\ = DFFEAS((\t~combout\ $ (((\qstate~regout\)))), \deb|result~regout\, \clrn~combout\, , , VCC, !\prn~combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \deb|result~regout\,
	datab => \t~combout\,
	datac => VCC,
	datad => \qstate~regout\,
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


