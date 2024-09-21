/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03
// Date      : Wed Aug  2 15:32:02 2023
/////////////////////////////////////////////////////////////


module LBP_DW01_inc_0_DW01_inc_1 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  INVXL U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LBP_DW01_inc_1_DW01_inc_2 ( A, SUM );
  input [13:0] A;
  output [13:0] SUM;

  wire   [13:2] carry;

  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2XL U1 ( .A(carry[13]), .B(A[13]), .Y(SUM[13]) );
  INVXL U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LBP_DW01_inc_2_DW01_inc_3 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  INVXL U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module LBP ( clk, reset, gray_addr, gray_req, gray_ready, gray_data, lbp_addr, 
        lbp_valid, lbp_data, finish );
  output [13:0] gray_addr;
  input [7:0] gray_data;
  output [13:0] lbp_addr;
  output [7:0] lbp_data;
  input clk, reset, gray_ready;
  output gray_req, lbp_valid, finish;
  wire   n540, n541, n542, n543, n544, n545, n546, n547, n549, n550, n551,
         n552, n553, n554, n555, n556, n557, n558, n559, n560, n561, n562,
         n563, n564, n565, n566, n567, n568, n569, n570, N66, N67, N68, N69,
         N70, N71, N72, N73, N74, N75, N76, N77, N78, N79, N81, N82, N83, N84,
         N85, N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98,
         N99, N100, N101, N102, N103, N104, N105, N106, N107, N109, N110, N111,
         N112, N113, N114, N115, N116, N132, N133, N134, N135, N136, N137,
         N138, N139, N140, N142, N143, N144, N145, N146, N147, N148, N149,
         N150, N151, N152, N153, N156, N157, N158, N159, N160, N161, N162,
         N165, N166, N167, N168, N169, N170, N171, N172, N173, N174, N175,
         N176, N180, N181, N182, N183, N184, N185, N204, N205, N206, N207,
         N208, N228, N229, N230, N231, N252, N253, N254, N263, N264, N280,
         N281, N282, N283, N284, N285, N286, N289, N290, N291, N292, N293,
         N294, N295, N320, N321, N322, N323, N324, N325, N326, N327, N328,
         N329, N330, N331, N332, N333, N395, n58, n60, n62, n660, n670, n680,
         n690, n700, n710, n730, n740, n750, n760, n790, n80, n820, n840, n850,
         n860, n870, n880, n890, n900, n910, n920, n930, n940, n950, n960,
         n970, n980, n990, n1000, n1010, n1020, n1030, n1040, n1050, n1060,
         n1070, n108, n1090, n1100, n1110, n1120, n1130, n1140, n1150, n1160,
         n117, n118, n119, n120, n121, n122, n123, n124, n126, n127, n129,
         n130, n1320, n1330, n1340, n1350, n1370, n1380, n1390, n141, n1420,
         n1430, n1440, n1450, n1460, n1470, n1480, n1490, n1500, n1510, n1530,
         n154, n155, n1560, n1570, n1580, n1590, n1600, n1610, n1620, n163,
         n164, n1650, n1660, n1670, n1680, n1690, n1700, n1710, n1720, n1730,
         n1740, n1750, n1760, n177, n179, n1800, n1810, n1820, n1830, n1840,
         n1850, n186, n187, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n202, n203, n2040, n2050, n2060,
         n2070, n2080, n209, n210, n211, n212, n213, n214, n215, n216, n217,
         n218, n219, n220, n221, n222, n223, n224, n225, n226, n227, n2280,
         n2290, n2300, n2310, n232, n233, n234, n235, n236, n237, n238, n239,
         n240, n241, n242, n243, n244, n245, n246, N403, N402, N401, N400,
         N399, N398, N397, r456_GE_LT_GT_LE, sub_47_carry_2_, sub_47_carry_3_,
         sub_47_carry_4_, sub_47_carry_5_, sub_47_carry_6_, sub_47_carry_7_,
         sub_47_carry_8_, sub_47_carry_9_, sub_47_carry_10_, sub_47_carry_11_,
         sub_47_carry_12_, sub_47_carry_13_, n4010, n422, n435, n436, n437,
         n438, n439, n440, n441, n442, n443, n444, n445, n446, n447, n448,
         n449, n450, n451, n452, n453, n454, n455, n456, n457, n458, n459,
         n460, n461, n462, n463, n464, n465, n466, n467, n468, n469, n470,
         n471, n472, n473, n474, n475, n476, n477, n478, n479, n480, n481,
         n482, n483, n484, n485, n486, n487, n488, n489, n490, n491, n492,
         n493, n494, n495, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n571, n572;
  wire   [3:1] counter;
  wire   [5:2] data;
  wire   [7:6] add_71_carry;
  wire   [7:5] add_67_carry;
  wire   [7:4] add_63_carry;
  wire   [13:3] add_62_carry;
  wire   [7:3] add_59_carry;
  wire   [7:2] add_55_carry;
  wire   [7:1] add_51_carry;
  wire   [13:3] r459_carry;

  DFFRX1 x_reg_6_ ( .D(n233), .CK(clk), .RN(n508), .Q(N79) );
  DFFRX1 y_reg_5_ ( .D(n244), .CK(clk), .RN(n508), .Q(N71) );
  DFFRX1 y_reg_4_ ( .D(n243), .CK(clk), .RN(n508), .Q(N70) );
  DFFRX1 y_reg_6_ ( .D(n245), .CK(clk), .RN(n508), .Q(N72) );
  DFFRX1 lbp_data_reg_4_ ( .D(n201), .CK(clk), .RN(n506), .Q(N228), .QN(n1690)
         );
  DFFSX1 y_reg_0_ ( .D(n246), .CK(clk), .SN(n506), .Q(N66) );
  DFFRX1 y_reg_1_ ( .D(n240), .CK(clk), .RN(n508), .Q(N67) );
  DFFRX1 y_reg_2_ ( .D(n241), .CK(clk), .RN(n508), .Q(N68) );
  DFFRX1 y_reg_3_ ( .D(n242), .CK(clk), .RN(n508), .Q(N69) );
  DFFRX1 counter_reg_0_ ( .D(n2310), .CK(clk), .RN(n526), .Q(n4010), .QN(n1830) );
  DFFRX1 lbp_data_reg_3_ ( .D(n202), .CK(clk), .RN(n506), .Q(N204), .QN(n1680)
         );
  DFFRX1 lbp_data_reg_1_ ( .D(n2040), .CK(clk), .RN(n506), .Q(N156), .QN(n1660) );
  DFFRX1 lbp_data_reg_2_ ( .D(n203), .CK(clk), .RN(n506), .Q(N180), .QN(n1670)
         );
  DFFRX1 lbp_data_reg_0_ ( .D(n2050), .CK(clk), .RN(n506), .Q(N132), .QN(n1650) );
  DFFRX1 data_reg_7_ ( .D(n212), .CK(clk), .RN(n506), .QN(n1580) );
  DFFRX1 data_reg_6_ ( .D(n211), .CK(clk), .RN(n507), .QN(n1590) );
  DFFRX1 data_reg_3_ ( .D(n2080), .CK(clk), .RN(n508), .Q(data[3]), .QN(n1620)
         );
  DFFRX1 data_reg_0_ ( .D(n213), .CK(clk), .RN(n506), .QN(n1570) );
  DFFRX1 data_reg_2_ ( .D(n2070), .CK(clk), .RN(n506), .Q(data[2]), .QN(n163)
         );
  DFFRX1 data_reg_1_ ( .D(n2060), .CK(clk), .RN(n507), .QN(n164) );
  DFFRX1 data_reg_4_ ( .D(n209), .CK(clk), .RN(n508), .Q(data[4]), .QN(n1610)
         );
  DFFRX1 gray_addr_reg_1_ ( .D(n214), .CK(clk), .RN(n506), .Q(n552), .QN(n1560) );
  DFFRX1 x_reg_5_ ( .D(n234), .CK(clk), .RN(n508), .Q(N78) );
  DFFRX1 x_reg_4_ ( .D(n235), .CK(clk), .RN(n508), .Q(N77) );
  DFFSX1 x_reg_0_ ( .D(n238), .CK(clk), .SN(n506), .Q(N73) );
  DFFRX1 x_reg_1_ ( .D(n239), .CK(clk), .RN(n508), .Q(N74) );
  DFFRX1 x_reg_2_ ( .D(n237), .CK(clk), .RN(n508), .Q(N75) );
  DFFRX1 x_reg_3_ ( .D(n236), .CK(clk), .RN(n508), .Q(N76) );
  DFFRX1 counter_reg_2_ ( .D(n2300), .CK(clk), .RN(n506), .Q(counter[2]), .QN(
        n1810) );
  DFFRX1 counter_reg_3_ ( .D(n2290), .CK(clk), .RN(n507), .Q(counter[3]), .QN(
        n1800) );
  DFFRX1 counter_reg_1_ ( .D(n232), .CK(clk), .RN(n508), .Q(counter[1]), .QN(
        n1820) );
  DFFRX1 lbp_data_reg_7_ ( .D(n198), .CK(clk), .RN(n506), .Q(n569), .QN(n1720)
         );
  DFFRX1 data_reg_5_ ( .D(n210), .CK(clk), .RN(n507), .Q(data[5]), .QN(n1600)
         );
  DFFRX1 lbp_data_reg_5_ ( .D(n200), .CK(clk), .RN(n506), .Q(N252), .QN(n1700)
         );
  DFFRX1 lbp_data_reg_6_ ( .D(n199), .CK(clk), .RN(n506), .Q(N263), .QN(n1710)
         );
  DFFRX1 gray_addr_reg_0_ ( .D(n227), .CK(clk), .RN(n507), .Q(N140), .QN(n1430) );
  DFFRX1 lbp_valid_reg ( .D(n2280), .CK(clk), .RN(n508), .Q(n568), .QN(n422)
         );
  DFFQX1 lbp_addr_reg_0_ ( .D(n1840), .CK(clk), .Q(n567) );
  DFFQX1 lbp_addr_reg_1_ ( .D(n1850), .CK(clk), .Q(n566) );
  DFFQX1 lbp_addr_reg_2_ ( .D(n186), .CK(clk), .Q(n565) );
  DFFQX1 lbp_addr_reg_3_ ( .D(n187), .CK(clk), .Q(n564) );
  DFFQX1 lbp_addr_reg_4_ ( .D(n188), .CK(clk), .Q(n563) );
  DFFQX1 lbp_addr_reg_5_ ( .D(n189), .CK(clk), .Q(n562) );
  DFFQX1 lbp_addr_reg_6_ ( .D(n190), .CK(clk), .Q(n561) );
  DFFQX1 lbp_addr_reg_7_ ( .D(n191), .CK(clk), .Q(n560) );
  DFFQX1 lbp_addr_reg_8_ ( .D(n192), .CK(clk), .Q(n559) );
  DFFQX1 lbp_addr_reg_9_ ( .D(n193), .CK(clk), .Q(n558) );
  DFFQX1 lbp_addr_reg_10_ ( .D(n194), .CK(clk), .Q(n557) );
  DFFQX1 lbp_addr_reg_11_ ( .D(n195), .CK(clk), .Q(n556) );
  DFFQX1 lbp_addr_reg_12_ ( .D(n196), .CK(clk), .Q(n555) );
  DFFRX1 finish_reg ( .D(n1760), .CK(clk), .RN(n507), .Q(n570), .QN(n1730) );
  DFFRX1 gray_req_reg ( .D(n177), .CK(clk), .RN(n507), .Q(n553), .QN(n1740) );
  DFFRX1 gray_addr_reg_13_ ( .D(n226), .CK(clk), .RN(n507), .Q(n540), .QN(
        n1440) );
  DFFRX1 stage_reg_0_ ( .D(n179), .CK(clk), .RN(n526), .Q(n1750), .QN(n529) );
  DFFRX1 gray_addr_reg_7_ ( .D(n220), .CK(clk), .RN(n507), .Q(n546), .QN(n1500) );
  DFFRX1 gray_addr_reg_12_ ( .D(n225), .CK(clk), .RN(n507), .Q(n541), .QN(
        n1450) );
  DFFRX1 gray_addr_reg_11_ ( .D(n224), .CK(clk), .RN(n507), .Q(n542), .QN(
        n1460) );
  DFFRX1 gray_addr_reg_10_ ( .D(n223), .CK(clk), .RN(n507), .Q(n543), .QN(
        n1470) );
  DFFRX1 gray_addr_reg_9_ ( .D(n222), .CK(clk), .RN(n507), .Q(n544), .QN(n1480) );
  DFFRX1 gray_addr_reg_8_ ( .D(n221), .CK(clk), .RN(n507), .Q(n545), .QN(n1490) );
  DFFRX1 gray_addr_reg_6_ ( .D(n219), .CK(clk), .RN(n507), .Q(n547), .QN(n1510) );
  DFFRX1 gray_addr_reg_4_ ( .D(n217), .CK(clk), .RN(n507), .Q(n549), .QN(n1530) );
  DFFRX1 gray_addr_reg_3_ ( .D(n216), .CK(clk), .RN(n506), .Q(n550), .QN(n154)
         );
  DFFRX1 gray_addr_reg_2_ ( .D(n215), .CK(clk), .RN(n506), .Q(n551), .QN(n155)
         );
  OAI22X1 U326 ( .A0(gray_data[0]), .A1(n1570), .B0(gray_data[1]), .B1(n164), 
        .Y(n514) );
  OAI221X1 U327 ( .A0(data[3]), .A1(n519), .B0(data[3]), .B1(n524), .C0(n518), 
        .Y(n520) );
  AOI2BB2X2 U328 ( .B0(n517), .B1(n516), .A0N(n519), .A1N(n524), .Y(n518) );
  OAI22X1 U329 ( .A0(n515), .A1(n524), .B0(data[3]), .B1(n515), .Y(n516) );
  NOR2X1 U332 ( .A(n820), .B(n435), .Y(n80) );
  NAND2X2 U333 ( .A(n448), .B(n449), .Y(n198) );
  OR2X1 U334 ( .A(n1720), .B(n528), .Y(n448) );
  BUFX12 U336 ( .A(n540), .Y(gray_addr[13]) );
  BUFX12 U337 ( .A(n553), .Y(gray_req) );
  BUFX12 U338 ( .A(n570), .Y(finish) );
  BUFX12 U339 ( .A(n554), .Y(lbp_addr[13]) );
  BUFX12 U340 ( .A(n555), .Y(lbp_addr[12]) );
  BUFX12 U341 ( .A(n556), .Y(lbp_addr[11]) );
  BUFX12 U342 ( .A(n557), .Y(lbp_addr[10]) );
  BUFX12 U343 ( .A(n558), .Y(lbp_addr[9]) );
  BUFX12 U344 ( .A(n559), .Y(lbp_addr[8]) );
  BUFX12 U345 ( .A(n560), .Y(lbp_addr[7]) );
  BUFX12 U346 ( .A(n561), .Y(lbp_addr[6]) );
  BUFX12 U347 ( .A(n562), .Y(lbp_addr[5]) );
  BUFX12 U348 ( .A(n563), .Y(lbp_addr[4]) );
  BUFX12 U349 ( .A(n564), .Y(lbp_addr[3]) );
  BUFX12 U350 ( .A(n565), .Y(lbp_addr[2]) );
  BUFX12 U351 ( .A(n566), .Y(lbp_addr[1]) );
  BUFX12 U352 ( .A(n567), .Y(lbp_addr[0]) );
  INVX12 U353 ( .A(n422), .Y(lbp_valid) );
  INVX12 U354 ( .A(n155), .Y(gray_addr[2]) );
  INVX12 U355 ( .A(n154), .Y(gray_addr[3]) );
  INVX12 U356 ( .A(n1530), .Y(gray_addr[4]) );
  INVX12 U357 ( .A(n1510), .Y(gray_addr[6]) );
  INVX12 U358 ( .A(n1490), .Y(gray_addr[8]) );
  INVX12 U359 ( .A(n1480), .Y(gray_addr[9]) );
  INVX12 U360 ( .A(n1470), .Y(gray_addr[10]) );
  INVX12 U361 ( .A(n1460), .Y(gray_addr[11]) );
  INVX12 U362 ( .A(n1450), .Y(gray_addr[12]) );
  INVX12 U363 ( .A(n1500), .Y(gray_addr[7]) );
  INVX12 U364 ( .A(n1430), .Y(gray_addr[0]) );
  AOI22XL U365 ( .A0(gray_addr[0]), .A1(n483), .B0(N94), .B1(n489), .Y(n457)
         );
  NAND2X1 U366 ( .A(n441), .B(n442), .Y(N116) );
  NAND2X1 U367 ( .A(lbp_data[7]), .B(n440), .Y(n441) );
  AND2X2 U368 ( .A(add_51_carry[5]), .B(lbp_data[5]), .Y(add_51_carry[6]) );
  AND2X2 U369 ( .A(add_51_carry[1]), .B(lbp_data[1]), .Y(add_51_carry[2]) );
  NAND2BX1 U370 ( .AN(data[4]), .B(gray_data[4]), .Y(n511) );
  NAND3X1 U371 ( .A(n445), .B(n446), .C(n447), .Y(n512) );
  CLKINVX1 U372 ( .A(add_51_carry[7]), .Y(n440) );
  CLKINVX1 U373 ( .A(gray_data[5]), .Y(n525) );
  AOI22X1 U374 ( .A0(N161), .A1(n537), .B0(lbp_data[6]), .B1(n790), .Y(n436)
         );
  OR2X1 U375 ( .A(n80), .B(n494), .Y(n439) );
  CLKINVX1 U376 ( .A(gray_data[3]), .Y(n524) );
  AND2X2 U377 ( .A(lbp_data[0]), .B(r456_GE_LT_GT_LE), .Y(add_51_carry[1]) );
  NAND3BX1 U378 ( .AN(n840), .B(n436), .C(n437), .Y(n435) );
  AOI22X1 U379 ( .A0(N184), .A1(n740), .B0(N207), .B1(n750), .Y(n437) );
  AND2X2 U380 ( .A(lbp_data[2]), .B(r456_GE_LT_GT_LE), .Y(add_59_carry[3]) );
  AND2X2 U381 ( .A(add_51_carry[6]), .B(lbp_data[6]), .Y(add_51_carry[7]) );
  AND2X2 U382 ( .A(add_55_carry[6]), .B(lbp_data[6]), .Y(add_55_carry[7]) );
  AND2X2 U383 ( .A(add_55_carry[2]), .B(lbp_data[2]), .Y(add_55_carry[3]) );
  AO22X1 U384 ( .A0(N113), .A1(n760), .B0(N136), .B1(n534), .Y(n920) );
  OR2X1 U385 ( .A(n1710), .B(n528), .Y(n438) );
  NAND2X1 U386 ( .A(n438), .B(n439), .Y(n199) );
  OAI222X1 U387 ( .A0(gray_data[6]), .A1(n512), .B0(n1590), .B1(n512), .C0(
        gray_data[6]), .C1(n1590), .Y(n523) );
  OAI2BB1X1 U388 ( .A0N(n164), .A1N(gray_data[1]), .B0(n514), .Y(n517) );
  BUFX16 U389 ( .A(n569), .Y(lbp_data[7]) );
  INVX3 U390 ( .A(n494), .Y(n528) );
  AND2X2 U391 ( .A(add_51_carry[4]), .B(lbp_data[4]), .Y(add_51_carry[5]) );
  AO22X1 U392 ( .A0(N115), .A1(n760), .B0(N138), .B1(n534), .Y(n820) );
  AO22X1 U393 ( .A0(N112), .A1(n760), .B0(N135), .B1(n534), .Y(n970) );
  AND2X2 U395 ( .A(add_51_carry[2]), .B(lbp_data[2]), .Y(add_51_carry[3]) );
  AND2X2 U396 ( .A(add_51_carry[3]), .B(lbp_data[3]), .Y(add_51_carry[4]) );
  AO22X1 U397 ( .A0(N185), .A1(n740), .B0(N208), .B1(n750), .Y(n700) );
  NOR4X1 U398 ( .A(n860), .B(n870), .C(n880), .D(n890), .Y(n850) );
  OR2X1 U399 ( .A(n1700), .B(n528), .Y(n443) );
  OR2X1 U400 ( .A(n850), .B(n494), .Y(n444) );
  NAND2X1 U401 ( .A(n443), .B(n444), .Y(n200) );
  NAND2X1 U402 ( .A(n1720), .B(add_51_carry[7]), .Y(n442) );
  AO22X4 U403 ( .A0(N116), .A1(n760), .B0(N139), .B1(n534), .Y(n690) );
  AND2XL U404 ( .A(lbp_data[3]), .B(r456_GE_LT_GT_LE), .Y(add_63_carry[4]) );
  XOR2X1 U407 ( .A(lbp_data[6]), .B(add_63_carry[6]), .Y(N184) );
  AND2XL U408 ( .A(add_63_carry[6]), .B(lbp_data[6]), .Y(add_63_carry[7]) );
  XOR2X1 U409 ( .A(lbp_data[6]), .B(add_67_carry[6]), .Y(N207) );
  OR2X6 U410 ( .A(n660), .B(n494), .Y(n449) );
  OR2XL U412 ( .A(n541), .B(sub_47_carry_12_), .Y(sub_47_carry_13_) );
  AND2XL U413 ( .A(sub_47_carry_7_), .B(n546), .Y(sub_47_carry_8_) );
  OR2XL U414 ( .A(n545), .B(sub_47_carry_8_), .Y(sub_47_carry_9_) );
  OR2XL U415 ( .A(n544), .B(sub_47_carry_9_), .Y(sub_47_carry_10_) );
  OR2XL U416 ( .A(n543), .B(sub_47_carry_10_), .Y(sub_47_carry_11_) );
  OR2XL U417 ( .A(n542), .B(sub_47_carry_11_), .Y(sub_47_carry_12_) );
  OR2XL U418 ( .A(n551), .B(sub_47_carry_2_), .Y(sub_47_carry_3_) );
  OR2XL U419 ( .A(n550), .B(sub_47_carry_3_), .Y(sub_47_carry_4_) );
  OR2XL U421 ( .A(n572), .B(sub_47_carry_5_), .Y(sub_47_carry_6_) );
  OR2X1 U422 ( .A(gray_addr[1]), .B(N140), .Y(sub_47_carry_2_) );
  OR2XL U423 ( .A(n547), .B(sub_47_carry_6_), .Y(sub_47_carry_7_) );
  XNOR2XL U424 ( .A(sub_47_carry_12_), .B(n541), .Y(N92) );
  XOR2XL U425 ( .A(n540), .B(r459_carry[13]), .Y(N153) );
  AND2XL U426 ( .A(r459_carry[12]), .B(n541), .Y(r459_carry[13]) );
  OR2X1 U427 ( .A(n551), .B(gray_addr[1]), .Y(r459_carry[3]) );
  OR2XL U428 ( .A(n550), .B(r459_carry[3]), .Y(r459_carry[4]) );
  OR2XL U430 ( .A(n572), .B(r459_carry[5]), .Y(r459_carry[6]) );
  AND2XL U431 ( .A(r459_carry[7]), .B(n546), .Y(r459_carry[8]) );
  AND2XL U432 ( .A(r459_carry[8]), .B(n545), .Y(r459_carry[9]) );
  AND2XL U433 ( .A(r459_carry[9]), .B(n544), .Y(r459_carry[10]) );
  AND2XL U434 ( .A(r459_carry[10]), .B(n543), .Y(r459_carry[11]) );
  AND2XL U435 ( .A(r459_carry[11]), .B(n542), .Y(r459_carry[12]) );
  OR2XL U436 ( .A(n547), .B(r459_carry[6]), .Y(r459_carry[7]) );
  XOR2XL U437 ( .A(n540), .B(add_62_carry[13]), .Y(N176) );
  AND2XL U438 ( .A(add_62_carry[12]), .B(n541), .Y(add_62_carry[13]) );
  AND2XL U440 ( .A(add_62_carry[8]), .B(n545), .Y(add_62_carry[9]) );
  AND2XL U441 ( .A(add_62_carry[9]), .B(n544), .Y(add_62_carry[10]) );
  AND2XL U442 ( .A(add_62_carry[10]), .B(n543), .Y(add_62_carry[11]) );
  AND2XL U443 ( .A(add_62_carry[11]), .B(n542), .Y(add_62_carry[12]) );
  AND2X1 U444 ( .A(gray_addr[1]), .B(n551), .Y(add_62_carry[3]) );
  AND2XL U445 ( .A(add_62_carry[3]), .B(n550), .Y(add_62_carry[4]) );
  AND2XL U446 ( .A(add_62_carry[4]), .B(n549), .Y(add_62_carry[5]) );
  AND2XL U447 ( .A(add_62_carry[5]), .B(n572), .Y(add_62_carry[6]) );
  XNOR2XL U449 ( .A(sub_47_carry_11_), .B(n542), .Y(N91) );
  XOR2XL U450 ( .A(n541), .B(r459_carry[12]), .Y(N152) );
  XOR2XL U451 ( .A(n541), .B(add_62_carry[12]), .Y(N175) );
  XNOR2XL U452 ( .A(sub_47_carry_10_), .B(n543), .Y(N90) );
  XOR2XL U453 ( .A(n542), .B(r459_carry[11]), .Y(N151) );
  XOR2XL U454 ( .A(n542), .B(add_62_carry[11]), .Y(N174) );
  XOR2XL U455 ( .A(n543), .B(r459_carry[10]), .Y(N150) );
  XNOR2XL U456 ( .A(sub_47_carry_9_), .B(n544), .Y(N89) );
  XOR2XL U458 ( .A(n544), .B(r459_carry[9]), .Y(N149) );
  XNOR2XL U459 ( .A(sub_47_carry_8_), .B(n545), .Y(N88) );
  XOR2XL U460 ( .A(n544), .B(add_62_carry[9]), .Y(N172) );
  XOR2XL U461 ( .A(n545), .B(r459_carry[8]), .Y(N148) );
  XOR2XL U462 ( .A(n546), .B(sub_47_carry_7_), .Y(N87) );
  XOR2XL U463 ( .A(n545), .B(add_62_carry[8]), .Y(N171) );
  XOR2XL U464 ( .A(n546), .B(r459_carry[7]), .Y(N147) );
  XNOR2XL U465 ( .A(sub_47_carry_6_), .B(n547), .Y(N86) );
  XOR2XL U466 ( .A(n546), .B(add_62_carry[7]), .Y(N170) );
  XOR2XL U469 ( .A(n547), .B(add_62_carry[6]), .Y(N169) );
  XNOR2XL U471 ( .A(sub_47_carry_4_), .B(n549), .Y(N84) );
  XOR2XL U472 ( .A(n572), .B(add_62_carry[5]), .Y(N168) );
  XNOR2XL U473 ( .A(r459_carry[4]), .B(n549), .Y(N144) );
  XNOR2XL U474 ( .A(N140), .B(gray_addr[1]), .Y(N81) );
  XNOR2XL U475 ( .A(sub_47_carry_3_), .B(n550), .Y(N83) );
  XOR2XL U476 ( .A(n549), .B(add_62_carry[4]), .Y(N167) );
  XNOR2XL U477 ( .A(r459_carry[3]), .B(n550), .Y(N143) );
  XNOR2XL U478 ( .A(gray_addr[1]), .B(n551), .Y(N142) );
  XNOR2XL U479 ( .A(sub_47_carry_2_), .B(n551), .Y(N82) );
  XOR2XL U480 ( .A(n550), .B(add_62_carry[3]), .Y(N166) );
  XOR2XL U481 ( .A(n551), .B(gray_addr[1]), .Y(N165) );
  XOR2X1 U482 ( .A(lbp_data[6]), .B(add_51_carry[6]), .Y(N115) );
  AND2X2 U483 ( .A(add_55_carry[4]), .B(lbp_data[4]), .Y(add_55_carry[5]) );
  AND2X2 U484 ( .A(add_59_carry[5]), .B(lbp_data[5]), .Y(add_59_carry[6]) );
  AND2X2 U485 ( .A(add_59_carry[3]), .B(lbp_data[3]), .Y(add_59_carry[4]) );
  XOR2XL U486 ( .A(lbp_data[4]), .B(add_51_carry[4]), .Y(N113) );
  AND2X2 U487 ( .A(add_63_carry[4]), .B(lbp_data[4]), .Y(add_63_carry[5]) );
  XOR2XL U488 ( .A(lbp_data[3]), .B(add_51_carry[3]), .Y(N112) );
  AND2X2 U489 ( .A(add_67_carry[5]), .B(lbp_data[5]), .Y(add_67_carry[6]) );
  XOR2XL U490 ( .A(lbp_data[5]), .B(add_63_carry[5]), .Y(N183) );
  XOR2XL U491 ( .A(lbp_data[2]), .B(add_51_carry[2]), .Y(N111) );
  XOR2XL U492 ( .A(lbp_data[5]), .B(add_67_carry[5]), .Y(N206) );
  XOR2XL U493 ( .A(lbp_data[4]), .B(add_63_carry[4]), .Y(N182) );
  XOR2XL U494 ( .A(lbp_data[1]), .B(add_51_carry[1]), .Y(N110) );
  NAND2XL U495 ( .A(lbp_data[6]), .B(r456_GE_LT_GT_LE), .Y(n450) );
  OA21XL U496 ( .A0(n120), .A1(n117), .B0(n529), .Y(n119) );
  AOI2BB2X4 U497 ( .B0(n522), .B1(n523), .A0N(gray_data[7]), .A1N(n1580), .Y(
        n451) );
  CLKBUFX3 U498 ( .A(n62), .Y(n495) );
  NAND2X1 U499 ( .A(n1810), .B(n1820), .Y(n126) );
  CLKBUFX3 U500 ( .A(n1830), .Y(n505) );
  NOR3BXL U501 ( .AN(n1810), .B(n1820), .C(counter[3]), .Y(n123) );
  NOR3X2 U502 ( .A(n126), .B(n1800), .C(n536), .Y(n730) );
  INVX1 U503 ( .A(reset), .Y(n526) );
  OR2X1 U504 ( .A(data[5]), .B(n525), .Y(n445) );
  OR2X1 U505 ( .A(data[5]), .B(n511), .Y(n446) );
  NOR4X4 U507 ( .A(n680), .B(n690), .C(n700), .D(n710), .Y(n660) );
  CLKINVX1 U508 ( .A(n1370), .Y(n531) );
  INVX3 U509 ( .A(n127), .Y(n535) );
  CLKINVX1 U510 ( .A(n1390), .Y(n533) );
  CLKBUFX3 U511 ( .A(n119), .Y(n510) );
  CLKBUFX3 U512 ( .A(n119), .Y(n509) );
  INVX3 U513 ( .A(n1150), .Y(n534) );
  XOR2X1 U514 ( .A(lbp_data[7]), .B(add_55_carry[7]), .Y(N139) );
  AO22X1 U515 ( .A0(N162), .A1(n537), .B0(N264), .B1(n790), .Y(n680) );
  AND2X2 U516 ( .A(add_55_carry[5]), .B(lbp_data[5]), .Y(add_55_carry[6]) );
  AO22X1 U517 ( .A0(N114), .A1(n760), .B0(N137), .B1(n534), .Y(n870) );
  AO22X1 U518 ( .A0(N160), .A1(n537), .B0(lbp_data[5]), .B1(n790), .Y(n860) );
  AO22X1 U519 ( .A0(N111), .A1(n760), .B0(N134), .B1(n534), .Y(n1020) );
  AO22X1 U520 ( .A0(N159), .A1(n537), .B0(lbp_data[4]), .B1(n790), .Y(n910) );
  AO22X1 U521 ( .A0(N110), .A1(n760), .B0(N133), .B1(n534), .Y(n1070) );
  XNOR2X1 U523 ( .A(lbp_data[7]), .B(n450), .Y(N254) );
  AO22X1 U524 ( .A0(N109), .A1(n760), .B0(lbp_data[0]), .B1(n534), .Y(n1120)
         );
  AO22X1 U525 ( .A0(N157), .A1(n537), .B0(lbp_data[2]), .B1(n790), .Y(n1010)
         );
  INVX3 U526 ( .A(n495), .Y(n527) );
  NOR2BX1 U528 ( .AN(n455), .B(n454), .Y(n484) );
  AND2X2 U529 ( .A(n455), .B(n454), .Y(n485) );
  NOR3BX2 U530 ( .AN(n60), .B(n492), .C(n532), .Y(n1370) );
  CLKINVX1 U531 ( .A(n790), .Y(n538) );
  CLKINVX1 U532 ( .A(n1380), .Y(n532) );
  NAND4X1 U533 ( .A(n1160), .B(n1150), .C(n121), .D(n122), .Y(n117) );
  AOI21X1 U534 ( .A0(n505), .A1(n120), .B0(n535), .Y(n121) );
  NOR4X1 U535 ( .A(n730), .B(n740), .C(n750), .D(n760), .Y(n122) );
  AND3X2 U536 ( .A(n124), .B(n505), .C(n539), .Y(n750) );
  OAI21XL U537 ( .A0(n790), .A1(n117), .B0(n529), .Y(n670) );
  NAND3X1 U538 ( .A(n536), .B(n539), .C(n124), .Y(n127) );
  OAI21X2 U539 ( .A0(n492), .A1(n60), .B0(n1380), .Y(n1390) );
  AND2X2 U540 ( .A(n123), .B(n505), .Y(n760) );
  INVX3 U541 ( .A(n505), .Y(n536) );
  NOR2X1 U542 ( .A(counter[3]), .B(n126), .Y(n120) );
  NAND2X1 U543 ( .A(n123), .B(n536), .Y(n1150) );
  INVX3 U544 ( .A(n1160), .Y(n537) );
  AO22X1 U545 ( .A0(lbp_data[1]), .A1(n537), .B0(lbp_data[1]), .B1(n790), .Y(
        n1060) );
  AO22X1 U546 ( .A0(lbp_data[0]), .A1(n537), .B0(lbp_data[0]), .B1(n790), .Y(
        n1110) );
  NAND2X1 U547 ( .A(n120), .B(n529), .Y(n58) );
  CLKBUFX3 U548 ( .A(n118), .Y(n493) );
  NOR2X1 U549 ( .A(n58), .B(n505), .Y(n118) );
  OAI31XL U550 ( .A0(n60), .A1(n492), .A2(n538), .B0(n529), .Y(n179) );
  OA21XL U551 ( .A0(n1340), .A1(n539), .B0(n1350), .Y(n130) );
  OA21XL U552 ( .A0(n1340), .A1(n536), .B0(n529), .Y(n1350) );
  AND2X2 U553 ( .A(n126), .B(counter[3]), .Y(n1340) );
  INVX1 U554 ( .A(n1330), .Y(n530) );
  CLKBUFX3 U555 ( .A(n526), .Y(n508) );
  CLKBUFX3 U556 ( .A(n526), .Y(n507) );
  CLKBUFX3 U557 ( .A(n526), .Y(n506) );
  AO21X4 U558 ( .A0(n1580), .A1(gray_data[7]), .B0(n451), .Y(r456_GE_LT_GT_LE)
         );
  AO22X1 U559 ( .A0(N230), .A1(n535), .B0(N253), .B1(n730), .Y(n840) );
  AO22X1 U560 ( .A0(N231), .A1(n535), .B0(N254), .B1(n730), .Y(n710) );
  AO22X1 U561 ( .A0(N229), .A1(n535), .B0(lbp_data[5]), .B1(n730), .Y(n890) );
  AO22X1 U562 ( .A0(N183), .A1(n740), .B0(N206), .B1(n750), .Y(n880) );
  OAI22XL U563 ( .A0(n1690), .A1(n528), .B0(n900), .B1(n494), .Y(n201) );
  NOR4X1 U564 ( .A(n910), .B(n920), .C(n930), .D(n940), .Y(n900) );
  AO22X1 U565 ( .A0(lbp_data[4]), .A1(n535), .B0(lbp_data[4]), .B1(n730), .Y(
        n940) );
  AO22X1 U566 ( .A0(N182), .A1(n740), .B0(N205), .B1(n750), .Y(n930) );
  OAI22XL U567 ( .A0(n1680), .A1(n528), .B0(n950), .B1(n494), .Y(n202) );
  NOR4X1 U568 ( .A(n960), .B(n970), .C(n980), .D(n990), .Y(n950) );
  AO22X1 U569 ( .A0(lbp_data[3]), .A1(n535), .B0(lbp_data[3]), .B1(n730), .Y(
        n990) );
  AO22X1 U570 ( .A0(N181), .A1(n740), .B0(lbp_data[3]), .B1(n750), .Y(n980) );
  OAI22XL U571 ( .A0(n1670), .A1(n528), .B0(n1000), .B1(n494), .Y(n203) );
  NOR4X1 U572 ( .A(n1010), .B(n1020), .C(n1030), .D(n1040), .Y(n1000) );
  AO22X1 U573 ( .A0(lbp_data[2]), .A1(n535), .B0(lbp_data[2]), .B1(n730), .Y(
        n1040) );
  AO22X1 U574 ( .A0(lbp_data[2]), .A1(n740), .B0(lbp_data[2]), .B1(n750), .Y(
        n1030) );
  OAI22XL U575 ( .A0(n1660), .A1(n528), .B0(n1050), .B1(n494), .Y(n2040) );
  NOR4X1 U576 ( .A(n1060), .B(n1070), .C(n108), .D(n1090), .Y(n1050) );
  AO22X1 U577 ( .A0(lbp_data[1]), .A1(n535), .B0(lbp_data[1]), .B1(n730), .Y(
        n1090) );
  AO22X1 U578 ( .A0(lbp_data[1]), .A1(n740), .B0(lbp_data[1]), .B1(n750), .Y(
        n108) );
  OAI2BB2XL U579 ( .B0(n1440), .B1(n509), .A0N(N333), .A1N(n510), .Y(n226) );
  OAI22XL U580 ( .A0(n1650), .A1(n528), .B0(n1100), .B1(n494), .Y(n2050) );
  NOR4X1 U581 ( .A(n1110), .B(n1120), .C(n1130), .D(n1140), .Y(n1100) );
  AO22X1 U583 ( .A0(lbp_data[0]), .A1(n740), .B0(lbp_data[0]), .B1(n750), .Y(
        n1130) );
  OAI2BB2XL U584 ( .B0(n1450), .B1(n509), .A0N(N332), .A1N(n510), .Y(n225) );
  OAI2BB2XL U585 ( .B0(n1460), .B1(n510), .A0N(N331), .A1N(n510), .Y(n224) );
  BUFX16 U586 ( .A(n552), .Y(gray_addr[1]) );
  OAI2BB2XL U587 ( .B0(n1470), .B1(n509), .A0N(N330), .A1N(n510), .Y(n223) );
  OAI2BB2XL U588 ( .B0(n1480), .B1(n510), .A0N(N329), .A1N(n510), .Y(n222) );
  OAI2BB2XL U589 ( .B0(n1490), .B1(n509), .A0N(N328), .A1N(n510), .Y(n221) );
  OAI2BB2XL U590 ( .B0(n1500), .B1(n509), .A0N(N327), .A1N(n510), .Y(n220) );
  AO22X1 U591 ( .A0(N66), .A1(n495), .B0(lbp_addr[0]), .B1(n527), .Y(n1840) );
  AO22X1 U592 ( .A0(N67), .A1(n495), .B0(lbp_addr[1]), .B1(n527), .Y(n1850) );
  AO22X1 U594 ( .A0(N69), .A1(n495), .B0(lbp_addr[3]), .B1(n527), .Y(n187) );
  AO22X1 U595 ( .A0(N70), .A1(n495), .B0(lbp_addr[4]), .B1(n527), .Y(n188) );
  AO22X1 U596 ( .A0(N71), .A1(n495), .B0(lbp_addr[5]), .B1(n527), .Y(n189) );
  AO22X1 U597 ( .A0(N72), .A1(n495), .B0(lbp_addr[6]), .B1(n527), .Y(n190) );
  AO22X1 U598 ( .A0(N73), .A1(n495), .B0(lbp_addr[7]), .B1(n527), .Y(n191) );
  AO22X1 U599 ( .A0(N74), .A1(n495), .B0(lbp_addr[8]), .B1(n527), .Y(n192) );
  AO22X1 U600 ( .A0(N75), .A1(n495), .B0(lbp_addr[9]), .B1(n527), .Y(n193) );
  AO22X1 U601 ( .A0(N76), .A1(n495), .B0(lbp_addr[10]), .B1(n527), .Y(n194) );
  AO22X1 U602 ( .A0(N77), .A1(n495), .B0(lbp_addr[11]), .B1(n527), .Y(n195) );
  NOR2X1 U605 ( .A(n532), .B(reset), .Y(n62) );
  OAI2BB2XL U606 ( .B0(n1510), .B1(n509), .A0N(N326), .A1N(n510), .Y(n219) );
  OAI2BB2XL U607 ( .B0(n1590), .B1(n493), .A0N(gray_data[6]), .A1N(n493), .Y(
        n211) );
  OAI2BB2XL U608 ( .B0(n163), .B1(n493), .A0N(gray_data[2]), .A1N(n493), .Y(
        n2070) );
  OAI2BB2XL U609 ( .B0(n1610), .B1(n493), .A0N(gray_data[4]), .A1N(n493), .Y(
        n209) );
  OAI2BB2XL U610 ( .B0(n1580), .B1(n493), .A0N(gray_data[7]), .A1N(n493), .Y(
        n212) );
  OAI2BB2XL U611 ( .B0(n1600), .B1(n493), .A0N(gray_data[5]), .A1N(n493), .Y(
        n210) );
  OAI2BB2XL U612 ( .B0(n1620), .B1(n493), .A0N(gray_data[3]), .A1N(n493), .Y(
        n2080) );
  OAI2BB2XL U613 ( .B0(n164), .B1(n493), .A0N(gray_data[1]), .A1N(n493), .Y(
        n2060) );
  OAI2BB2XL U614 ( .B0(n1570), .B1(n493), .A0N(gray_data[0]), .A1N(n493), .Y(
        n213) );
  OAI2BB2XL U615 ( .B0(n571), .B1(n509), .A0N(N325), .A1N(n510), .Y(n218) );
  OAI2BB2XL U616 ( .B0(n1530), .B1(n509), .A0N(N324), .A1N(n510), .Y(n217) );
  OAI2BB2XL U617 ( .B0(n154), .B1(n509), .A0N(N323), .A1N(n510), .Y(n216) );
  OAI2BB2XL U618 ( .B0(n1560), .B1(n509), .A0N(N321), .A1N(n510), .Y(n214) );
  OAI2BB2XL U619 ( .B0(n155), .B1(n509), .A0N(N322), .A1N(n510), .Y(n215) );
  OAI2BB2XL U620 ( .B0(n1430), .B1(n509), .A0N(N320), .A1N(n510), .Y(n227) );
  BUFX16 U621 ( .A(N132), .Y(lbp_data[0]) );
  BUFX16 U622 ( .A(N180), .Y(lbp_data[2]) );
  BUFX16 U623 ( .A(N156), .Y(lbp_data[1]) );
  BUFX16 U624 ( .A(N204), .Y(lbp_data[3]) );
  CLKBUFX3 U625 ( .A(n482), .Y(n489) );
  AOI31X1 U626 ( .A0(counter[1]), .A1(n505), .A2(counter[2]), .B0(n452), .Y(
        n482) );
  CLKBUFX3 U627 ( .A(n486), .Y(n490) );
  NOR2BX1 U628 ( .AN(n453), .B(counter[2]), .Y(n486) );
  AO22X1 U629 ( .A0(n1390), .A1(N72), .B0(N295), .B1(n533), .Y(n245) );
  CLKBUFX3 U630 ( .A(N395), .Y(n492) );
  NAND4BX1 U631 ( .AN(n1420), .B(N71), .C(N70), .D(N72), .Y(N395) );
  NAND4BX1 U632 ( .AN(N66), .B(N67), .C(N68), .D(N69), .Y(n1420) );
  CLKAND2X3 U633 ( .A(n453), .B(counter[2]), .Y(n483) );
  BUFX16 U634 ( .A(N228), .Y(lbp_data[4]) );
  NOR3X4 U635 ( .A(n505), .B(n1800), .C(n126), .Y(n790) );
  NOR2X1 U636 ( .A(n538), .B(n1750), .Y(n1380) );
  AO22X1 U638 ( .A0(n531), .A1(N79), .B0(N286), .B1(n1370), .Y(n233) );
  AO22X1 U639 ( .A0(n531), .A1(N78), .B0(N285), .B1(n1370), .Y(n234) );
  AO22X1 U640 ( .A0(n531), .A1(N77), .B0(N284), .B1(n1370), .Y(n235) );
  AO22X1 U641 ( .A0(n531), .A1(N76), .B0(N283), .B1(n1370), .Y(n236) );
  AO22X1 U642 ( .A0(n531), .A1(N75), .B0(N282), .B1(n1370), .Y(n237) );
  AO22X1 U643 ( .A0(n531), .A1(N74), .B0(N281), .B1(n1370), .Y(n239) );
  AO22X1 U644 ( .A0(n1390), .A1(N71), .B0(N294), .B1(n533), .Y(n244) );
  NAND2XL U645 ( .A(n532), .B(n129), .Y(n2280) );
  OAI21XL U646 ( .A0(n58), .A1(n536), .B0(n568), .Y(n129) );
  BUFX16 U647 ( .A(N252), .Y(lbp_data[5]) );
  AO22X1 U648 ( .A0(n1390), .A1(N70), .B0(N293), .B1(n533), .Y(n243) );
  AO22X1 U650 ( .A0(n1390), .A1(N69), .B0(N292), .B1(n533), .Y(n242) );
  AO22X1 U651 ( .A0(n1390), .A1(N68), .B0(N291), .B1(n533), .Y(n241) );
  AO22X1 U652 ( .A0(n1390), .A1(N67), .B0(N290), .B1(n533), .Y(n240) );
  NOR2X1 U653 ( .A(counter[3]), .B(n1810), .Y(n124) );
  AND3X2 U654 ( .A(n124), .B(n1820), .C(n536), .Y(n740) );
  AO22X1 U655 ( .A0(n1390), .A1(N66), .B0(N289), .B1(n533), .Y(n246) );
  BUFX16 U656 ( .A(N263), .Y(lbp_data[6]) );
  NAND4BX1 U657 ( .AN(n141), .B(N78), .C(N77), .D(N79), .Y(n60) );
  NAND4BX1 U658 ( .AN(N73), .B(N74), .C(N75), .D(N76), .Y(n141) );
  NAND3X1 U659 ( .A(n505), .B(n1820), .C(n124), .Y(n1160) );
  OAI21XL U660 ( .A0(n1810), .A1(n130), .B0(n1320), .Y(n2300) );
  NAND4XL U661 ( .A(n1330), .B(n1810), .C(n536), .D(n539), .Y(n1320) );
  OAI22XL U662 ( .A0(n1800), .A1(n130), .B0(n127), .B1(n530), .Y(n2290) );
  OAI32XL U663 ( .A0(n530), .A1(n505), .A2(n539), .B0(n1820), .B1(n1350), .Y(
        n232) );
  NOR2X1 U664 ( .A(n1340), .B(n1750), .Y(n1330) );
  OAI22XL U665 ( .A0(n505), .A1(n529), .B0(n536), .B1(n530), .Y(n2310) );
  OAI21XL U666 ( .A0(n58), .A1(n536), .B0(n1740), .Y(n177) );
  NAND2XL U667 ( .A(n1730), .B(n529), .Y(n1760) );
  AOI21X1 U668 ( .A0(n505), .A1(counter[3]), .B0(counter[1]), .Y(n452) );
  NOR2X1 U669 ( .A(n489), .B(n505), .Y(n453) );
  NOR2X1 U670 ( .A(n489), .B(n4010), .Y(n455) );
  NOR2X1 U671 ( .A(counter[1]), .B(counter[2]), .Y(n454) );
  AOI222XL U672 ( .A0(n1430), .A1(n490), .B0(N66), .B1(n485), .C0(N140), .C1(
        n491), .Y(n456) );
  NAND2X1 U673 ( .A(n457), .B(n456), .Y(N320) );
  AOI22X1 U674 ( .A0(n1560), .A1(n483), .B0(N95), .B1(n489), .Y(n459) );
  AOI222XL U675 ( .A0(N81), .A1(n490), .B0(N67), .B1(n485), .C0(n1560), .C1(
        n491), .Y(n458) );
  NAND2X1 U676 ( .A(n459), .B(n458), .Y(N321) );
  AOI22X1 U677 ( .A0(N165), .A1(n483), .B0(N96), .B1(n489), .Y(n461) );
  AOI222XL U678 ( .A0(N82), .A1(n490), .B0(N68), .B1(n485), .C0(N142), .C1(
        n491), .Y(n460) );
  NAND2X1 U679 ( .A(n461), .B(n460), .Y(N322) );
  AOI22X1 U680 ( .A0(N166), .A1(n483), .B0(N97), .B1(n489), .Y(n463) );
  AOI222XL U681 ( .A0(N83), .A1(n490), .B0(N69), .B1(n485), .C0(N143), .C1(
        n491), .Y(n462) );
  NAND2X1 U682 ( .A(n463), .B(n462), .Y(N323) );
  AOI22X1 U683 ( .A0(N167), .A1(n483), .B0(N98), .B1(n489), .Y(n465) );
  AOI222XL U684 ( .A0(N84), .A1(n490), .B0(N70), .B1(n485), .C0(N144), .C1(
        n491), .Y(n464) );
  NAND2X1 U685 ( .A(n465), .B(n464), .Y(N324) );
  AOI222XL U687 ( .A0(N85), .A1(n490), .B0(N71), .B1(n485), .C0(N145), .C1(
        n491), .Y(n466) );
  AOI22X1 U689 ( .A0(N169), .A1(n483), .B0(N100), .B1(n489), .Y(n469) );
  AOI222XL U690 ( .A0(N86), .A1(n490), .B0(N72), .B1(n485), .C0(N146), .C1(
        n491), .Y(n468) );
  NAND2X1 U691 ( .A(n469), .B(n468), .Y(N326) );
  AOI22X1 U692 ( .A0(N170), .A1(n483), .B0(N101), .B1(n489), .Y(n471) );
  AOI222XL U693 ( .A0(N87), .A1(n490), .B0(N73), .B1(n485), .C0(N147), .C1(
        n491), .Y(n470) );
  NAND2X1 U694 ( .A(n471), .B(n470), .Y(N327) );
  AOI222XL U696 ( .A0(N88), .A1(n490), .B0(N74), .B1(n485), .C0(N148), .C1(
        n491), .Y(n472) );
  NAND2X1 U697 ( .A(n473), .B(n472), .Y(N328) );
  AOI22X1 U698 ( .A0(N172), .A1(n483), .B0(N103), .B1(n489), .Y(n475) );
  AOI222XL U699 ( .A0(N89), .A1(n490), .B0(N75), .B1(n485), .C0(N149), .C1(
        n491), .Y(n474) );
  NAND2X1 U700 ( .A(n475), .B(n474), .Y(N329) );
  AOI22X1 U701 ( .A0(N173), .A1(n483), .B0(N104), .B1(n489), .Y(n477) );
  AOI222XL U702 ( .A0(N90), .A1(n490), .B0(N76), .B1(n485), .C0(N150), .C1(
        n491), .Y(n476) );
  NAND2X1 U703 ( .A(n477), .B(n476), .Y(N330) );
  AOI22X1 U704 ( .A0(N174), .A1(n483), .B0(N105), .B1(n489), .Y(n479) );
  AOI222XL U705 ( .A0(N91), .A1(n490), .B0(N77), .B1(n485), .C0(N151), .C1(
        n491), .Y(n478) );
  NAND2X1 U706 ( .A(n479), .B(n478), .Y(N331) );
  AOI22X1 U707 ( .A0(N175), .A1(n483), .B0(N106), .B1(n489), .Y(n481) );
  AOI222XL U708 ( .A0(N92), .A1(n490), .B0(N78), .B1(n485), .C0(N152), .C1(
        n491), .Y(n480) );
  NAND2X1 U709 ( .A(n481), .B(n480), .Y(N332) );
  AOI222XL U711 ( .A0(N93), .A1(n490), .B0(N79), .B1(n485), .C0(N153), .C1(
        n491), .Y(n487) );
  OAI211X2 U713 ( .A0(gray_data[6]), .A1(n1590), .B0(n521), .C0(n520), .Y(n522) );
  XOR2X1 U714 ( .A(r456_GE_LT_GT_LE), .B(lbp_data[6]), .Y(N253) );
  XOR2X1 U715 ( .A(lbp_data[7]), .B(add_71_carry[7]), .Y(N231) );
  AND2X1 U716 ( .A(add_71_carry[6]), .B(lbp_data[6]), .Y(add_71_carry[7]) );
  XOR2X1 U717 ( .A(lbp_data[6]), .B(add_71_carry[6]), .Y(N230) );
  XOR2X1 U718 ( .A(r456_GE_LT_GT_LE), .B(lbp_data[5]), .Y(N229) );
  XOR2X1 U719 ( .A(lbp_data[7]), .B(add_67_carry[7]), .Y(N208) );
  AND2X1 U720 ( .A(add_67_carry[6]), .B(lbp_data[6]), .Y(add_67_carry[7]) );
  XOR2X1 U721 ( .A(r456_GE_LT_GT_LE), .B(lbp_data[4]), .Y(N205) );
  XOR2X1 U722 ( .A(lbp_data[7]), .B(add_63_carry[7]), .Y(N185) );
  AND2X1 U723 ( .A(add_63_carry[5]), .B(lbp_data[5]), .Y(add_63_carry[6]) );
  XOR2X1 U724 ( .A(r456_GE_LT_GT_LE), .B(lbp_data[3]), .Y(N181) );
  XOR2X1 U725 ( .A(lbp_data[6]), .B(add_55_carry[6]), .Y(N138) );
  XOR2X1 U726 ( .A(lbp_data[5]), .B(add_55_carry[5]), .Y(N137) );
  XOR2X1 U727 ( .A(lbp_data[4]), .B(add_55_carry[4]), .Y(N136) );
  AND2X1 U728 ( .A(add_55_carry[3]), .B(lbp_data[3]), .Y(add_55_carry[4]) );
  XOR2X1 U729 ( .A(lbp_data[3]), .B(add_55_carry[3]), .Y(N135) );
  XOR2X1 U730 ( .A(lbp_data[2]), .B(add_55_carry[2]), .Y(N134) );
  AND2X1 U731 ( .A(lbp_data[1]), .B(r456_GE_LT_GT_LE), .Y(add_55_carry[2]) );
  XOR2X1 U732 ( .A(r456_GE_LT_GT_LE), .B(lbp_data[1]), .Y(N133) );
  XOR2X1 U733 ( .A(lbp_data[5]), .B(add_51_carry[5]), .Y(N114) );
  XOR2X1 U734 ( .A(r456_GE_LT_GT_LE), .B(lbp_data[7]), .Y(N264) );
  XOR2X1 U735 ( .A(lbp_data[7]), .B(add_59_carry[7]), .Y(N162) );
  AND2X1 U736 ( .A(add_59_carry[6]), .B(lbp_data[6]), .Y(add_59_carry[7]) );
  XOR2X1 U737 ( .A(lbp_data[6]), .B(add_59_carry[6]), .Y(N161) );
  XOR2X1 U738 ( .A(lbp_data[5]), .B(add_59_carry[5]), .Y(N160) );
  AND2X1 U739 ( .A(add_59_carry[4]), .B(lbp_data[4]), .Y(add_59_carry[5]) );
  XOR2X1 U740 ( .A(lbp_data[4]), .B(add_59_carry[4]), .Y(N159) );
  XOR2X1 U741 ( .A(lbp_data[3]), .B(add_59_carry[3]), .Y(N158) );
  XOR2X1 U742 ( .A(r456_GE_LT_GT_LE), .B(lbp_data[2]), .Y(N157) );
  XOR2X1 U743 ( .A(r456_GE_LT_GT_LE), .B(lbp_data[0]), .Y(N109) );
  AND2X1 U744 ( .A(N66), .B(n492), .Y(N397) );
  AND2X1 U745 ( .A(N67), .B(n492), .Y(N398) );
  AND2X1 U746 ( .A(N68), .B(n492), .Y(N399) );
  AND2X1 U747 ( .A(N69), .B(n492), .Y(N400) );
  AND2X1 U748 ( .A(N70), .B(n492), .Y(N401) );
  AND2X1 U749 ( .A(N71), .B(n492), .Y(N402) );
  AND2X1 U750 ( .A(n492), .B(N72), .Y(N403) );
  NOR2BX1 U751 ( .AN(data[4]), .B(gray_data[4]), .Y(n513) );
  OAI22XL U752 ( .A0(n513), .A1(n525), .B0(data[5]), .B1(n513), .Y(n521) );
  NAND2BX1 U753 ( .AN(data[2]), .B(gray_data[2]), .Y(n519) );
  NOR2BX1 U754 ( .AN(data[2]), .B(gray_data[2]), .Y(n515) );
  INVX1 U331 ( .A(n571), .Y(n572) );
  INVX12 U335 ( .A(n571), .Y(gray_addr[5]) );
  LBP_DW01_inc_0_DW01_inc_1 add_86 ( .A({N79, N78, N77, N76, N75, N74, N73}), 
        .SUM({N286, N285, N284, N283, N282, N281, N280}) );
  LBP_DW01_inc_1_DW01_inc_2 r455 ( .A({n540, n541, n542, n543, n544, n545, 
        n546, n547, n572, n549, n550, n551, gray_addr[1], N140}), .SUM({N107, 
        N106, N105, N104, N103, N102, N101, N100, N99, N98, N97, N96, N95, N94}) );
  LBP_DW01_inc_2_DW01_inc_3 add_91_aco ( .A({N403, N402, N401, N400, N399, 
        N398, N397}), .SUM({N295, N294, N293, N292, N291, N290, N289}) );
  DFFX1 lbp_addr_reg_13_ ( .D(n197), .CK(clk), .Q(n554) );
  DFFRX1 gray_addr_reg_5_ ( .D(n218), .CK(clk), .RN(n526), .QN(n571) );
  OR2X2 U330 ( .A(n525), .B(n511), .Y(n447) );
  AND2X1 U394 ( .A(lbp_data[5]), .B(r456_GE_LT_GT_LE), .Y(add_71_carry[6]) );
  AND2X1 U405 ( .A(lbp_data[4]), .B(r456_GE_LT_GT_LE), .Y(add_67_carry[5]) );
  OR2X2 U406 ( .A(n549), .B(r459_carry[4]), .Y(r459_carry[5]) );
  OR2X2 U411 ( .A(n549), .B(sub_47_carry_4_), .Y(sub_47_carry_5_) );
  AND2X1 U420 ( .A(add_62_carry[7]), .B(n546), .Y(add_62_carry[8]) );
  AND2X1 U429 ( .A(add_62_carry[6]), .B(n547), .Y(add_62_carry[7]) );
  XNOR2X1 U439 ( .A(r459_carry[5]), .B(n572), .Y(N145) );
  XNOR2X1 U448 ( .A(sub_47_carry_5_), .B(n572), .Y(N85) );
  XNOR2X1 U457 ( .A(r459_carry[6]), .B(n547), .Y(N146) );
  XOR2X1 U467 ( .A(n543), .B(add_62_carry[10]), .Y(N173) );
  XNOR2X1 U468 ( .A(n540), .B(sub_47_carry_13_), .Y(N93) );
  BUFX2 U470 ( .A(n484), .Y(n491) );
  AOI22XL U506 ( .A0(N168), .A1(n483), .B0(N99), .B1(n489), .Y(n467) );
  AOI22XL U522 ( .A0(N171), .A1(n483), .B0(N102), .B1(n489), .Y(n473) );
  AOI22XL U527 ( .A0(N176), .A1(n483), .B0(N107), .B1(n489), .Y(n488) );
  AO22XL U582 ( .A0(lbp_data[0]), .A1(n535), .B0(lbp_data[0]), .B1(n730), .Y(
        n1140) );
  AO22XL U593 ( .A0(N158), .A1(n537), .B0(lbp_data[3]), .B1(n790), .Y(n960) );
  NAND2XL U603 ( .A(n467), .B(n466), .Y(N325) );
  NAND2XL U604 ( .A(n488), .B(n487), .Y(N333) );
  INVX1 U637 ( .A(n1820), .Y(n539) );
  BUFX2 U649 ( .A(n670), .Y(n494) );
  AO22XL U686 ( .A0(N79), .A1(n495), .B0(lbp_addr[13]), .B1(n527), .Y(n197) );
  AO22XL U688 ( .A0(N78), .A1(n495), .B0(lbp_addr[12]), .B1(n527), .Y(n196) );
  AO22XL U695 ( .A0(N68), .A1(n495), .B0(lbp_addr[2]), .B1(n527), .Y(n186) );
  AO22XL U710 ( .A0(n531), .A1(N73), .B0(N280), .B1(n1370), .Y(n238) );
endmodule

