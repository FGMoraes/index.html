--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--	Grupo de Apoio ao Projeto de Hardware  - GAPH
--	Projeto X10GiGA - FINEP/PUCRS/TERACOM
--
--	M�dulo:	Mem�ria - Gerador de Frames - Prototipa��o
--	Autor:	Jeferson Camargo de Oliveira
--
-- 	FRAME:	0002
-- 	RAMB:	01
-- 	CONJ:	B
--
--	M�dulo gerado em 17 de July de 2008 �s 16h55min pelo
--	programa gerador de frames OTN do projeto X10GiGA.
--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

----Pragma translate_off
library unisim ;
use unisim.vcomponents.all ;
----Pragma translate_on

entity FRAME0002_B1 is
port(
		addr	: in  std_logic_vector(9 downto 0);	-- Barramento de endere�os da porta
		clk		: in  std_logic;					-- Entrada de clock para a porta
		dout	: out std_logic_vector(15 downto 0)	-- Sa�da de dados da porta
	);
end FRAME0002_B1;

architecture FRAME0002_B1 of FRAME0002_B1 is

	signal addrin	: std_logic_vector(9 downto 0);
	signal clkin	: std_logic;
	signal doutout	: std_logic_vector(15 downto 0);

	component RAMB16_S18 is
	generic(
		WRITE_MODE : string;
		INIT_00,INIT_01,INIT_02,INIT_03,INIT_04,INIT_05,INIT_06,INIT_07,
		INIT_08,INIT_09,INIT_0A,INIT_0B,INIT_0C,INIT_0D,INIT_0E,INIT_0F,
		INIT_10,INIT_11,INIT_12,INIT_13,INIT_14,INIT_15,INIT_16,INIT_17,
		INIT_18,INIT_19,INIT_1A,INIT_1B,INIT_1C,INIT_1D,INIT_1E,INIT_1F,
		INIT_20,INIT_21,INIT_22,INIT_23,INIT_24,INIT_25,INIT_26,INIT_27,
		INIT_28,INIT_29,INIT_2A,INIT_2B,INIT_2C,INIT_2D,INIT_2E,INIT_2F,
		INIT_30,INIT_31,INIT_32,INIT_33,INIT_34,INIT_35,INIT_36,INIT_37,
		INIT_38,INIT_39,INIT_3A,INIT_3B,INIT_3C,INIT_3D,INIT_3E,INIT_3F : bit_vector
	);
	port(
		DO   : out std_logic_vector(15 downto 0);	-- Port 16-bit Data Output
		DOP  : out std_logic_vector(1  downto 0);	-- Port 2-bit Parity Output
		ADDR : in  std_logic_vector(9  downto 0); 	-- Port 10-bit Address Input
		CLK  : in  std_logic;			 			-- Port Clock
		DI   : in  std_logic_vector(15 downto 0); 	-- Port 16-bit Data Input
		DIP  : in  std_logic_vector(1  downto 0); 	-- Port 2-bit parity Input
		EN   : in  std_logic;			 			-- Port RAM Enable Input
		SSR  : in  std_logic;			 			-- Port Synchronous Set/Reset Input
		WE   : in  std_logic			 			-- Port Write Enable Input
	);
	end component;

