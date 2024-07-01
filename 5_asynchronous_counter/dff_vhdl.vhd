--------------------------------------------------------------------------------
-- UTFPR - Universidade Tecnológica Federal do Paraná - Curitiba - PR
-- Projeto  : Prática 5 - Cronômetro
-- Circuito : Implementação de um FF tipo D
-- Arquivo  : dff_vhdl_vhdl.vhd
-- Autor    : prof. Gortan
-- Data     : Maio 2022
--------------------------------------------------------------------------------
-- Descrição :
-- Implementa um flip-flop tipo D para ser usado como componente em outros circ.
-- obs.: O Logisim-evolution 3.7.2 irá armazenar esse componente
--       em uma biblioteca do Modelsim contida em:
-- 
--       C:\users\<nome_usuário>\AppData\Local\Temp\logisim\sim\comp\work 
--     
--       O Logisim-evolution criará um componente nesse local com o nome
--       da entity seguido de underline, seguido do nome do rótulo ou label
--       atribuido ao componente no circuito.
--
--       Neste projeto:
--       	a entity para o flip-flop tipo D será: dff_vhdl
--          o rótulo (label) usado para o componente no circuito será: vhdl
--       Consequentemente o logisim criará um componente chamado dff_vhdl_vhdl
--
--       É possível verificar no diretório:
--       C:\users\<nome_usuário>\AppData\Local\Temp\logisim\sim\src
--       que o Logisim-evolution realmente modificou o nome
--       do arquivo para dff_vhdl_vhdl.vhdl e da entity para dff_vhdl_vhdl
--
--       Esse será portanto o nome do componente referenciado em todos os
--       demais circuitos que fizerem uso desse componente.
--
--       Ao exportar este arquivo para o Quartus lembrar de renomear a entity
--       para dff_vhdl_vhdl para que possa ser referenciada pelos outros circuitos.
--
--       Atenção: O Logisim-evolution não apaga o conteúdo da biblioteca "work"
--                citada acima. 
--				  Isso pode tanto ajudar como atrapalhar novos projetos
--                (dependendo do conteúdo de projetos anteriores estar
--                ou não de acordo com as necessidades do projeto atual)
--                Por esse motivo é sempre aconselhável apagar essa bibioteca
--                "work" antes de iniciar um novo projeto e também apagar a
--                pasta    C:\users\<nome_usuário>\AppData\Local\Temp\work
--                usada pelo Logisim-evolution como uma especie de cache.
--       O professor apagará sempre essas duas pastas antes de iniciar a 
--       validação de trabalhos submetidos por alunos. Não deixe de fazer isso
--       também antes de realizar uma última verificação para postar seus trabalhos
--------------------------------------------------------------------------------

--============================= Módulo comps: ==================================
library ieee;
  use ieee.std_logic_1164.all;

--==================== Componente: =============================================
library ieee;
  use ieee.std_logic_1164.all;

entity dff_vhdl is								-- nome da entity será alterado
  port(
    d, clk, prs, clr	: in  std_logic;	-- entradas: dado, clk, preset e clear
    q, qn				: out std_logic	-- saídas:   q e q invertido
 );
end dff_vhdl;

architecture ff_d of dff_vhdl is

	signal qstate: std_logic;

begin
	process(clk, clr, prs)
	begin
		if clr = '1' then qstate <= '0';	 -- clr tem prioridade
		elsif prs = '1' then qstate <= '1'; -- sobre prs
		elsif clk = '1' and clk' event then qstate <= d;
		end if;
	end process;
	q <= qstate;
	qn <= not qstate;
end ff_d;

