--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--	Grupo de Apoio ao Projeto de Hardware  - GAPH
--	Projeto X10GiGA - FINEP/PUCRS/TERACOM
--
--	M�dulo:	Mem�ria - Gerador de Frames - Prototipa��o
--	Autor:	Jeferson Camargo de Oliveira
--
-- 	FRAME:	0001
-- 	RAMB:	03
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

entity FRAME0001_A3 is
port(
		addr	: in  std_logic_vector(9 downto 0);	-- Barramento de endere�os da porta
		clk		: in  std_logic;					-- Entrada de clock para a porta
		dout	: out std_logic_vector(15 downto 0)	-- Sa�da de dados da porta
	);
end FRAME0001_A3;

architecture FRAME0001_A3 of FRAME0001_A3 is

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

	-- FRAME0001_RAMB03 instantiation
	FRAME0001_RAMB03 : RAMB16_S18
	generic map (

		-- The following generics are only necessary if you wish to change the default behavior.
		WRITE_MODE => "NO_CHANGE", 	-- WRITE_FIRST, READ_FIRST or NO_CHANGE

		-- The following generic INIT_xx declarations are only necessary
		-- if you wish to change the initial contents of the RAM to anything
		-- other than all zero's.
		INIT_00 => x"2BFCEEB1BA5E9920DB13434458CF02C84FD3ABD38C0AA0BD0BEE968177E7FEFF",
		INIT_01 => x"E77AFE9BB11D66EE160147D2A8630C0162D1D87C773C5413902460412CCE5B94",
		INIT_02 => x"66368DC8AD5C99B200CD96BCDB3C322181CE6DD78AA404F753DF2B2B9F2A707C",
		INIT_03 => x"28C74B30AFE38B9CA25EA5729ED8701AC7CCE353694324F90F22EB71A8F1ABCA",
		INIT_04 => x"C9121685948173779C08B08099EDAE3AF4A1F5245C1E5178D5ED2F02E9D22459",
		INIT_05 => x"B509B171AA43C2490AF597A1AA512219606ED64153B661BCD1F02E080F2D4248",
		INIT_06 => x"5E1198465C4F0B36327C06F23856B892E8D63FDDB5C8C2272B32D872AC972184",
		INIT_07 => x"C7DB175460649FA0E405B1CA75497FDCD52A859CC2CD183BAE80C79D50FE4C44",
		INIT_08 => x"677B286B3CC8F089FB22DA8EBE532E0256574A17D422CE74656B3D3DE779C057",
		INIT_09 => x"2186256B8038BC2C239141109788A94D79C2DA05E7E5F82681943C203DB86906",
		INIT_0A => x"199D6CEF85D0081B50F6777599A9D8C9D2BD0D80F82D9C1624D71052EAFE0917",
		INIT_0B => x"9547C7590C8CC3CBAB955F32D000C29C7086569E89684C29189D56F3A1ECA16D",
		INIT_0C => x"0E60617A84A4A4302D5706A0073D387632C3391356D0E8C5437F1E5F3DD2CE1E",
		INIT_0D => x"42A991C60E68CD9025DAD4F1D2A1A6DEEC7D12B808ACBD11A8D4580F211B7600",
		INIT_0E => x"CD3AEA73B9E672F1D2265F9827BBC9259B557E342B7D3DB6D9AF5D9237540288",
		INIT_0F => x"EB7928DFF68342B54155AAA20A35783FD7B784F3F92C22670858D56351EB5C55",
		INIT_10 => x"6B827CA8D61B15B8C4F05EB77E45ABBDBE9770069FDDE034D2C34F91404E9242",
		INIT_11 => x"B8A508A0E318E793CA529BBBC4176857EB7FCE4DE938F0813364FC1AB23E1116",
		INIT_12 => x"26F92E18DB476775C113FC3F97B12467625352AD9AD3A336A4BE659A70848C01",
		INIT_13 => x"52DC6507DF6CEE43984B369FB7B1F37D6E2210CF8344F516551F6E22D0E08376",
		INIT_14 => x"657765E0DB4D95513573713F53F8AD13E8C73009D45C8827FC41D692EECC752A",
		INIT_15 => x"5F759D855D95C2CAE9C95F35B6881D127D5FDBEE7E8BCF44EB8411D9E863A626",
		INIT_16 => x"763F7580DA62912A50E3D183D0ECD9956C44FCEF89C5925DEC1F54C03EA4BE33",
		INIT_17 => x"AEC22B7DED9E4CC4E303E0E9EDCBA5C7ABE0666E67C60868A65BFDB98DEA4546",
		INIT_18 => x"98E4E8687F69A9271CE6BB2C063EAF36E17A63FD46993E9200E191BC8F67C62F",
		INIT_19 => x"C8F9AE240AAF3C7A92F853BAFB0E70729793111E8696C32936DC955CA7DF73D5",
		INIT_1A => x"F5CCB3B3114ECB739424043EADBA963D936C190573C9CEC9E4F14E6AAA3274C7",
		INIT_1B => x"FDEB3DE42BB34A16673707ECB2CAD991C199605E3B2C7C2F5B220707704FDDE2",
		INIT_1C => x"F1E9D90F4C3735ED2EA497F4AF7355E4810E882BCC5B35E65DB1D1BAB16F958D",
		INIT_1D => x"D38A687E7C0B77A1296202464F236D591848046EF790280F6FA00641283579E7",
		INIT_1E => x"753A6634B3381BCF6455384A277CA06B20F3D3F4D309F596D7DE12DDAE0C07D7",
		INIT_1F => x"CB7CFF4C58C103FDDC5DF69E4953B76904781C8402B7774DCC9DAB8ADC332AF0",
		INIT_20 => x"407B588579EB5226BCAD0E61DDB910094DD70CCE753DA70556F7796130662DBB",
		INIT_21 => x"F65B0A2A22C5B66F04996F4E4326220790403D4BF0E4AAB3A878826EB54905B8",
		INIT_22 => x"870C7A9FE3F05F2BA717401DEE2021E71547343FEB6331253D3A139C0AC5AAA5",
		INIT_23 => x"45405AAB2572BC141DB21D4529E10147334AC218E1CF7879F2696D203E1923D1",
		INIT_24 => x"03A0411F6D2A13BC39CB0102C835E6530ADC435C65E8A22B5F1A810CF953D37A",
		INIT_25 => x"DF4BE689D3F88E5EB9B9D6F3670296E9C5BCE14120711764F612D3354D6A0C3D",
		INIT_26 => x"7135850174AA6DF671A22E095C95571A8F03B0A3628D173D22D484038E3475C2",
		INIT_27 => x"2C3B522EDADAEEE2B26F1565C36AB86974277B962A8898FC1F7AE8B21B143DA2",
		INIT_28 => x"298847C6FC1F1BE380D8C58257632269F2292CEC9FB61771F21C87D8C446F143",
		INIT_29 => x"8B6165D9E14023F9E0D641833A3E8DD08EC13450A09B9A82F55EF03E8F406C6B",
		INIT_2A => x"96C1F090523549038933D28BA9831900E65203A6E7D16C2485798C659D6D7672",
		INIT_2B => x"8ADAF7AD8E3500558AA883C8948C59639D7706ED473C722B33F61600E46D9EF1",
		INIT_2C => x"D0FC518749409E6C6146875330CDE11A9E21FF94F93C5DF58069D5B94A149AC4",
		INIT_2D => x"1C633D299CD1F255E0E19C3B8A397AD8953D786AA9EEB6A1C3CA8CA1642EBDA9",
		INIT_2E => x"1D0E03A3DF0FAD0B93137FF21A3439F0FA8EA7976FA91B83A181ACD537A5DD85",
		INIT_2F => x"8BE461EFBB8571E17AA2AB985C8CBA6BCF05C226A5BB50CC8D602F1F0E7194F2",
		INIT_30 => x"74E46E0561B3F35C8D07D1D558371BDF333898C95ECE118A7E07EE45C9D518A2",
		INIT_31 => x"C8723EB6DB4C08446FBF35A85177AE2DF391FB4A96584C6772484D331F3CD524",
		INIT_32 => x"AFC94064EF06DE8950F15DF51D006A8EEDFAA4D5D45D9BB34EE1D6C1DB1CB991",
		INIT_33 => x"D00CA30805F3EC3D5B2470FA14399A334FC0C1029CFE7280A3F5703B7EEEEAC9",
		INIT_34 => x"C1FD7A3BFC94976415576CDB138158CBAF1E1A32FA9ED7B643D81F7D639357AC",
		INIT_35 => x"7F1A4516C54D6A4A10C7EB3DF696572F01FD772F7FDACB32191FBC5B349A3426",
		INIT_36 => x"827A1959FB35AE6534B9FF0712DC9D2069581173BB4E01E2E89F14B9ABE1E359",
		INIT_37 => x"D8FB3995FE98331B43C14472F33EC191A14E78B5F35926860C2D93FCE30BA3EE",
		INIT_38 => x"B4A476C8C0E3B89112E8D127B632F912C694273DC5D3ECC323A6037EEE844F1C",
		INIT_39 => x"F734D85F7361279954E0CE48D0BDB7EF7656ADBC55376A4CDBAEE77113EC7FA6",
		INIT_3A => x"D90961AC227A509D7999C2A81F575787BFBC0226BE0F4C7BA650FCD14D47AAA9",
		INIT_3B => x"798F7B22AE2431D56803DC4B92F4BA6B675277F5661E44F6BBA8A2BD4F729C37",
		INIT_3C => x"CC1CD8EC7DEB29ADF16DAC090E083AB5D0EAAF484F841BCEA12AF7039E55A433",
		INIT_3D => x"17C642C24CA0F8ED35AC94AD823FFD8ECDF22E80AE5CD7B85C889BC4A3815957",
		INIT_3E => x"71D323A88A88C833308AFD1C74D507A81117FA500D1F7333299CBDE9B3EA6066",
		INIT_3F => x"0A402047EF183AC13279F8C8D704D3E5F6A63D725D305B8CFC5B4C993E390642"
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
	-- End of FRAME0001_RAMB03 instantiation

end FRAME0001_A3;