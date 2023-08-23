--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--	Grupo de Apoio ao Projeto de Hardware  - GAPH
--	Projeto X10GiGA - FINEP/PUCRS/TERACOM
--
--	M�dulo:	Mem�ria - Gerador de Frames - Prototipa��o
--	Autor:	Jeferson Camargo de Oliveira
--
-- 	FRAME:	0002
-- 	RAMB:	02
-- 	CONJ:	A
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

entity FRAME0002_A2 is
port(
		addr	: in  std_logic_vector(9 downto 0);	-- Barramento de endere�os da porta
		clk		: in  std_logic;					-- Entrada de clock para a porta
		dout	: out std_logic_vector(15 downto 0)	-- Sa�da de dados da porta
	);
end FRAME0002_A2;

architecture FRAME0002_A2 of FRAME0002_A2 is

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

	-- FRAME0002_RAMB02 instantiation
	FRAME0002_RAMB02 : RAMB16_S18
	generic map (

		-- The following generics are only necessary if you wish to change the default behavior.
		WRITE_MODE => "NO_CHANGE", 	-- WRITE_FIRST, READ_FIRST or NO_CHANGE

		-- The following generic INIT_xx declarations are only necessary
		-- if you wish to change the initial contents of the RAM to anything
		-- other than all zero's.
		INIT_00 => x"03EA169B3356542E9B6B11B23F84B0880BB82F389A3FD7B6D15A2E0F131F2828",
		INIT_01 => x"387AAB3E199EFE51BF88E6BB7840E367D9C49EB10691435CDC790EE0CD80747D",
		INIT_02 => x"82F968999E65930C1468230242D8D6F9901EB236D521696BE8FB1D0F8F921DA2",
		INIT_03 => x"5BC03F4B27DD4C974A646A96C6BC81DB8F6FEE4C96F4CE605826169E2C44A44C",
		INIT_04 => x"CB449844ED0613647FB4DD589A22BF80423CF2978C8E392BF64D299BAFAAA3F2",
		INIT_05 => x"E2F0A9C4BC016B73D11B8F408CC1BD07477F5039B631A48573F3687E28416241",
		INIT_06 => x"46C01CB25B7719CD9A68AE19B4C7BF16A77B2F2A4E7F7DA6F8D312BB6BC478FD",
		INIT_07 => x"46B0330664B981C8D4FEA6188971AB74F4B1003A3B795B0D79F86420991ED253",
		INIT_08 => x"17ECFD9D4F2949FA0A6369E1A032AA04D68C4C029AFCF842403B8E1E33FC3727",
		INIT_09 => x"0F8CCC0FB3EA9D6814CE34E51D3CF7A23E4C9B70AC2F4226754C418C9D488E73",
		INIT_0A => x"E167D83FEDF69C31B4C3E47282D0FC2C4F8169530B7F91F07AB4623F5DFEA326",
		INIT_0B => x"F655F462EFC7A5C857C9988617377753A13B2455207FE5EAC486C13CA5A671CE",
		INIT_0C => x"553243410DE29BEFC2501E710413C4501560753E77A6650466BFE17E5534D116",
		INIT_0D => x"25E684F1E682225BAE59B8648A135C19AE6C9DF86A5FC1E3DD6FDE83B0D4B6A0",
		INIT_0E => x"32E6B886F0157EB4183E065B145261DB598D2CD95AD700D274FD532821473E76",
		INIT_0F => x"D323E348B46676F26427212657040042AE5D305CEFE0665DB6115F6E74D141DC",
		INIT_10 => x"B7F876EDA8836285219D276AB912C482EB3E29F8CB3D42ECC3AE690FFC3009D3",
		INIT_11 => x"C8E92E4D54DC4349E04AE1661D6AA837341FD508CE332428BB1823A46145BFC5",
		INIT_12 => x"9199951011107F1C31D58D96771CBEAD3CCE0722C82D9474905E4903BDD9B77D",
		INIT_13 => x"FEF4121533675AB153E64689006FBDC5BA54420A57672129124F295D696C2F38",
		INIT_14 => x"50CE84E0D6AEA58EE6A0077B93BCCD95B50089137C41D0D6AED8504035A66548",
		INIT_15 => x"017E394CAE56E9323E1D0844995A451914FCFA0A96D44B6E8BC7D15A627509ED",
		INIT_16 => x"CE1D280541EB61205FD4771195DDEAB516ECD7A84D1B1572B397512804B2ECF4",
		INIT_17 => x"DEB52A15E02F6411E3107CA823952D00A754F849BE9F005C451E1C920AE37E6D",
		INIT_18 => x"985983B90A6FFF40BE8C392D31B46E935CA9ABBD08D5E77BDF5811C0B896F165",
		INIT_19 => x"A17640793D24E3D552BF4BB32EC3B8FF396332EF1878C0A13172F5583B784096",
		INIT_1A => x"84C9B5B9E8A006FA5880607AE6F39ED780D2BE6BDE64EAA8F8F6296B66560882",
		INIT_1B => x"38FBA4D4A1BD7B1140E9BF85EA5683231C34160C1A431887F4402CD183B53349",
		INIT_1C => x"6EDC651D352432B67BACEAA35765249CB1A3A3E3A0775BEFA019AED0877919F2",
		INIT_1D => x"6B30BF6D803CA3D0861F16909F98C7AA098293955A4A184FA5D6302C5726F624",
		INIT_1E => x"0474E0E87D32EB49C7C2064EBC0632EF73F12C4188C1FB71AD4B13355640ED4E",
		INIT_1F => x"DCB1CB43B26314523CB783DC464632E1E9B9CA2BA09B0A8A48BF5A7FE3D33B30",
		INIT_20 => x"17E667EB8B2FD76EDC24683047E9451F2282A151136E9A7A173E1243E5D30A3A",
		INIT_21 => x"F13B398E7396287FDBF2B88DE22FBE572668527CAED053E3919E5F7C545F0BCD",
		INIT_22 => x"28B6F412465C0DD93FAC8271AF987EC0DEDAEAD53BF3F6269173EF2E365624A2",
		INIT_23 => x"31EE3C3E110EAAFD8F7042048D13FB29A93C9F8429BA2215898D417BB441DAFF",
		INIT_24 => x"9E87A2B50C7313E3B37CBF83635B8D4E4591721E618A425F78E38B1E2AEEC3E1",
		INIT_25 => x"52F2C78AC1D84C3F7C0BF10D75630C432BA0E4AD04789FE710BD2280EB729590",
		INIT_26 => x"6A282EB0F8815ABDA2B0EA1B4F5B432686803C89EEE94088E296005E221F16D7",
		INIT_27 => x"85BAB6042000B30D6446C982F7F8A1B60EE410F1A5AD8382C7DDB66A809614E1",
		INIT_28 => x"44248E328988C36373934F736D44D39CB1CDE5784E8789479E02A11BA724B562",
		INIT_29 => x"B86708A67661516B6B7F01C0837263084185442199644ECC550FBF23A5B33C84",
		INIT_2A => x"651EF20DF166B61132020FD575F870F898098B77462BE97D1202F3F3AB5F6375",
		INIT_2B => x"4BD20120C98926965401D909F93C0284F85B57EF44E8A879987FECF77EFE6254",
		INIT_2C => x"2F9A0A069B6D4501AF1A591875B4F4A73E72240BD33F5486EBA409E951642DAF",
		INIT_2D => x"B8CC40014A0D7D71C982D844233A6B70FC8EE2E2727DB7D259BCC19654EFCF1C",
		INIT_2E => x"90A160B2F1E4558D2B8020E0677013ACC63F7A562FFA66BF53793545EB922458",
		INIT_2F => x"B508C74396A863306DCEB42218C096DE43AC2CD4E03082D7320F241AED313BDA",
		INIT_30 => x"31F2AF29B1BCD1CE8CC44769964F191390876B64932EF38B3930DD60E7AB4537",
		INIT_31 => x"C8EE825BDA5C3924994C09668A833D794E0A83CBF1D0BE43D5CC5A4DAB11242A",
		INIT_32 => x"12349D6FDFD9D95A74065C5102C3690E9962A5D98EDD99447206BA76A03185AA",
		INIT_33 => x"0A7621BEEE4C835897D5225A3C98524CFD0EEFA07A2BC1A67DBAB34484243182",
		INIT_34 => x"2E855F7EAF236BFAAADC5A63AEC6089775E4047CB59E7A4FCE765ED89695E252",
		INIT_35 => x"6FA53255DF420FBC0484E1CA020F0E1A10FA29E79D495EC3288FD9B25ED3C950",
		INIT_36 => x"A088E6A09B89E97C867E4A1E1BDF260EAB19E78C9A19A57B0419EF3F6A3AF2F4",
		INIT_37 => x"F4CC3F1D7B991D5B4A410934A5EA4959B85F99E1416E9870AEDB81BAD8AB0750",
		INIT_38 => x"94FAE2A42C11EECCBFDEF4DF7C113B6A21984BCE91205B1A0E6A77BC3A5E9162",
		INIT_39 => x"2B11E5DD285A5ECF162AAB77C54B78EE23C82DE3F7ECB81DDF17EB95D929326E",
		INIT_3A => x"7551385138BD1D8DD17D5B90A4B855E7A9DF79E2AC0B92ABE475237F066819D0",
		INIT_3B => x"9C7CD516F930B561E4946AEC1DFFC8F154DC93351FFC474078EA437D62DFBF82",
		INIT_3C => x"57E9FB2F6A37406E39561E46A38818C66799A091FAB67A962AA8486332C38FA1",
		INIT_3D => x"0873F61FB838974B0235D3F01B7631D939C4214454B9385EAC18B8C2D880DA12",
		INIT_3E => x"427F1C8BA45E1B5E7342C2B4A15511B8762B7675DA69C8EE5847B2AE902CB307",
		INIT_3F => x"5D338BA09BE9CF0FCBDEC14F268450FC55023848B31EE2CC7AC5318252F798B3"
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
	-- End of FRAME0002_RAMB02 instantiation

end FRAME0002_A2;