-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.2 (win64) Build 932637 Wed Jun 11 13:33:10 MDT 2014
-- Date        : Thu Nov 13 10:46:45 2014
-- Host        : brad-windows running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/brad_000/Documents/GitHub/mariokart/POCs/CAMERA/CAMERA.srcs/sources_1/ip/pixel_buffer/pixel_buffer_funcsim.vhdl
-- Design      : pixel_buffer
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pixel_buffer_bindec is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    O7 : out STD_LOGIC;
    O8 : out STD_LOGIC;
    O9 : out STD_LOGIC;
    O10 : out STD_LOGIC;
    O11 : out STD_LOGIC;
    O12 : out STD_LOGIC;
    O13 : out STD_LOGIC;
    O14 : out STD_LOGIC;
    O15 : out STD_LOGIC;
    O16 : out STD_LOGIC;
    ena : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pixel_buffer_bindec : entity is "bindec";
end pixel_buffer_bindec;

architecture STRUCTURE of pixel_buffer_bindec is
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
    port map (
      I0 => ena,
      I1 => addra(2),
      I2 => addra(1),
      I3 => addra(3),
      I4 => addra(0),
      O => O1
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
    port map (
      I0 => addra(0),
      I1 => addra(2),
      I2 => addra(1),
      I3 => addra(3),
      I4 => ena,
      O => O2
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
    port map (
      I0 => addra(1),
      I1 => addra(2),
      I2 => addra(0),
      I3 => addra(3),
      I4 => ena,
      O => O3
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
    port map (
      I0 => addra(2),
      I1 => addra(1),
      I2 => addra(0),
      I3 => addra(3),
      I4 => ena,
      O => O12
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
    port map (
      I0 => addra(1),
      I1 => addra(0),
      I2 => addra(2),
      I3 => ena,
      I4 => addra(3),
      O => O13
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
    port map (
      I0 => addra(1),
      I1 => ena,
      I2 => addra(0),
      I3 => addra(3),
      I4 => addra(2),
      O => O14
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
    port map (
      I0 => addra(0),
      I1 => addra(1),
      I2 => ena,
      I3 => addra(3),
      I4 => addra(2),
      O => O15
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => addra(3),
      I1 => addra(1),
      I2 => addra(0),
      I3 => ena,
      I4 => addra(2),
      O => O16
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
    port map (
      I0 => addra(3),
      I1 => addra(2),
      I2 => addra(1),
      I3 => addra(0),
      I4 => ena,
      O => O4
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
    port map (
      I0 => addra(2),
      I1 => addra(0),
      I2 => addra(1),
      I3 => addra(3),
      I4 => ena,
      O => O5
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
    port map (
      I0 => addra(3),
      I1 => addra(1),
      I2 => addra(2),
      I3 => addra(0),
      I4 => ena,
      O => O6
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
    port map (
      I0 => addra(3),
      I1 => addra(0),
      I2 => addra(1),
      I3 => addra(2),
      I4 => ena,
      O => O7
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
    port map (
      I0 => addra(3),
      I1 => addra(1),
      I2 => addra(0),
      I3 => ena,
      I4 => addra(2),
      O => O8
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
    port map (
      I0 => ena,
      I1 => addra(2),
      I2 => addra(0),
      I3 => addra(1),
      I4 => addra(3),
      O => O9
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
    port map (
      I0 => addra(2),
      I1 => addra(1),
      I2 => ena,
      I3 => addra(0),
      I4 => addra(3),
      O => O10
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
    port map (
      I0 => addra(2),
      I1 => addra(0),
      I2 => addra(1),
      I3 => ena,
      I4 => addra(3),
      O => O11
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pixel_buffer_bindec_0 is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    O7 : out STD_LOGIC;
    O8 : out STD_LOGIC;
    O9 : out STD_LOGIC;
    O10 : out STD_LOGIC;
    O11 : out STD_LOGIC;
    O12 : out STD_LOGIC;
    O13 : out STD_LOGIC;
    O14 : out STD_LOGIC;
    O15 : out STD_LOGIC;
    O16 : out STD_LOGIC;
    enb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pixel_buffer_bindec_0 : entity is "bindec";
end pixel_buffer_bindec_0;

architecture STRUCTURE of pixel_buffer_bindec_0 is
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
    port map (
      I0 => enb,
      I1 => addrb(2),
      I2 => addrb(1),
      I3 => addrb(3),
      I4 => addrb(0),
      O => O1
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
    port map (
      I0 => addrb(0),
      I1 => addrb(2),
      I2 => addrb(1),
      I3 => addrb(3),
      I4 => enb,
      O => O2
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
    port map (
      I0 => addrb(1),
      I1 => addrb(2),
      I2 => addrb(0),
      I3 => addrb(3),
      I4 => enb,
      O => O3
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
    port map (
      I0 => addrb(2),
      I1 => addrb(1),
      I2 => addrb(0),
      I3 => addrb(3),
      I4 => enb,
      O => O12
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
    port map (
      I0 => addrb(1),
      I1 => addrb(0),
      I2 => addrb(2),
      I3 => enb,
      I4 => addrb(3),
      O => O13
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
    port map (
      I0 => addrb(1),
      I1 => enb,
      I2 => addrb(0),
      I3 => addrb(3),
      I4 => addrb(2),
      O => O14
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
    port map (
      I0 => addrb(0),
      I1 => addrb(1),
      I2 => enb,
      I3 => addrb(3),
      I4 => addrb(2),
      O => O15
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => addrb(3),
      I1 => addrb(1),
      I2 => addrb(0),
      I3 => enb,
      I4 => addrb(2),
      O => O16
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
    port map (
      I0 => addrb(3),
      I1 => addrb(2),
      I2 => addrb(1),
      I3 => addrb(0),
      I4 => enb,
      O => O4
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
    port map (
      I0 => addrb(2),
      I1 => addrb(0),
      I2 => addrb(1),
      I3 => addrb(3),
      I4 => enb,
      O => O5
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
    port map (
      I0 => addrb(3),
      I1 => addrb(1),
      I2 => addrb(2),
      I3 => addrb(0),
      I4 => enb,
      O => O6
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
    port map (
      I0 => addrb(3),
      I1 => addrb(0),
      I2 => addrb(1),
      I3 => addrb(2),
      I4 => enb,
      O => O7
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
    port map (
      I0 => addrb(3),
      I1 => addrb(1),
      I2 => addrb(0),
      I3 => enb,
      I4 => addrb(2),
      O => O8
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
    port map (
      I0 => enb,
      I1 => addrb(2),
      I2 => addrb(0),
      I3 => addrb(1),
      I4 => addrb(3),
      O => O9
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
    port map (
      I0 => addrb(2),
      I1 => addrb(1),
      I2 => enb,
      I3 => addrb(0),
      I4 => addrb(3),
      O => O10
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
    port map (
      I0 => addrb(2),
      I1 => addrb(0),
      I2 => addrb(1),
      I3 => enb,
      I4 => addrb(3),
      O => O11
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_mux__parameterized0\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 8 downto 0 );
    enb : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DOBDO : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I4 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I5 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I6 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I7 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I8 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I9 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I10 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I11 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I12 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I13 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I14 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I15 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DOPBDOP : in STD_LOGIC_VECTOR ( 0 to 0 );
    I16 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I17 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I18 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I19 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I20 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I21 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I22 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I23 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I24 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I25 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I26 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I27 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I28 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I29 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I30 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_mux__parameterized0\ : entity is "blk_mem_gen_mux";
end \pixel_buffer_blk_mem_gen_mux__parameterized0\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_mux__parameterized0\ is
  signal \n_0_doutb[0]_INST_0_i_1\ : STD_LOGIC;
  signal \n_0_doutb[0]_INST_0_i_2\ : STD_LOGIC;
  signal \n_0_doutb[0]_INST_0_i_3\ : STD_LOGIC;
  signal \n_0_doutb[0]_INST_0_i_4\ : STD_LOGIC;
  signal \n_0_doutb[0]_INST_0_i_5\ : STD_LOGIC;
  signal \n_0_doutb[0]_INST_0_i_6\ : STD_LOGIC;
  signal \n_0_doutb[1]_INST_0_i_1\ : STD_LOGIC;
  signal \n_0_doutb[1]_INST_0_i_2\ : STD_LOGIC;
  signal \n_0_doutb[1]_INST_0_i_3\ : STD_LOGIC;
  signal \n_0_doutb[1]_INST_0_i_4\ : STD_LOGIC;
  signal \n_0_doutb[1]_INST_0_i_5\ : STD_LOGIC;
  signal \n_0_doutb[1]_INST_0_i_6\ : STD_LOGIC;
  signal \n_0_doutb[2]_INST_0_i_1\ : STD_LOGIC;
  signal \n_0_doutb[2]_INST_0_i_2\ : STD_LOGIC;
  signal \n_0_doutb[2]_INST_0_i_3\ : STD_LOGIC;
  signal \n_0_doutb[2]_INST_0_i_4\ : STD_LOGIC;
  signal \n_0_doutb[2]_INST_0_i_5\ : STD_LOGIC;
  signal \n_0_doutb[2]_INST_0_i_6\ : STD_LOGIC;
  signal \n_0_doutb[3]_INST_0_i_1\ : STD_LOGIC;
  signal \n_0_doutb[3]_INST_0_i_2\ : STD_LOGIC;
  signal \n_0_doutb[3]_INST_0_i_3\ : STD_LOGIC;
  signal \n_0_doutb[3]_INST_0_i_4\ : STD_LOGIC;
  signal \n_0_doutb[3]_INST_0_i_5\ : STD_LOGIC;
  signal \n_0_doutb[3]_INST_0_i_6\ : STD_LOGIC;
  signal \n_0_doutb[4]_INST_0_i_1\ : STD_LOGIC;
  signal \n_0_doutb[4]_INST_0_i_2\ : STD_LOGIC;
  signal \n_0_doutb[4]_INST_0_i_3\ : STD_LOGIC;
  signal \n_0_doutb[4]_INST_0_i_4\ : STD_LOGIC;
  signal \n_0_doutb[4]_INST_0_i_5\ : STD_LOGIC;
  signal \n_0_doutb[4]_INST_0_i_6\ : STD_LOGIC;
  signal \n_0_doutb[5]_INST_0_i_1\ : STD_LOGIC;
  signal \n_0_doutb[5]_INST_0_i_2\ : STD_LOGIC;
  signal \n_0_doutb[5]_INST_0_i_3\ : STD_LOGIC;
  signal \n_0_doutb[5]_INST_0_i_4\ : STD_LOGIC;
  signal \n_0_doutb[5]_INST_0_i_5\ : STD_LOGIC;
  signal \n_0_doutb[5]_INST_0_i_6\ : STD_LOGIC;
  signal \n_0_doutb[6]_INST_0_i_1\ : STD_LOGIC;
  signal \n_0_doutb[6]_INST_0_i_2\ : STD_LOGIC;
  signal \n_0_doutb[6]_INST_0_i_3\ : STD_LOGIC;
  signal \n_0_doutb[6]_INST_0_i_4\ : STD_LOGIC;
  signal \n_0_doutb[6]_INST_0_i_5\ : STD_LOGIC;
  signal \n_0_doutb[6]_INST_0_i_6\ : STD_LOGIC;
  signal \n_0_doutb[7]_INST_0_i_1\ : STD_LOGIC;
  signal \n_0_doutb[7]_INST_0_i_2\ : STD_LOGIC;
  signal \n_0_doutb[7]_INST_0_i_3\ : STD_LOGIC;
  signal \n_0_doutb[7]_INST_0_i_4\ : STD_LOGIC;
  signal \n_0_doutb[7]_INST_0_i_5\ : STD_LOGIC;
  signal \n_0_doutb[7]_INST_0_i_6\ : STD_LOGIC;
  signal \n_0_doutb[8]_INST_0_i_1\ : STD_LOGIC;
  signal \n_0_doutb[8]_INST_0_i_2\ : STD_LOGIC;
  signal \n_0_doutb[8]_INST_0_i_3\ : STD_LOGIC;
  signal \n_0_doutb[8]_INST_0_i_4\ : STD_LOGIC;
  signal \n_0_doutb[8]_INST_0_i_5\ : STD_LOGIC;
  signal \n_0_doutb[8]_INST_0_i_6\ : STD_LOGIC;
  signal sel_pipe : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sel_pipe_d1 : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\doutb[0]_INST_0\: unisim.vcomponents.MUXF8
    port map (
      I0 => \n_0_doutb[0]_INST_0_i_1\,
      I1 => \n_0_doutb[0]_INST_0_i_2\,
      O => doutb(0),
      S => sel_pipe_d1(3)
    );
\doutb[0]_INST_0_i_1\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_doutb[0]_INST_0_i_3\,
      I1 => \n_0_doutb[0]_INST_0_i_4\,
      O => \n_0_doutb[0]_INST_0_i_1\,
      S => sel_pipe_d1(2)
    );
\doutb[0]_INST_0_i_2\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_doutb[0]_INST_0_i_5\,
      I1 => \n_0_doutb[0]_INST_0_i_6\,
      O => \n_0_doutb[0]_INST_0_i_2\,
      S => sel_pipe_d1(2)
    );
\doutb[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => DOBDO(0),
      I1 => I1(0),
      I2 => sel_pipe_d1(1),
      I3 => I2(0),
      I4 => sel_pipe_d1(0),
      I5 => I3(0),
      O => \n_0_doutb[0]_INST_0_i_3\
    );
\doutb[0]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I4(0),
      I1 => I5(0),
      I2 => sel_pipe_d1(1),
      I3 => I6(0),
      I4 => sel_pipe_d1(0),
      I5 => I7(0),
      O => \n_0_doutb[0]_INST_0_i_4\
    );
\doutb[0]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I8(0),
      I1 => I9(0),
      I2 => sel_pipe_d1(1),
      I3 => I10(0),
      I4 => sel_pipe_d1(0),
      I5 => I11(0),
      O => \n_0_doutb[0]_INST_0_i_5\
    );
\doutb[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I12(0),
      I1 => I13(0),
      I2 => sel_pipe_d1(1),
      I3 => I14(0),
      I4 => sel_pipe_d1(0),
      I5 => I15(0),
      O => \n_0_doutb[0]_INST_0_i_6\
    );
\doutb[1]_INST_0\: unisim.vcomponents.MUXF8
    port map (
      I0 => \n_0_doutb[1]_INST_0_i_1\,
      I1 => \n_0_doutb[1]_INST_0_i_2\,
      O => doutb(1),
      S => sel_pipe_d1(3)
    );
\doutb[1]_INST_0_i_1\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_doutb[1]_INST_0_i_3\,
      I1 => \n_0_doutb[1]_INST_0_i_4\,
      O => \n_0_doutb[1]_INST_0_i_1\,
      S => sel_pipe_d1(2)
    );
\doutb[1]_INST_0_i_2\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_doutb[1]_INST_0_i_5\,
      I1 => \n_0_doutb[1]_INST_0_i_6\,
      O => \n_0_doutb[1]_INST_0_i_2\,
      S => sel_pipe_d1(2)
    );
\doutb[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => DOBDO(1),
      I1 => I1(1),
      I2 => sel_pipe_d1(1),
      I3 => I2(1),
      I4 => sel_pipe_d1(0),
      I5 => I3(1),
      O => \n_0_doutb[1]_INST_0_i_3\
    );
\doutb[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I4(1),
      I1 => I5(1),
      I2 => sel_pipe_d1(1),
      I3 => I6(1),
      I4 => sel_pipe_d1(0),
      I5 => I7(1),
      O => \n_0_doutb[1]_INST_0_i_4\
    );
\doutb[1]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I8(1),
      I1 => I9(1),
      I2 => sel_pipe_d1(1),
      I3 => I10(1),
      I4 => sel_pipe_d1(0),
      I5 => I11(1),
      O => \n_0_doutb[1]_INST_0_i_5\
    );
\doutb[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I12(1),
      I1 => I13(1),
      I2 => sel_pipe_d1(1),
      I3 => I14(1),
      I4 => sel_pipe_d1(0),
      I5 => I15(1),
      O => \n_0_doutb[1]_INST_0_i_6\
    );
\doutb[2]_INST_0\: unisim.vcomponents.MUXF8
    port map (
      I0 => \n_0_doutb[2]_INST_0_i_1\,
      I1 => \n_0_doutb[2]_INST_0_i_2\,
      O => doutb(2),
      S => sel_pipe_d1(3)
    );
\doutb[2]_INST_0_i_1\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_doutb[2]_INST_0_i_3\,
      I1 => \n_0_doutb[2]_INST_0_i_4\,
      O => \n_0_doutb[2]_INST_0_i_1\,
      S => sel_pipe_d1(2)
    );
\doutb[2]_INST_0_i_2\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_doutb[2]_INST_0_i_5\,
      I1 => \n_0_doutb[2]_INST_0_i_6\,
      O => \n_0_doutb[2]_INST_0_i_2\,
      S => sel_pipe_d1(2)
    );
\doutb[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => DOBDO(2),
      I1 => I1(2),
      I2 => sel_pipe_d1(1),
      I3 => I2(2),
      I4 => sel_pipe_d1(0),
      I5 => I3(2),
      O => \n_0_doutb[2]_INST_0_i_3\
    );
\doutb[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I4(2),
      I1 => I5(2),
      I2 => sel_pipe_d1(1),
      I3 => I6(2),
      I4 => sel_pipe_d1(0),
      I5 => I7(2),
      O => \n_0_doutb[2]_INST_0_i_4\
    );
\doutb[2]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I8(2),
      I1 => I9(2),
      I2 => sel_pipe_d1(1),
      I3 => I10(2),
      I4 => sel_pipe_d1(0),
      I5 => I11(2),
      O => \n_0_doutb[2]_INST_0_i_5\
    );
\doutb[2]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I12(2),
      I1 => I13(2),
      I2 => sel_pipe_d1(1),
      I3 => I14(2),
      I4 => sel_pipe_d1(0),
      I5 => I15(2),
      O => \n_0_doutb[2]_INST_0_i_6\
    );
\doutb[3]_INST_0\: unisim.vcomponents.MUXF8
    port map (
      I0 => \n_0_doutb[3]_INST_0_i_1\,
      I1 => \n_0_doutb[3]_INST_0_i_2\,
      O => doutb(3),
      S => sel_pipe_d1(3)
    );
\doutb[3]_INST_0_i_1\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_doutb[3]_INST_0_i_3\,
      I1 => \n_0_doutb[3]_INST_0_i_4\,
      O => \n_0_doutb[3]_INST_0_i_1\,
      S => sel_pipe_d1(2)
    );
\doutb[3]_INST_0_i_2\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_doutb[3]_INST_0_i_5\,
      I1 => \n_0_doutb[3]_INST_0_i_6\,
      O => \n_0_doutb[3]_INST_0_i_2\,
      S => sel_pipe_d1(2)
    );
\doutb[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => DOBDO(3),
      I1 => I1(3),
      I2 => sel_pipe_d1(1),
      I3 => I2(3),
      I4 => sel_pipe_d1(0),
      I5 => I3(3),
      O => \n_0_doutb[3]_INST_0_i_3\
    );
\doutb[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I4(3),
      I1 => I5(3),
      I2 => sel_pipe_d1(1),
      I3 => I6(3),
      I4 => sel_pipe_d1(0),
      I5 => I7(3),
      O => \n_0_doutb[3]_INST_0_i_4\
    );
\doutb[3]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I8(3),
      I1 => I9(3),
      I2 => sel_pipe_d1(1),
      I3 => I10(3),
      I4 => sel_pipe_d1(0),
      I5 => I11(3),
      O => \n_0_doutb[3]_INST_0_i_5\
    );
\doutb[3]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I12(3),
      I1 => I13(3),
      I2 => sel_pipe_d1(1),
      I3 => I14(3),
      I4 => sel_pipe_d1(0),
      I5 => I15(3),
      O => \n_0_doutb[3]_INST_0_i_6\
    );
\doutb[4]_INST_0\: unisim.vcomponents.MUXF8
    port map (
      I0 => \n_0_doutb[4]_INST_0_i_1\,
      I1 => \n_0_doutb[4]_INST_0_i_2\,
      O => doutb(4),
      S => sel_pipe_d1(3)
    );
\doutb[4]_INST_0_i_1\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_doutb[4]_INST_0_i_3\,
      I1 => \n_0_doutb[4]_INST_0_i_4\,
      O => \n_0_doutb[4]_INST_0_i_1\,
      S => sel_pipe_d1(2)
    );
\doutb[4]_INST_0_i_2\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_doutb[4]_INST_0_i_5\,
      I1 => \n_0_doutb[4]_INST_0_i_6\,
      O => \n_0_doutb[4]_INST_0_i_2\,
      S => sel_pipe_d1(2)
    );
\doutb[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => DOBDO(4),
      I1 => I1(4),
      I2 => sel_pipe_d1(1),
      I3 => I2(4),
      I4 => sel_pipe_d1(0),
      I5 => I3(4),
      O => \n_0_doutb[4]_INST_0_i_3\
    );
\doutb[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I4(4),
      I1 => I5(4),
      I2 => sel_pipe_d1(1),
      I3 => I6(4),
      I4 => sel_pipe_d1(0),
      I5 => I7(4),
      O => \n_0_doutb[4]_INST_0_i_4\
    );
\doutb[4]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I8(4),
      I1 => I9(4),
      I2 => sel_pipe_d1(1),
      I3 => I10(4),
      I4 => sel_pipe_d1(0),
      I5 => I11(4),
      O => \n_0_doutb[4]_INST_0_i_5\
    );
\doutb[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I12(4),
      I1 => I13(4),
      I2 => sel_pipe_d1(1),
      I3 => I14(4),
      I4 => sel_pipe_d1(0),
      I5 => I15(4),
      O => \n_0_doutb[4]_INST_0_i_6\
    );
\doutb[5]_INST_0\: unisim.vcomponents.MUXF8
    port map (
      I0 => \n_0_doutb[5]_INST_0_i_1\,
      I1 => \n_0_doutb[5]_INST_0_i_2\,
      O => doutb(5),
      S => sel_pipe_d1(3)
    );
\doutb[5]_INST_0_i_1\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_doutb[5]_INST_0_i_3\,
      I1 => \n_0_doutb[5]_INST_0_i_4\,
      O => \n_0_doutb[5]_INST_0_i_1\,
      S => sel_pipe_d1(2)
    );
\doutb[5]_INST_0_i_2\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_doutb[5]_INST_0_i_5\,
      I1 => \n_0_doutb[5]_INST_0_i_6\,
      O => \n_0_doutb[5]_INST_0_i_2\,
      S => sel_pipe_d1(2)
    );
\doutb[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => DOBDO(5),
      I1 => I1(5),
      I2 => sel_pipe_d1(1),
      I3 => I2(5),
      I4 => sel_pipe_d1(0),
      I5 => I3(5),
      O => \n_0_doutb[5]_INST_0_i_3\
    );
\doutb[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I4(5),
      I1 => I5(5),
      I2 => sel_pipe_d1(1),
      I3 => I6(5),
      I4 => sel_pipe_d1(0),
      I5 => I7(5),
      O => \n_0_doutb[5]_INST_0_i_4\
    );
\doutb[5]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I8(5),
      I1 => I9(5),
      I2 => sel_pipe_d1(1),
      I3 => I10(5),
      I4 => sel_pipe_d1(0),
      I5 => I11(5),
      O => \n_0_doutb[5]_INST_0_i_5\
    );
\doutb[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I12(5),
      I1 => I13(5),
      I2 => sel_pipe_d1(1),
      I3 => I14(5),
      I4 => sel_pipe_d1(0),
      I5 => I15(5),
      O => \n_0_doutb[5]_INST_0_i_6\
    );
\doutb[6]_INST_0\: unisim.vcomponents.MUXF8
    port map (
      I0 => \n_0_doutb[6]_INST_0_i_1\,
      I1 => \n_0_doutb[6]_INST_0_i_2\,
      O => doutb(6),
      S => sel_pipe_d1(3)
    );
\doutb[6]_INST_0_i_1\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_doutb[6]_INST_0_i_3\,
      I1 => \n_0_doutb[6]_INST_0_i_4\,
      O => \n_0_doutb[6]_INST_0_i_1\,
      S => sel_pipe_d1(2)
    );
\doutb[6]_INST_0_i_2\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_doutb[6]_INST_0_i_5\,
      I1 => \n_0_doutb[6]_INST_0_i_6\,
      O => \n_0_doutb[6]_INST_0_i_2\,
      S => sel_pipe_d1(2)
    );
\doutb[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => DOBDO(6),
      I1 => I1(6),
      I2 => sel_pipe_d1(1),
      I3 => I2(6),
      I4 => sel_pipe_d1(0),
      I5 => I3(6),
      O => \n_0_doutb[6]_INST_0_i_3\
    );
\doutb[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I4(6),
      I1 => I5(6),
      I2 => sel_pipe_d1(1),
      I3 => I6(6),
      I4 => sel_pipe_d1(0),
      I5 => I7(6),
      O => \n_0_doutb[6]_INST_0_i_4\
    );
\doutb[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I8(6),
      I1 => I9(6),
      I2 => sel_pipe_d1(1),
      I3 => I10(6),
      I4 => sel_pipe_d1(0),
      I5 => I11(6),
      O => \n_0_doutb[6]_INST_0_i_5\
    );
\doutb[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I12(6),
      I1 => I13(6),
      I2 => sel_pipe_d1(1),
      I3 => I14(6),
      I4 => sel_pipe_d1(0),
      I5 => I15(6),
      O => \n_0_doutb[6]_INST_0_i_6\
    );
\doutb[7]_INST_0\: unisim.vcomponents.MUXF8
    port map (
      I0 => \n_0_doutb[7]_INST_0_i_1\,
      I1 => \n_0_doutb[7]_INST_0_i_2\,
      O => doutb(7),
      S => sel_pipe_d1(3)
    );
\doutb[7]_INST_0_i_1\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_doutb[7]_INST_0_i_3\,
      I1 => \n_0_doutb[7]_INST_0_i_4\,
      O => \n_0_doutb[7]_INST_0_i_1\,
      S => sel_pipe_d1(2)
    );
\doutb[7]_INST_0_i_2\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_doutb[7]_INST_0_i_5\,
      I1 => \n_0_doutb[7]_INST_0_i_6\,
      O => \n_0_doutb[7]_INST_0_i_2\,
      S => sel_pipe_d1(2)
    );
\doutb[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => DOBDO(7),
      I1 => I1(7),
      I2 => sel_pipe_d1(1),
      I3 => I2(7),
      I4 => sel_pipe_d1(0),
      I5 => I3(7),
      O => \n_0_doutb[7]_INST_0_i_3\
    );
\doutb[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I4(7),
      I1 => I5(7),
      I2 => sel_pipe_d1(1),
      I3 => I6(7),
      I4 => sel_pipe_d1(0),
      I5 => I7(7),
      O => \n_0_doutb[7]_INST_0_i_4\
    );
\doutb[7]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I8(7),
      I1 => I9(7),
      I2 => sel_pipe_d1(1),
      I3 => I10(7),
      I4 => sel_pipe_d1(0),
      I5 => I11(7),
      O => \n_0_doutb[7]_INST_0_i_5\
    );
\doutb[7]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I12(7),
      I1 => I13(7),
      I2 => sel_pipe_d1(1),
      I3 => I14(7),
      I4 => sel_pipe_d1(0),
      I5 => I15(7),
      O => \n_0_doutb[7]_INST_0_i_6\
    );
\doutb[8]_INST_0\: unisim.vcomponents.MUXF8
    port map (
      I0 => \n_0_doutb[8]_INST_0_i_1\,
      I1 => \n_0_doutb[8]_INST_0_i_2\,
      O => doutb(8),
      S => sel_pipe_d1(3)
    );
\doutb[8]_INST_0_i_1\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_doutb[8]_INST_0_i_3\,
      I1 => \n_0_doutb[8]_INST_0_i_4\,
      O => \n_0_doutb[8]_INST_0_i_1\,
      S => sel_pipe_d1(2)
    );
\doutb[8]_INST_0_i_2\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_doutb[8]_INST_0_i_5\,
      I1 => \n_0_doutb[8]_INST_0_i_6\,
      O => \n_0_doutb[8]_INST_0_i_2\,
      S => sel_pipe_d1(2)
    );
