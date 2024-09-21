/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03
// Date      : Tue Mar 26 23:23:42 2024
/////////////////////////////////////////////////////////////


module STI_DAC ( clk, reset, load, pi_data, pi_length, pi_fill, pi_msb, pi_low, 
        pi_end, so_data, so_valid, oem_finish, oem_dataout, oem_addr, odd1_wr, 
        odd2_wr, odd3_wr, odd4_wr, even1_wr, even2_wr, even3_wr, even4_wr );
  input [15:0] pi_data;
  input [1:0] pi_length;
  output [7:0] oem_dataout;
  output [4:0] oem_addr;
  input clk, reset, load, pi_fill, pi_msb, pi_low, pi_end;
  output so_data, so_valid, oem_finish, odd1_wr, odd2_wr, odd3_wr, odd4_wr,
         even1_wr, even2_wr, even3_wr, even4_wr;
  wire   n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, address_0, start_store, N299, n159, n160, n161, n162,
         n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173,
         n174, n175, n176, n177, n178, n179, n180, n181, n182, n183, n184,
         n185, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n204, n205, n206,
         n207, n208, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n219, n228, n230, n232, n234, n236, n238, n240, n242, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391, n392, n393, n394, n395, n396, n397, n398, n399,
         n400, n401, n402, n403, n404, n405, n406, n407, n408, n409, n410,
         n411, n412, n413, n414, n415, n421, n422, n423, n424;
  wire   [2:0] cur_state;
  wire   [7:6] address;
  wire   [4:0] counter;
  wire   [2:0] next_state;
  wire   [31:0] tmp_data;
  assign so_valid = N299;

  DFFRX1 start_store_reg ( .D(n199), .CK(clk), .RN(n422), .Q(start_store) );
  DFFRX1 \address_reg[0]  ( .D(n207), .CK(clk), .RN(n422), .Q(address_0) );
  DFFRX1 \address_reg[6]  ( .D(n202), .CK(clk), .RN(n422), .Q(address[6]), 
        .QN(n403) );
  DFFRX1 \address_reg[7]  ( .D(n201), .CK(clk), .RN(n424), .Q(address[7]) );
  DFFRX1 \counter_reg[3]  ( .D(n210), .CK(clk), .RN(n424), .Q(counter[3]), 
        .QN(n398) );
  DFFRX1 \counter_reg[4]  ( .D(n209), .CK(clk), .RN(n424), .QN(n406) );
  DFFRX1 \tmp_data_reg[30]  ( .D(n159), .CK(clk), .RN(n424), .Q(tmp_data[30])
         );
  DFFRX1 \tmp_data_reg[31]  ( .D(n198), .CK(clk), .RN(n424), .Q(tmp_data[31])
         );
  DFFRX1 \tmp_data_reg[29]  ( .D(n160), .CK(clk), .RN(n424), .QN(n415) );
  DFFRX1 \tmp_data_reg[28]  ( .D(n161), .CK(clk), .RN(n424), .Q(tmp_data[28])
         );
  DFFRX1 \tmp_data_reg[27]  ( .D(n162), .CK(clk), .RN(n423), .Q(tmp_data[27])
         );
  DFFRX1 \tmp_data_reg[26]  ( .D(n163), .CK(clk), .RN(n423), .QN(n414) );
  DFFRX1 \tmp_data_reg[25]  ( .D(n164), .CK(clk), .RN(n423), .Q(tmp_data[25])
         );
  DFFRX1 \tmp_data_reg[24]  ( .D(n165), .CK(clk), .RN(n423), .Q(tmp_data[24])
         );
  DFFRX1 \tmp_data_reg[23]  ( .D(n166), .CK(clk), .RN(n423), .QN(n408) );
  DFFRX1 \tmp_data_reg[22]  ( .D(n167), .CK(clk), .RN(n423), .Q(tmp_data[22])
         );
  DFFRX1 \tmp_data_reg[21]  ( .D(n168), .CK(clk), .RN(n423), .Q(tmp_data[21])
         );
  DFFRX1 \tmp_data_reg[20]  ( .D(n169), .CK(clk), .RN(n423), .Q(tmp_data[20])
         );
  DFFRX1 \tmp_data_reg[19]  ( .D(n170), .CK(clk), .RN(n423), .Q(tmp_data[19])
         );
  DFFRX1 \tmp_data_reg[18]  ( .D(n171), .CK(clk), .RN(n423), .Q(tmp_data[18])
         );
  DFFRX1 \tmp_data_reg[17]  ( .D(n172), .CK(clk), .RN(n423), .Q(tmp_data[17])
         );
  DFFRX1 \tmp_data_reg[16]  ( .D(n173), .CK(clk), .RN(n423), .Q(tmp_data[16])
         );
  DFFRX1 \tmp_data_reg[15]  ( .D(n174), .CK(clk), .RN(n422), .Q(tmp_data[15])
         );
  DFFRX1 \tmp_data_reg[14]  ( .D(n175), .CK(clk), .RN(n422), .Q(tmp_data[14])
         );
  DFFRX1 \tmp_data_reg[13]  ( .D(n176), .CK(clk), .RN(n422), .Q(tmp_data[13])
         );
  DFFRX1 \tmp_data_reg[12]  ( .D(n177), .CK(clk), .RN(n422), .Q(tmp_data[12])
         );
  DFFRX1 \tmp_data_reg[11]  ( .D(n178), .CK(clk), .RN(n422), .Q(tmp_data[11])
         );
  DFFRX1 \tmp_data_reg[10]  ( .D(n179), .CK(clk), .RN(n422), .Q(tmp_data[10])
         );
  DFFRX1 \tmp_data_reg[9]  ( .D(n180), .CK(clk), .RN(n422), .Q(tmp_data[9]) );
  DFFRX1 \tmp_data_reg[8]  ( .D(n189), .CK(clk), .RN(n422), .Q(tmp_data[8]), 
        .QN(n399) );
  DFFRX1 \tmp_data_reg[7]  ( .D(n190), .CK(clk), .RN(n422), .Q(tmp_data[7]), 
        .QN(n407) );
  DFFRX1 \tmp_data_reg[6]  ( .D(n191), .CK(clk), .RN(n422), .Q(tmp_data[6]) );
  DFFRX1 \tmp_data_reg[5]  ( .D(n192), .CK(clk), .RN(n422), .Q(tmp_data[5]) );
  DFFRX1 \tmp_data_reg[4]  ( .D(n193), .CK(clk), .RN(n422), .Q(tmp_data[4]) );
  DFFRX1 \tmp_data_reg[3]  ( .D(n194), .CK(clk), .RN(n421), .Q(tmp_data[3]) );
  DFFRX1 \tmp_data_reg[2]  ( .D(n195), .CK(clk), .RN(n421), .Q(tmp_data[2]) );
  DFFRX1 \tmp_data_reg[1]  ( .D(n196), .CK(clk), .RN(n421), .QN(n400) );
  DFFRX1 \tmp_data_reg[0]  ( .D(n197), .CK(clk), .RN(n421), .Q(tmp_data[0]), 
        .QN(n412) );
  DFFSX1 reverse_reg ( .D(n200), .CK(clk), .SN(n424), .QN(n402) );
  DFFRX1 \counter_reg[1]  ( .D(n213), .CK(clk), .RN(n424), .Q(counter[1]), 
        .QN(n413) );
  DFFRX1 \counter_reg[0]  ( .D(n212), .CK(clk), .RN(n424), .Q(counter[0]), 
        .QN(n411) );
  DFFRX1 \counter_reg[2]  ( .D(n211), .CK(clk), .RN(n424), .Q(counter[2]), 
        .QN(n410) );
  DFFRX1 \cur_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(n424), .Q(
        cur_state[2]), .QN(n409) );
  DFFRX1 \cur_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(n422), .Q(
        cur_state[0]), .QN(n401) );
  DFFRX1 \oem_dataout_reg[7]  ( .D(n181), .CK(clk), .RN(n421), .Q(n425), .QN(
        n242) );
  DFFRX1 \address_reg[4]  ( .D(n204), .CK(clk), .RN(n424), .Q(n431), .QN(n240)
         );
  DFFRX1 \address_reg[2]  ( .D(n206), .CK(clk), .RN(n424), .Q(n433), .QN(n238)
         );
  DFFRX1 \address_reg[5]  ( .D(n203), .CK(clk), .RN(n424), .Q(n430), .QN(n236)
         );
  DFFRX1 \oem_dataout_reg[6]  ( .D(n182), .CK(clk), .RN(n421), .Q(n426), .QN(
        n234) );
  DFFRX1 \oem_dataout_reg[0]  ( .D(n188), .CK(clk), .RN(n421), .Q(n429), .QN(
        n232) );
  DFFRX1 \oem_dataout_reg[4]  ( .D(n184), .CK(clk), .RN(n421), .Q(n427), .QN(
        n230) );
  DFFRX1 \oem_dataout_reg[2]  ( .D(n186), .CK(clk), .RN(n421), .Q(n428), .QN(
        n228) );
  DFFRX1 \address_reg[3]  ( .D(n205), .CK(clk), .RN(n424), .Q(n432), .QN(n404)
         );
  DFFRX1 \oem_dataout_reg[1]  ( .D(n187), .CK(clk), .RN(n421), .QN(n216) );
  DFFRX1 \oem_dataout_reg[3]  ( .D(n185), .CK(clk), .RN(n421), .QN(n215) );
  DFFRX1 \oem_dataout_reg[5]  ( .D(n183), .CK(clk), .RN(n421), .QN(n214) );
  DFFRX1 \address_reg[1]  ( .D(n208), .CK(clk), .RN(n422), .QN(n405) );
  DFFRX2 \cur_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n424), .Q(
        cur_state[1]), .QN(n397) );
  INVXL U222 ( .A(pi_fill), .Y(n303) );
  INVX2 U223 ( .A(n368), .Y(n351) );
  INVX1 U224 ( .A(n390), .Y(n363) );
  INVX1 U225 ( .A(n385), .Y(n392) );
  INVX1 U226 ( .A(n364), .Y(n395) );
  INVX1 U227 ( .A(n265), .Y(n279) );
  BUFX2 U228 ( .A(n314), .Y(n368) );
  NAND3XL U229 ( .A(n313), .B(n374), .C(n390), .Y(n314) );
  BUFX2 U230 ( .A(n255), .Y(n364) );
  BUFX2 U231 ( .A(n257), .Y(n390) );
  NAND2XL U232 ( .A(n269), .B(n256), .Y(n257) );
  NAND3XL U233 ( .A(n313), .B(pi_length[1]), .C(n397), .Y(n256) );
  CLKBUFX3 U234 ( .A(n392), .Y(n362) );
  CLKBUFX3 U235 ( .A(n363), .Y(n352) );
  BUFX2 U236 ( .A(n284), .Y(n339) );
  NOR2XL U237 ( .A(n283), .B(n303), .Y(n284) );
  INVXL U238 ( .A(pi_length[0]), .Y(n374) );
  NAND2XL U239 ( .A(n387), .B(tmp_data[3]), .Y(n281) );
  NAND2XL U240 ( .A(n387), .B(tmp_data[5]), .Y(n297) );
  AOI22XL U241 ( .A0(n352), .A1(tmp_data[4]), .B0(n392), .B1(tmp_data[3]), .Y(
        n298) );
  OAI211XL U242 ( .A0(n368), .A1(n367), .B0(n366), .C0(n365), .Y(n178) );
  AOI22XL U243 ( .A0(n387), .A1(tmp_data[12]), .B0(pi_data[11]), .B1(n364), 
        .Y(n365) );
  AOI22XL U244 ( .A0(n363), .A1(tmp_data[11]), .B0(n362), .B1(tmp_data[10]), 
        .Y(n366) );
  OAI211XL U245 ( .A0(n368), .A1(n350), .B0(n333), .C0(n332), .Y(n176) );
  AOI22XL U246 ( .A0(n387), .A1(tmp_data[14]), .B0(pi_data[13]), .B1(n364), 
        .Y(n332) );
  AOI22XL U247 ( .A0(n352), .A1(tmp_data[13]), .B0(n362), .B1(tmp_data[12]), 
        .Y(n333) );
  OAI211XL U248 ( .A0(n368), .A1(n394), .B0(n335), .C0(n334), .Y(n174) );
  AOI22XL U249 ( .A0(n387), .A1(tmp_data[16]), .B0(pi_data[15]), .B1(n364), 
        .Y(n334) );
  AOI22XL U250 ( .A0(tmp_data[15]), .A1(n352), .B0(n362), .B1(tmp_data[14]), 
        .Y(n335) );
  AOI22XL U251 ( .A0(n387), .A1(tmp_data[18]), .B0(n362), .B1(tmp_data[16]), 
        .Y(n343) );
  AOI22XL U252 ( .A0(n387), .A1(tmp_data[21]), .B0(n362), .B1(tmp_data[19]), 
        .Y(n347) );
  OAI211XL U253 ( .A0(n408), .A1(n390), .B0(n341), .C0(n340), .Y(n166) );
  AOI22XL U254 ( .A0(n387), .A1(tmp_data[24]), .B0(n362), .B1(tmp_data[22]), 
        .Y(n341) );
  OAI211XL U255 ( .A0(n415), .A1(n390), .B0(n320), .C0(n319), .Y(n160) );
  NAND2XL U256 ( .A(n387), .B(tmp_data[30]), .Y(n319) );
  AOI22XL U257 ( .A0(n362), .A1(tmp_data[28]), .B0(pi_data[13]), .B1(n339), 
        .Y(n320) );
  INVXL U258 ( .A(n326), .Y(n198) );
  NOR2BX1 U259 ( .AN(n264), .B(address[7]), .Y(n267) );
  INVXL U260 ( .A(n277), .Y(n269) );
  NAND4XL U261 ( .A(n313), .B(pi_length[1]), .C(pi_length[0]), .D(n397), .Y(
        n283) );
  NAND2XL U262 ( .A(n267), .B(n279), .Y(n280) );
  NOR2XL U263 ( .A(pi_length[0]), .B(n303), .Y(n300) );
  NOR2XL U264 ( .A(pi_length[0]), .B(pi_low), .Y(n299) );
  INVXL U265 ( .A(n306), .Y(n307) );
  NOR2XL U266 ( .A(n244), .B(n253), .Y(n247) );
  INVXL U267 ( .A(pi_end), .Y(n272) );
  INVXL U268 ( .A(pi_data[7]), .Y(n394) );
  INVXL U269 ( .A(pi_data[0]), .Y(n329) );
  INVXL U270 ( .A(pi_data[1]), .Y(n389) );
  INVXL U271 ( .A(pi_data[2]), .Y(n356) );
  INVXL U272 ( .A(pi_data[3]), .Y(n367) );
  INVXL U273 ( .A(pi_data[4]), .Y(n361) );
  INVXL U274 ( .A(pi_data[5]), .Y(n350) );
  INVXL U275 ( .A(pi_data[6]), .Y(n338) );
  INVXL U276 ( .A(pi_length[1]), .Y(n379) );
  INVXL U277 ( .A(n244), .Y(n382) );
  NOR2XL U278 ( .A(n279), .B(n278), .Y(n262) );
  AOI21XL U279 ( .A0(n405), .A1(n381), .B0(n263), .Y(n208) );
  OA21XL U280 ( .A0(n247), .A1(n430), .B0(n246), .Y(n203) );
  OAI211XL U281 ( .A0(n273), .A1(n272), .B0(n380), .C0(n271), .Y(next_state[0]) );
  OAI211XL U282 ( .A0(n371), .A1(n410), .B0(n380), .C0(n270), .Y(n211) );
  NAND2XL U283 ( .A(N299), .B(n372), .Y(n270) );
  OAI211XL U284 ( .A0(n277), .A1(n411), .B0(n276), .C0(n380), .Y(n212) );
  AOI21XL U285 ( .A0(n387), .A1(tmp_data[2]), .B0(n386), .Y(n388) );
  BUFX2 U286 ( .A(n251), .Y(n421) );
  NAND2XL U287 ( .A(n387), .B(tmp_data[4]), .Y(n293) );
  AOI22XL U288 ( .A0(n352), .A1(tmp_data[3]), .B0(n392), .B1(tmp_data[2]), .Y(
        n294) );
  NAND2XL U289 ( .A(n387), .B(tmp_data[6]), .Y(n295) );
  AOI22XL U290 ( .A0(n352), .A1(tmp_data[5]), .B0(n392), .B1(tmp_data[4]), .Y(
        n296) );
  OAI211XL U291 ( .A0(n407), .A1(n323), .B0(n358), .C0(n357), .Y(n191) );
  NAND2XL U292 ( .A(pi_data[6]), .B(n364), .Y(n357) );
  AOI22XL U293 ( .A0(n363), .A1(tmp_data[6]), .B0(n362), .B1(tmp_data[5]), .Y(
        n358) );
  OAI211XL U294 ( .A0(n368), .A1(n329), .B0(n316), .C0(n315), .Y(n189) );
  AOI22XL U295 ( .A0(n387), .A1(tmp_data[9]), .B0(pi_data[8]), .B1(n364), .Y(
        n315) );
  OAI211XL U296 ( .A0(n368), .A1(n389), .B0(n331), .C0(n330), .Y(n180) );
  AOI22XL U297 ( .A0(n387), .A1(tmp_data[10]), .B0(pi_data[9]), .B1(n364), .Y(
        n330) );
  AOI22XL U298 ( .A0(n363), .A1(tmp_data[9]), .B0(tmp_data[8]), .B1(n362), .Y(
        n331) );
  OAI211XL U299 ( .A0(n368), .A1(n356), .B0(n322), .C0(n321), .Y(n179) );
  AOI22XL U300 ( .A0(n387), .A1(tmp_data[11]), .B0(pi_data[10]), .B1(n364), 
        .Y(n321) );
  AOI22XL U301 ( .A0(n352), .A1(tmp_data[10]), .B0(tmp_data[9]), .B1(n362), 
        .Y(n322) );
  AOI22XL U302 ( .A0(n387), .A1(tmp_data[13]), .B0(pi_data[12]), .B1(n364), 
        .Y(n359) );
  AOI22XL U303 ( .A0(n363), .A1(tmp_data[12]), .B0(n362), .B1(tmp_data[11]), 
        .Y(n360) );
  OAI211XL U304 ( .A0(n368), .A1(n338), .B0(n337), .C0(n336), .Y(n175) );
  AOI22XL U305 ( .A0(n387), .A1(tmp_data[15]), .B0(pi_data[14]), .B1(n364), 
        .Y(n336) );
  AOI22XL U306 ( .A0(n387), .A1(tmp_data[17]), .B0(tmp_data[15]), .B1(n362), 
        .Y(n328) );
  AOI22XL U307 ( .A0(n387), .A1(tmp_data[19]), .B0(n362), .B1(tmp_data[17]), 
        .Y(n354) );
  AOI22XL U308 ( .A0(n352), .A1(tmp_data[18]), .B0(n351), .B1(pi_data[10]), 
        .Y(n353) );
  AOI22XL U309 ( .A0(n387), .A1(tmp_data[22]), .B0(n362), .B1(tmp_data[20]), 
        .Y(n349) );
  AOI22XL U310 ( .A0(n352), .A1(tmp_data[21]), .B0(n351), .B1(pi_data[13]), 
        .Y(n348) );
  OAI211XL U311 ( .A0(n385), .A1(n408), .B0(n290), .C0(n289), .Y(n165) );
  NAND2XL U312 ( .A(n387), .B(tmp_data[25]), .Y(n289) );
  OAI211XL U313 ( .A0(n414), .A1(n323), .B0(n312), .C0(n311), .Y(n164) );
  NAND2XL U314 ( .A(n362), .B(tmp_data[24]), .Y(n311) );
  AOI22XL U315 ( .A0(n352), .A1(tmp_data[25]), .B0(pi_data[9]), .B1(n339), .Y(
        n312) );
  OAI211XL U316 ( .A0(n414), .A1(n390), .B0(n318), .C0(n317), .Y(n163) );
  NAND2XL U317 ( .A(n387), .B(tmp_data[27]), .Y(n317) );
  AOI22XL U318 ( .A0(n362), .A1(tmp_data[25]), .B0(pi_data[10]), .B1(n339), 
        .Y(n318) );
  OAI211XL U319 ( .A0(n414), .A1(n385), .B0(n288), .C0(n287), .Y(n162) );
  NAND2XL U320 ( .A(n387), .B(tmp_data[28]), .Y(n287) );
  AOI22XL U321 ( .A0(n352), .A1(tmp_data[27]), .B0(pi_data[11]), .B1(n339), 
        .Y(n288) );
  OAI211XL U322 ( .A0(n415), .A1(n323), .B0(n292), .C0(n291), .Y(n161) );
  NAND2XL U323 ( .A(n392), .B(tmp_data[27]), .Y(n291) );
  AOI22XL U324 ( .A0(n352), .A1(tmp_data[28]), .B0(pi_data[12]), .B1(n339), 
        .Y(n292) );
  OAI211XL U325 ( .A0(n415), .A1(n385), .B0(n286), .C0(n285), .Y(n159) );
  NAND2XL U326 ( .A(n387), .B(tmp_data[31]), .Y(n285) );
  AOI32XL U327 ( .A0(N299), .A1(n398), .A2(n372), .B0(counter[3]), .B1(n375), 
        .Y(n373) );
  OR2X2 U328 ( .A(pi_msb), .B(n377), .Y(n323) );
  OAI2BB2X1 U329 ( .B0(n402), .B1(address_0), .A0N(n402), .A1N(address_0), .Y(
        n265) );
  NOR2X2 U330 ( .A(N299), .B(n248), .Y(n396) );
  INVXL U331 ( .A(n435), .Y(n217) );
  INVX12 U332 ( .A(n217), .Y(odd3_wr) );
  NOR2XL U333 ( .A(n279), .B(n274), .Y(n435) );
  INVXL U334 ( .A(n436), .Y(n219) );
  INVX12 U335 ( .A(n219), .Y(even2_wr) );
  NOR2XL U336 ( .A(n403), .B(n280), .Y(n436) );
  INVX12 U337 ( .A(n405), .Y(oem_addr[0]) );
  INVX16 U338 ( .A(n214), .Y(oem_dataout[5]) );
  INVX16 U339 ( .A(n215), .Y(oem_dataout[3]) );
  INVX16 U340 ( .A(n216), .Y(oem_dataout[1]) );
  OAI211XL U341 ( .A0(n395), .A1(n361), .B0(n298), .C0(n297), .Y(n193) );
  OAI211XL U342 ( .A0(n395), .A1(n350), .B0(n296), .C0(n295), .Y(n192) );
  OAI211XL U343 ( .A0(n395), .A1(n367), .B0(n294), .C0(n293), .Y(n194) );
  OAI211XL U344 ( .A0(n356), .A1(n355), .B0(n354), .C0(n353), .Y(n171) );
  OAI211XL U345 ( .A0(n350), .A1(n355), .B0(n349), .C0(n348), .Y(n168) );
  OAI211XL U346 ( .A0(n361), .A1(n355), .B0(n347), .C0(n346), .Y(n169) );
  OAI211XL U347 ( .A0(n367), .A1(n355), .B0(n345), .C0(n344), .Y(n170) );
  OAI211XL U348 ( .A0(n389), .A1(n355), .B0(n343), .C0(n342), .Y(n172) );
  OAI211XL U349 ( .A0(n329), .A1(n355), .B0(n328), .C0(n327), .Y(n173) );
  OAI211XL U350 ( .A0(n338), .A1(n355), .B0(n325), .C0(n324), .Y(n167) );
  AOI22XL U351 ( .A0(pi_data[8]), .A1(n351), .B0(n352), .B1(tmp_data[16]), .Y(
        n327) );
  AOI22XL U352 ( .A0(n351), .A1(pi_data[15]), .B0(pi_data[7]), .B1(n339), .Y(
        n340) );
  AOI22XL U353 ( .A0(n352), .A1(tmp_data[19]), .B0(n351), .B1(pi_data[11]), 
        .Y(n344) );
  AOI22XL U354 ( .A0(n352), .A1(tmp_data[22]), .B0(n351), .B1(pi_data[14]), 
        .Y(n324) );
  AOI22XL U355 ( .A0(n352), .A1(tmp_data[17]), .B0(n351), .B1(pi_data[9]), .Y(
        n342) );
  AOI22XL U356 ( .A0(n352), .A1(tmp_data[20]), .B0(n351), .B1(pi_data[12]), 
        .Y(n346) );
  INVX16 U357 ( .A(n377), .Y(N299) );
  NAND2X2 U358 ( .A(n277), .B(cur_state[1]), .Y(n377) );
  BUFX12 U359 ( .A(n434), .Y(odd2_wr) );
  NAND2XL U360 ( .A(n265), .B(n267), .Y(n370) );
  NOR2BX1 U361 ( .AN(address[6]), .B(n370), .Y(n434) );
  BUFX12 U362 ( .A(n437), .Y(even4_wr) );
  NOR2BX1 U363 ( .AN(n279), .B(n278), .Y(n437) );
  INVX12 U364 ( .A(n404), .Y(oem_addr[2]) );
  INVX12 U365 ( .A(n228), .Y(oem_dataout[2]) );
  INVX12 U366 ( .A(n230), .Y(oem_dataout[4]) );
  INVX12 U367 ( .A(n232), .Y(oem_dataout[0]) );
  INVX12 U368 ( .A(n234), .Y(oem_dataout[6]) );
  INVX12 U369 ( .A(n236), .Y(oem_addr[4]) );
  NAND2XL U370 ( .A(n247), .B(n430), .Y(n246) );
  INVX12 U371 ( .A(n238), .Y(oem_addr[1]) );
  INVX12 U372 ( .A(n240), .Y(oem_addr[3]) );
  NAND3XL U373 ( .A(n245), .B(n432), .C(n431), .Y(n253) );
  INVX12 U374 ( .A(n242), .Y(oem_dataout[7]) );
  AO22X1 U375 ( .A0(n396), .A1(n425), .B0(n369), .B1(n426), .Y(n181) );
  NOR2XL U376 ( .A(n305), .B(n399), .Y(n304) );
  AOI211XL U377 ( .A0(tmp_data[0]), .A1(n305), .B0(pi_msb), .C0(n304), .Y(n306) );
  INVXL U378 ( .A(pi_msb), .Y(n309) );
  NAND2XL U379 ( .A(N299), .B(n411), .Y(n276) );
  AOI21XL U380 ( .A0(n392), .A1(tmp_data[6]), .B0(n391), .Y(n393) );
  AOI22XL U381 ( .A0(n352), .A1(tmp_data[14]), .B0(n362), .B1(tmp_data[13]), 
        .Y(n337) );
  AOI22XL U382 ( .A0(n387), .A1(tmp_data[20]), .B0(n362), .B1(tmp_data[18]), 
        .Y(n345) );
  AOI22XL U383 ( .A0(pi_data[8]), .A1(n339), .B0(n352), .B1(tmp_data[24]), .Y(
        n290) );
  AOI22XL U384 ( .A0(n352), .A1(tmp_data[30]), .B0(pi_data[14]), .B1(n339), 
        .Y(n286) );
  NOR2XL U385 ( .A(n265), .B(n274), .Y(n261) );
  AOI21XL U386 ( .A0(n404), .A1(n384), .B0(n275), .Y(n205) );
  OAI211XL U387 ( .A0(n395), .A1(n356), .B0(n282), .C0(n281), .Y(n195) );
  OAI211XL U388 ( .A0(n368), .A1(n361), .B0(n360), .C0(n359), .Y(n177) );
  NOR2X1 U389 ( .A(cur_state[0]), .B(cur_state[2]), .Y(n277) );
  NAND3X1 U390 ( .A(counter[0]), .B(counter[1]), .C(counter[2]), .Y(n259) );
  NOR2X1 U391 ( .A(cur_state[2]), .B(n401), .Y(n313) );
  NAND2XL U392 ( .A(cur_state[1]), .B(n313), .Y(n271) );
  OAI21X1 U393 ( .A0(start_store), .A1(n259), .B0(n271), .Y(n264) );
  NAND2X1 U394 ( .A(n277), .B(n397), .Y(n273) );
  NOR4X1 U395 ( .A(n273), .B(n259), .C(n398), .D(n406), .Y(n248) );
  AOI31XL U396 ( .A0(cur_state[1]), .A1(n409), .A2(n264), .B0(n248), .Y(n244)
         );
  AND3X1 U397 ( .A(n433), .B(oem_addr[0]), .C(address_0), .Y(n245) );
  NOR2X1 U398 ( .A(n246), .B(n403), .Y(n383) );
  AOI21XL U399 ( .A0(n246), .A1(n403), .B0(n383), .Y(n202) );
  NAND2X1 U400 ( .A(n382), .B(n245), .Y(n384) );
  NOR2X1 U401 ( .A(n404), .B(n384), .Y(n275) );
  AOI2BB2X1 U402 ( .B0(n431), .B1(n275), .A0N(n431), .A1N(n275), .Y(n204) );
  OA21X1 U403 ( .A0(start_store), .A1(n259), .B0(N299), .Y(n369) );
  AO22X1 U404 ( .A0(n396), .A1(oem_dataout[3]), .B0(n369), .B1(n428), .Y(n185)
         );
  AO22X1 U405 ( .A0(n396), .A1(oem_dataout[5]), .B0(n369), .B1(n427), .Y(n183)
         );
  AO22X1 U406 ( .A0(n396), .A1(n428), .B0(n369), .B1(oem_dataout[1]), .Y(n186)
         );
  AO22X1 U407 ( .A0(n396), .A1(n426), .B0(n369), .B1(oem_dataout[5]), .Y(n182)
         );
  AO22X1 U408 ( .A0(n396), .A1(n427), .B0(n369), .B1(oem_dataout[3]), .Y(n184)
         );
  AO22X1 U409 ( .A0(n396), .A1(oem_dataout[1]), .B0(n429), .B1(n369), .Y(n187)
         );
  NAND2XL U410 ( .A(n382), .B(address_0), .Y(n381) );
  NOR2X1 U411 ( .A(n405), .B(n381), .Y(n263) );
  AOI2BB2X1 U412 ( .B0(n433), .B1(n263), .A0N(n433), .A1N(n263), .Y(n206) );
  NOR3X1 U413 ( .A(counter[0]), .B(counter[1]), .C(counter[2]), .Y(n372) );
  NAND3XL U414 ( .A(n372), .B(n398), .C(n406), .Y(n376) );
  NOR3XL U415 ( .A(cur_state[1]), .B(load), .C(n272), .Y(n249) );
  AOI211XL U416 ( .A0(cur_state[1]), .A1(n376), .B0(cur_state[0]), .C0(n249), 
        .Y(n250) );
  NOR2XL U417 ( .A(cur_state[2]), .B(n250), .Y(next_state[1]) );
  INVXL U418 ( .A(reset), .Y(n251) );
  BUFX2 U419 ( .A(n251), .Y(n423) );
  CLKBUFX3 U420 ( .A(n251), .Y(n422) );
  CLKBUFX3 U421 ( .A(n422), .Y(n424) );
  NAND2XL U422 ( .A(address[7]), .B(address[6]), .Y(n252) );
  NOR4BX1 U423 ( .AN(n430), .B(n271), .C(n253), .D(n252), .Y(next_state[2]) );
  OA21XL U424 ( .A0(n397), .A1(n411), .B0(n277), .Y(n254) );
  NAND2BX1 U425 ( .AN(n273), .B(load), .Y(n380) );
  OAI221XL U426 ( .A0(counter[1]), .A1(n276), .B0(n413), .B1(n254), .C0(n380), 
        .Y(n213) );
  OAI21XL U427 ( .A0(pi_fill), .A1(n283), .B0(n273), .Y(n255) );
  OAI222XL U428 ( .A0(n400), .A1(n323), .B0(n329), .B1(n395), .C0(n412), .C1(
        n390), .Y(n197) );
  NOR3BX1 U429 ( .AN(cur_state[0]), .B(n409), .C(n397), .Y(n258) );
  BUFX12 U430 ( .A(n258), .Y(oem_finish) );
  OAI21XL U431 ( .A0(n377), .A1(n259), .B0(start_store), .Y(n260) );
  NAND2XL U432 ( .A(n273), .B(n260), .Y(n199) );
  NAND3XL U433 ( .A(address[7]), .B(n264), .C(n403), .Y(n274) );
  BUFX12 U434 ( .A(n261), .Y(even3_wr) );
  NAND3XL U435 ( .A(address[7]), .B(address[6]), .C(n264), .Y(n278) );
  BUFX12 U436 ( .A(n262), .Y(odd4_wr) );
  NOR2XL U437 ( .A(address[6]), .B(n370), .Y(n266) );
  BUFX12 U438 ( .A(n266), .Y(odd1_wr) );
  NOR2XL U439 ( .A(address[6]), .B(n280), .Y(n268) );
  BUFX12 U440 ( .A(n268), .Y(even1_wr) );
  AOI221XL U441 ( .A0(counter[0]), .A1(cur_state[1]), .B0(counter[1]), .B1(
        cur_state[1]), .C0(n269), .Y(n371) );
  NAND2X1 U442 ( .A(N299), .B(pi_msb), .Y(n385) );
  AOI2BB2X1 U443 ( .B0(n363), .B1(tmp_data[2]), .A0N(n385), .A1N(n400), .Y(
        n282) );
  INVX4 U444 ( .A(n323), .Y(n387) );
  AOI2BB2X1 U445 ( .B0(n299), .B1(n407), .A0N(n299), .A1N(tmp_data[15]), .Y(
        n302) );
  AOI2BB2X1 U446 ( .B0(n300), .B1(n408), .A0N(n300), .A1N(tmp_data[31]), .Y(
        n301) );
  OA22X1 U447 ( .A0(pi_length[1]), .A1(n302), .B0(n379), .B1(n301), .Y(n308)
         );
  OAI221XL U448 ( .A0(pi_length[1]), .A1(pi_low), .B0(n379), .B1(n303), .C0(
        n374), .Y(n305) );
  OAI211X1 U449 ( .A0(n309), .A1(n308), .B0(n307), .C0(N299), .Y(n310) );
  INVX12 U450 ( .A(n310), .Y(so_data) );
  AOI2BB2X1 U451 ( .B0(tmp_data[7]), .B1(n362), .A0N(n399), .A1N(n390), .Y(
        n316) );
  CLKINVX1 U452 ( .A(n339), .Y(n355) );
  AOI2BB2X1 U453 ( .B0(n362), .B1(tmp_data[21]), .A0N(n323), .A1N(n408), .Y(
        n325) );
  AOI222XL U454 ( .A0(tmp_data[31]), .A1(n352), .B0(n362), .B1(tmp_data[30]), 
        .C0(pi_data[15]), .C1(n339), .Y(n326) );
  OAI21XL U455 ( .A0(n377), .A1(n410), .B0(n371), .Y(n375) );
  OAI21XL U456 ( .A0(n380), .A1(n374), .B0(n373), .Y(n210) );
  AOI2BB1X1 U457 ( .A0N(n377), .A1N(n398), .B0(n375), .Y(n378) );
  OAI222XL U458 ( .A0(n380), .A1(n379), .B0(n406), .B1(n378), .C0(n377), .C1(
        n376), .Y(n209) );
  OA21XL U459 ( .A0(n382), .A1(address_0), .B0(n381), .Y(n207) );
  AOI2BB2X1 U460 ( .B0(address[7]), .B1(n383), .A0N(address[7]), .A1N(n383), 
        .Y(n201) );
  AOI2BB2X1 U461 ( .B0(n384), .B1(n402), .A0N(n384), .A1N(n402), .Y(n200) );
  OAI22XL U462 ( .A0(n412), .A1(n385), .B0(n390), .B1(n400), .Y(n386) );
  OAI21XL U463 ( .A0(n395), .A1(n389), .B0(n388), .Y(n196) );
  OAI22XL U464 ( .A0(n399), .A1(n323), .B0(n407), .B1(n390), .Y(n391) );
  OAI21XL U465 ( .A0(n395), .A1(n394), .B0(n393), .Y(n190) );
  AO21X1 U466 ( .A0(n429), .A1(n396), .B0(so_data), .Y(n188) );
endmodule

