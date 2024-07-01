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

-- DATE "04/12/2024 20:46:53"

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

ENTITY 	dec_7s_auto_cnt IS
    PORT (
	clk : IN std_logic;
	clr : IN std_logic;
	c_7s : OUT std_logic_vector(6 DOWNTO 0)
	);
END dec_7s_auto_cnt;

-- Design Ports Information


ARCHITECTURE structure OF dec_7s_auto_cnt IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_c_7s : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \clr~combout\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella0~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella0~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella1~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella1~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella3~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella3~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella4~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella4~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella5~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella5~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella6~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella6~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella7~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella8~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella8~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella9~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella9~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella10~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella10~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella11~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella11~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella12~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella13~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella13~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella14~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella14~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella15~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella15~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella16~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella16~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella17~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella18~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella18~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella19~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella19~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella20~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella20~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella21~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella21~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella22~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella23~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella23~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella24~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella24~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella25~COUT\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|counter_cella25~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\ : std_logic;
SIGNAL \cnt1|LPM_COUNTER_component|auto_generated|counter_cella0~COUT\ : std_logic;
SIGNAL \cnt1|LPM_COUNTER_component|auto_generated|counter_cella0~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt1|LPM_COUNTER_component|auto_generated|counter_cella1~COUT\ : std_logic;
SIGNAL \cnt1|LPM_COUNTER_component|auto_generated|counter_cella1~COUTCOUT1_1\ : std_logic;
SIGNAL \cnt1|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\ : std_logic;
SIGNAL \cnt1|LPM_COUNTER_component|auto_generated|counter_cella2~COUTCOUT1_1\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \cnt1|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_clr~combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_clr <= clr;
c_7s <= ww_c_7s;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_clr~combout\ <= NOT \clr~combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X4_Y3_N2
\~GND\ : maxii_lcell
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \~GND~combout\);

-- Location: PIN_52,	 I/O Standard: 3.3V Schmitt Trigger Input,	 Current Strength: Default
\clr~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clr,
	combout => \clr~combout\);

-- Location: LC_X3_Y2_N2
\cnt|LPM_COUNTER_component|auto_generated|counter_cella0\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(0) = DFFEAS(((!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(0))), GLOBAL(\clk~combout\), GLOBAL(\clr~combout\), , , \~GND~combout\, , , \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella0~COUT\ = CARRY(((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(0))))
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella0~COUTCOUT1_1\ = CARRY(((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(0),
	cout0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella0~COUT\,
	cout1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella0~COUTCOUT1_1\);

-- Location: LC_X3_Y2_N3
\cnt|LPM_COUNTER_component|auto_generated|counter_cella1\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(1) = DFFEAS(\cnt|LPM_COUNTER_component|auto_generated|safe_q\(1) $ ((((\cnt|LPM_COUNTER_component|auto_generated|counter_cella0~COUT\)))), GLOBAL(\clk~combout\), GLOBAL(\clr~combout\), , , \~GND~combout\, 
-- , , \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella1~COUT\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella0~COUT\)) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(1)))
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella1~COUTCOUT1_1\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella0~COUTCOUT1_1\)) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella0~COUT\,
	cin1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella0~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(1),
	cout0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella1~COUT\,
	cout1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella1~COUTCOUT1_1\);

-- Location: LC_X3_Y2_N4
\cnt|LPM_COUNTER_component|auto_generated|counter_cella2\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(2) = DFFEAS(\cnt|LPM_COUNTER_component|auto_generated|safe_q\(2) $ ((((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella1~COUT\)))), GLOBAL(\clk~combout\), GLOBAL(\clr~combout\), , , \~GND~combout\, 
-- , , \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\ = CARRY((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(2) & ((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella1~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella1~COUT\,
	cin1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella1~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(2),
	cout => \cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\);

-- Location: LC_X3_Y2_N5
\cnt|LPM_COUNTER_component|auto_generated|counter_cella3\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(3) = DFFEAS(\cnt|LPM_COUNTER_component|auto_generated|safe_q\(3) $ ((((\cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\)))), GLOBAL(\clk~combout\), GLOBAL(\clr~combout\), , , \~GND~combout\, 
-- , , \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella3~COUT\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\)) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(3)))
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella3~COUTCOUT1_1\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\)) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin => \cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(3),
	cout0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella3~COUT\,
	cout1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella3~COUTCOUT1_1\);