\doutb[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => DOPBDOP(0),
      I1 => I16(0),
      I2 => sel_pipe_d1(1),
      I3 => I17(0),
      I4 => sel_pipe_d1(0),
      I5 => I18(0),
      O => \n_0_doutb[8]_INST_0_i_3\
    );
\doutb[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I19(0),
      I1 => I20(0),
      I2 => sel_pipe_d1(1),
      I3 => I21(0),
      I4 => sel_pipe_d1(0),
      I5 => I22(0),
      O => \n_0_doutb[8]_INST_0_i_4\
    );
\doutb[8]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I23(0),
      I1 => I24(0),
      I2 => sel_pipe_d1(1),
      I3 => I25(0),
      I4 => sel_pipe_d1(0),
      I5 => I26(0),
      O => \n_0_doutb[8]_INST_0_i_5\
    );
\doutb[8]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => I27(0),
      I1 => I28(0),
      I2 => sel_pipe_d1(1),
      I3 => I29(0),
      I4 => sel_pipe_d1(0),
      I5 => I30(0),
      O => \n_0_doutb[8]_INST_0_i_6\
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkb,
      CE => enb,
      D => sel_pipe(0),
      Q => sel_pipe_d1(0),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkb,
      CE => enb,
      D => sel_pipe(1),
      Q => sel_pipe_d1(1),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkb,
      CE => enb,
      D => sel_pipe(2),
      Q => sel_pipe_d1(2),
      R => '0'
    );
