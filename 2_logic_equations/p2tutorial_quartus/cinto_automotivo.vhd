--------------------------------------------------------------------------------
-- Project : p2tutorial_quartus
-- File    : cinto_automotivo
-- Autor   : Lucas e Willian
-- Date    : 22/03/2024
--
--------------------------------------------------------------------------------
-- Descrição :
-- Circuito combinacional com 3 entradas e uma saída - supervisão de uso de
-- cinto automotivo
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY cinto_automotivo IS
  PORT (
  ------------------------------------------------------------------------------
  --Insert input ports below
    motorista_presente  : IN  std_logic; -- input bit example
    cinto_em_uso        : IN  std_logic; -- input bit example
    ignicao_ligada      : IN  std_logic; -- input bit example
  ------------------------------------------------------------------------------
  --Insert output ports below
    alarme              : OUT std_logic  -- output bit example
    );
END cinto_automotivo;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE combinacional OF cinto_automotivo IS

BEGIN
	alarme <= motorista_presente and (not cinto_em_uso) and ignicao_ligada;

END combinacional;