-- Location: LC_X3_Y2_N6
\cnt|LPM_COUNTER_component|auto_generated|counter_cella4\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(4) = DFFEAS(\cnt|LPM_COUNTER_component|auto_generated|safe_q\(4) $ ((((!(!\cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella3~COUT\) # 
-- (\cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella3~COUTCOUT1_1\))))), GLOBAL(\clk~combout\), GLOBAL(\clr~combout\), , , \~GND~combout\, , , 
-- \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella4~COUT\ = CARRY((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(4) & ((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella3~COUT\))))
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella4~COUTCOUT1_1\ = CARRY((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(4) & ((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella3~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin => \cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\,
	cin0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella3~COUT\,
	cin1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella3~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(4),
	cout0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella4~COUT\,
	cout1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella4~COUTCOUT1_1\);

-- Location: LC_X3_Y2_N7
\cnt|LPM_COUNTER_component|auto_generated|counter_cella5\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(5) = DFFEAS((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(5) $ (((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella4~COUT\) # 
-- (\cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella4~COUTCOUT1_1\)))), GLOBAL(\clk~combout\), GLOBAL(\clr~combout\), , , \~GND~combout\, , , 
-- \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella5~COUT\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella4~COUT\) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(5))))
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella5~COUTCOUT1_1\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella4~COUTCOUT1_1\) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin => \cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\,
	cin0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella4~COUT\,
	cin1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella4~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(5),
	cout0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella5~COUT\,
	cout1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella5~COUTCOUT1_1\);