\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkb,
      CE => enb,
      D => sel_pipe(3),
      Q => sel_pipe_d1(3),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkb,
      CE => enb,
      D => addrb(0),
      Q => sel_pipe(0),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkb,
      CE => enb,
      D => addrb(1),
      Q => sel_pipe(1),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkb,
      CE => enb,
      D => addrb(2),
      Q => sel_pipe(2),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkb,
      CE => enb,
      D => addrb(3),
      Q => sel_pipe(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pixel_buffer_blk_mem_gen_prim_wrapper_init is
  port (
    I3 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I18 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pixel_buffer_blk_mem_gen_prim_wrapper_init : entity is "blk_mem_gen_prim_wrapper_init";
end pixel_buffer_blk_mem_gen_prim_wrapper_init;

architecture STRUCTURE of pixel_buffer_blk_mem_gen_prim_wrapper_init is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_01 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_02 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_03 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_04 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_05 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_06 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_07 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_08 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_09 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_10 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_11 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_12 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_13 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_14 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_15 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_16 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_17 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_18 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_19 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_20 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_21 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_22 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_23 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_24 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_25 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_26 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_27 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_28 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_29 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_30 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_31 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_32 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_33 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_34 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_35 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_36 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_37 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_38 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_39 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_40 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_41 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_42 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_43 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_44 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_45 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_46 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_47 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_48 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_49 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_50 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_51 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_52 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_53 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_54 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_55 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_56 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_57 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_58 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_59 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_60 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_61 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_62 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_63 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_64 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_65 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_66 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_67 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_68 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_69 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_70 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_71 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_72 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_73 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_74 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_75 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_76 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_77 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_78 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_79 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
    port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2) => '1',
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => dina(8),
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => I3(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => I18(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => I1,
      ENBWREN => I2,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  port (
    I2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I17 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I3 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized0\ : entity is "blk_mem_gen_prim_wrapper_init";
end \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized0\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_01 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_02 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_03 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_04 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_05 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_06 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_07 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_08 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_09 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_10 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_11 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_12 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_13 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_14 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_15 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_16 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_17 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_18 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_19 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_20 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_21 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_22 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_23 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_24 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_25 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_26 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_27 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_28 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_29 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_30 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_31 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_32 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_33 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_34 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_35 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_36 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_37 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_38 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_39 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_40 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_41 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_42 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_43 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_44 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_45 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_46 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_47 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_48 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_49 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_50 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_51 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_52 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_53 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_54 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_55 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_56 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_57 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_58 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_59 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_60 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_61 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_62 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_63 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_64 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_65 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_66 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_67 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_68 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_69 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_70 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_71 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_72 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_73 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_74 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_75 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_76 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_77 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_78 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_79 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
    port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2) => '1',
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => dina(8),
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => I2(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => I17(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => I1,
      ENBWREN => I3,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  port (
    I1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I16 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I2 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I3 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized1\ : entity is "blk_mem_gen_prim_wrapper_init";
end \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized1\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_01 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_02 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_03 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_04 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_05 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_06 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_07 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_08 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_09 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_10 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_11 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_12 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_13 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_14 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_15 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_16 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_17 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_18 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_19 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_20 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_21 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_22 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_23 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_24 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_25 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_26 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_27 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_28 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_29 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_30 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_31 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_32 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_33 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_34 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_35 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_36 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_37 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_38 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_39 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_40 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_41 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_42 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_43 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_44 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_45 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_46 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_47 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_48 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_49 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_50 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_51 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_52 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_53 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_54 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_55 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_56 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_57 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_58 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_59 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_60 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_61 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_62 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_63 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_64 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_65 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_66 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_67 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_68 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_69 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_70 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_71 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_72 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_73 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_74 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_75 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_76 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_77 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_78 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_79 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
    port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2) => '1',
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => dina(8),
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => I1(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => I16(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => I2,
      ENBWREN => I3,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized10\ is
  port (
    I8 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I23 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized10\ : entity is "blk_mem_gen_prim_wrapper_init";
end \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized10\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized10\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_01 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_02 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_03 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_04 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_05 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_06 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_07 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_08 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_09 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_10 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_11 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_12 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_13 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_14 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_15 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_16 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_17 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_18 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_19 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_20 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_21 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_22 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_23 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_24 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_25 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_26 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_27 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_28 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_29 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_30 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_31 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_32 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_33 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_34 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_35 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_36 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_37 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_38 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_39 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_40 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_41 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_42 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_43 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_44 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_45 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_46 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_47 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_48 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_49 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_50 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_51 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_52 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_53 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_54 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_55 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_56 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_57 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_58 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_59 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_60 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_61 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_62 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_63 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_64 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_65 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_66 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_67 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_68 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_69 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_70 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_71 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_72 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_73 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_74 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_75 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_76 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_77 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_78 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_79 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
    port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2) => '1',
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => dina(8),
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => I8(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => I23(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => I1,
      ENBWREN => I2,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized11\ is
  port (
    I15 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I30 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized11\ : entity is "blk_mem_gen_prim_wrapper_init";
end \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized11\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized11\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_01 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_02 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_03 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_04 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_05 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_06 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_07 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_08 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_09 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_10 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_11 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_12 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_13 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_14 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_15 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_16 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_17 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_18 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_19 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_20 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_21 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_22 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_23 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_24 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_25 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_26 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_27 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_28 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_29 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_30 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_31 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_32 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_33 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_34 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_35 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_36 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_37 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_38 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_39 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_40 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_41 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_42 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_43 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_44 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_45 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_46 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_47 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_48 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_49 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_50 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_51 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_52 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_53 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_54 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_55 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_56 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_57 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_58 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_59 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_60 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_61 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_62 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_63 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_64 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_65 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_66 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_67 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_68 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_69 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_70 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_71 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_72 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_73 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_74 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_75 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_76 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_77 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_78 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_79 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
    port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2) => '1',
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => dina(8),
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => I15(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => I30(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => I1,
      ENBWREN => I2,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized12\ is
  port (
    I14 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I29 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized12\ : entity is "blk_mem_gen_prim_wrapper_init";
end \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized12\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized12\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_01 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_02 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_03 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_04 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_05 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_06 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_07 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_08 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_09 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_10 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_11 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_12 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_13 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_14 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_15 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_16 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_17 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_18 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_19 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_20 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_21 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_22 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_23 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_24 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_25 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_26 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_27 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_28 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_29 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_30 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_31 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_32 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_33 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_34 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_35 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_36 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_37 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_38 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_39 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_40 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_41 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_42 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_43 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_44 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_45 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_46 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_47 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_48 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_49 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_50 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_51 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_52 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_53 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_54 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_55 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_56 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_57 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_58 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_59 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_60 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_61 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_62 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_63 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_64 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_65 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_66 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_67 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_68 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_69 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_70 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_71 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_72 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_73 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_74 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_75 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_76 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_77 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_78 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_79 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
    port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2) => '1',
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => dina(8),
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => I14(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => I29(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => I1,
      ENBWREN => I2,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized13\ is
  port (
    I13 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I28 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized13\ : entity is "blk_mem_gen_prim_wrapper_init";
end \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized13\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized13\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_01 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_02 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_03 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_04 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_05 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_06 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_07 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_08 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_09 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_10 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_11 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_12 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_13 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_14 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_15 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_16 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_17 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_18 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_19 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_20 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_21 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_22 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_23 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_24 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_25 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_26 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_27 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_28 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_29 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_30 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_31 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_32 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_33 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_34 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_35 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_36 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_37 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_38 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_39 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_40 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_41 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_42 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_43 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_44 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_45 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_46 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_47 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_48 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_49 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_50 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_51 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_52 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_53 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_54 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_55 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_56 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_57 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_58 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_59 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_60 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_61 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_62 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_63 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_64 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_65 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_66 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_67 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_68 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_69 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_70 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_71 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_72 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_73 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_74 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_75 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_76 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_77 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_78 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_79 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
    port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2) => '1',
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => dina(8),
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => I13(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => I28(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => I1,
      ENBWREN => I2,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized14\ is
  port (
    I12 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I27 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized14\ : entity is "blk_mem_gen_prim_wrapper_init";
end \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized14\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized14\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_01 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_02 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_03 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_04 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_05 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_06 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_07 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_08 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_09 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_10 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_11 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_12 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_13 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_14 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_15 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_16 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_17 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_18 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_19 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_20 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_21 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_22 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_23 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_24 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_25 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_26 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_27 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_28 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_29 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_30 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_31 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_32 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_33 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_34 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_35 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_36 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_37 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_38 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_39 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_40 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_41 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_42 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_43 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_44 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_45 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_46 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_47 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_48 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_49 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_50 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_51 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_52 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_53 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_54 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_55 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_56 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_57 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_58 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_59 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_60 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_61 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_62 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_63 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_64 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_65 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_66 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_67 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_68 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_69 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_70 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_71 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_72 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_73 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_74 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_75 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_76 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_77 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_78 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_79 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
    port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2) => '1',
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => dina(8),
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => I12(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => I27(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => I1,
      ENBWREN => I2,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized15\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    clka : in STD_LOGIC;
    enb : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized15\ : entity is "blk_mem_gen_prim_wrapper_init";
end \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized15\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized15\ is
  signal CASCADEOUTA : STD_LOGIC;
  signal CASCADEOUTB : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B\ : label is "PRIMITIVE";
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
    port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => addrb(15 downto 0),
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => CASCADEOUTA,
      CASCADEOUTB => CASCADEOUTB,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7) => '0',
      DIADI(6) => '0',
      DIADI(5) => '0',
      DIADI(4) => '0',
      DIADI(3) => '0',
      DIADI(2) => '0',
      DIADI(1) => '0',
      DIADI(0) => dina(0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => '0',
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => enb,
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
    port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => addrb(15 downto 0),
      CASCADEINA => CASCADEOUTA,
      CASCADEINB => CASCADEOUTB,
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7) => '0',
      DIADI(6) => '0',
      DIADI(5) => '0',
      DIADI(4) => '0',
      DIADI(3) => '0',
      DIADI(2) => '0',
      DIADI(1) => '0',
      DIADI(0) => dina(0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => '0',
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\(31 downto 1),
      DOBDO(0) => doutb(0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => enb,
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized16\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    clka : in STD_LOGIC;
    enb : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized16\ : entity is "blk_mem_gen_prim_wrapper_init";
end \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized16\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized16\ is
  signal CASCADEOUTA : STD_LOGIC;
  signal CASCADEOUTB : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B\ : label is "PRIMITIVE";
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
    port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => addrb(15 downto 0),
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => CASCADEOUTA,
      CASCADEOUTB => CASCADEOUTB,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7) => '0',
      DIADI(6) => '0',
      DIADI(5) => '0',
      DIADI(4) => '0',
      DIADI(3) => '0',
      DIADI(2) => '0',
      DIADI(1) => '0',
      DIADI(0) => dina(0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => '0',
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => enb,
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
    port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => addrb(15 downto 0),
      CASCADEINA => CASCADEOUTA,
      CASCADEINB => CASCADEOUTB,
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7) => '0',
      DIADI(6) => '0',
      DIADI(5) => '0',
      DIADI(4) => '0',
      DIADI(3) => '0',
      DIADI(2) => '0',
      DIADI(1) => '0',
      DIADI(0) => dina(0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => '0',
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\(31 downto 1),
      DOBDO(0) => doutb(0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => enb,
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized17\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    clka : in STD_LOGIC;
    enb : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized17\ : entity is "blk_mem_gen_prim_wrapper_init";
end \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized17\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized17\ is
  signal CASCADEOUTA : STD_LOGIC;
  signal CASCADEOUTB : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B\ : label is "PRIMITIVE";
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
    port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => addrb(15 downto 0),
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => CASCADEOUTA,
      CASCADEOUTB => CASCADEOUTB,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7) => '0',
      DIADI(6) => '0',
      DIADI(5) => '0',
      DIADI(4) => '0',
      DIADI(3) => '0',
      DIADI(2) => '0',
      DIADI(1) => '0',
      DIADI(0) => dina(0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => '0',
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => enb,
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
    port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => addrb(15 downto 0),
      CASCADEINA => CASCADEOUTA,
      CASCADEINB => CASCADEOUTB,
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7) => '0',
      DIADI(6) => '0',
      DIADI(5) => '0',
      DIADI(4) => '0',
      DIADI(3) => '0',
      DIADI(2) => '0',
      DIADI(1) => '0',
      DIADI(0) => dina(0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => '0',
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\(31 downto 1),
      DOBDO(0) => doutb(0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => enb,
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized18\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    clka : in STD_LOGIC;
    enb : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized18\ : entity is "blk_mem_gen_prim_wrapper_init";
end \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized18\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized18\ is
  signal CASCADEOUTA : STD_LOGIC;
  signal CASCADEOUTB : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B\ : label is "PRIMITIVE";
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_39 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_42 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_44 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_46 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_50 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_51 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_54 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_56 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_57 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_60 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_62 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_66 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_76 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_77 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_78 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_79 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
    port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => addrb(15 downto 0),
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => CASCADEOUTA,
      CASCADEOUTB => CASCADEOUTB,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7) => '0',
      DIADI(6) => '0',
      DIADI(5) => '0',
      DIADI(4) => '0',
      DIADI(3) => '0',
      DIADI(2) => '0',
      DIADI(1) => '0',
      DIADI(0) => dina(0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => '0',
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => enb,
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_35 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_36 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_37 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_38 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_39 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_3F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_40 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_41 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_42 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_43 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_44 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_45 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_46 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_47 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_48 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_49 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_4F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_50 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_51 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_52 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_53 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_54 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_55 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_56 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_57 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_58 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_59 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_5F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_60 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_61 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_62 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_63 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_64 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_65 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_66 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_67 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_68 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_69 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_6F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_70 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_71 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_72 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_73 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_74 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_75 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_76 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_77 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_78 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_79 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_7F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
    port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => addrb(15 downto 0),
      CASCADEINA => CASCADEOUTA,
      CASCADEINB => CASCADEOUTB,
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7) => '0',
      DIADI(6) => '0',
      DIADI(5) => '0',
      DIADI(4) => '0',
      DIADI(3) => '0',
      DIADI(2) => '0',
      DIADI(1) => '0',
      DIADI(0) => dina(0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => '0',
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\(31 downto 1),
      DOBDO(0) => doutb(0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => enb,
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized19\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    clka : in STD_LOGIC;
    enb : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized19\ : entity is "blk_mem_gen_prim_wrapper_init";
end \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized19\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized19\ is
  signal CASCADEOUTA : STD_LOGIC;
  signal CASCADEOUTB : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B\ : label is "PRIMITIVE";
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
    port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => addrb(15 downto 0),
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => CASCADEOUTA,
      CASCADEOUTB => CASCADEOUTB,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7) => '0',
      DIADI(6) => '0',
      DIADI(5) => '0',
      DIADI(4) => '0',
      DIADI(3) => '0',
      DIADI(2) => '0',
      DIADI(1) => '0',
      DIADI(0) => dina(0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => '0',
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => enb,
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
    port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => addrb(15 downto 0),
      CASCADEINA => CASCADEOUTA,
      CASCADEINB => CASCADEOUTB,
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7) => '0',
      DIADI(6) => '0',
      DIADI(5) => '0',
      DIADI(4) => '0',
      DIADI(3) => '0',
      DIADI(2) => '0',
      DIADI(1) => '0',
      DIADI(0) => dina(0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => '0',
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\(31 downto 1),
      DOBDO(0) => doutb(0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => enb,
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOPBDOP : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized2\ : entity is "blk_mem_gen_prim_wrapper_init";
end \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized2\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_01 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_02 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_03 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_04 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_05 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_06 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_07 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_08 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_09 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_10 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_11 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_12 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_13 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_14 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_15 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_16 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_17 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_18 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_19 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_20 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_21 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_22 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_23 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_24 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_25 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_26 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_27 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_28 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_29 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_30 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_31 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_32 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_33 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_34 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_35 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_36 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_37 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_38 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_39 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_40 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_41 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_42 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_43 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_44 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_45 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_46 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_47 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_48 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_49 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_50 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_51 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_52 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_53 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_54 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_55 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_56 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_57 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_58 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_59 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_60 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_61 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_62 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_63 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_64 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_65 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_66 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_67 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_68 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_69 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_70 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_71 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_72 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_73 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_74 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_75 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_76 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_77 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_78 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_79 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
    port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2) => '1',
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => dina(8),
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => DOBDO(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => DOPBDOP(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => I1,
      ENBWREN => I2,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized20\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    clka : in STD_LOGIC;
    enb : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized20\ : entity is "blk_mem_gen_prim_wrapper_init";
end \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized20\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized20\ is
  signal CASCADEOUTA : STD_LOGIC;
  signal CASCADEOUTB : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B\ : label is "PRIMITIVE";
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
    port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => addrb(15 downto 0),
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => CASCADEOUTA,
      CASCADEOUTB => CASCADEOUTB,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7) => '0',
      DIADI(6) => '0',
      DIADI(5) => '0',
      DIADI(4) => '0',
      DIADI(3) => '0',
      DIADI(2) => '0',
      DIADI(1) => '0',
      DIADI(0) => dina(0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => '0',
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => enb,
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
    port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => addrb(15 downto 0),
      CASCADEINA => CASCADEOUTA,
      CASCADEINB => CASCADEOUTB,
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7) => '0',
      DIADI(6) => '0',
      DIADI(5) => '0',
      DIADI(4) => '0',
      DIADI(3) => '0',
      DIADI(2) => '0',
      DIADI(1) => '0',
      DIADI(0) => dina(0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => '0',
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\(31 downto 1),
      DOBDO(0) => doutb(0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => enb,
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized21\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    clka : in STD_LOGIC;
    enb : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized21\ : entity is "blk_mem_gen_prim_wrapper_init";
end \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized21\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized21\ is
  signal CASCADEOUTA : STD_LOGIC;
  signal CASCADEOUTB : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B\ : label is "PRIMITIVE";
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "LOWER",
      RAM_EXTENSION_B => "LOWER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
    port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => addrb(15 downto 0),
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => CASCADEOUTA,
      CASCADEOUTB => CASCADEOUTB,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7) => '0',
      DIADI(6) => '0',
      DIADI(5) => '0',
      DIADI(4) => '0',
      DIADI(3) => '0',
      DIADI(2) => '0',
      DIADI(1) => '0',
      DIADI(0) => dina(0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => '0',
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOBDO_UNCONNECTED\(31 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => enb,
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_B_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "UPPER",
      RAM_EXTENSION_B => "UPPER",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
    port map (
      ADDRARDADDR(15 downto 0) => addra(15 downto 0),
      ADDRBWRADDR(15 downto 0) => addrb(15 downto 0),
      CASCADEINA => CASCADEOUTA,
      CASCADEINB => CASCADEOUTB,
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7) => '0',
      DIADI(6) => '0',
      DIADI(5) => '0',
      DIADI(4) => '0',
      DIADI(3) => '0',
      DIADI(2) => '0',
      DIADI(1) => '0',
      DIADI(0) => dina(0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => '0',
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOBDO_UNCONNECTED\(31 downto 1),
      DOBDO(0) => doutb(0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_DOPBDOP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => enb,
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.CASCADED_PRIM36.ram_T_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  port (
    I7 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I22 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized3\ : entity is "blk_mem_gen_prim_wrapper_init";
end \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized3\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_01 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_02 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_03 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_04 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_05 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_06 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_07 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_08 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_09 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_10 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_11 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_12 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_13 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_14 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_15 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_16 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_17 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_18 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_19 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_20 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_21 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_22 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_23 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_24 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_25 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_26 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_27 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_28 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_29 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_30 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_31 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_32 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_33 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_34 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_35 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_36 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_37 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_38 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_39 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_40 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_41 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_42 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_43 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_44 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_45 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_46 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_47 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_48 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_49 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_50 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_51 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_52 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_53 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_54 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_55 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_56 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_57 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_58 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_59 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_60 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_61 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_62 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_63 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_64 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_65 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_66 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_67 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_68 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_69 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_70 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_71 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_72 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_73 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_74 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_75 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_76 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_77 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_78 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_79 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
    port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2) => '1',
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => dina(8),
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => I7(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => I22(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => I1,
      ENBWREN => I2,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized4\ is
  port (
    I6 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I21 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized4\ : entity is "blk_mem_gen_prim_wrapper_init";
end \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized4\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized4\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_01 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_02 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_03 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_04 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_05 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_06 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_07 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_08 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_09 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_10 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_11 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_12 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_13 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_14 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_15 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_16 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_17 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_18 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_19 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_20 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_21 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_22 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_23 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_24 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_25 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_26 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_27 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_28 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_29 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_30 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_31 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_32 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_33 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_34 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_35 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_36 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_37 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_38 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_39 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_40 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_41 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_42 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_43 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_44 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_45 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_46 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_47 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_48 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_49 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_50 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_51 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_52 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_53 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_54 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_55 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_56 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_57 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_58 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_59 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_60 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_61 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_62 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_63 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_64 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_65 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_66 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_67 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_68 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_69 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_70 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_71 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_72 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_73 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_74 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_75 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_76 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_77 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_78 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_79 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
    port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2) => '1',
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => dina(8),
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => I6(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => I21(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => I1,
      ENBWREN => I2,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized5\ is
  port (
    I5 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I20 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized5\ : entity is "blk_mem_gen_prim_wrapper_init";
end \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized5\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized5\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_01 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_02 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_03 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_04 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_05 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_06 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_07 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_08 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_09 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_10 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_11 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_12 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_13 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_14 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_15 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_16 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_17 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_18 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_19 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_20 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_21 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_22 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_23 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_24 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_25 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_26 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_27 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_28 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_29 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_30 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_31 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_32 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_33 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_34 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_35 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_36 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_37 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_38 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_39 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_40 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_41 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_42 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_43 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_44 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_45 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_46 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_47 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_48 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_49 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_50 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_51 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_52 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_53 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_54 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_55 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_56 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_57 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_58 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_59 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_60 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_61 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_62 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_63 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_64 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_65 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_66 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_67 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_68 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_69 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_70 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_71 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_72 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_73 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_74 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_75 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_76 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_77 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_78 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_79 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
    port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2) => '1',
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => dina(8),
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => I5(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => I20(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => I1,
      ENBWREN => I2,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized6\ is
  port (
    I4 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I19 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized6\ : entity is "blk_mem_gen_prim_wrapper_init";
end \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized6\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized6\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_01 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_02 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_03 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_04 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_05 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_06 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_07 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_08 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_09 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_10 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_11 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_12 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_13 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_14 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_15 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_16 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_17 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_18 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_19 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_20 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_21 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_22 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_23 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_24 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_25 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_26 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_27 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_28 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_29 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_30 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_31 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_32 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_33 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_34 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_35 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_36 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_37 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_38 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_39 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_40 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_41 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_42 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_43 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_44 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_45 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_46 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_47 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_48 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_49 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_50 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_51 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_52 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_53 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_54 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_55 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_56 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_57 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_58 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_59 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_60 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_61 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_62 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_63 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_64 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_65 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_66 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_67 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_68 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_69 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_70 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_71 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_72 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_73 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_74 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_75 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_76 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_77 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_78 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_79 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
    port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2) => '1',
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => dina(8),
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => I4(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => I19(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => I1,
      ENBWREN => I2,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized7\ is
  port (
    I11 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I26 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized7\ : entity is "blk_mem_gen_prim_wrapper_init";
end \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized7\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized7\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_01 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_02 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_03 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_04 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_05 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_06 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_07 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_08 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_09 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_10 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_11 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_12 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_13 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_14 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_15 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_16 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_17 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_18 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_19 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_20 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_21 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_22 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_23 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_24 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_25 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_26 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_27 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_28 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_29 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_30 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_31 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_32 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_33 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_34 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_35 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_36 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_37 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_38 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_39 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_40 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_41 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_42 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_43 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_44 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_45 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_46 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_47 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_48 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_49 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_50 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_51 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_52 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_53 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_54 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_55 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_56 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_57 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_58 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_59 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_60 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_61 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_62 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_63 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_64 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_65 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_66 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_67 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_68 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_69 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_70 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_71 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_72 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_73 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_74 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_75 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_76 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_77 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_78 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_79 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
    port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2) => '1',
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => dina(8),
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => I11(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => I26(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => I1,
      ENBWREN => I2,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized8\ is
  port (
    I10 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I25 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized8\ : entity is "blk_mem_gen_prim_wrapper_init";
end \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized8\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized8\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_01 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_02 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_03 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_04 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_05 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_06 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_07 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_08 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_09 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_10 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_11 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_12 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_13 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_14 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_15 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_16 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_17 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_18 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_19 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_20 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_21 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_22 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_23 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_24 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_25 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_26 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_27 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_28 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_29 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_30 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_31 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_32 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_33 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_34 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_35 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_36 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_37 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_38 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_39 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_40 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_41 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_42 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_43 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_44 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_45 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_46 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_47 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_48 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_49 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_50 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_51 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_52 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_53 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_54 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_55 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_56 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_57 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_58 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_59 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_60 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_61 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_62 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_63 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_64 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_65 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_66 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_67 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_68 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_69 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_70 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_71 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_72 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_73 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_74 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_75 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_76 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_77 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_78 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_79 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
    port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2) => '1',
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => dina(8),
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => I10(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => I25(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => I1,
      ENBWREN => I2,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized9\ is
  port (
    I9 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I24 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized9\ : entity is "blk_mem_gen_prim_wrapper_init";
end \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized9\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized9\ is
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 1,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INITP_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_00 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_01 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_02 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_03 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_04 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_05 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_06 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_07 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_08 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_09 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_10 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_11 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_12 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_13 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_14 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_15 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_16 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_17 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_18 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_19 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_1F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_20 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_21 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_22 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_23 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_24 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_25 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_26 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_27 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_28 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_29 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_2F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_30 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_31 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_32 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_33 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_34 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_35 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_36 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_37 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_38 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_39 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_3F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_40 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_41 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_42 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_43 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_44 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_45 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_46 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_47 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_48 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_49 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_4F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_50 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_51 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_52 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_53 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_54 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_55 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_56 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_57 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_58 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_59 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_5F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_60 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_61 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_62 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_63 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_64 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_65 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_66 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_67 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_68 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_69 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_6F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_70 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_71 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_72 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_73 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_74 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_75 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_76 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_77 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_78 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_79 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7A => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7B => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7C => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7D => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7E => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_7F => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
    port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2) => '1',
      ADDRARDADDR(1) => '1',
      ADDRARDADDR(0) => '1',
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2) => '1',
      ADDRBWRADDR(1) => '1',
      ADDRBWRADDR(0) => '1',
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31) => '0',
      DIADI(30) => '0',
      DIADI(29) => '0',
      DIADI(28) => '0',
      DIADI(27) => '0',
      DIADI(26) => '0',
      DIADI(25) => '0',
      DIADI(24) => '0',
      DIADI(23) => '0',
      DIADI(22) => '0',
      DIADI(21) => '0',
      DIADI(20) => '0',
      DIADI(19) => '0',
      DIADI(18) => '0',
      DIADI(17) => '0',
      DIADI(16) => '0',
      DIADI(15) => '0',
      DIADI(14) => '0',
      DIADI(13) => '0',
      DIADI(12) => '0',
      DIADI(11) => '0',
      DIADI(10) => '0',
      DIADI(9) => '0',
      DIADI(8) => '0',
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31) => '0',
      DIBDI(30) => '0',
      DIBDI(29) => '0',
      DIBDI(28) => '0',
      DIBDI(27) => '0',
      DIBDI(26) => '0',
      DIBDI(25) => '0',
      DIBDI(24) => '0',
      DIBDI(23) => '0',
      DIBDI(22) => '0',
      DIBDI(21) => '0',
      DIBDI(20) => '0',
      DIBDI(19) => '0',
      DIBDI(18) => '0',
      DIBDI(17) => '0',
      DIBDI(16) => '0',
      DIBDI(15) => '0',
      DIBDI(14) => '0',
      DIBDI(13) => '0',
      DIBDI(12) => '0',
      DIBDI(11) => '0',
      DIBDI(10) => '0',
      DIBDI(9) => '0',
      DIBDI(8) => '0',
      DIBDI(7) => '0',
      DIBDI(6) => '0',
      DIBDI(5) => '0',
      DIBDI(4) => '0',
      DIBDI(3) => '0',
      DIBDI(2) => '0',
      DIBDI(1) => '0',
      DIBDI(0) => '0',
      DIPADIP(3) => '0',
      DIPADIP(2) => '0',
      DIPADIP(1) => '0',
      DIPADIP(0) => dina(8),
      DIPBDIP(3) => '0',
      DIPBDIP(2) => '0',
      DIPBDIP(1) => '0',
      DIPBDIP(0) => '0',
      DOADO(31 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 0),
      DOBDO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 8),
      DOBDO(7 downto 0) => I9(7 downto 0),
      DOPADOP(3 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 0),
      DOPBDOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 1),
      DOPBDOP(0) => I24(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => I1,
      ENBWREN => I2,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => enb,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7) => '0',
      WEBWE(6) => '0',
      WEBWE(5) => '0',
      WEBWE(4) => '0',
      WEBWE(3) => '0',
      WEBWE(2) => '0',
      WEBWE(1) => '0',
      WEBWE(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pixel_buffer_blk_mem_gen_prim_width is
  port (
    I3 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I18 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pixel_buffer_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end pixel_buffer_blk_mem_gen_prim_width;

architecture STRUCTURE of pixel_buffer_blk_mem_gen_prim_width is
begin
\prim_init.ram\: entity work.pixel_buffer_blk_mem_gen_prim_wrapper_init
    port map (
      I1 => I1,
      I18(0) => I18(0),
      I2 => I2,
      I3(7 downto 0) => I3(7 downto 0),
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_width__parameterized0\ is
  port (
    I2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I17 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I3 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_prim_width";
end \pixel_buffer_blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_width__parameterized0\ is
begin
\prim_init.ram\: entity work.\pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized0\
    port map (
      I1 => I1,
      I17(0) => I17(0),
      I2(7 downto 0) => I2(7 downto 0),
      I3 => I3,
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_width__parameterized1\ is
  port (
    I1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I16 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I2 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I3 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_width__parameterized1\ : entity is "blk_mem_gen_prim_width";
end \pixel_buffer_blk_mem_gen_prim_width__parameterized1\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_width__parameterized1\ is
begin
\prim_init.ram\: entity work.\pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized1\
    port map (
      I1(7 downto 0) => I1(7 downto 0),
      I16(0) => I16(0),
      I2 => I2,
      I3 => I3,
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_width__parameterized10\ is
  port (
    I8 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I23 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_width__parameterized10\ : entity is "blk_mem_gen_prim_width";
end \pixel_buffer_blk_mem_gen_prim_width__parameterized10\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_width__parameterized10\ is
begin
\prim_init.ram\: entity work.\pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized10\
    port map (
      I1 => I1,
      I2 => I2,
      I23(0) => I23(0),
      I8(7 downto 0) => I8(7 downto 0),
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_width__parameterized11\ is
  port (
    I15 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I30 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_width__parameterized11\ : entity is "blk_mem_gen_prim_width";
end \pixel_buffer_blk_mem_gen_prim_width__parameterized11\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_width__parameterized11\ is
begin
\prim_init.ram\: entity work.\pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized11\
    port map (
      I1 => I1,
      I15(7 downto 0) => I15(7 downto 0),
      I2 => I2,
      I30(0) => I30(0),
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_width__parameterized12\ is
  port (
    I14 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I29 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_width__parameterized12\ : entity is "blk_mem_gen_prim_width";
end \pixel_buffer_blk_mem_gen_prim_width__parameterized12\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_width__parameterized12\ is
begin
\prim_init.ram\: entity work.\pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized12\
    port map (
      I1 => I1,
      I14(7 downto 0) => I14(7 downto 0),
      I2 => I2,
      I29(0) => I29(0),
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_width__parameterized13\ is
  port (
    I13 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I28 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_width__parameterized13\ : entity is "blk_mem_gen_prim_width";
end \pixel_buffer_blk_mem_gen_prim_width__parameterized13\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_width__parameterized13\ is
begin
\prim_init.ram\: entity work.\pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized13\
    port map (
      I1 => I1,
      I13(7 downto 0) => I13(7 downto 0),
      I2 => I2,
      I28(0) => I28(0),
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_width__parameterized14\ is
  port (
    I12 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I27 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_width__parameterized14\ : entity is "blk_mem_gen_prim_width";
end \pixel_buffer_blk_mem_gen_prim_width__parameterized14\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_width__parameterized14\ is
begin
\prim_init.ram\: entity work.\pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized14\
    port map (
      I1 => I1,
      I12(7 downto 0) => I12(7 downto 0),
      I2 => I2,
      I27(0) => I27(0),
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_width__parameterized15\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    clka : in STD_LOGIC;
    enb : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_width__parameterized15\ : entity is "blk_mem_gen_prim_width";
end \pixel_buffer_blk_mem_gen_prim_width__parameterized15\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_width__parameterized15\ is
begin
\prim_init.ram\: entity work.\pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized15\
    port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(0) => dina(0),
      doutb(0) => doutb(0),
      ena => ena,
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_width__parameterized16\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    clka : in STD_LOGIC;
    enb : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_width__parameterized16\ : entity is "blk_mem_gen_prim_width";
end \pixel_buffer_blk_mem_gen_prim_width__parameterized16\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_width__parameterized16\ is
begin
\prim_init.ram\: entity work.\pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized16\
    port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(0) => dina(0),
      doutb(0) => doutb(0),
      ena => ena,
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_width__parameterized17\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    clka : in STD_LOGIC;
    enb : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_width__parameterized17\ : entity is "blk_mem_gen_prim_width";
end \pixel_buffer_blk_mem_gen_prim_width__parameterized17\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_width__parameterized17\ is
begin
\prim_init.ram\: entity work.\pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized17\
    port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(0) => dina(0),
      doutb(0) => doutb(0),
      ena => ena,
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_width__parameterized18\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    clka : in STD_LOGIC;
    enb : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_width__parameterized18\ : entity is "blk_mem_gen_prim_width";
end \pixel_buffer_blk_mem_gen_prim_width__parameterized18\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_width__parameterized18\ is
begin
\prim_init.ram\: entity work.\pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized18\
    port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(0) => dina(0),
      doutb(0) => doutb(0),
      ena => ena,
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_width__parameterized19\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    clka : in STD_LOGIC;
    enb : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_width__parameterized19\ : entity is "blk_mem_gen_prim_width";
end \pixel_buffer_blk_mem_gen_prim_width__parameterized19\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_width__parameterized19\ is
begin
\prim_init.ram\: entity work.\pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized19\
    port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(0) => dina(0),
      doutb(0) => doutb(0),
      ena => ena,
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_width__parameterized2\ is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOPBDOP : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_width__parameterized2\ : entity is "blk_mem_gen_prim_width";
end \pixel_buffer_blk_mem_gen_prim_width__parameterized2\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_width__parameterized2\ is
begin
\prim_init.ram\: entity work.\pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized2\
    port map (
      DOBDO(7 downto 0) => DOBDO(7 downto 0),
      DOPBDOP(0) => DOPBDOP(0),
      I1 => I1,
      I2 => I2,
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_width__parameterized20\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    clka : in STD_LOGIC;
    enb : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_width__parameterized20\ : entity is "blk_mem_gen_prim_width";
end \pixel_buffer_blk_mem_gen_prim_width__parameterized20\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_width__parameterized20\ is
begin
\prim_init.ram\: entity work.\pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized20\
    port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(0) => dina(0),
      doutb(0) => doutb(0),
      ena => ena,
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_width__parameterized21\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC;
    clka : in STD_LOGIC;
    enb : in STD_LOGIC;
    clkb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 0 to 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_width__parameterized21\ : entity is "blk_mem_gen_prim_width";
end \pixel_buffer_blk_mem_gen_prim_width__parameterized21\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_width__parameterized21\ is
begin
\prim_init.ram\: entity work.\pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized21\
    port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(0) => dina(0),
      doutb(0) => doutb(0),
      ena => ena,
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_width__parameterized3\ is
  port (
    I7 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I22 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_width__parameterized3\ : entity is "blk_mem_gen_prim_width";
end \pixel_buffer_blk_mem_gen_prim_width__parameterized3\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_width__parameterized3\ is
begin
\prim_init.ram\: entity work.\pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized3\
    port map (
      I1 => I1,
      I2 => I2,
      I22(0) => I22(0),
      I7(7 downto 0) => I7(7 downto 0),
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_width__parameterized4\ is
  port (
    I6 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I21 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_width__parameterized4\ : entity is "blk_mem_gen_prim_width";
end \pixel_buffer_blk_mem_gen_prim_width__parameterized4\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_width__parameterized4\ is
begin
\prim_init.ram\: entity work.\pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized4\
    port map (
      I1 => I1,
      I2 => I2,
      I21(0) => I21(0),
      I6(7 downto 0) => I6(7 downto 0),
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_width__parameterized5\ is
  port (
    I5 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I20 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_width__parameterized5\ : entity is "blk_mem_gen_prim_width";
end \pixel_buffer_blk_mem_gen_prim_width__parameterized5\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_width__parameterized5\ is
begin
\prim_init.ram\: entity work.\pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized5\
    port map (
      I1 => I1,
      I2 => I2,
      I20(0) => I20(0),
      I5(7 downto 0) => I5(7 downto 0),
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_width__parameterized6\ is
  port (
    I4 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I19 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_width__parameterized6\ : entity is "blk_mem_gen_prim_width";
end \pixel_buffer_blk_mem_gen_prim_width__parameterized6\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_width__parameterized6\ is
begin
\prim_init.ram\: entity work.\pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized6\
    port map (
      I1 => I1,
      I19(0) => I19(0),
      I2 => I2,
      I4(7 downto 0) => I4(7 downto 0),
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_width__parameterized7\ is
  port (
    I11 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I26 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_width__parameterized7\ : entity is "blk_mem_gen_prim_width";
end \pixel_buffer_blk_mem_gen_prim_width__parameterized7\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_width__parameterized7\ is
begin
\prim_init.ram\: entity work.\pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized7\
    port map (
      I1 => I1,
      I11(7 downto 0) => I11(7 downto 0),
      I2 => I2,
      I26(0) => I26(0),
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_width__parameterized8\ is
  port (
    I10 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I25 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_width__parameterized8\ : entity is "blk_mem_gen_prim_width";
end \pixel_buffer_blk_mem_gen_prim_width__parameterized8\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_width__parameterized8\ is
begin
\prim_init.ram\: entity work.\pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized8\
    port map (
      I1 => I1,
      I10(7 downto 0) => I10(7 downto 0),
      I2 => I2,
      I25(0) => I25(0),
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_prim_width__parameterized9\ is
  port (
    I9 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I24 : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    clka : in STD_LOGIC;
    I2 : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 8 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_prim_width__parameterized9\ : entity is "blk_mem_gen_prim_width";
end \pixel_buffer_blk_mem_gen_prim_width__parameterized9\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_prim_width__parameterized9\ is
begin
\prim_init.ram\: entity work.\pixel_buffer_blk_mem_gen_prim_wrapper_init__parameterized9\
    port map (
      I1 => I1,
      I2 => I2,
      I24(0) => I24(0),
      I9(7 downto 0) => I9(7 downto 0),
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pixel_buffer_blk_mem_gen_generic_cstr is
  port (
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pixel_buffer_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end pixel_buffer_blk_mem_gen_generic_cstr;

architecture STRUCTURE of pixel_buffer_blk_mem_gen_generic_cstr is
  signal \n_0_bindec_a.bindec_inst_a\ : STD_LOGIC;
  signal \n_0_bindec_b.bindec_inst_b\ : STD_LOGIC;
  signal \n_0_ramloop[0].ram.r\ : STD_LOGIC;
  signal \n_0_ramloop[10].ram.r\ : STD_LOGIC;
  signal \n_0_ramloop[11].ram.r\ : STD_LOGIC;
  signal \n_0_ramloop[12].ram.r\ : STD_LOGIC;
  signal \n_0_ramloop[13].ram.r\ : STD_LOGIC;
  signal \n_0_ramloop[14].ram.r\ : STD_LOGIC;
  signal \n_0_ramloop[15].ram.r\ : STD_LOGIC;
  signal \n_0_ramloop[1].ram.r\ : STD_LOGIC;
  signal \n_0_ramloop[2].ram.r\ : STD_LOGIC;
  signal \n_0_ramloop[3].ram.r\ : STD_LOGIC;
  signal \n_0_ramloop[4].ram.r\ : STD_LOGIC;
  signal \n_0_ramloop[5].ram.r\ : STD_LOGIC;
  signal \n_0_ramloop[6].ram.r\ : STD_LOGIC;
  signal \n_0_ramloop[7].ram.r\ : STD_LOGIC;
  signal \n_0_ramloop[8].ram.r\ : STD_LOGIC;
  signal \n_0_ramloop[9].ram.r\ : STD_LOGIC;
  signal \n_10_bindec_a.bindec_inst_a\ : STD_LOGIC;
  signal \n_10_bindec_b.bindec_inst_b\ : STD_LOGIC;
  signal \n_11_bindec_a.bindec_inst_a\ : STD_LOGIC;
  signal \n_11_bindec_b.bindec_inst_b\ : STD_LOGIC;
  signal \n_12_bindec_a.bindec_inst_a\ : STD_LOGIC;
  signal \n_12_bindec_b.bindec_inst_b\ : STD_LOGIC;
  signal \n_13_bindec_a.bindec_inst_a\ : STD_LOGIC;
  signal \n_13_bindec_b.bindec_inst_b\ : STD_LOGIC;
  signal \n_14_bindec_a.bindec_inst_a\ : STD_LOGIC;
  signal \n_14_bindec_b.bindec_inst_b\ : STD_LOGIC;
  signal \n_15_bindec_a.bindec_inst_a\ : STD_LOGIC;
  signal \n_15_bindec_b.bindec_inst_b\ : STD_LOGIC;
  signal \n_1_bindec_a.bindec_inst_a\ : STD_LOGIC;
  signal \n_1_bindec_b.bindec_inst_b\ : STD_LOGIC;
  signal \n_1_ramloop[0].ram.r\ : STD_LOGIC;
  signal \n_1_ramloop[10].ram.r\ : STD_LOGIC;
  signal \n_1_ramloop[11].ram.r\ : STD_LOGIC;
  signal \n_1_ramloop[12].ram.r\ : STD_LOGIC;
  signal \n_1_ramloop[13].ram.r\ : STD_LOGIC;
  signal \n_1_ramloop[14].ram.r\ : STD_LOGIC;
  signal \n_1_ramloop[15].ram.r\ : STD_LOGIC;
  signal \n_1_ramloop[1].ram.r\ : STD_LOGIC;
  signal \n_1_ramloop[2].ram.r\ : STD_LOGIC;
  signal \n_1_ramloop[3].ram.r\ : STD_LOGIC;
  signal \n_1_ramloop[4].ram.r\ : STD_LOGIC;
  signal \n_1_ramloop[5].ram.r\ : STD_LOGIC;
  signal \n_1_ramloop[6].ram.r\ : STD_LOGIC;
  signal \n_1_ramloop[7].ram.r\ : STD_LOGIC;
  signal \n_1_ramloop[8].ram.r\ : STD_LOGIC;
  signal \n_1_ramloop[9].ram.r\ : STD_LOGIC;
  signal \n_2_bindec_a.bindec_inst_a\ : STD_LOGIC;
  signal \n_2_bindec_b.bindec_inst_b\ : STD_LOGIC;
  signal \n_2_ramloop[0].ram.r\ : STD_LOGIC;
  signal \n_2_ramloop[10].ram.r\ : STD_LOGIC;
  signal \n_2_ramloop[11].ram.r\ : STD_LOGIC;
  signal \n_2_ramloop[12].ram.r\ : STD_LOGIC;
  signal \n_2_ramloop[13].ram.r\ : STD_LOGIC;
  signal \n_2_ramloop[14].ram.r\ : STD_LOGIC;
  signal \n_2_ramloop[15].ram.r\ : STD_LOGIC;
  signal \n_2_ramloop[1].ram.r\ : STD_LOGIC;
  signal \n_2_ramloop[2].ram.r\ : STD_LOGIC;
  signal \n_2_ramloop[3].ram.r\ : STD_LOGIC;
  signal \n_2_ramloop[4].ram.r\ : STD_LOGIC;
  signal \n_2_ramloop[5].ram.r\ : STD_LOGIC;
  signal \n_2_ramloop[6].ram.r\ : STD_LOGIC;
  signal \n_2_ramloop[7].ram.r\ : STD_LOGIC;
  signal \n_2_ramloop[8].ram.r\ : STD_LOGIC;
  signal \n_2_ramloop[9].ram.r\ : STD_LOGIC;
  signal \n_3_bindec_a.bindec_inst_a\ : STD_LOGIC;
  signal \n_3_bindec_b.bindec_inst_b\ : STD_LOGIC;
  signal \n_3_ramloop[0].ram.r\ : STD_LOGIC;
  signal \n_3_ramloop[10].ram.r\ : STD_LOGIC;
  signal \n_3_ramloop[11].ram.r\ : STD_LOGIC;
  signal \n_3_ramloop[12].ram.r\ : STD_LOGIC;
  signal \n_3_ramloop[13].ram.r\ : STD_LOGIC;
  signal \n_3_ramloop[14].ram.r\ : STD_LOGIC;
  signal \n_3_ramloop[15].ram.r\ : STD_LOGIC;
  signal \n_3_ramloop[1].ram.r\ : STD_LOGIC;
  signal \n_3_ramloop[2].ram.r\ : STD_LOGIC;
  signal \n_3_ramloop[3].ram.r\ : STD_LOGIC;
  signal \n_3_ramloop[4].ram.r\ : STD_LOGIC;
  signal \n_3_ramloop[5].ram.r\ : STD_LOGIC;
  signal \n_3_ramloop[6].ram.r\ : STD_LOGIC;
  signal \n_3_ramloop[7].ram.r\ : STD_LOGIC;
  signal \n_3_ramloop[8].ram.r\ : STD_LOGIC;
  signal \n_3_ramloop[9].ram.r\ : STD_LOGIC;
  signal \n_4_bindec_a.bindec_inst_a\ : STD_LOGIC;
  signal \n_4_bindec_b.bindec_inst_b\ : STD_LOGIC;
  signal \n_4_ramloop[0].ram.r\ : STD_LOGIC;
  signal \n_4_ramloop[10].ram.r\ : STD_LOGIC;
  signal \n_4_ramloop[11].ram.r\ : STD_LOGIC;
  signal \n_4_ramloop[12].ram.r\ : STD_LOGIC;
  signal \n_4_ramloop[13].ram.r\ : STD_LOGIC;
  signal \n_4_ramloop[14].ram.r\ : STD_LOGIC;
  signal \n_4_ramloop[15].ram.r\ : STD_LOGIC;
  signal \n_4_ramloop[1].ram.r\ : STD_LOGIC;
  signal \n_4_ramloop[2].ram.r\ : STD_LOGIC;
  signal \n_4_ramloop[3].ram.r\ : STD_LOGIC;
  signal \n_4_ramloop[4].ram.r\ : STD_LOGIC;
  signal \n_4_ramloop[5].ram.r\ : STD_LOGIC;
  signal \n_4_ramloop[6].ram.r\ : STD_LOGIC;
  signal \n_4_ramloop[7].ram.r\ : STD_LOGIC;
  signal \n_4_ramloop[8].ram.r\ : STD_LOGIC;
  signal \n_4_ramloop[9].ram.r\ : STD_LOGIC;
  signal \n_5_bindec_a.bindec_inst_a\ : STD_LOGIC;
  signal \n_5_bindec_b.bindec_inst_b\ : STD_LOGIC;
  signal \n_5_ramloop[0].ram.r\ : STD_LOGIC;
  signal \n_5_ramloop[10].ram.r\ : STD_LOGIC;
  signal \n_5_ramloop[11].ram.r\ : STD_LOGIC;
  signal \n_5_ramloop[12].ram.r\ : STD_LOGIC;
  signal \n_5_ramloop[13].ram.r\ : STD_LOGIC;
  signal \n_5_ramloop[14].ram.r\ : STD_LOGIC;
  signal \n_5_ramloop[15].ram.r\ : STD_LOGIC;
  signal \n_5_ramloop[1].ram.r\ : STD_LOGIC;
  signal \n_5_ramloop[2].ram.r\ : STD_LOGIC;
  signal \n_5_ramloop[3].ram.r\ : STD_LOGIC;
  signal \n_5_ramloop[4].ram.r\ : STD_LOGIC;
  signal \n_5_ramloop[5].ram.r\ : STD_LOGIC;
  signal \n_5_ramloop[6].ram.r\ : STD_LOGIC;
  signal \n_5_ramloop[7].ram.r\ : STD_LOGIC;
  signal \n_5_ramloop[8].ram.r\ : STD_LOGIC;
  signal \n_5_ramloop[9].ram.r\ : STD_LOGIC;
  signal \n_6_bindec_a.bindec_inst_a\ : STD_LOGIC;
  signal \n_6_bindec_b.bindec_inst_b\ : STD_LOGIC;
  signal \n_6_ramloop[0].ram.r\ : STD_LOGIC;
  signal \n_6_ramloop[10].ram.r\ : STD_LOGIC;
  signal \n_6_ramloop[11].ram.r\ : STD_LOGIC;
  signal \n_6_ramloop[12].ram.r\ : STD_LOGIC;
  signal \n_6_ramloop[13].ram.r\ : STD_LOGIC;
  signal \n_6_ramloop[14].ram.r\ : STD_LOGIC;
  signal \n_6_ramloop[15].ram.r\ : STD_LOGIC;
  signal \n_6_ramloop[1].ram.r\ : STD_LOGIC;
  signal \n_6_ramloop[2].ram.r\ : STD_LOGIC;
  signal \n_6_ramloop[3].ram.r\ : STD_LOGIC;
  signal \n_6_ramloop[4].ram.r\ : STD_LOGIC;
  signal \n_6_ramloop[5].ram.r\ : STD_LOGIC;
  signal \n_6_ramloop[6].ram.r\ : STD_LOGIC;
  signal \n_6_ramloop[7].ram.r\ : STD_LOGIC;
  signal \n_6_ramloop[8].ram.r\ : STD_LOGIC;
  signal \n_6_ramloop[9].ram.r\ : STD_LOGIC;
  signal \n_7_bindec_a.bindec_inst_a\ : STD_LOGIC;
  signal \n_7_bindec_b.bindec_inst_b\ : STD_LOGIC;
  signal \n_7_ramloop[0].ram.r\ : STD_LOGIC;
  signal \n_7_ramloop[10].ram.r\ : STD_LOGIC;
  signal \n_7_ramloop[11].ram.r\ : STD_LOGIC;
  signal \n_7_ramloop[12].ram.r\ : STD_LOGIC;
  signal \n_7_ramloop[13].ram.r\ : STD_LOGIC;
  signal \n_7_ramloop[14].ram.r\ : STD_LOGIC;
  signal \n_7_ramloop[15].ram.r\ : STD_LOGIC;
  signal \n_7_ramloop[1].ram.r\ : STD_LOGIC;
  signal \n_7_ramloop[2].ram.r\ : STD_LOGIC;
  signal \n_7_ramloop[3].ram.r\ : STD_LOGIC;
  signal \n_7_ramloop[4].ram.r\ : STD_LOGIC;
  signal \n_7_ramloop[5].ram.r\ : STD_LOGIC;
  signal \n_7_ramloop[6].ram.r\ : STD_LOGIC;
  signal \n_7_ramloop[7].ram.r\ : STD_LOGIC;
  signal \n_7_ramloop[8].ram.r\ : STD_LOGIC;
  signal \n_7_ramloop[9].ram.r\ : STD_LOGIC;
  signal \n_8_bindec_a.bindec_inst_a\ : STD_LOGIC;
  signal \n_8_bindec_b.bindec_inst_b\ : STD_LOGIC;
  signal \n_8_ramloop[0].ram.r\ : STD_LOGIC;
  signal \n_8_ramloop[10].ram.r\ : STD_LOGIC;
  signal \n_8_ramloop[11].ram.r\ : STD_LOGIC;
  signal \n_8_ramloop[12].ram.r\ : STD_LOGIC;
  signal \n_8_ramloop[13].ram.r\ : STD_LOGIC;
  signal \n_8_ramloop[14].ram.r\ : STD_LOGIC;
  signal \n_8_ramloop[15].ram.r\ : STD_LOGIC;
  signal \n_8_ramloop[1].ram.r\ : STD_LOGIC;
  signal \n_8_ramloop[2].ram.r\ : STD_LOGIC;
  signal \n_8_ramloop[3].ram.r\ : STD_LOGIC;
  signal \n_8_ramloop[4].ram.r\ : STD_LOGIC;
  signal \n_8_ramloop[5].ram.r\ : STD_LOGIC;
  signal \n_8_ramloop[6].ram.r\ : STD_LOGIC;
  signal \n_8_ramloop[7].ram.r\ : STD_LOGIC;
  signal \n_8_ramloop[8].ram.r\ : STD_LOGIC;
  signal \n_8_ramloop[9].ram.r\ : STD_LOGIC;
  signal \n_9_bindec_a.bindec_inst_a\ : STD_LOGIC;
  signal \n_9_bindec_b.bindec_inst_b\ : STD_LOGIC;
begin
\bindec_a.bindec_inst_a\: entity work.pixel_buffer_bindec
    port map (
      O1 => \n_0_bindec_a.bindec_inst_a\,
      O10 => \n_9_bindec_a.bindec_inst_a\,
      O11 => \n_10_bindec_a.bindec_inst_a\,
      O12 => \n_11_bindec_a.bindec_inst_a\,
      O13 => \n_12_bindec_a.bindec_inst_a\,
      O14 => \n_13_bindec_a.bindec_inst_a\,
      O15 => \n_14_bindec_a.bindec_inst_a\,
      O16 => \n_15_bindec_a.bindec_inst_a\,
      O2 => \n_1_bindec_a.bindec_inst_a\,
      O3 => \n_2_bindec_a.bindec_inst_a\,
      O4 => \n_3_bindec_a.bindec_inst_a\,
      O5 => \n_4_bindec_a.bindec_inst_a\,
      O6 => \n_5_bindec_a.bindec_inst_a\,
      O7 => \n_6_bindec_a.bindec_inst_a\,
      O8 => \n_7_bindec_a.bindec_inst_a\,
      O9 => \n_8_bindec_a.bindec_inst_a\,
      addra(3 downto 0) => addra(15 downto 12),
      ena => ena
    );
\bindec_b.bindec_inst_b\: entity work.pixel_buffer_bindec_0
    port map (
      O1 => \n_0_bindec_b.bindec_inst_b\,
      O10 => \n_9_bindec_b.bindec_inst_b\,
      O11 => \n_10_bindec_b.bindec_inst_b\,
      O12 => \n_11_bindec_b.bindec_inst_b\,
      O13 => \n_12_bindec_b.bindec_inst_b\,
      O14 => \n_13_bindec_b.bindec_inst_b\,
      O15 => \n_14_bindec_b.bindec_inst_b\,
      O16 => \n_15_bindec_b.bindec_inst_b\,
      O2 => \n_1_bindec_b.bindec_inst_b\,
      O3 => \n_2_bindec_b.bindec_inst_b\,
      O4 => \n_3_bindec_b.bindec_inst_b\,
      O5 => \n_4_bindec_b.bindec_inst_b\,
      O6 => \n_5_bindec_b.bindec_inst_b\,
      O7 => \n_6_bindec_b.bindec_inst_b\,
      O8 => \n_7_bindec_b.bindec_inst_b\,
      O9 => \n_8_bindec_b.bindec_inst_b\,
      addrb(3 downto 0) => addrb(15 downto 12),
      enb => enb
    );
\has_mux_b.B\: entity work.\pixel_buffer_blk_mem_gen_mux__parameterized0\
    port map (
      DOBDO(7) => \n_0_ramloop[3].ram.r\,
      DOBDO(6) => \n_1_ramloop[3].ram.r\,
      DOBDO(5) => \n_2_ramloop[3].ram.r\,
      DOBDO(4) => \n_3_ramloop[3].ram.r\,
      DOBDO(3) => \n_4_ramloop[3].ram.r\,
      DOBDO(2) => \n_5_ramloop[3].ram.r\,
      DOBDO(1) => \n_6_ramloop[3].ram.r\,
      DOBDO(0) => \n_7_ramloop[3].ram.r\,
      DOPBDOP(0) => \n_8_ramloop[3].ram.r\,
      I1(7) => \n_0_ramloop[2].ram.r\,
      I1(6) => \n_1_ramloop[2].ram.r\,
      I1(5) => \n_2_ramloop[2].ram.r\,
      I1(4) => \n_3_ramloop[2].ram.r\,
      I1(3) => \n_4_ramloop[2].ram.r\,
      I1(2) => \n_5_ramloop[2].ram.r\,
      I1(1) => \n_6_ramloop[2].ram.r\,
      I1(0) => \n_7_ramloop[2].ram.r\,
      I10(7) => \n_0_ramloop[9].ram.r\,
      I10(6) => \n_1_ramloop[9].ram.r\,
      I10(5) => \n_2_ramloop[9].ram.r\,
      I10(4) => \n_3_ramloop[9].ram.r\,
      I10(3) => \n_4_ramloop[9].ram.r\,
      I10(2) => \n_5_ramloop[9].ram.r\,
      I10(1) => \n_6_ramloop[9].ram.r\,
      I10(0) => \n_7_ramloop[9].ram.r\,
      I11(7) => \n_0_ramloop[8].ram.r\,
      I11(6) => \n_1_ramloop[8].ram.r\,
      I11(5) => \n_2_ramloop[8].ram.r\,
      I11(4) => \n_3_ramloop[8].ram.r\,
      I11(3) => \n_4_ramloop[8].ram.r\,
      I11(2) => \n_5_ramloop[8].ram.r\,
      I11(1) => \n_6_ramloop[8].ram.r\,
      I11(0) => \n_7_ramloop[8].ram.r\,
      I12(7) => \n_0_ramloop[15].ram.r\,
      I12(6) => \n_1_ramloop[15].ram.r\,
      I12(5) => \n_2_ramloop[15].ram.r\,
      I12(4) => \n_3_ramloop[15].ram.r\,
      I12(3) => \n_4_ramloop[15].ram.r\,
      I12(2) => \n_5_ramloop[15].ram.r\,
      I12(1) => \n_6_ramloop[15].ram.r\,
      I12(0) => \n_7_ramloop[15].ram.r\,
      I13(7) => \n_0_ramloop[14].ram.r\,
      I13(6) => \n_1_ramloop[14].ram.r\,
      I13(5) => \n_2_ramloop[14].ram.r\,
      I13(4) => \n_3_ramloop[14].ram.r\,
      I13(3) => \n_4_ramloop[14].ram.r\,
      I13(2) => \n_5_ramloop[14].ram.r\,
      I13(1) => \n_6_ramloop[14].ram.r\,
      I13(0) => \n_7_ramloop[14].ram.r\,
      I14(7) => \n_0_ramloop[13].ram.r\,
      I14(6) => \n_1_ramloop[13].ram.r\,
      I14(5) => \n_2_ramloop[13].ram.r\,
      I14(4) => \n_3_ramloop[13].ram.r\,
      I14(3) => \n_4_ramloop[13].ram.r\,
      I14(2) => \n_5_ramloop[13].ram.r\,
      I14(1) => \n_6_ramloop[13].ram.r\,
      I14(0) => \n_7_ramloop[13].ram.r\,
      I15(7) => \n_0_ramloop[12].ram.r\,
      I15(6) => \n_1_ramloop[12].ram.r\,
      I15(5) => \n_2_ramloop[12].ram.r\,
      I15(4) => \n_3_ramloop[12].ram.r\,
      I15(3) => \n_4_ramloop[12].ram.r\,
      I15(2) => \n_5_ramloop[12].ram.r\,
      I15(1) => \n_6_ramloop[12].ram.r\,
      I15(0) => \n_7_ramloop[12].ram.r\,
      I16(0) => \n_8_ramloop[2].ram.r\,
      I17(0) => \n_8_ramloop[1].ram.r\,
      I18(0) => \n_8_ramloop[0].ram.r\,
      I19(0) => \n_8_ramloop[7].ram.r\,
      I2(7) => \n_0_ramloop[1].ram.r\,
      I2(6) => \n_1_ramloop[1].ram.r\,
      I2(5) => \n_2_ramloop[1].ram.r\,
      I2(4) => \n_3_ramloop[1].ram.r\,
      I2(3) => \n_4_ramloop[1].ram.r\,
      I2(2) => \n_5_ramloop[1].ram.r\,
      I2(1) => \n_6_ramloop[1].ram.r\,
      I2(0) => \n_7_ramloop[1].ram.r\,
      I20(0) => \n_8_ramloop[6].ram.r\,
      I21(0) => \n_8_ramloop[5].ram.r\,
      I22(0) => \n_8_ramloop[4].ram.r\,
      I23(0) => \n_8_ramloop[11].ram.r\,
      I24(0) => \n_8_ramloop[10].ram.r\,
      I25(0) => \n_8_ramloop[9].ram.r\,
      I26(0) => \n_8_ramloop[8].ram.r\,
      I27(0) => \n_8_ramloop[15].ram.r\,
      I28(0) => \n_8_ramloop[14].ram.r\,
      I29(0) => \n_8_ramloop[13].ram.r\,
      I3(7) => \n_0_ramloop[0].ram.r\,
      I3(6) => \n_1_ramloop[0].ram.r\,
      I3(5) => \n_2_ramloop[0].ram.r\,
      I3(4) => \n_3_ramloop[0].ram.r\,
      I3(3) => \n_4_ramloop[0].ram.r\,
      I3(2) => \n_5_ramloop[0].ram.r\,
      I3(1) => \n_6_ramloop[0].ram.r\,
      I3(0) => \n_7_ramloop[0].ram.r\,
      I30(0) => \n_8_ramloop[12].ram.r\,
      I4(7) => \n_0_ramloop[7].ram.r\,
      I4(6) => \n_1_ramloop[7].ram.r\,
      I4(5) => \n_2_ramloop[7].ram.r\,
      I4(4) => \n_3_ramloop[7].ram.r\,
      I4(3) => \n_4_ramloop[7].ram.r\,
      I4(2) => \n_5_ramloop[7].ram.r\,
      I4(1) => \n_6_ramloop[7].ram.r\,
      I4(0) => \n_7_ramloop[7].ram.r\,
      I5(7) => \n_0_ramloop[6].ram.r\,
      I5(6) => \n_1_ramloop[6].ram.r\,
      I5(5) => \n_2_ramloop[6].ram.r\,
      I5(4) => \n_3_ramloop[6].ram.r\,
      I5(3) => \n_4_ramloop[6].ram.r\,
      I5(2) => \n_5_ramloop[6].ram.r\,
      I5(1) => \n_6_ramloop[6].ram.r\,
      I5(0) => \n_7_ramloop[6].ram.r\,
      I6(7) => \n_0_ramloop[5].ram.r\,
      I6(6) => \n_1_ramloop[5].ram.r\,
      I6(5) => \n_2_ramloop[5].ram.r\,
      I6(4) => \n_3_ramloop[5].ram.r\,
      I6(3) => \n_4_ramloop[5].ram.r\,
      I6(2) => \n_5_ramloop[5].ram.r\,
      I6(1) => \n_6_ramloop[5].ram.r\,
      I6(0) => \n_7_ramloop[5].ram.r\,
      I7(7) => \n_0_ramloop[4].ram.r\,
      I7(6) => \n_1_ramloop[4].ram.r\,
      I7(5) => \n_2_ramloop[4].ram.r\,
      I7(4) => \n_3_ramloop[4].ram.r\,
      I7(3) => \n_4_ramloop[4].ram.r\,
      I7(2) => \n_5_ramloop[4].ram.r\,
      I7(1) => \n_6_ramloop[4].ram.r\,
      I7(0) => \n_7_ramloop[4].ram.r\,
      I8(7) => \n_0_ramloop[11].ram.r\,
      I8(6) => \n_1_ramloop[11].ram.r\,
      I8(5) => \n_2_ramloop[11].ram.r\,
      I8(4) => \n_3_ramloop[11].ram.r\,
      I8(3) => \n_4_ramloop[11].ram.r\,
      I8(2) => \n_5_ramloop[11].ram.r\,
      I8(1) => \n_6_ramloop[11].ram.r\,
      I8(0) => \n_7_ramloop[11].ram.r\,
      I9(7) => \n_0_ramloop[10].ram.r\,
      I9(6) => \n_1_ramloop[10].ram.r\,
      I9(5) => \n_2_ramloop[10].ram.r\,
      I9(4) => \n_3_ramloop[10].ram.r\,
      I9(3) => \n_4_ramloop[10].ram.r\,
      I9(2) => \n_5_ramloop[10].ram.r\,
      I9(1) => \n_6_ramloop[10].ram.r\,
      I9(0) => \n_7_ramloop[10].ram.r\,
      addrb(3 downto 0) => addrb(15 downto 12),
      clkb => clkb,
      doutb(8 downto 0) => doutb(8 downto 0),
      enb => enb
    );
\ramloop[0].ram.r\: entity work.pixel_buffer_blk_mem_gen_prim_width
    port map (
      I1 => \n_0_bindec_a.bindec_inst_a\,
      I18(0) => \n_8_ramloop[0].ram.r\,
      I2 => \n_0_bindec_b.bindec_inst_b\,
      I3(7) => \n_0_ramloop[0].ram.r\,
      I3(6) => \n_1_ramloop[0].ram.r\,
      I3(5) => \n_2_ramloop[0].ram.r\,
      I3(4) => \n_3_ramloop[0].ram.r\,
      I3(3) => \n_4_ramloop[0].ram.r\,
      I3(2) => \n_5_ramloop[0].ram.r\,
      I3(1) => \n_6_ramloop[0].ram.r\,
      I3(0) => \n_7_ramloop[0].ram.r\,
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
\ramloop[10].ram.r\: entity work.\pixel_buffer_blk_mem_gen_prim_width__parameterized9\
    port map (
      I1 => \n_10_bindec_a.bindec_inst_a\,
      I2 => \n_10_bindec_b.bindec_inst_b\,
      I24(0) => \n_8_ramloop[10].ram.r\,
      I9(7) => \n_0_ramloop[10].ram.r\,
      I9(6) => \n_1_ramloop[10].ram.r\,
      I9(5) => \n_2_ramloop[10].ram.r\,
      I9(4) => \n_3_ramloop[10].ram.r\,
      I9(3) => \n_4_ramloop[10].ram.r\,
      I9(2) => \n_5_ramloop[10].ram.r\,
      I9(1) => \n_6_ramloop[10].ram.r\,
      I9(0) => \n_7_ramloop[10].ram.r\,
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
\ramloop[11].ram.r\: entity work.\pixel_buffer_blk_mem_gen_prim_width__parameterized10\
    port map (
      I1 => \n_11_bindec_a.bindec_inst_a\,
      I2 => \n_11_bindec_b.bindec_inst_b\,
      I23(0) => \n_8_ramloop[11].ram.r\,
      I8(7) => \n_0_ramloop[11].ram.r\,
      I8(6) => \n_1_ramloop[11].ram.r\,
      I8(5) => \n_2_ramloop[11].ram.r\,
      I8(4) => \n_3_ramloop[11].ram.r\,
      I8(3) => \n_4_ramloop[11].ram.r\,
      I8(2) => \n_5_ramloop[11].ram.r\,
      I8(1) => \n_6_ramloop[11].ram.r\,
      I8(0) => \n_7_ramloop[11].ram.r\,
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
\ramloop[12].ram.r\: entity work.\pixel_buffer_blk_mem_gen_prim_width__parameterized11\
    port map (
      I1 => \n_12_bindec_a.bindec_inst_a\,
      I15(7) => \n_0_ramloop[12].ram.r\,
      I15(6) => \n_1_ramloop[12].ram.r\,
      I15(5) => \n_2_ramloop[12].ram.r\,
      I15(4) => \n_3_ramloop[12].ram.r\,
      I15(3) => \n_4_ramloop[12].ram.r\,
      I15(2) => \n_5_ramloop[12].ram.r\,
      I15(1) => \n_6_ramloop[12].ram.r\,
      I15(0) => \n_7_ramloop[12].ram.r\,
      I2 => \n_12_bindec_b.bindec_inst_b\,
      I30(0) => \n_8_ramloop[12].ram.r\,
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
\ramloop[13].ram.r\: entity work.\pixel_buffer_blk_mem_gen_prim_width__parameterized12\
    port map (
      I1 => \n_13_bindec_a.bindec_inst_a\,
      I14(7) => \n_0_ramloop[13].ram.r\,
      I14(6) => \n_1_ramloop[13].ram.r\,
      I14(5) => \n_2_ramloop[13].ram.r\,
      I14(4) => \n_3_ramloop[13].ram.r\,
      I14(3) => \n_4_ramloop[13].ram.r\,
      I14(2) => \n_5_ramloop[13].ram.r\,
      I14(1) => \n_6_ramloop[13].ram.r\,
      I14(0) => \n_7_ramloop[13].ram.r\,
      I2 => \n_13_bindec_b.bindec_inst_b\,
      I29(0) => \n_8_ramloop[13].ram.r\,
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
\ramloop[14].ram.r\: entity work.\pixel_buffer_blk_mem_gen_prim_width__parameterized13\
    port map (
      I1 => \n_14_bindec_a.bindec_inst_a\,
      I13(7) => \n_0_ramloop[14].ram.r\,
      I13(6) => \n_1_ramloop[14].ram.r\,
      I13(5) => \n_2_ramloop[14].ram.r\,
      I13(4) => \n_3_ramloop[14].ram.r\,
      I13(3) => \n_4_ramloop[14].ram.r\,
      I13(2) => \n_5_ramloop[14].ram.r\,
      I13(1) => \n_6_ramloop[14].ram.r\,
      I13(0) => \n_7_ramloop[14].ram.r\,
      I2 => \n_14_bindec_b.bindec_inst_b\,
      I28(0) => \n_8_ramloop[14].ram.r\,
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
\ramloop[15].ram.r\: entity work.\pixel_buffer_blk_mem_gen_prim_width__parameterized14\
    port map (
      I1 => \n_15_bindec_a.bindec_inst_a\,
      I12(7) => \n_0_ramloop[15].ram.r\,
      I12(6) => \n_1_ramloop[15].ram.r\,
      I12(5) => \n_2_ramloop[15].ram.r\,
      I12(4) => \n_3_ramloop[15].ram.r\,
      I12(3) => \n_4_ramloop[15].ram.r\,
      I12(2) => \n_5_ramloop[15].ram.r\,
      I12(1) => \n_6_ramloop[15].ram.r\,
      I12(0) => \n_7_ramloop[15].ram.r\,
      I2 => \n_15_bindec_b.bindec_inst_b\,
      I27(0) => \n_8_ramloop[15].ram.r\,
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
\ramloop[16].ram.r\: entity work.\pixel_buffer_blk_mem_gen_prim_width__parameterized15\
    port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(0) => dina(9),
      doutb(0) => doutb(9),
      ena => ena,
      enb => enb,
      wea(0) => wea(0)
    );
\ramloop[17].ram.r\: entity work.\pixel_buffer_blk_mem_gen_prim_width__parameterized16\
    port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(0) => dina(10),
      doutb(0) => doutb(10),
      ena => ena,
      enb => enb,
      wea(0) => wea(0)
    );
\ramloop[18].ram.r\: entity work.\pixel_buffer_blk_mem_gen_prim_width__parameterized17\
    port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(0) => dina(11),
      doutb(0) => doutb(11),
      ena => ena,
      enb => enb,
      wea(0) => wea(0)
    );
\ramloop[19].ram.r\: entity work.\pixel_buffer_blk_mem_gen_prim_width__parameterized18\
    port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(0) => dina(12),
      doutb(0) => doutb(12),
      ena => ena,
      enb => enb,
      wea(0) => wea(0)
    );
\ramloop[1].ram.r\: entity work.\pixel_buffer_blk_mem_gen_prim_width__parameterized0\
    port map (
      I1 => \n_1_bindec_a.bindec_inst_a\,
      I17(0) => \n_8_ramloop[1].ram.r\,
      I2(7) => \n_0_ramloop[1].ram.r\,
      I2(6) => \n_1_ramloop[1].ram.r\,
      I2(5) => \n_2_ramloop[1].ram.r\,
      I2(4) => \n_3_ramloop[1].ram.r\,
      I2(3) => \n_4_ramloop[1].ram.r\,
      I2(2) => \n_5_ramloop[1].ram.r\,
      I2(1) => \n_6_ramloop[1].ram.r\,
      I2(0) => \n_7_ramloop[1].ram.r\,
      I3 => \n_1_bindec_b.bindec_inst_b\,
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
\ramloop[20].ram.r\: entity work.\pixel_buffer_blk_mem_gen_prim_width__parameterized19\
    port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(0) => dina(13),
      doutb(0) => doutb(13),
      ena => ena,
      enb => enb,
      wea(0) => wea(0)
    );
\ramloop[21].ram.r\: entity work.\pixel_buffer_blk_mem_gen_prim_width__parameterized20\
    port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(0) => dina(14),
      doutb(0) => doutb(14),
      ena => ena,
      enb => enb,
      wea(0) => wea(0)
    );
\ramloop[22].ram.r\: entity work.\pixel_buffer_blk_mem_gen_prim_width__parameterized21\
    port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(0) => dina(15),
      doutb(0) => doutb(15),
      ena => ena,
      enb => enb,
      wea(0) => wea(0)
    );
\ramloop[2].ram.r\: entity work.\pixel_buffer_blk_mem_gen_prim_width__parameterized1\
    port map (
      I1(7) => \n_0_ramloop[2].ram.r\,
      I1(6) => \n_1_ramloop[2].ram.r\,
      I1(5) => \n_2_ramloop[2].ram.r\,
      I1(4) => \n_3_ramloop[2].ram.r\,
      I1(3) => \n_4_ramloop[2].ram.r\,
      I1(2) => \n_5_ramloop[2].ram.r\,
      I1(1) => \n_6_ramloop[2].ram.r\,
      I1(0) => \n_7_ramloop[2].ram.r\,
      I16(0) => \n_8_ramloop[2].ram.r\,
      I2 => \n_2_bindec_a.bindec_inst_a\,
      I3 => \n_2_bindec_b.bindec_inst_b\,
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
\ramloop[3].ram.r\: entity work.\pixel_buffer_blk_mem_gen_prim_width__parameterized2\
    port map (
      DOBDO(7) => \n_0_ramloop[3].ram.r\,
      DOBDO(6) => \n_1_ramloop[3].ram.r\,
      DOBDO(5) => \n_2_ramloop[3].ram.r\,
      DOBDO(4) => \n_3_ramloop[3].ram.r\,
      DOBDO(3) => \n_4_ramloop[3].ram.r\,
      DOBDO(2) => \n_5_ramloop[3].ram.r\,
      DOBDO(1) => \n_6_ramloop[3].ram.r\,
      DOBDO(0) => \n_7_ramloop[3].ram.r\,
      DOPBDOP(0) => \n_8_ramloop[3].ram.r\,
      I1 => \n_3_bindec_a.bindec_inst_a\,
      I2 => \n_3_bindec_b.bindec_inst_b\,
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
\ramloop[4].ram.r\: entity work.\pixel_buffer_blk_mem_gen_prim_width__parameterized3\
    port map (
      I1 => \n_4_bindec_a.bindec_inst_a\,
      I2 => \n_4_bindec_b.bindec_inst_b\,
      I22(0) => \n_8_ramloop[4].ram.r\,
      I7(7) => \n_0_ramloop[4].ram.r\,
      I7(6) => \n_1_ramloop[4].ram.r\,
      I7(5) => \n_2_ramloop[4].ram.r\,
      I7(4) => \n_3_ramloop[4].ram.r\,
      I7(3) => \n_4_ramloop[4].ram.r\,
      I7(2) => \n_5_ramloop[4].ram.r\,
      I7(1) => \n_6_ramloop[4].ram.r\,
      I7(0) => \n_7_ramloop[4].ram.r\,
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
\ramloop[5].ram.r\: entity work.\pixel_buffer_blk_mem_gen_prim_width__parameterized4\
    port map (
      I1 => \n_5_bindec_a.bindec_inst_a\,
      I2 => \n_5_bindec_b.bindec_inst_b\,
      I21(0) => \n_8_ramloop[5].ram.r\,
      I6(7) => \n_0_ramloop[5].ram.r\,
      I6(6) => \n_1_ramloop[5].ram.r\,
      I6(5) => \n_2_ramloop[5].ram.r\,
      I6(4) => \n_3_ramloop[5].ram.r\,
      I6(3) => \n_4_ramloop[5].ram.r\,
      I6(2) => \n_5_ramloop[5].ram.r\,
      I6(1) => \n_6_ramloop[5].ram.r\,
      I6(0) => \n_7_ramloop[5].ram.r\,
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
\ramloop[6].ram.r\: entity work.\pixel_buffer_blk_mem_gen_prim_width__parameterized5\
    port map (
      I1 => \n_6_bindec_a.bindec_inst_a\,
      I2 => \n_6_bindec_b.bindec_inst_b\,
      I20(0) => \n_8_ramloop[6].ram.r\,
      I5(7) => \n_0_ramloop[6].ram.r\,
      I5(6) => \n_1_ramloop[6].ram.r\,
      I5(5) => \n_2_ramloop[6].ram.r\,
      I5(4) => \n_3_ramloop[6].ram.r\,
      I5(3) => \n_4_ramloop[6].ram.r\,
      I5(2) => \n_5_ramloop[6].ram.r\,
      I5(1) => \n_6_ramloop[6].ram.r\,
      I5(0) => \n_7_ramloop[6].ram.r\,
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
\ramloop[7].ram.r\: entity work.\pixel_buffer_blk_mem_gen_prim_width__parameterized6\
    port map (
      I1 => \n_7_bindec_a.bindec_inst_a\,
      I19(0) => \n_8_ramloop[7].ram.r\,
      I2 => \n_7_bindec_b.bindec_inst_b\,
      I4(7) => \n_0_ramloop[7].ram.r\,
      I4(6) => \n_1_ramloop[7].ram.r\,
      I4(5) => \n_2_ramloop[7].ram.r\,
      I4(4) => \n_3_ramloop[7].ram.r\,
      I4(3) => \n_4_ramloop[7].ram.r\,
      I4(2) => \n_5_ramloop[7].ram.r\,
      I4(1) => \n_6_ramloop[7].ram.r\,
      I4(0) => \n_7_ramloop[7].ram.r\,
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
\ramloop[8].ram.r\: entity work.\pixel_buffer_blk_mem_gen_prim_width__parameterized7\
    port map (
      I1 => \n_8_bindec_a.bindec_inst_a\,
      I11(7) => \n_0_ramloop[8].ram.r\,
      I11(6) => \n_1_ramloop[8].ram.r\,
      I11(5) => \n_2_ramloop[8].ram.r\,
      I11(4) => \n_3_ramloop[8].ram.r\,
      I11(3) => \n_4_ramloop[8].ram.r\,
      I11(2) => \n_5_ramloop[8].ram.r\,
      I11(1) => \n_6_ramloop[8].ram.r\,
      I11(0) => \n_7_ramloop[8].ram.r\,
      I2 => \n_8_bindec_b.bindec_inst_b\,
      I26(0) => \n_8_ramloop[8].ram.r\,
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
\ramloop[9].ram.r\: entity work.\pixel_buffer_blk_mem_gen_prim_width__parameterized8\
    port map (
      I1 => \n_9_bindec_a.bindec_inst_a\,
      I10(7) => \n_0_ramloop[9].ram.r\,
      I10(6) => \n_1_ramloop[9].ram.r\,
      I10(5) => \n_2_ramloop[9].ram.r\,
      I10(4) => \n_3_ramloop[9].ram.r\,
      I10(3) => \n_4_ramloop[9].ram.r\,
      I10(2) => \n_5_ramloop[9].ram.r\,
      I10(1) => \n_6_ramloop[9].ram.r\,
      I10(0) => \n_7_ramloop[9].ram.r\,
      I2 => \n_9_bindec_b.bindec_inst_b\,
      I25(0) => \n_8_ramloop[9].ram.r\,
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      clkb => clkb,
      dina(8 downto 0) => dina(8 downto 0),
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pixel_buffer_blk_mem_gen_top is
  port (
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pixel_buffer_blk_mem_gen_top : entity is "blk_mem_gen_top";
end pixel_buffer_blk_mem_gen_top;

architecture STRUCTURE of pixel_buffer_blk_mem_gen_top is
begin
\valid.cstr\: entity work.pixel_buffer_blk_mem_gen_generic_cstr
    port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(15 downto 0) => dina(15 downto 0),
      doutb(15 downto 0) => doutb(15 downto 0),
      ena => ena,
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pixel_buffer_blk_mem_gen_v8_2_synth is
  port (
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    ena : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of pixel_buffer_blk_mem_gen_v8_2_synth : entity is "blk_mem_gen_v8_2_synth";
end pixel_buffer_blk_mem_gen_v8_2_synth;

architecture STRUCTURE of pixel_buffer_blk_mem_gen_v8_2_synth is
begin
\gnativebmg.native_blk_mem_gen\: entity work.pixel_buffer_blk_mem_gen_top
    port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(15 downto 0) => dina(15 downto 0),
      doutb(15 downto 0) => doutb(15 downto 0),
      ena => ena,
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sleep : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is "blk_mem_gen_v8_2";
  attribute C_FAMILY : string;
  attribute C_FAMILY of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is "artix7";
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is "artix7";
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is "./";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 1;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is "NONE";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 4;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 9;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 1;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 1;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is "no_coe_file_loaded";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is "pixel_buffer.mem";
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 1;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is "1111";
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is "CE";
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is "0";
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 1;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 1;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is "READ_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 16;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 16;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 65536;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 65536;
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 16;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is "CE";
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is "0";
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 1;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 1;
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is "READ_FIRST";
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 16;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 16;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 65536;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 65536;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 16;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 1;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is "ALL";
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 1;
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is 0;
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is "30";
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is "0";
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is "Estimated Power for IP     :     39.351448 mW";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ : entity is "yes";
end \pixel_buffer_blk_mem_gen_v8_2__parameterized0\;

architecture STRUCTURE of \pixel_buffer_blk_mem_gen_v8_2__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  douta(15) <= \<const0>\;
  douta(14) <= \<const0>\;
  douta(13) <= \<const0>\;
  douta(12) <= \<const0>\;
  douta(11) <= \<const0>\;
  douta(10) <= \<const0>\;
  douta(9) <= \<const0>\;
  douta(8) <= \<const0>\;
  douta(7) <= \<const0>\;
  douta(6) <= \<const0>\;
  douta(5) <= \<const0>\;
  douta(4) <= \<const0>\;
  douta(3) <= \<const0>\;
  douta(2) <= \<const0>\;
  douta(1) <= \<const0>\;
  douta(0) <= \<const0>\;
  rdaddrecc(15) <= \<const0>\;
  rdaddrecc(14) <= \<const0>\;
  rdaddrecc(13) <= \<const0>\;
  rdaddrecc(12) <= \<const0>\;
  rdaddrecc(11) <= \<const0>\;
  rdaddrecc(10) <= \<const0>\;
  rdaddrecc(9) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(15) <= \<const0>\;
  s_axi_rdaddrecc(14) <= \<const0>\;
  s_axi_rdaddrecc(13) <= \<const0>\;
  s_axi_rdaddrecc(12) <= \<const0>\;
  s_axi_rdaddrecc(11) <= \<const0>\;
  s_axi_rdaddrecc(10) <= \<const0>\;
  s_axi_rdaddrecc(9) <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.pixel_buffer_blk_mem_gen_v8_2_synth
    port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dina(15 downto 0) => dina(15 downto 0),
      doutb(15 downto 0) => doutb(15 downto 0),
      ena => ena,
      enb => enb,
      wea(0) => wea(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pixel_buffer is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pixel_buffer : entity is true;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of pixel_buffer : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of pixel_buffer : entity is "blk_mem_gen_v8_2,Vivado 2014.2";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of pixel_buffer : entity is "pixel_buffer,blk_mem_gen_v8_2,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of pixel_buffer : entity is "pixel_buffer,blk_mem_gen_v8_2,{x_ipProduct=Vivado 2014.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=blk_mem_gen,x_ipVersion=8.2,x_ipCoreRevision=1,x_ipLanguage=VERILOG,C_FAMILY=artix7,C_XDEVICEFAMILY=artix7,C_ELABORATION_DIR=./,C_INTERFACE_TYPE=0,C_AXI_TYPE=1,C_AXI_SLAVE_TYPE=0,C_USE_BRAM_BLOCK=0,C_ENABLE_32BIT_ADDRESS=0,C_CTRL_ECC_ALGO=NONE,C_HAS_AXI_ID=0,C_AXI_ID_WIDTH=4,C_MEM_TYPE=1,C_BYTE_SIZE=9,C_ALGORITHM=1,C_PRIM_TYPE=1,C_LOAD_INIT_FILE=0,C_INIT_FILE_NAME=no_coe_file_loaded,C_INIT_FILE=pixel_buffer.mem,C_USE_DEFAULT_DATA=1,C_DEFAULT_DATA=1111,C_HAS_RSTA=0,C_RST_PRIORITY_A=CE,C_RSTRAM_A=0,C_INITA_VAL=0,C_HAS_ENA=1,C_HAS_REGCEA=0,C_USE_BYTE_WEA=0,C_WEA_WIDTH=1,C_WRITE_MODE_A=READ_FIRST,C_WRITE_WIDTH_A=16,C_READ_WIDTH_A=16,C_WRITE_DEPTH_A=65536,C_READ_DEPTH_A=65536,C_ADDRA_WIDTH=16,C_HAS_RSTB=0,C_RST_PRIORITY_B=CE,C_RSTRAM_B=0,C_INITB_VAL=0,C_HAS_ENB=1,C_HAS_REGCEB=0,C_USE_BYTE_WEB=0,C_WEB_WIDTH=1,C_WRITE_MODE_B=READ_FIRST,C_WRITE_WIDTH_B=16,C_READ_WIDTH_B=16,C_WRITE_DEPTH_B=65536,C_READ_DEPTH_B=65536,C_ADDRB_WIDTH=16,C_HAS_MEM_OUTPUT_REGS_A=0,C_HAS_MEM_OUTPUT_REGS_B=1,C_HAS_MUX_OUTPUT_REGS_A=0,C_HAS_MUX_OUTPUT_REGS_B=0,C_MUX_PIPELINE_STAGES=0,C_HAS_SOFTECC_INPUT_REGS_A=0,C_HAS_SOFTECC_OUTPUT_REGS_B=0,C_USE_SOFTECC=0,C_USE_ECC=0,C_EN_ECC_PIPE=0,C_HAS_INJECTERR=0,C_SIM_COLLISION_CHECK=ALL,C_COMMON_CLK=1,C_DISABLE_WARN_BHV_COLL=0,C_EN_SLEEP_PIN=0,C_DISABLE_WARN_BHV_RANGE=0,C_COUNT_36K_BRAM=30,C_COUNT_18K_BRAM=0,C_EST_POWER_SUMMARY=Estimated Power for IP     _     39.351448 mW}";
end pixel_buffer;

architecture STRUCTURE of pixel_buffer is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_douta_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 16;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 16;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 9;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 1;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "30";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "1111";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     39.351448 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 1;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 1;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "pixel_buffer.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 1;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 65536;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 65536;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 16;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 16;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 65536;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 65536;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "READ_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "READ_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 16;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 16;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "artix7";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of U0 : label is std.standard.true;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.\pixel_buffer_blk_mem_gen_v8_2__parameterized0\
    port map (
      addra(15 downto 0) => addra(15 downto 0),
      addrb(15 downto 0) => addrb(15 downto 0),
      clka => clka,
      clkb => clkb,
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      dina(15 downto 0) => dina(15 downto 0),
      dinb(15) => '0',
      dinb(14) => '0',
      dinb(13) => '0',
      dinb(12) => '0',
      dinb(11) => '0',
      dinb(10) => '0',
      dinb(9) => '0',
      dinb(8) => '0',
      dinb(7) => '0',
      dinb(6) => '0',
      dinb(5) => '0',
      dinb(4) => '0',
      dinb(3) => '0',
      dinb(2) => '0',
      dinb(1) => '0',
      dinb(0) => '0',
      douta(15 downto 0) => NLW_U0_douta_UNCONNECTED(15 downto 0),
      doutb(15 downto 0) => doutb(15 downto 0),
      eccpipece => '0',
      ena => ena,
      enb => enb,
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(15 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(15 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rstb => '0',
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31) => '0',
      s_axi_araddr(30) => '0',
      s_axi_araddr(29) => '0',
      s_axi_araddr(28) => '0',
      s_axi_araddr(27) => '0',
      s_axi_araddr(26) => '0',
      s_axi_araddr(25) => '0',
      s_axi_araddr(24) => '0',
      s_axi_araddr(23) => '0',
      s_axi_araddr(22) => '0',
      s_axi_araddr(21) => '0',
      s_axi_araddr(20) => '0',
      s_axi_araddr(19) => '0',
      s_axi_araddr(18) => '0',
      s_axi_araddr(17) => '0',
      s_axi_araddr(16) => '0',
      s_axi_araddr(15) => '0',
      s_axi_araddr(14) => '0',
      s_axi_araddr(13) => '0',
      s_axi_araddr(12) => '0',
      s_axi_araddr(11) => '0',
      s_axi_araddr(10) => '0',
      s_axi_araddr(9) => '0',
      s_axi_araddr(8) => '0',
      s_axi_araddr(7) => '0',
      s_axi_araddr(6) => '0',
      s_axi_araddr(5) => '0',
      s_axi_araddr(4) => '0',
      s_axi_araddr(3) => '0',
      s_axi_araddr(2) => '0',
      s_axi_araddr(1) => '0',
      s_axi_araddr(0) => '0',
      s_axi_arburst(1) => '0',
      s_axi_arburst(0) => '0',
      s_axi_arid(3) => '0',
      s_axi_arid(2) => '0',
      s_axi_arid(1) => '0',
      s_axi_arid(0) => '0',
      s_axi_arlen(7) => '0',
      s_axi_arlen(6) => '0',
      s_axi_arlen(5) => '0',
      s_axi_arlen(4) => '0',
      s_axi_arlen(3) => '0',
      s_axi_arlen(2) => '0',
      s_axi_arlen(1) => '0',
      s_axi_arlen(0) => '0',
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2) => '0',
      s_axi_arsize(1) => '0',
      s_axi_arsize(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31) => '0',
      s_axi_awaddr(30) => '0',
      s_axi_awaddr(29) => '0',
      s_axi_awaddr(28) => '0',
      s_axi_awaddr(27) => '0',
      s_axi_awaddr(26) => '0',
      s_axi_awaddr(25) => '0',
      s_axi_awaddr(24) => '0',
      s_axi_awaddr(23) => '0',
      s_axi_awaddr(22) => '0',
      s_axi_awaddr(21) => '0',
      s_axi_awaddr(20) => '0',
      s_axi_awaddr(19) => '0',
      s_axi_awaddr(18) => '0',
      s_axi_awaddr(17) => '0',
      s_axi_awaddr(16) => '0',
      s_axi_awaddr(15) => '0',
      s_axi_awaddr(14) => '0',
      s_axi_awaddr(13) => '0',
      s_axi_awaddr(12) => '0',
      s_axi_awaddr(11) => '0',
      s_axi_awaddr(10) => '0',
      s_axi_awaddr(9) => '0',
      s_axi_awaddr(8) => '0',
      s_axi_awaddr(7) => '0',
      s_axi_awaddr(6) => '0',
      s_axi_awaddr(5) => '0',
      s_axi_awaddr(4) => '0',
      s_axi_awaddr(3) => '0',
      s_axi_awaddr(2) => '0',
      s_axi_awaddr(1) => '0',
      s_axi_awaddr(0) => '0',
      s_axi_awburst(1) => '0',
      s_axi_awburst(0) => '0',
      s_axi_awid(3) => '0',
      s_axi_awid(2) => '0',
      s_axi_awid(1) => '0',
      s_axi_awid(0) => '0',
      s_axi_awlen(7) => '0',
      s_axi_awlen(6) => '0',
      s_axi_awlen(5) => '0',
      s_axi_awlen(4) => '0',
      s_axi_awlen(3) => '0',
      s_axi_awlen(2) => '0',
      s_axi_awlen(1) => '0',
      s_axi_awlen(0) => '0',
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2) => '0',
      s_axi_awsize(1) => '0',
      s_axi_awsize(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(15 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(15 downto 0),
      s_axi_rdata(15 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(15 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(15) => '0',
      s_axi_wdata(14) => '0',
      s_axi_wdata(13) => '0',
      s_axi_wdata(12) => '0',
      s_axi_wdata(11) => '0',
      s_axi_wdata(10) => '0',
      s_axi_wdata(9) => '0',
      s_axi_wdata(8) => '0',
      s_axi_wdata(7) => '0',
      s_axi_wdata(6) => '0',
      s_axi_wdata(5) => '0',
      s_axi_wdata(4) => '0',
      s_axi_wdata(3) => '0',
      s_axi_wdata(2) => '0',
      s_axi_wdata(1) => '0',
      s_axi_wdata(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => '0',
      wea(0) => wea(0),
      web(0) => '0'
    );
end STRUCTURE;
