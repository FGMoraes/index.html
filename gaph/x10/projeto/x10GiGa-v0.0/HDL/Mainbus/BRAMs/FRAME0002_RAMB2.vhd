--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--	Grupo de Apoio ao Projeto de Hardware  - GAPH
--	Projeto X10GiGA - FINEP/PUCRS/TERACOM
--
--	M�dulo:	Mem�ria - Gerador de Frames - Prototipa��o
--	Autor:	Jeferson Camargo de Oliveira
--
-- 	FRAME:	0002
-- 	RAMB:	01
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

entity FRAME0002_A1 is
port(
		addr	: in  std_logic_vector(9 downto 0);	-- Barramento de endere�os da porta
		clk		: in  std_logic;					-- Entrada de clock para a porta
		dout	: out std_logic_vector(15 downto 0)	-- Sa�da de dados da porta
	);
end FRAME0002_A1;

architecture FRAME0002_A1 of FRAME0002_A1 is

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

	-- FRAME0002_RAMB01 instantiation
	FRAME0002_RAMB01 : RAMB16_S18
	generic map (

		-- The following generics are only necessary if you wish to change the default behavior.
		WRITE_MODE => "NO_CHANGE", 	-- WRITE_FIRST, READ_FIRST or NO_CHANGE

		-- The following generic INIT_xx declarations are only necessary
		-- if you wish to change the initial contents of the RAM to anything
		-- other than all zero's.
		INIT_00 => x"DFC919AED31C015038B718EC1E326792A92F2BAB8F55AF8304562D6F05D2F628",
		INIT_01 => x"A6BE35638CD1F04F61498A1A91F9FD4259F05A453297354F070C61C3383671AD",
		INIT_02 => x"90DCE43207F6436623EEC2FA370041CB2B4CB000078E5DCFD804BBF0215C6E9E",
		INIT_03 => x"A77CDDA427D2011498E6B3469CC6A78281ADFFD844B8FF828D004252609D75DE",
		INIT_04 => x"C92CC5031F57C5BE99C3A8588319BB381D5542E52203E4413B55CCEFDAD65451",
		INIT_05 => x"5C0BAA29451E9375F190110AA3A248D25EE1EB43CA43096BF18876F75D1B3E85",
		INIT_06 => x"F5379D5A607FF705E1F8344FDE95A5891B1ED062E76E1CEAF43196658A603953",
		INIT_07 => x"57F22CFE118840B4132F2717CC22AA7DC98B898A20D8328273E147888C2685F1",
		INIT_08 => x"6B31BEA4895920F57621B2A335A808EFBD631905D9349E9C295CC65AC60E7686",
		INIT_09 => x"291036AF634CF38BF7E54C1838C3ADEF1062AFC8A1219CE50A581E978B6CD5C6",
		INIT_0A => x"4800A4D0B35D2B816346156E48616B826216E2CF0850239D681E05447ED9C912",
		INIT_0B => x"856EC5AD8B1EAABDAC2F33521885F96BEAAE88351CF6BE22F66F6C69B1169A73",
		INIT_0C => x"01C4F09A7EAD444E91167BA6FEC4883355C255AF55FDD61C4B8254E4B1654076",
		INIT_0D => x"9879737E6C910F6CF6177D4B798B3CB45ED42953D9156A5C6B3FCA8E71144DCB",
		INIT_0E => x"47C0CBC62C9CAD79E0FB44D2021609B8530BE59B8E65D060B9A1F1AF76DE914C",
		INIT_0F => x"C8F9DFC9ECE4F9DA56899068FFBD8F728A905B97415DCE43C1A76551F69B3EA0",
		INIT_10 => x"1ED31F63ACE5957080DEDC99FCF39A29355EBE7D1570500FEE3BF326D9235335",
		INIT_11 => x"651D3A2E6CAF8866CD2A82EC4D0B9B6FD13236B062380A9FC570E026052C1348",
		INIT_12 => x"BDD680EC0BCDF6B6BA803D678CD6E1548C4BFC8333E785F6E4F629844B1CE83C",
		INIT_13 => x"124774D160C14F91D7759295B04F046A845256B35783418CA3DBC4F823825B33",
		INIT_14 => x"67E4A36C4A14F47244875403CC339D657FF03EF2E5F342C2891FCCAAA753AEFE",
		INIT_15 => x"A1B74CA18794EEA372ADD7A33097FAC79D1A15B7248FD5E83BECBA0C5976E11F",
		INIT_16 => x"353135B667A8442456358A5C704A4D0CA61545940BFB74DCD4A76E88D5CC4B64",
		INIT_17 => x"13FEA7E55353CFE61D04146C3B6680DBA16C25CB19657705DB7701697936FF72",
		INIT_18 => x"83F26FE28C9E5813F5C4A16AD744702603FCAE3A8D0BB508928AAFEA46DFFE27",
		INIT_19 => x"AC9799AD9B34802181CFC220BECA0E58A0BCDCF83E671B6E41A0FC8EAD454E8D",
		INIT_1A => x"954B40AC545E70E6C4A079300EBE1D84ECD1D00F16D7E849CB5F0AC7D30FE6A9",
		INIT_1B => x"8AF5BA90B4B9CB791439E24E34654F2F4B87A517AA6D47E20767A0D4AE8AC5CB",
		INIT_1C => x"222B5ACD54A70F61D5A25A671DC2A8BE94366D5193E6170E2D48CF1F128AB9C1",
		INIT_1D => x"704209322A6E68820B61F436CE7165A4D48527B656A848130195F84DC503583D",
		INIT_1E => x"2BF39F4E73CF19703904A0D86A4BBE5340DBB4BB41081734315D47663B10AAA6",
		INIT_1F => x"7452E9E6D3D146AFCF1F7DD9B89956F5E7B036266AF00E08E7423B5FF672CA1E",
		INIT_20 => x"98A454C521034E9CBF99C438BE0A5D55A77F806FB738BAC3EA14B940A14154F5",
		INIT_21 => x"53020E4FCFD543B949A9320050CE7212FEB00C64F3154AA8445D659B62AA78F7",
		INIT_22 => x"B98128D1232C5EEA87CCFE0DA885C11F1C03AB3ABAE5143A268DE56FC5700D1C",
		INIT_23 => x"51C19CF65715C4263487BFB8A1637FF87FDE8F78679E29F6F94F692E4282F9BC",
		INIT_24 => x"482BA9636AC0CA2102A71E002F2C10C05ED8119EFFB45B716DA964ADA47E6A44",
		INIT_25 => x"D5E69C8CD680A9E4129B89BBA32C4DB3E1C44C025A898467AD95F4636B498A3A",
		INIT_26 => x"E158A5B18600B19228F7FE427C9689FC771E25B0D36DB06233D618170723F986",
		INIT_27 => x"9899C0AE6803931469C638A2698D846C98C7F92789766859A7622227EFBD25D6",
		INIT_28 => x"9EE2132FB2878E03708222E3143BA2A810E1FBF19917BCD4295415B48266E97A",
		INIT_29 => x"872C1EA8F44959A0C4EA7E6D5100B049CE55AD0587E06031CF7BCDCEBC77B7C1",
		INIT_2A => x"47AD6101791D84DB8E98831098EE51813300C117B7386715E31AF5E37515D22C",
		INIT_2B => x"036F58CE4E794C9669E08AAF2CD917BC4826469F33CFE6C6515041A3CBD9747D",
		INIT_2C => x"42A2656E4D57BB363BEA604C318426659BAE2E4BCB66744F84AFD0A9FAD1538C",
		INIT_2D => x"655A3DDFF351294D44922B1EB74C6FF410B719220ABD2C3B3D4213EAF7697B6C",
		INIT_2E => x"D3F8B0758BCA22DA7B6A751438B11D162ED2B917ADC3A13D87DC3D2DFFC620AC",
		INIT_2F => x"A77EAE8E897FCCD5E36CE6E28E80AB2FBD87B748E942165725EF4C9E1BE130F6",
		INIT_30 => x"D6612075875C3828CFBE5252A090DF481D1188284F22F583EA5D5B925A0D8225",
		INIT_31 => x"C84AAFB913E8F1F877E843B6C7441F01459959B62A1539E84384EA8DD19725F9",
		INIT_32 => x"61615FD375B05B009D1D8692A9583E50D6E9BBF4E4B35D254AD5A1DE1391380A",
		INIT_33 => x"37DF47ABF4FB1623CC301E7F9D72982813CAB849B009254AB7E14C49326E2F63",
		INIT_34 => x"9F8DFE1564F7F3746387AB5EE1984F1B18DB2D62116EFA6918672A2E62D0E5C5",
		INIT_35 => x"6D83913ACA72EEC420A557B52360EADC91EF458836D534C891EEB88538C1E74D",
		INIT_36 => x"07A62FDDD549B7DCC7879754E9EE1A3A16B719BC9FA45243470C4DF55F474901",
		INIT_37 => x"3DF7F03BB09CF2160E19905988B3F49F2AEEF9A1A80B679773483E41B72BCF94",
		INIT_38 => x"71721112C04B7078BD5B86729993F51CD4636C77FA894DAB8F857DC8D8634B31",
		INIT_39 => x"D9F10FFBC03FECC6CE957DDAD2B2EBD6C4444CFF30F6522D6275C37E902F1AFA",
		INIT_3A => x"C6988A6A456727900E0BC9D6805A80FC65CF4BFDE5F8CE81587DA74728D56B2F",
		INIT_3B => x"D0B7A288F1C614C35520A38DDCB94260172AD56E21D9AC32E5A04DEEEC92004F",
		INIT_3C => x"07F2668E28978CC988FC481C8B214CD805E967D92B0EC159E4F3D3AFE1577BAB",
		INIT_3D => x"D2965EE0109D15BF4999E5751768F1C9EFCF051C32EB4755903C2D7837AE566F",
		INIT_3E => x"0BAC9DD6690E817EB1E3D20A7F99BC9F421D0A47A72E220C2DA2C3D375B75EC4",
		INIT_3F => x"F7FD4531CAF9B26D0F8F47D70866E34D533CD2D934CEA38F5DEA5A3C6809310D"
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
	-- End of FRAME0002_RAMB01 instantiation

end FRAME0002_A1;