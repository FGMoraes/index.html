--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--	Grupo de Apoio ao Projeto de Hardware  - GAPH
--	Projeto X10GiGA - FINEP/PUCRS/TERACOM
--
--	M�dulo:	Mem�ria - Gerador de Frames - Prototipa��o
--	Autor:	Jeferson Camargo de Oliveira
--
-- 	FRAME:	0000
-- 	RAMB:	00
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

entity FRAME0000_B0 is
port(
		addr	: in  std_logic_vector(9 downto 0);	-- Barramento de endere�os da porta
		clk		: in  std_logic;					-- Entrada de clock para a porta
		dout	: out std_logic_vector(15 downto 0)	-- Sa�da de dados da porta
	);
end FRAME0000_B0;

architecture FRAME0000_B0 of FRAME0000_B0 is

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

	-- FRAME0000_RAMB04 instantiation
	FRAME0000_RAMB04 : RAMB16_S18
	generic map (

		-- The following generics are only necessary if you wish to change the default behavior.
		WRITE_MODE => "NO_CHANGE", 	-- WRITE_FIRST, READ_FIRST or NO_CHANGE

		-- The following generic INIT_xx declarations are only necessary
		-- if you wish to change the initial contents of the RAM to anything
		-- other than all zero's.
		INIT_00 => x"5E5A4F17BADFD54F49E113A154CEC15D1EE36A613B8AB426662710F440AEB19C",
		INIT_01 => x"40D6EE4D0F6293B28C36C44087344D88483F9CDAC3A1B75ECA21E7CAE73365A9",
		INIT_02 => x"9643994FFE0F82226070A0F9613197FEF347438B4474F3A10A429A5E1BF6653C",
		INIT_03 => x"A761DC8094A30CD6D1B68F06CD00BC509414A63F2A04035534C68F548DF7A95F",
		INIT_04 => x"2ED16E7F508AC1CEE7D69578803A88B973C1D51B04802BE9607B3DC98FDE5CA5",
		INIT_05 => x"759A0038686F3368CA3A27AE3C14920F433144AC9F2F1014E564C48EAE1FD285",
		INIT_06 => x"974CC231DEA7934550369973F793978018A922594727DE70BE7917552311C4CE",
		INIT_07 => x"65BB61A042793F67CA7EBC2D69327A353C2F5AADADD8BF1B8CB75FA48CD3F18A",
		INIT_08 => x"7D8324E1B509C263F525BA99328D0F656B3FB9073811176A63018CF57A682CF1",
		INIT_09 => x"5E57D550FD7754152825B0D24FFD9BA262E943C9DE56B7B8703FA64BD149D12C",
		INIT_0A => x"BA8F20483746CAB9BA5696728B78654B66A40E3A9A805BB30F8D1B9156E93B8C",
		INIT_0B => x"4829E46CECF517A60C728A49DD175515A728758FB3B7E56CEC7B9F2646ABD1FD",
		INIT_0C => x"26CFC8EAF297863FF17165DF2ECD92DB14E98E37BB32060405FED333928697CC",
		INIT_0D => x"5BF68329898B49BA53489F9829DDDE7F3BD6301F47E73C91C8BDCC4AC811C645",
		INIT_0E => x"66514690AF662CDDA562E6EE00C2AC3E229C26BE7C2824C0034B8851A71A49B8",
		INIT_0F => x"5D4A9E1789D85900F69A9D1D3DCF1694CB8C654B4834C339CB9F1E55E1DA0D15",
		INIT_10 => x"00A6E981892ACBFC79FB5F8C1E4AB1075D3F145B8E1733F1AB712977192210D4",
		INIT_11 => x"A99CEA21254ED32E2AE2B8FD3FF66A3CA4DEDF6A68A0F35B19223CDD988FC838",
		INIT_12 => x"3731BEB9D7A62210C7E96BC5A4DECF812BE5C1A8ADEF8123FE2E8D5D09DAEB6A",
		INIT_13 => x"6FF41B0896C719AB264CA0D38582BDD6168408DA60BEEE3F037807C5D791168A",
		INIT_14 => x"9741E48E81A0D053FC8E4D88B185AA1BE9C9211CFC884B92E4069480C1E8491C",
		INIT_15 => x"9FDBD18254C1DD856156E8DD265413395E8836FBDD504E3A5D5C22FA7655E3AC",
		INIT_16 => x"8111263D5339CD63D1CD3F95BDE114D354F752314937210585483C8B8252802B",
		INIT_17 => x"DF8243111139E2F941A344E3FF0EC5F04A4C9F62910D29BB4F1FF3E2063B6D8B",
		INIT_18 => x"60AD4008EB6540A53C78DA00B756BD0A3DF4443B2F9EEC46B82A058BEAFAF407",
		INIT_19 => x"11E88A6AC983DC0FD8EF7A8FEBA3B50CADCEB59C320D277F307A2D5045DC2120",
		INIT_1A => x"4C00BA53CF85CD172389A3668FE6FE7F1D62FE59AC4CB017CBBBA06A4A98CA21",
		INIT_1B => x"FF632A64E663CF4AFF322C21A751F32FAD620E19C739C78B45999FAA5A414EE5",
		INIT_1C => x"AD6E0FEC9D8306B9665E5172FC2932518AEA0CAB06095E92C4840C5624EFE925",
		INIT_1D => x"E6C37186B51D04B1C995023590040AAD1D6B6F34C3E4E27853DB599B8B3521EC",
		INIT_1E => x"8F1F0E1495EFCD2BD826603D538453030EE1042E661A4AE501DA510E8EF53BA3",
		INIT_1F => x"4A019DB2D22EE4ACDB7446E158584A4A2F1EB500B07519C82233551D39EA56E7",
		INIT_20 => x"B12930E942880D7E7D80DD3C0D205997908C6299CC2F7D5498C4F33D811DCF64",
		INIT_21 => x"3032B4D2026E7525A24D695777EB9E6E2499A9EAA3993ACCF8D867D9DF2D1053",
		INIT_22 => x"9E4541CE68A12FAE2AA4C52C4A9D485F338040EAD40F0B5F245B8278A05E0412",
		INIT_23 => x"39E2031644FD4178ACC8D6FD12B579EE5148C7AB8BFCC21CA26E80416375FBD7",
		INIT_24 => x"0E3F6ED6FC0DC8E1CFCB5D40CC7F6C4E8C3AFB971AEFC820D347CE135BE3EE98",
		INIT_25 => x"FD0C72DFBF552A827404704404A53C09661C81EC24A37A54D35DD5B0E6709BDB",
		INIT_26 => x"94C6952CF09D89D582487A40896F4D94CAB8321AB61CAEEA3AEE62CD781094C0",
		INIT_27 => x"D86F1901D68E3ABC7E48FA2C3EE5005B27D8586EB656EC860037059947EF258F",
		INIT_28 => x"B7D1DA82EB31FF0B686D28C710E271CB5C614D5172B5E0ADBE870E12E748D154",
		INIT_29 => x"1B4D717C1CDE67A3AE72D07DEF340ED84FA247BE4C09A8F84EE91728C97968BD",
		INIT_2A => x"5C2F08D4CB67C756B2CCC2ADFD43206E19AB96382706A60DABA27BE31333897D",
		INIT_2B => x"D11609B4ECC524D900C057A10207BA199B02DCCB9159227E0D6AF12295E16BC8",
		INIT_2C => x"1746754C305B9D77C99CCEDED925D9E8F50A9AA2E3BE4C71629E7517C39CCD3D",
		INIT_2D => x"7D87DE9F235694CECFFB09B72F04494F21554B861A0D1B2D21B5954F9484EBE0",
		INIT_2E => x"3621660DA2346D4FDBA374E0A817D3D1E27FD61D11539CCB0248FD0F32E5395C",
		INIT_2F => x"E6E60CF9BE0AA22A5022E15AFC63B8A7403E3921388E61BF4648EF9774F0F780",
		INIT_30 => x"8926F064B194EB6F3559D9BEA8CB7A6272AA0C48EFE2EB9CDBD0E04A4E9B7F18",
		INIT_31 => x"A4870A680FCD1C32A5EEDF394EB505345C39C05B10D888B26F12FF4234A7E6BE",
		INIT_32 => x"83F72A0777A03C0D1E1D0567D11BBDA802237AD75E19969A498DDE6B4678E159",
		INIT_33 => x"16A0E947D3811D1E4C41E27121A4930524F4B3A1CEF92F6AC8FD7527E4D20EED",
		INIT_34 => x"3E3715DEC2A1C9A8EEB2B04ACD8E2F5BE7D8C33670125ECDC73484D3038AA1AA",
		INIT_35 => x"D32B2AAB11DC84F691D9E2EA43A32DB9FCA3AB7615D9C606277A2DB04548F583",
		INIT_36 => x"1CBA768A10B8D533EC17160B1CAB2D70D598F646851ADC364892CDBF65E24AF5",
		INIT_37 => x"60E8F9969AB7918350D627AA8590736B323DFA1132BD3D4FFEEB0B8826FC43D9",
		INIT_38 => x"B35FCDB99605F9B4461AC7262223EF8C16EFDAA9EFF892D91F775F9D1D0071A5",
		INIT_39 => x"E9608F85FF9B67D3AF4A97F1CDD2603A7650364903E57A4DAA0C37F25742E967",
		INIT_3A => x"D5D11D28B03AA1D56C44E42CAE29AB12F951FFA6FD66D8356B9131B2ABAFD566",
		INIT_3B => x"65CFCE6AEB56718B9CE55DCF9AFFD1FB3C007CE6A88FE11B0C628C96B4742FAD",
		INIT_3C => x"E5B34B3E10035F2A66F0368D8522054BB564349D371801B2516DD2BEC93B1972",
		INIT_3D => x"6C0ECDE418FC7FC2D9A622B39643E75A3AB5423DF161B88EF085983DB15EBAC0",
		INIT_3E => x"0455D6495B291B5E930B862CAFA4B1F4DA91C5028B6BCD17462A761C595A34E5",
		INIT_3F => x"11111111111111111111111111111111EF23E677547581D9A5E806FE16A39303"
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
	-- End of FRAME0000_RAMB04 instantiation

end FRAME0000_B0;