begin

	addrin <= addr;
	clkin  <= clk;
	dout   <= doutout;

	-- FRAME0002_RAMB05 instantiation
	FRAME0002_RAMB05 : RAMB16_S18
	generic map (

		-- The following generics are only necessary if you wish to change the default behavior.
		WRITE_MODE => "NO_CHANGE", 	-- WRITE_FIRST, READ_FIRST or NO_CHANGE

		-- The following generic INIT_xx declarations are only necessary
		-- if you wish to change the initial contents of the RAM to anything
		-- other than all zero's.
		INIT_00 => x"F30C8F13648981843FCBA238E25D8411ECCF113C3EE5120B1DD82F4CBB2BED9D",
		INIT_01 => x"6F9CEBF3CE15787A905979827FBFDB547A4895E8536238519E9BC51D848E3721",
		INIT_02 => x"2C9327128F4619E15767330CC3E3B6FD967D5AE84851210C7B6139539C58B0C3",
		INIT_03 => x"760A86CAD8E4294827ABA65EB73735A220EDBF0E679FBDA6D5225E3368748392",
		INIT_04 => x"0361BA0BFCE14F27414810FD1FDB090906F6878700ABFA5725C90B1C766CD3FB",
		INIT_05 => x"1CB3B6B7FFEFB00B429E4B107E6B7600FA7653338595CDBFD7C69E899346EC8A",
		INIT_06 => x"60ACDCA2814BC2E0043F137098422306F6B38531B948C48F3F437D3106A53210",
		INIT_07 => x"197CFDDAE46ABFA8231247E0163E9F2483F3AA903659E6F53E3E61BF7D2DB20C",
		INIT_08 => x"782C083C326C3BBED5D004B5166614F4ABE1475CEBAD719730640FFE7273FEC6",
		INIT_09 => x"FC982814571B995DCDF791B6F25C1AD2FBAA344EE9623B5DBCD698EBEC7802A3",
		INIT_0A => x"757E7E76F910465EC7EF2CE5EBD8A70986995B34E64A04204AFAC3A1741BA81B",
		INIT_0B => x"512A1A38BD7061F4183826475E300D2C2140A7DFD710E525C883DB59AD926755",
		INIT_0C => x"287CE35C65BDD2253F995653C9175C1E444F59A8CEEE42B72659307C0EE511D5",
		INIT_0D => x"414986D12D9B7940813091E0ECB28C015182E57E5230A1A64AC637EAFFAA280C",
		INIT_0E => x"97495FA6533C11FB7C59DD57297301F131E5B77DFDC660FE540D69AFFE9F878E",
		INIT_0F => x"F187B86BCE975D053900C51915A7F1987F2AF8A9EBD4B787AAA4061C1908E30B",
		INIT_10 => x"A1561303C7C312FB62798E7E0EFAE861B2E5D699844F0193C85F3F9BFFCC7706",
		INIT_11 => x"7D6F16C210AA2FC44DE82EF551634797BCF9C4350D4428F5AE95E9DB77EC50E8",
		INIT_12 => x"D99CF3506B75DF55807DFD7415613906D5A7DD706D4CC64C4CDA5DF85E0BC0EE",
		INIT_13 => x"E3934113E7CE88A87AB41649301A596292CFF48614ECC136D47FE2B56F4A5708",
		INIT_14 => x"A216F591B9E90A9399FF3B0A4C7A79A94B67596BDBD5CA84304FBC169E53C37D",
		INIT_15 => x"306EABF0D3595B88182332BBF71B3C59AD58E30E2345D1B71DF5AFC240BED000",
		INIT_16 => x"A7CF35E5E01EEC76BBAF626342810F23361067348F7FEAE95E47E4C20B7B83AD",
		INIT_17 => x"8256B75C41B0D46BB5FD0E2EB8AA333181A1C7CDF0637E46CA775862C023DC48",
		INIT_18 => x"250E4AF5D7027BA943186D75B2926D2C7AF4C0706DBE2F27EF5DC727111F72D7",
		INIT_19 => x"F8F637CACF56EC4A1E920A09F6E351496E4722033399710FD06631860935386C",
		INIT_1A => x"1C79755BFE2E17DF7DC531A686A66C5A533B8EED367D6D27FAD392FD2B80879A",
		INIT_1B => x"1E5F99B32F90FD30E303AEDD22BC85CE96B7ED16478270F4CC693E5D4FBD1977",
		INIT_1C => x"969F049DFF0DD02F02239FD96762AE42F20F01D4E8A9C4278AFBF48DDB37D75C",
		INIT_1D => x"3C92CB602D6224477CEC9F01AC75781E0F2BD3015FAE7487A0513BD83CD5CF8B",
		INIT_1E => x"95E0C11A8C7E0D65275929FEBC464FF1F85AF86C15C93CDBD80A3CF226D0BAE4",
		INIT_1F => x"D66329465CD02640AEB0E7FFD3A211B061982D701EC87C36E314BA36954BB2D0",
		INIT_20 => x"0824838B5C458D9657E25FC2611FDFBB59321259612A7003DD4BA199040226D2",
		INIT_21 => x"8270A0B679401FA906EDEA62675D906A3184CC403174291C15F843B29B72E067",
		INIT_22 => x"3901E4A5A46E7F6FD885B0F60E42C8AE73C91C30FF264F42FB767AD29E89E88D",
		INIT_23 => x"4217B3E7168146909CCEE61AEB5D4C9922FAF2A5A47B186A8D38E822D2DA1EE7",
		INIT_24 => x"991654CD40C807F9BEB9FCDD7279A610B6EFAC1FE80B81F3FE1E1463824E3133",
		INIT_25 => x"D3151EB09E22610646DF1216267404AAF1E9024F84DA12F132FB35B67A4C3F56",
		INIT_26 => x"3A9B3BD02337FDD559499066134F0C66A8B5988399C9D377769FBC1E7A467634",
		INIT_27 => x"145B49F2CFC868A7AF84B7E313DACD47770FB3994C504058863ECB0A58B99A10",
		INIT_28 => x"690320FDAF51FEC15AB71FAD364CCF981A195555E30DE63EE4873DD8289E4D5E",
		INIT_29 => x"DB636B0DFA044CF0D07F4B4278548EB1E4A0424705A8008E822AEDE49A9DDECD",
		INIT_2A => x"150D7104C6CF1FED6BE04AD28265805B8BF822581D97629FFB429ABC89559B0C",
		INIT_2B => x"437D0097D36BD4792BFFE9B0E299CD8F669C7DE38E21D3E950B88AEE16DF2F5D",
		INIT_2C => x"38D688B28D65F87E02A51A08AA645852BECD169F4607B7F518A5DF6AB0980E04",
		INIT_2D => x"F444B4714D80F3C272DAC70C788F648F1AE82ED62339BA92219BA5AEBE761FE5",
		INIT_2E => x"B3B175085D609EA5335CE975F96A25A4E94173B093379BF1A4053D7D25CAB62B",
		INIT_2F => x"04365E9C8C216C58F5A3835A31560E833038AD7F96D55B25C1340FABB1144AAC",
		INIT_30 => x"6B1EBF5FD1DE5A43FA79127F667B785690DC12D90770131942CE15FEFBA77294",
		INIT_31 => x"37D3540A7E08E286786B76F16D217CBB85679347FABE13286E5875058ACF1167",
		INIT_32 => x"107751AEBEF094293C91D84FFFFCFC4584080F4B7C989407A92653DED8AB19C1",
		INIT_33 => x"FFFDF6C7631378DC9ACEED4AD93FE1BE47BB4E70281DAC63E559512016924529",
		INIT_34 => x"DA0A72766E9C18598188AA4862D086914C84C0B4A759C0360AE3D9E57B2A98F4",
		INIT_35 => x"E4870EDF2CE8F468F247BA3DF641C89189BEA635D2CC1E1D53D858910782B7C3",
		INIT_36 => x"519AED80E48CAA2CFC87D22BD3078F2B17B0744E09204DA4053B7A5F1E5A1749",
		INIT_37 => x"C89324D3F1A56955A0B08E0024558B72C11E677EC1500EBB8EB956EFEF7EFE6C",
		INIT_38 => x"49FC568FDF39C40D1C1BCFF8C7111B9D766DFFEFEF8B5968569730858AECB166",
		INIT_39 => x"AB6CE0097F821556923DD9E8EB2958BDD782BDD9FC07AD32007E741E41C8D499",
		INIT_3A => x"3C7E950EEC3DC0D34CAC85DD57D923347523AB6CC2ABCDE6229DDD424E722574",
		INIT_3B => x"CE20908062B9BB55FC37C716F987E5058FB40E4D9CF4434390969D9AA755CF33",
		INIT_3C => x"F3A324EA612059EFEBECBE424EB5C51EB1A916792F9AFC4F9F465E61592456D8",
		INIT_3D => x"DCA3980C74AD45A4161FEBCF98DB1103CA02AE1D3F836BBFAFB6301A857C968A",
		INIT_3E => x"4BD1B24BDA5EB10B8B2DC4A00E7A00D41733E8D969DD4EAA2B3C124E634E26F4",
		INIT_3F => x"11111111111111111111111111111111005787FAC24B00DA7137E4241AA1E2CC"
	)port map (
		DO   => doutout,			-- Port 16-bit Data Output
		DOP  => open,				-- Port 2-bit Parity Output
		ADDR => addrin,				-- Port 10-bit Address Input
		CLK  => clkin, 				-- Port Clock
		DI   => (others => '0'),	-- Port 16-bit Data Input
		DIP  => (others => '0'),	-- Port 2-bit parity Input
		EN   => '1',				-- Port RAM Enable Input
		SSR  => '0',				-- Port Synchronous Set/Reset Input
		WE   => '0'					-- Port Write Enable Input
	);
	-- End of FRAME0002_RAMB05 instantiation

end FRAME0002_B1;