-- Location: LC_X3_Y2_N8
\cnt|LPM_COUNTER_component|auto_generated|counter_cella6\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(6) = DFFEAS(\cnt|LPM_COUNTER_component|auto_generated|safe_q\(6) $ ((((!(!\cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella5~COUT\) # 
-- (\cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella5~COUTCOUT1_1\))))), GLOBAL(\clk~combout\), GLOBAL(\clr~combout\), , , \~GND~combout\, , , 
-- \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella6~COUT\ = CARRY((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(6) & ((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella5~COUT\))))
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella6~COUTCOUT1_1\ = CARRY((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(6) & ((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella5~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin => \cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\,
	cin0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella5~COUT\,
	cin1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella5~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(6),
	cout0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella6~COUT\,
	cout1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella6~COUTCOUT1_1\);

-- Location: LC_X3_Y2_N9
\cnt|LPM_COUNTER_component|auto_generated|counter_cella7\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(7) = DFFEAS((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(7) $ (((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella6~COUT\) # 
-- (\cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella6~COUTCOUT1_1\)))), GLOBAL(\clk~combout\), GLOBAL(\clr~combout\), , , \~GND~combout\, , , 
-- \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella7~COUT\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella6~COUTCOUT1_1\) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin => \cnt|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\,
	cin0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella6~COUT\,
	cin1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella6~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(7),
	cout => \cnt|LPM_COUNTER_component|auto_generated|counter_cella7~COUT\);

-- Location: LC_X4_Y2_N0
\cnt|LPM_COUNTER_component|auto_generated|counter_cella8\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(8) = DFFEAS((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(8) $ ((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella7~COUT\))), GLOBAL(\clk~combout\), GLOBAL(\clr~combout\), , , \~GND~combout\, , 
-- , \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella8~COUT\ = CARRY(((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\cnt|LPM_COUNTER_component|auto_generated|counter_cella7~COUT\)))
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella8~COUTCOUT1_1\ = CARRY(((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(8) & !\cnt|LPM_COUNTER_component|auto_generated|counter_cella7~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin => \cnt|LPM_COUNTER_component|auto_generated|counter_cella7~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(8),
	cout0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella8~COUT\,
	cout1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella8~COUTCOUT1_1\);

-- Location: LC_X4_Y2_N1
\cnt|LPM_COUNTER_component|auto_generated|counter_cella9\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(9) = DFFEAS((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(9) $ (((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella7~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella8~COUT\) # 
-- (\cnt|LPM_COUNTER_component|auto_generated|counter_cella7~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella8~COUTCOUT1_1\)))), GLOBAL(\clk~combout\), GLOBAL(\clr~combout\), , , \~GND~combout\, , , 
-- \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella9~COUT\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella8~COUT\) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(9))))
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella9~COUTCOUT1_1\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella8~COUTCOUT1_1\) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin => \cnt|LPM_COUNTER_component|auto_generated|counter_cella7~COUT\,
	cin0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella8~COUT\,
	cin1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella8~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(9),
	cout0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella9~COUT\,
	cout1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella9~COUTCOUT1_1\);

-- Location: LC_X4_Y2_N2
\cnt|LPM_COUNTER_component|auto_generated|counter_cella10\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(10) = DFFEAS((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(10) $ ((!(!\cnt|LPM_COUNTER_component|auto_generated|counter_cella7~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella9~COUT\) # 
-- (\cnt|LPM_COUNTER_component|auto_generated|counter_cella7~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella9~COUTCOUT1_1\)))), GLOBAL(\clk~combout\), GLOBAL(\clr~combout\), , , \~GND~combout\, , , 
-- \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella10~COUT\ = CARRY(((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\cnt|LPM_COUNTER_component|auto_generated|counter_cella9~COUT\)))
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella10~COUTCOUT1_1\ = CARRY(((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(10) & !\cnt|LPM_COUNTER_component|auto_generated|counter_cella9~COUTCOUT1_1\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin => \cnt|LPM_COUNTER_component|auto_generated|counter_cella7~COUT\,
	cin0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella9~COUT\,
	cin1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella9~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(10),
	cout0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella10~COUT\,
	cout1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella10~COUTCOUT1_1\);

-- Location: LC_X4_Y2_N3
\cnt|LPM_COUNTER_component|auto_generated|counter_cella11\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(11) = DFFEAS(\cnt|LPM_COUNTER_component|auto_generated|safe_q\(11) $ (((((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella7~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella10~COUT\) 
-- # (\cnt|LPM_COUNTER_component|auto_generated|counter_cella7~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella10~COUTCOUT1_1\))))), GLOBAL(\clk~combout\), GLOBAL(\clr~combout\), , , \~GND~combout\, , , 
-- \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella11~COUT\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella10~COUT\)) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(11)))
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella11~COUTCOUT1_1\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella10~COUTCOUT1_1\)) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(11)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(11),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin => \cnt|LPM_COUNTER_component|auto_generated|counter_cella7~COUT\,
	cin0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella10~COUT\,
	cin1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella10~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(11),
	cout0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella11~COUT\,
	cout1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella11~COUTCOUT1_1\);

-- Location: LC_X6_Y2_N5
\cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~3\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\ = (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(8)) # ((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(9)) # ((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(10)) # 
-- (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(8),
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(9),
	datac => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(10),
	datad => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\);

-- Location: LC_X4_Y2_N4
\cnt|LPM_COUNTER_component|auto_generated|counter_cella12\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(12) = DFFEAS(\cnt|LPM_COUNTER_component|auto_generated|safe_q\(12) $ ((((!(!\cnt|LPM_COUNTER_component|auto_generated|counter_cella7~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella11~COUT\) 
-- # (\cnt|LPM_COUNTER_component|auto_generated|counter_cella7~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella11~COUTCOUT1_1\))))), GLOBAL(\clk~combout\), GLOBAL(\clr~combout\), , , \~GND~combout\, , , 
-- \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella12~COUT\ = CARRY((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(12) & ((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella11~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin => \cnt|LPM_COUNTER_component|auto_generated|counter_cella7~COUT\,
	cin0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella11~COUT\,
	cin1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella11~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(12),
	cout => \cnt|LPM_COUNTER_component|auto_generated|counter_cella12~COUT\);

-- Location: LC_X4_Y2_N5
\cnt|LPM_COUNTER_component|auto_generated|counter_cella13\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(13) = DFFEAS(\cnt|LPM_COUNTER_component|auto_generated|safe_q\(13) $ ((((\cnt|LPM_COUNTER_component|auto_generated|counter_cella12~COUT\)))), GLOBAL(\clk~combout\), GLOBAL(\clr~combout\), , , 
-- \~GND~combout\, , , \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella13~COUT\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella12~COUT\)) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(13)))
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella13~COUTCOUT1_1\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella12~COUT\)) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(13)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin => \cnt|LPM_COUNTER_component|auto_generated|counter_cella12~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(13),
	cout0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella13~COUT\,
	cout1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella13~COUTCOUT1_1\);

-- Location: LC_X4_Y2_N6
\cnt|LPM_COUNTER_component|auto_generated|counter_cella14\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(14) = DFFEAS(\cnt|LPM_COUNTER_component|auto_generated|safe_q\(14) $ ((((!(!\cnt|LPM_COUNTER_component|auto_generated|counter_cella12~COUT\ & 
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella13~COUT\) # (\cnt|LPM_COUNTER_component|auto_generated|counter_cella12~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella13~COUTCOUT1_1\))))), GLOBAL(\clk~combout\), 
-- GLOBAL(\clr~combout\), , , \~GND~combout\, , , \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella14~COUT\ = CARRY((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(14) & ((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella13~COUT\))))
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella14~COUTCOUT1_1\ = CARRY((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(14) & ((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella13~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin => \cnt|LPM_COUNTER_component|auto_generated|counter_cella12~COUT\,
	cin0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella13~COUT\,
	cin1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella13~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(14),
	cout0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella14~COUT\,
	cout1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella14~COUTCOUT1_1\);

-- Location: LC_X4_Y2_N7
\cnt|LPM_COUNTER_component|auto_generated|counter_cella15\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(15) = DFFEAS((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(15) $ (((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella12~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella14~COUT\) 
-- # (\cnt|LPM_COUNTER_component|auto_generated|counter_cella12~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella14~COUTCOUT1_1\)))), GLOBAL(\clk~combout\), GLOBAL(\clr~combout\), , , \~GND~combout\, , , 
-- \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella15~COUT\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella14~COUT\) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(15))))
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella15~COUTCOUT1_1\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella14~COUTCOUT1_1\) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(15),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin => \cnt|LPM_COUNTER_component|auto_generated|counter_cella12~COUT\,
	cin0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella14~COUT\,
	cin1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella14~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(15),
	cout0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella15~COUT\,
	cout1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella15~COUTCOUT1_1\);

-- Location: LC_X6_Y2_N7
\cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~4\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\ = (((!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(15)) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(13))) # 
-- (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(14))) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(12),
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(14),
	datac => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(13),
	datad => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\);

-- Location: LC_X4_Y2_N8
\cnt|LPM_COUNTER_component|auto_generated|counter_cella16\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(16) = DFFEAS(\cnt|LPM_COUNTER_component|auto_generated|safe_q\(16) $ ((((!(!\cnt|LPM_COUNTER_component|auto_generated|counter_cella12~COUT\ & 
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella15~COUT\) # (\cnt|LPM_COUNTER_component|auto_generated|counter_cella12~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella15~COUTCOUT1_1\))))), GLOBAL(\clk~combout\), 
-- GLOBAL(\clr~combout\), , , \~GND~combout\, , , \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella16~COUT\ = CARRY((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(16) & ((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella15~COUT\))))
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella16~COUTCOUT1_1\ = CARRY((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(16) & ((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella15~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(16),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin => \cnt|LPM_COUNTER_component|auto_generated|counter_cella12~COUT\,
	cin0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella15~COUT\,
	cin1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella15~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(16),
	cout0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella16~COUT\,
	cout1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella16~COUTCOUT1_1\);

-- Location: LC_X4_Y2_N9
\cnt|LPM_COUNTER_component|auto_generated|counter_cella17\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(17) = DFFEAS((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(17) $ (((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella12~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella16~COUT\) 
-- # (\cnt|LPM_COUNTER_component|auto_generated|counter_cella12~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella16~COUTCOUT1_1\)))), GLOBAL(\clk~combout\), GLOBAL(\clr~combout\), , , \~GND~combout\, , , 
-- \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella17~COUT\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella16~COUTCOUT1_1\) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin => \cnt|LPM_COUNTER_component|auto_generated|counter_cella12~COUT\,
	cin0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella16~COUT\,
	cin1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella16~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(17),
	cout => \cnt|LPM_COUNTER_component|auto_generated|counter_cella17~COUT\);

-- Location: LC_X5_Y2_N0
\cnt|LPM_COUNTER_component|auto_generated|counter_cella18\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(18) = DFFEAS((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(18) $ ((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella17~COUT\))), GLOBAL(\clk~combout\), GLOBAL(\clr~combout\), , , 
-- \~GND~combout\, , , \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella18~COUT\ = CARRY(((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(18) & !\cnt|LPM_COUNTER_component|auto_generated|counter_cella17~COUT\)))
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella18~COUTCOUT1_1\ = CARRY(((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(18) & !\cnt|LPM_COUNTER_component|auto_generated|counter_cella17~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(18),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin => \cnt|LPM_COUNTER_component|auto_generated|counter_cella17~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(18),
	cout0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella18~COUT\,
	cout1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella18~COUTCOUT1_1\);

-- Location: LC_X5_Y2_N1
\cnt|LPM_COUNTER_component|auto_generated|counter_cella19\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(19) = DFFEAS((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(19) $ (((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella17~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella18~COUT\) 
-- # (\cnt|LPM_COUNTER_component|auto_generated|counter_cella17~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella18~COUTCOUT1_1\)))), GLOBAL(\clk~combout\), GLOBAL(\clr~combout\), , , \~GND~combout\, , , 
-- \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella19~COUT\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella18~COUT\) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(19))))
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella19~COUTCOUT1_1\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella18~COUTCOUT1_1\) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(19),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin => \cnt|LPM_COUNTER_component|auto_generated|counter_cella17~COUT\,
	cin0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella18~COUT\,
	cin1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella18~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(19),
	cout0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella19~COUT\,
	cout1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella19~COUTCOUT1_1\);

-- Location: LC_X5_Y2_N2
\cnt|LPM_COUNTER_component|auto_generated|counter_cella20\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(20) = DFFEAS((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(20) $ ((!(!\cnt|LPM_COUNTER_component|auto_generated|counter_cella17~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella19~COUT\) 
-- # (\cnt|LPM_COUNTER_component|auto_generated|counter_cella17~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella19~COUTCOUT1_1\)))), GLOBAL(\clk~combout\), GLOBAL(\clr~combout\), , , \~GND~combout\, , , 
-- \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella20~COUT\ = CARRY(((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(20) & !\cnt|LPM_COUNTER_component|auto_generated|counter_cella19~COUT\)))
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella20~COUTCOUT1_1\ = CARRY(((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(20) & !\cnt|LPM_COUNTER_component|auto_generated|counter_cella19~COUTCOUT1_1\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(20),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin => \cnt|LPM_COUNTER_component|auto_generated|counter_cella17~COUT\,
	cin0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella19~COUT\,
	cin1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella19~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(20),
	cout0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella20~COUT\,
	cout1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella20~COUTCOUT1_1\);

-- Location: LC_X5_Y2_N3
\cnt|LPM_COUNTER_component|auto_generated|counter_cella21\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(21) = DFFEAS(\cnt|LPM_COUNTER_component|auto_generated|safe_q\(21) $ (((((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella17~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella20~COUT\) 
-- # (\cnt|LPM_COUNTER_component|auto_generated|counter_cella17~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella20~COUTCOUT1_1\))))), GLOBAL(\clk~combout\), GLOBAL(\clr~combout\), , , \~GND~combout\, , , 
-- \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella21~COUT\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella20~COUT\)) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(21)))
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella21~COUTCOUT1_1\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella20~COUTCOUT1_1\)) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(21)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(21),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin => \cnt|LPM_COUNTER_component|auto_generated|counter_cella17~COUT\,
	cin0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella20~COUT\,
	cin1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella20~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(21),
	cout0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella21~COUT\,
	cout1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella21~COUTCOUT1_1\);

-- Location: LC_X5_Y2_N4
\cnt|LPM_COUNTER_component|auto_generated|counter_cella22\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(22) = DFFEAS(\cnt|LPM_COUNTER_component|auto_generated|safe_q\(22) $ ((((!(!\cnt|LPM_COUNTER_component|auto_generated|counter_cella17~COUT\ & 
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella21~COUT\) # (\cnt|LPM_COUNTER_component|auto_generated|counter_cella17~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella21~COUTCOUT1_1\))))), GLOBAL(\clk~combout\), 
-- GLOBAL(\clr~combout\), , , \~GND~combout\, , , \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella22~COUT\ = CARRY((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(22) & ((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella21~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(22),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin => \cnt|LPM_COUNTER_component|auto_generated|counter_cella17~COUT\,
	cin0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella21~COUT\,
	cin1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella21~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(22),
	cout => \cnt|LPM_COUNTER_component|auto_generated|counter_cella22~COUT\);

-- Location: LC_X5_Y2_N5
\cnt|LPM_COUNTER_component|auto_generated|counter_cella23\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(23) = DFFEAS(\cnt|LPM_COUNTER_component|auto_generated|safe_q\(23) $ ((((\cnt|LPM_COUNTER_component|auto_generated|counter_cella22~COUT\)))), GLOBAL(\clk~combout\), GLOBAL(\clr~combout\), , , 
-- \~GND~combout\, , , \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella23~COUT\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella22~COUT\)) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(23)))
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella23~COUTCOUT1_1\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella22~COUT\)) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(23)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(23),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin => \cnt|LPM_COUNTER_component|auto_generated|counter_cella22~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(23),
	cout0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella23~COUT\,
	cout1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella23~COUTCOUT1_1\);

-- Location: LC_X5_Y2_N9
\cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~6\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\ = (((!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(21)) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(22))) # 
-- (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(20))) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(23),
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(20),
	datac => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(22),
	datad => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\);

-- Location: LC_X5_Y2_N6
\cnt|LPM_COUNTER_component|auto_generated|counter_cella24\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(24) = DFFEAS(\cnt|LPM_COUNTER_component|auto_generated|safe_q\(24) $ ((((!(!\cnt|LPM_COUNTER_component|auto_generated|counter_cella22~COUT\ & 
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella23~COUT\) # (\cnt|LPM_COUNTER_component|auto_generated|counter_cella22~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella23~COUTCOUT1_1\))))), GLOBAL(\clk~combout\), 
-- GLOBAL(\clr~combout\), , , \~GND~combout\, , , \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella24~COUT\ = CARRY((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(24) & ((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella23~COUT\))))
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella24~COUTCOUT1_1\ = CARRY((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(24) & ((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella23~COUTCOUT1_1\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(24),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin => \cnt|LPM_COUNTER_component|auto_generated|counter_cella22~COUT\,
	cin0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella23~COUT\,
	cin1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella23~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(24),
	cout0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella24~COUT\,
	cout1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella24~COUTCOUT1_1\);

-- Location: LC_X5_Y2_N7
\cnt|LPM_COUNTER_component|auto_generated|counter_cella25\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|safe_q\(25) = DFFEAS((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(25) $ (((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella22~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella24~COUT\) 
-- # (\cnt|LPM_COUNTER_component|auto_generated|counter_cella22~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella24~COUTCOUT1_1\)))), GLOBAL(\clk~combout\), GLOBAL(\clr~combout\), , , \~GND~combout\, , , 
-- \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\)
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella25~COUT\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella24~COUT\) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(25))))
-- \cnt|LPM_COUNTER_component|auto_generated|counter_cella25~COUTCOUT1_1\ = CARRY(((!\cnt|LPM_COUNTER_component|auto_generated|counter_cella24~COUTCOUT1_1\) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(25),
	datac => \~GND~combout\,
	aclr => \ALT_INV_clr~combout\,
	sload => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	cin => \cnt|LPM_COUNTER_component|auto_generated|counter_cella22~COUT\,
	cin0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella24~COUT\,
	cin1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella24~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(25),
	cout0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella25~COUT\,
	cout1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella25~COUTCOUT1_1\);

-- Location: LC_X6_Y2_N2
\cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~5\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\ = (\cnt|LPM_COUNTER_component|auto_generated|safe_q\(18)) # (((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(16)) # 
-- (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(19))) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffbf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(18),
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(17),
	datac => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(19),
	datad => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\);

-- Location: LC_X6_Y2_N0
\cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~7\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\ = (\cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\) # (((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(24)) # 
-- (\cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\)) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~6_combout\,
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(25),
	datac => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(24),
	datad => \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\);

-- Location: LC_X3_Y2_N0
\cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ = ((\cnt|LPM_COUNTER_component|auto_generated|safe_q\(7)) # ((!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(6)) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(5)))) 
-- # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datab => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(7),
	datac => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\);

-- Location: LC_X3_Y2_N1
\cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (((!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(0)))) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LC_X6_Y2_N8
\cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~2\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ = ((\cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\) # ((\cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\) # 
-- (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(3)))) # (!\cnt|LPM_COUNTER_component|auto_generated|safe_q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\,
	datac => \cnt|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\);

-- Location: LC_X6_Y2_N9
\cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire\(0) = (\cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\) # ((\cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\) # 
-- ((\cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\) # (\cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\,
	datab => \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\,
	datac => \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~7_combout\,
	datad => \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire\(0));

-- Location: LC_X5_Y2_N8
\cnt|LPM_COUNTER_component|auto_generated|cout_bit\ : maxii_lcell
-- Equation(s):
-- \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\ = (((!(!\cnt|LPM_COUNTER_component|auto_generated|counter_cella22~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella25~COUT\) # 
-- (\cnt|LPM_COUNTER_component|auto_generated|counter_cella22~COUT\ & \cnt|LPM_COUNTER_component|auto_generated|counter_cella25~COUTCOUT1_1\))) # (!\cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire\(0)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3f3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \cnt|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire\(0),
	cin => \cnt|LPM_COUNTER_component|auto_generated|counter_cella22~COUT\,
	cin0 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella25~COUT\,
	cin1 => \cnt|LPM_COUNTER_component|auto_generated|counter_cella25~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\);

-- Location: LC_X4_Y1_N5
\cnt1|LPM_COUNTER_component|auto_generated|counter_cella0\ : maxii_lcell
-- Equation(s):
-- \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0) = DFFEAS((!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0)), GLOBAL(\cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\), GLOBAL(\clr~combout\), , , , , , )
-- \cnt1|LPM_COUNTER_component|auto_generated|counter_cella0~COUT\ = CARRY((\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0)))
-- \cnt1|LPM_COUNTER_component|auto_generated|counter_cella0~COUTCOUT1_1\ = CARRY((\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	dataa => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0),
	aclr => \ALT_INV_clr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0),
	cout0 => \cnt1|LPM_COUNTER_component|auto_generated|counter_cella0~COUT\,
	cout1 => \cnt1|LPM_COUNTER_component|auto_generated|counter_cella0~COUTCOUT1_1\);

-- Location: LC_X4_Y1_N6
\cnt1|LPM_COUNTER_component|auto_generated|counter_cella1\ : maxii_lcell
-- Equation(s):
-- \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1) = DFFEAS(\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1) $ ((((\cnt1|LPM_COUNTER_component|auto_generated|counter_cella0~COUT\)))), 
-- GLOBAL(\cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\), GLOBAL(\clr~combout\), , , , , , )
-- \cnt1|LPM_COUNTER_component|auto_generated|counter_cella1~COUT\ = CARRY(((!\cnt1|LPM_COUNTER_component|auto_generated|counter_cella0~COUT\)) # (!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1)))
-- \cnt1|LPM_COUNTER_component|auto_generated|counter_cella1~COUTCOUT1_1\ = CARRY(((!\cnt1|LPM_COUNTER_component|auto_generated|counter_cella0~COUTCOUT1_1\)) # (!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	dataa => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1),
	aclr => \ALT_INV_clr~combout\,
	cin0 => \cnt1|LPM_COUNTER_component|auto_generated|counter_cella0~COUT\,
	cin1 => \cnt1|LPM_COUNTER_component|auto_generated|counter_cella0~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1),
	cout0 => \cnt1|LPM_COUNTER_component|auto_generated|counter_cella1~COUT\,
	cout1 => \cnt1|LPM_COUNTER_component|auto_generated|counter_cella1~COUTCOUT1_1\);

-- Location: LC_X4_Y1_N7
\cnt1|LPM_COUNTER_component|auto_generated|counter_cella2\ : maxii_lcell
-- Equation(s):
-- \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2) = DFFEAS((\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2) $ ((!\cnt1|LPM_COUNTER_component|auto_generated|counter_cella1~COUT\))), 
-- GLOBAL(\cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\), GLOBAL(\clr~combout\), , , , , , )
-- \cnt1|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\ = CARRY(((\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\cnt1|LPM_COUNTER_component|auto_generated|counter_cella1~COUT\)))
-- \cnt1|LPM_COUNTER_component|auto_generated|counter_cella2~COUTCOUT1_1\ = CARRY(((\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\cnt1|LPM_COUNTER_component|auto_generated|counter_cella1~COUTCOUT1_1\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	datab => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2),
	aclr => \ALT_INV_clr~combout\,
	cin0 => \cnt1|LPM_COUNTER_component|auto_generated|counter_cella1~COUT\,
	cin1 => \cnt1|LPM_COUNTER_component|auto_generated|counter_cella1~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2),
	cout0 => \cnt1|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\,
	cout1 => \cnt1|LPM_COUNTER_component|auto_generated|counter_cella2~COUTCOUT1_1\);

-- Location: LC_X4_Y1_N8
\cnt1|LPM_COUNTER_component|auto_generated|counter_cella3\ : maxii_lcell
-- Equation(s):
-- \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3) = DFFEAS(((\cnt1|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\ $ (\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3)))), 
-- GLOBAL(\cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\), GLOBAL(\clr~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \cnt|LPM_COUNTER_component|auto_generated|modulus_trigger\,
	datad => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3),
	aclr => \ALT_INV_clr~combout\,
	cin0 => \cnt1|LPM_COUNTER_component|auto_generated|counter_cella2~COUT\,
	cin1 => \cnt1|LPM_COUNTER_component|auto_generated|counter_cella2~COUTCOUT1_1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LC_X4_Y1_N1
\Mux6~0\ : maxii_lcell
-- Equation(s):
-- \Mux6~0_combout\ = (\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2) & ((\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0) & (!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1))) # (!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0) & 
-- ((!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3)))))) # (!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2) & (((\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1)) # (\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f7c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datab => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datac => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0_combout\);

-- Location: LC_X4_Y1_N4
\Mux5~0\ : maxii_lcell
-- Equation(s):
-- \Mux5~0_combout\ = (\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0) & ((\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2) & ((\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1)) # (\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3)))) # 
-- (!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2) & ((!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3)))))) # (!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0) & (\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1) & 
-- (\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2) $ (!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e08e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datab => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datac => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0_combout\);

-- Location: LC_X4_Y1_N2
\Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0) & (((!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1) & !\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2))) # (!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3)))) # 
-- (!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0) & (\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1) $ (!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "42ba",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datab => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datac => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X4_Y1_N0
\Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Mux3~0_combout\ = (\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0) & ((\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3))) # 
-- (!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2))))) # (!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0) & ((\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1) & 
-- ((\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3)))) # (!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4692",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datab => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datac => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X4_Y1_N9
\Mux2~0\ : maxii_lcell
-- Equation(s):
-- \Mux2~0_combout\ = (!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0) & ((\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3))) # 
-- (!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1) & (\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2) & \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datab => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datac => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: LC_X3_Y1_N5
\Mux1~0\ : maxii_lcell
-- Equation(s):
-- \Mux1~0_combout\ = (\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2) & ((\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0) & (!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1) & !\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3))) # 
-- (!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0) & (\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1) $ (\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3)))))) # (!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2) & 
-- (\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0) & (\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1) & \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4228",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datac => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X3_Y1_N7
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0) & (\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3) $ (((!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1)))))) # 
-- (!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0) & (\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1) & !\cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c806",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datab => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datac => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => \cnt1|LPM_COUNTER_component|auto_generated|safe_q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c_7s[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~0_combout\,
	oe => VCC,
	padio => ww_c_7s(0));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c_7s[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux5~0_combout\,
	oe => VCC,
	padio => ww_c_7s(1));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c_7s[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_c_7s(2));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c_7s[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux3~0_combout\,
	oe => VCC,
	padio => ww_c_7s(3));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c_7s[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux2~0_combout\,
	oe => VCC,
	padio => ww_c_7s(4));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c_7s[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux1~0_combout\,
	oe => VCC,
	padio => ww_c_7s(5));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\c_7s[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux0~0_combout\,
	oe => VCC,
	padio => ww_c_7s(6));
END structure;


