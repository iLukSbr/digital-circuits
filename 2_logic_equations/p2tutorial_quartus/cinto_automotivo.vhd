--------------------------------------------------------------------------------
-- Project :
-- File    :
-- Autor   :
-- Date    :
--
--------------------------------------------------------------------------------
-- Descri��o :
--
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


END combinacional;