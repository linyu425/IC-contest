/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Wed Mar 13 21:39:40 2024
/////////////////////////////////////////////////////////////


module huffman_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1, n2;
  wire   [9:1] carry;

  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  AND2X2 U2 ( .A(A[8]), .B(carry[8]), .Y(n2) );
  XOR2X1 U3 ( .A(A[8]), .B(carry[8]), .Y(SUM[8]) );
  XOR2X1 U4 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  XOR2X1 U5 ( .A(A[9]), .B(n2), .Y(SUM[9]) );
endmodule


module huffman_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module huffman_DW01_inc_1 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module huffman_DW01_inc_2 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module huffman_DW01_inc_3 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module huffman_DW01_inc_4 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module huffman_DW01_inc_5 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
endmodule


module huffman_DW01_inc_6 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module huffman_DW01_inc_7 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module huffman_DW01_inc_8 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKINVX1 U1 ( .A(A[0]), .Y(SUM[0]) );
  XOR2X1 U2 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
endmodule


module huffman ( clk, reset, gray_valid, gray_data, CNT_valid, CNT1, CNT2, 
        CNT3, CNT4, CNT5, CNT6, code_valid, HC1, HC2, HC3, HC4, HC5, HC6, M1, 
        M2, M3, M4, M5, M6 );
  input [7:0] gray_data;
  output [7:0] CNT1;
  output [7:0] CNT2;
  output [7:0] CNT3;
  output [7:0] CNT4;
  output [7:0] CNT5;
  output [7:0] CNT6;
  output [7:0] HC1;
  output [7:0] HC2;
  output [7:0] HC3;
  output [7:0] HC4;
  output [7:0] HC5;
  output [7:0] HC6;
  output [7:0] M1;
  output [7:0] M2;
  output [7:0] M3;
  output [7:0] M4;
  output [7:0] M5;
  output [7:0] M6;
  input clk, reset, gray_valid;
  output CNT_valid, code_valid;
  wire   N455, \mask[5][7] , \mask[5][6] , \mask[5][5] , \mask[5][4] ,
         \mask[5][3] , \mask[5][2] , \mask[5][1] , \mask[5][0] , \mask[4][7] ,
         \mask[4][6] , \mask[4][5] , \mask[4][4] , \mask[4][3] , \mask[4][2] ,
         \mask[4][1] , \mask[4][0] , \mask[3][7] , \mask[3][6] , \mask[3][5] ,
         \mask[3][4] , \mask[3][3] , \mask[3][2] , \mask[3][1] , \mask[3][0] ,
         \mask[2][7] , \mask[2][6] , \mask[2][5] , \mask[2][4] , \mask[2][3] ,
         \mask[2][2] , \mask[2][1] , \mask[2][0] , \mask[1][7] , \mask[1][6] ,
         \mask[1][5] , \mask[1][4] , \mask[1][3] , \mask[1][2] , \mask[1][1] ,
         \mask[1][0] , \mask[0][7] , \mask[0][6] , \mask[0][5] , \mask[0][4] ,
         \mask[0][3] , \mask[0][2] , \mask[0][1] , \mask[0][0] , N482, N483,
         N484, N485, N486, N487, N488, N498, N499, N500, N501, N502, N503,
         N504, N556, N557, N558, N559, N560, N561, N562, \group[5][5] ,
         \group[5][4] , \group[5][3] , \group[5][2] , \group[5][1] ,
         \group[5][0] , \group[4][5] , \group[4][4] , \group[4][3] ,
         \group[4][2] , \group[4][1] , \group[4][0] , \group[3][5] ,
         \group[3][4] , \group[3][3] , \group[3][2] , \group[3][1] ,
         \group[3][0] , \group[2][5] , \group[2][4] , \group[2][3] ,
         \group[2][2] , \group[2][1] , \group[2][0] , \group[1][5] ,
         \group[1][4] , \group[1][3] , \group[1][2] , \group[1][1] ,
         \group[1][0] , \group[0][5] , \group[0][4] , \group[0][3] ,
         \group[0][2] , \group[0][1] , \group[0][0] , \group_values[5][9] ,
         \group_values[5][8] , \group_values[5][7] , \group_values[5][6] ,
         \group_values[5][5] , \group_values[5][4] , \group_values[5][3] ,
         \group_values[5][2] , \group_values[5][1] , \group_values[5][0] ,
         \group_values[4][9] , \group_values[4][8] , \group_values[4][7] ,
         \group_values[4][6] , \group_values[4][5] , \group_values[4][4] ,
         \group_values[4][3] , \group_values[4][2] , \group_values[4][1] ,
         \group_values[4][0] , \group_values[3][9] , \group_values[3][8] ,
         \group_values[3][7] , \group_values[3][6] , \group_values[3][5] ,
         \group_values[3][4] , \group_values[3][3] , \group_values[3][2] ,
         \group_values[3][1] , \group_values[3][0] , \group_values[2][9] ,
         \group_values[2][8] , \group_values[2][7] , \group_values[2][6] ,
         \group_values[2][5] , \group_values[2][4] , \group_values[2][3] ,
         \group_values[2][2] , \group_values[2][1] , \group_values[2][0] ,
         N598, N599, N600, N601, N602, N603, N604, N605, N606, N607,
         \huffman_code[5][6] , \huffman_code[5][5] , \huffman_code[5][4] ,
         \huffman_code[5][3] , \huffman_code[5][2] , \huffman_code[5][1] ,
         \huffman_code[5][0] , \huffman_code[4][6] , \huffman_code[4][5] ,
         \huffman_code[4][4] , \huffman_code[4][3] , \huffman_code[4][2] ,
         \huffman_code[4][1] , \huffman_code[4][0] , \huffman_code[3][6] ,
         \huffman_code[3][5] , \huffman_code[3][4] , \huffman_code[3][3] ,
         \huffman_code[3][2] , \huffman_code[3][1] , \huffman_code[3][0] ,
         \huffman_code[2][6] , \huffman_code[2][5] , \huffman_code[2][4] ,
         \huffman_code[2][3] , \huffman_code[2][2] , \huffman_code[2][1] ,
         \huffman_code[2][0] , \huffman_code[1][0] , \huffman_code[0][0] ,
         \min2_idx[0] , N640, N641, N642, N643, N644, N645, N659, N660, N661,
         N662, N663, N664, N709, N710, N711, N712, N713, N714, N715, N716,
         N717, N718, N719, N720, N721, N722, N723, N724, N725, N726, N727,
         N728, N729, N730, N731, N732, N733, N734, N735, N736, N737, N738,
         N739, N740, N741, N742, N743, N744, N745, N746, N747, N748, N749,
         N750, N751, N752, N753, N754, N755, N756, N795, N796, N797, N798,
         N799, N800, N801, N802, N803, N804, N811, N812, N813, N814, N815,
         N816, N817, N818, N819, N820, N821, N822, N823, N824, N825, N826,
         N827, N828, N1032, N1036, N1096, N1097, N1116, N1117, N1118, N2981,
         n49, n52, n53, n54, n97, n100, n101, n102, n107, n108, n109, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n194, n195, n196, n197, n198, n199, n200,
         n201, n203, n204, n205, n206, n207, n208, n209, n210, n212, n213,
         n214, n215, n216, n217, n218, n219, n221, n222, n223, n224, n225,
         n226, n227, n228, n230, n231, n232, n233, n234, n235, n236, n237,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n261,
         n262, n263, n264, n265, n266, n267, n268, n269, n270, n271, n272,
         n273, n274, n275, n276, n277, n278, n279, n280, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n292, n293, n294, n304,
         n305, n306, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n428,
         n429, n430, n431, n433, n435, n436, n437, n438, n439, n440, n441,
         n442, n443, n444, n445, n446, n447, n448, n450, n451, n452, n453,
         n454, n455, n456, n457, n458, n459, n460, n461, n462, n463, n464,
         n465, n466, n467, n468, n470, n471, n472, n473, n474, n475, n476,
         n477, n478, n479, n480, n481, n482, n483, n484, n485, n486, n487,
         n488, n489, n490, n491, n492, n493, n494, n495, n496, n497, n498,
         n499, n500, n501, n502, n503, n504, n505, n506, n507, n508, n509,
         n510, n511, n512, n513, n514, n515, n516, n517, n518, n519, n520,
         n521, n522, n523, n524, n525, n526, n527, n528, n529, n530, n531,
         n532, n533, n534, n535, n536, n537, n538, n539, n540, n541, n542,
         n543, n544, n545, n546, n547, n548, n549, n550, n551, n552, n553,
         n554, n555, n556, n557, n558, n559, n560, n561, n562, n563, n564,
         n565, n566, n567, n568, n569, n570, n571, n572, n573, n574, n575,
         n576, n577, n578, n579, n580, n581, n582, n583, n584, n585, n586,
         n587, n588, n589, n590, n591, n592, n593, n594, n595, n596, n597,
         n598, n599, n600, n601, n602, n603, n604, n605, n606, n607, n608,
         n609, n610, n611, n612, n613, n614, n615, n616, n617, n618, n619,
         n620, n621, n622, n623, n624, n625, n626, n627, n628, n629, n630,
         n631, n632, n633, n634, n635, n636, n637, n638, n639, n640, n641,
         n642, n643, n644, n645, n646, n647, n648, n649, n650, n651, n652,
         n653, n654, n655, n656, n657, n658, n659, n660, n661, n662, n663,
         n664, n665, n666, n667, n668, n669, n670, n671, n672, n673, n674,
         n675, n676, n677, n678, n679, n680, n681, n682, n683, n684, n685,
         n686, n687, n688, n689, n690, n691, n692, n693, n694, n695, n696,
         n697, n698, n699, n700, n701, n702, n703, n704, n705, n706, n707,
         n708, n709, n710, n711, n712, n713, n714, n715, n716, n717, n718,
         n719, n720, n721, n722, n723, n724, n725, n726, n727, n728, n729,
         n730, n731, n732, n733, n734, n735, n736, n737, n738, n739, n740,
         n741, n742, n743, n744, n745, n746, n747, n748, n749, n750, n751,
         n752, n753, n754, n755, n756, n757, n758, n759, n760, n761, n762,
         n763, n764, n765, n766, n767, n768, n769, n770, n771, n772, n773,
         n774, n775, n776, n777, n778, n779, n780, n781, n782, n783, n784,
         n785, n786, n787, n788, n789, n790, n791, n792, n793, n794, n795,
         n796, n797, n798, n799, n800, n801, n802, n803, n804, n805, n806,
         n807, n808, n809, n810, n811, n812, n813, n814, n815, n816, n817,
         n818, n819, n820, n821, n822, n823, n824, n825, n826, n827, n828,
         n829, n830, n831, n832, n833, n834, n835, n836, n837, n838, n839,
         n840, n841, n842, n843, n844, n845, n846, n847, n848, n849, n850,
         n851, n852, n853, n854, n855, n856, n857, n858, n859, n860, n861,
         n862, n863, n864, n865, n866, n867, n868, n869, n870, n871, n872,
         n873, n874, n875, n876, n877, n878, n879, n880, n881, n882, n883,
         n884, n885, n886, n887, n888, n889, n890, n891, n892, n893, n894,
         n895, n896, n897, n898, n899, n900, n901, n902, n903, n904, n905,
         n906, n907, n908, n909, n910, n911, n912, n913, n914, n915, n916,
         n917, n918, n919, n920, n921, n922, n923, n924, n925, n926, n927,
         n928, n929, n930, n931, n932, n933, n934, n935, n936, n937, n938,
         n939, n940, n941, n942, n943, n944, n945, n946, n947, n948, n949,
         n950, n951, n952, n953, n954, n955, n956, n957, n958, n959, n960,
         n961, n962, n963, n964, n965, n966, n967, n968, n969, n970, n971,
         n972, n973, n974, n975, n976, n977, n978, n979, n980, n981, n982,
         n983, n984, n985, n986, n987, n988, n989, n990, n991, n992, n993,
         n994, n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003, n1004,
         n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014,
         n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024,
         n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034,
         n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044,
         n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053, N1105,
         N1104, N1103, N1102, N1084, N1083, N1082, N1081,
         \add_2_root_add_298_5/carry[1] , \add_2_root_add_309_5/carry[1] ,
         n1054, n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063,
         n1064, n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073,
         n1074, n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083,
         n1084, n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093,
         n1094, n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103,
         n1104, n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113,
         n1114, n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123,
         n1124, n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133,
         n1134, n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143,
         n1144, n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153,
         n1154, n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163,
         n1164, n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172, n1173,
         n1174, n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183,
         n1184, n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193,
         n1194, n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203,
         n1204, n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213,
         n1214, n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223,
         n1224, n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233,
         n1234, n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243,
         n1244, n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253,
         n1254, n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1263,
         n1264, n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272, n1273,
         n1274, n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283,
         n1284, n1285, n1286, n1287, n1288, n1289;
  wire   [2:0] cur_state;
  wire   [6:0] counter_init;
  wire   [6:0] counter;
  wire   [6:0] counter_fin;
  wire   [2:0] next_state;
  wire   [9:0] min1_value;
  wire   [2:0] min1_idx;
  wire   [9:0] min2_value;
  assign CNT_valid = N455;
  assign code_valid = N2981;

  OAI211X2 U759 ( .A0(n1166), .A1(n140), .B0(n655), .C0(n656), .Y(N604) );
  OAI211X2 U765 ( .A0(n1166), .A1(n138), .B0(n659), .C0(n660), .Y(N602) );
  OAI211X2 U774 ( .A0(n1166), .A1(n135), .B0(n665), .C0(n666), .Y(N599) );
  DFFRX1 \huffman_code_reg[4][7]  ( .D(n686), .CK(clk), .RN(n1128), .QN(n152)
         );
  DFFRX1 \huffman_code_reg[3][7]  ( .D(n702), .CK(clk), .RN(n1129), .QN(n160)
         );
  DFFRX1 \huffman_code_reg[2][7]  ( .D(n718), .CK(clk), .RN(n1130), .QN(n168)
         );
  DFFRX1 \huffman_code_reg[1][7]  ( .D(n734), .CK(clk), .RN(n1131), .QN(n176)
         );
  DFFRX1 \huffman_code_reg[0][7]  ( .D(n750), .CK(clk), .RN(n1124), .QN(n184)
         );
  DFFRX1 \huffman_code_reg[5][7]  ( .D(n766), .CK(clk), .RN(n1124), .QN(n144)
         );
  DFFRX1 \huffman_code_reg[0][6]  ( .D(n751), .CK(clk), .RN(n1127), .QN(n185)
         );
  DFFRX1 \huffman_code_reg[2][6]  ( .D(n719), .CK(clk), .RN(n1130), .Q(
        \huffman_code[2][6] ), .QN(n169) );
  DFFRX1 \huffman_code_reg[0][0]  ( .D(n765), .CK(clk), .RN(n1127), .Q(
        \huffman_code[0][0] ), .QN(n191) );
  DFFRX1 \huffman_code_reg[0][2]  ( .D(n755), .CK(clk), .RN(n1127), .QN(n189)
         );
  DFFRX1 \huffman_code_reg[0][3]  ( .D(n754), .CK(clk), .RN(n1127), .QN(n188)
         );
  DFFRX1 \huffman_code_reg[0][4]  ( .D(n753), .CK(clk), .RN(n1127), .QN(n187)
         );
  DFFRX1 \huffman_code_reg[0][5]  ( .D(n752), .CK(clk), .RN(n1127), .QN(n186)
         );
  DFFRX1 \huffman_code_reg[0][1]  ( .D(n756), .CK(clk), .RN(n1127), .QN(n190)
         );
  DFFRX1 \huffman_code_reg[2][5]  ( .D(n720), .CK(clk), .RN(n1130), .Q(
        \huffman_code[2][5] ), .QN(n170) );
  DFFRX1 \huffman_code_reg[2][4]  ( .D(n721), .CK(clk), .RN(n1131), .Q(
        \huffman_code[2][4] ), .QN(n171) );
  DFFRX1 \huffman_code_reg[2][3]  ( .D(n722), .CK(clk), .RN(n1131), .Q(
        \huffman_code[2][3] ), .QN(n172) );
  DFFRX1 \huffman_code_reg[2][2]  ( .D(n723), .CK(clk), .RN(n1131), .Q(
        \huffman_code[2][2] ), .QN(n173) );
  DFFRX1 \huffman_code_reg[2][1]  ( .D(n724), .CK(clk), .RN(n1131), .Q(
        \huffman_code[2][1] ), .QN(n174) );
  DFFRX1 \huffman_code_reg[3][6]  ( .D(n703), .CK(clk), .RN(n1129), .Q(
        \huffman_code[3][6] ), .QN(n161) );
  DFFRX1 \huffman_code_reg[1][6]  ( .D(n735), .CK(clk), .RN(n1132), .QN(n177)
         );
  DFFRX1 \huffman_code_reg[1][0]  ( .D(n749), .CK(clk), .RN(n1125), .Q(
        \huffman_code[1][0] ), .QN(n183) );
  DFFRX1 \huffman_code_reg[2][0]  ( .D(n733), .CK(clk), .RN(n1131), .Q(
        \huffman_code[2][0] ), .QN(n175) );
  DFFRX1 \huffman_code_reg[5][6]  ( .D(n671), .CK(clk), .RN(n1124), .Q(
        \huffman_code[5][6] ), .QN(n145) );
  DFFRX1 \huffman_code_reg[3][5]  ( .D(n704), .CK(clk), .RN(n1129), .Q(
        \huffman_code[3][5] ), .QN(n162) );
  DFFRX1 \huffman_code_reg[3][4]  ( .D(n705), .CK(clk), .RN(n1129), .Q(
        \huffman_code[3][4] ), .QN(n163) );
  DFFRX1 \huffman_code_reg[3][3]  ( .D(n706), .CK(clk), .RN(n1129), .Q(
        \huffman_code[3][3] ), .QN(n164) );
  DFFRX1 \huffman_code_reg[3][2]  ( .D(n707), .CK(clk), .RN(n1129), .Q(
        \huffman_code[3][2] ), .QN(n165) );
  DFFRX1 \huffman_code_reg[3][1]  ( .D(n708), .CK(clk), .RN(n1129), .Q(
        \huffman_code[3][1] ), .QN(n166) );
  DFFRX1 \huffman_code_reg[1][5]  ( .D(n736), .CK(clk), .RN(n1132), .QN(n178)
         );
  DFFRX1 \huffman_code_reg[1][4]  ( .D(n737), .CK(clk), .RN(n1132), .QN(n179)
         );
  DFFRX1 \huffman_code_reg[1][3]  ( .D(n738), .CK(clk), .RN(n1132), .QN(n180)
         );
  DFFRX1 \huffman_code_reg[1][2]  ( .D(n739), .CK(clk), .RN(n1125), .QN(n181)
         );
  DFFRX1 \huffman_code_reg[1][1]  ( .D(n740), .CK(clk), .RN(n1125), .QN(n182)
         );
  DFFRX1 \huffman_code_reg[4][6]  ( .D(n687), .CK(clk), .RN(n1128), .Q(
        \huffman_code[4][6] ), .QN(n153) );
  DFFRX1 \huffman_code_reg[3][0]  ( .D(n717), .CK(clk), .RN(n1130), .Q(
        \huffman_code[3][0] ), .QN(n167) );
  DFFRX1 \huffman_code_reg[5][5]  ( .D(n672), .CK(clk), .RN(n1124), .Q(
        \huffman_code[5][5] ), .QN(n146) );
  DFFRX1 \huffman_code_reg[5][4]  ( .D(n673), .CK(clk), .RN(n1124), .Q(
        \huffman_code[5][4] ), .QN(n147) );
  DFFRX1 \huffman_code_reg[5][3]  ( .D(n674), .CK(clk), .RN(n1124), .Q(
        \huffman_code[5][3] ), .QN(n148) );
  DFFRX1 \huffman_code_reg[5][2]  ( .D(n675), .CK(clk), .RN(n1124), .Q(
        \huffman_code[5][2] ), .QN(n149) );
  DFFRX1 \huffman_code_reg[5][1]  ( .D(n676), .CK(clk), .RN(n1124), .Q(
        \huffman_code[5][1] ), .QN(n150) );
  DFFRX1 \huffman_code_reg[4][5]  ( .D(n688), .CK(clk), .RN(n1128), .Q(
        \huffman_code[4][5] ), .QN(n154) );
  DFFRX1 \huffman_code_reg[4][4]  ( .D(n689), .CK(clk), .RN(n1128), .Q(
        \huffman_code[4][4] ), .QN(n155) );
  DFFRX1 \huffman_code_reg[4][3]  ( .D(n690), .CK(clk), .RN(n1128), .Q(
        \huffman_code[4][3] ), .QN(n156) );
  DFFRX1 \huffman_code_reg[4][2]  ( .D(n691), .CK(clk), .RN(n1128), .Q(
        \huffman_code[4][2] ), .QN(n157) );
  DFFRX1 \huffman_code_reg[4][1]  ( .D(n692), .CK(clk), .RN(n1128), .Q(
        \huffman_code[4][1] ), .QN(n158) );
  DFFRX1 \huffman_code_reg[5][0]  ( .D(n685), .CK(clk), .RN(n1124), .Q(
        \huffman_code[5][0] ), .QN(n151) );
  DFFRX1 \huffman_code_reg[4][0]  ( .D(n701), .CK(clk), .RN(n1128), .Q(
        \huffman_code[4][0] ), .QN(n159) );
  DFFRX1 \mask_reg[1][3]  ( .D(n838), .CK(clk), .RN(n1118), .Q(\mask[1][3] ), 
        .QN(n233) );
  DFFRX1 \mask_reg[1][7]  ( .D(n830), .CK(clk), .RN(n1118), .Q(\mask[1][7] ), 
        .QN(n228) );
  DFFRX1 \mask_reg[1][2]  ( .D(n840), .CK(clk), .RN(n1118), .Q(\mask[1][2] ), 
        .QN(n234) );
  DFFRX1 \mask_reg[1][6]  ( .D(n832), .CK(clk), .RN(n1118), .Q(\mask[1][6] ), 
        .QN(n230) );
  DFFRX1 \counter_fin_reg[2]  ( .D(n1051), .CK(clk), .RN(n1123), .Q(
        counter_fin[2]), .QN(n102) );
  DFFRX1 \mask_reg[1][5]  ( .D(n834), .CK(clk), .RN(n1118), .Q(\mask[1][5] ), 
        .QN(n231) );
  DFFRX1 \mask_reg[1][1]  ( .D(n842), .CK(clk), .RN(n1118), .Q(\mask[1][1] ), 
        .QN(n235) );
  DFFRX1 \counter_fin_reg[3]  ( .D(n1050), .CK(clk), .RN(n1123), .Q(
        counter_fin[3]) );
  DFFRX1 \mask_reg[1][4]  ( .D(n836), .CK(clk), .RN(n1118), .Q(\mask[1][4] ), 
        .QN(n232) );
  DFFRX1 \mask_reg[1][0]  ( .D(n844), .CK(clk), .RN(n1118), .Q(\mask[1][0] ), 
        .QN(n236) );
  DFFRX1 \counter_fin_reg[1]  ( .D(n1053), .CK(clk), .RN(n1123), .Q(
        counter_fin[1]) );
  DFFRX1 \counter_fin_reg[0]  ( .D(n1052), .CK(clk), .RN(n1123), .Q(
        counter_fin[0]) );
  DFFRX1 \mask_reg[0][3]  ( .D(n854), .CK(clk), .RN(n1121), .Q(\mask[0][3] ), 
        .QN(n242) );
  DFFRX1 \mask_reg[0][7]  ( .D(n846), .CK(clk), .RN(n1056), .Q(\mask[0][7] ), 
        .QN(n237) );
  DFFRX1 \mask_reg[0][2]  ( .D(n856), .CK(clk), .RN(n1121), .Q(\mask[0][2] ), 
        .QN(n243) );
  DFFRX1 \mask_reg[0][6]  ( .D(n848), .CK(clk), .RN(n1120), .Q(\mask[0][6] ), 
        .QN(n239) );
  DFFRX1 \mask_reg[5][7]  ( .D(n862), .CK(clk), .RN(n1123), .Q(\mask[5][7] ), 
        .QN(n192) );
  DFFRX1 \mask_reg[3][7]  ( .D(n798), .CK(clk), .RN(n1119), .Q(\mask[3][7] ), 
        .QN(n210) );
  DFFRX1 \mask_reg[4][7]  ( .D(n782), .CK(clk), .RN(n1120), .Q(\mask[4][7] ), 
        .QN(n201) );
  DFFRX1 \mask_reg[2][7]  ( .D(n814), .CK(clk), .RN(n1119), .Q(\mask[2][7] ), 
        .QN(n219) );
  DFFRX1 \mask_reg[0][5]  ( .D(n850), .CK(clk), .RN(n1121), .Q(\mask[0][5] ), 
        .QN(n240) );
  DFFRX1 \mask_reg[0][1]  ( .D(n858), .CK(clk), .RN(n1121), .Q(\mask[0][1] ), 
        .QN(n244) );
  DFFRX1 \mask_reg[0][4]  ( .D(n852), .CK(clk), .RN(n1121), .Q(\mask[0][4] ), 
        .QN(n241) );
  DFFRX2 \pr_table_reg[0][7]  ( .D(n1039), .CK(clk), .RN(n1116), .Q(CNT1[7]), 
        .QN(n246) );
  DFFRX1 \mask_reg[5][3]  ( .D(n774), .CK(clk), .RN(n1121), .Q(\mask[5][3] ), 
        .QN(n197) );
  DFFRX1 \mask_reg[0][0]  ( .D(n860), .CK(clk), .RN(n1121), .Q(\mask[0][0] ), 
        .QN(n245) );
  DFFRX1 \mask_reg[4][3]  ( .D(n790), .CK(clk), .RN(n1120), .Q(\mask[4][3] ), 
        .QN(n206) );
  DFFRX1 \mask_reg[3][3]  ( .D(n806), .CK(clk), .RN(n1119), .Q(\mask[3][3] ), 
        .QN(n215) );
  DFFRX1 \mask_reg[5][2]  ( .D(n776), .CK(clk), .RN(n1120), .Q(\mask[5][2] ), 
        .QN(n198) );
  DFFRX1 \mask_reg[2][3]  ( .D(n822), .CK(clk), .RN(n1118), .Q(\mask[2][3] ), 
        .QN(n224) );
  DFFRX1 \mask_reg[4][2]  ( .D(n792), .CK(clk), .RN(n1120), .Q(\mask[4][2] ), 
        .QN(n207) );
  DFFRX1 \mask_reg[3][2]  ( .D(n808), .CK(clk), .RN(n1119), .Q(\mask[3][2] ), 
        .QN(n216) );
  DFFRX1 \mask_reg[5][6]  ( .D(n768), .CK(clk), .RN(n1121), .Q(\mask[5][6] ), 
        .QN(n194) );
  DFFRX1 \mask_reg[5][1]  ( .D(n778), .CK(clk), .RN(n1120), .Q(\mask[5][1] ), 
        .QN(n199) );
  DFFRX1 \counter_fin_reg[6]  ( .D(n1047), .CK(clk), .RN(n1123), .Q(
        counter_fin[6]) );
  DFFRX1 \mask_reg[4][6]  ( .D(n784), .CK(clk), .RN(n1120), .Q(\mask[4][6] ), 
        .QN(n203) );
  DFFRX1 \mask_reg[3][6]  ( .D(n800), .CK(clk), .RN(n1119), .Q(\mask[3][6] ), 
        .QN(n212) );
  DFFRX1 \mask_reg[4][1]  ( .D(n794), .CK(clk), .RN(n1120), .Q(\mask[4][1] ), 
        .QN(n208) );
  DFFRX1 \mask_reg[3][1]  ( .D(n810), .CK(clk), .RN(n1119), .Q(\mask[3][1] ), 
        .QN(n217) );
  DFFRX1 \mask_reg[2][2]  ( .D(n824), .CK(clk), .RN(n1118), .Q(\mask[2][2] ), 
        .QN(n225) );
  DFFRX1 \mask_reg[5][5]  ( .D(n770), .CK(clk), .RN(n1121), .Q(\mask[5][5] ), 
        .QN(n195) );
  DFFRX1 \counter_fin_reg[4]  ( .D(n1049), .CK(clk), .RN(n1123), .Q(
        counter_fin[4]) );
  DFFRX1 \mask_reg[4][5]  ( .D(n786), .CK(clk), .RN(n1120), .Q(\mask[4][5] ), 
        .QN(n204) );
  DFFRX1 \mask_reg[3][5]  ( .D(n802), .CK(clk), .RN(n1119), .Q(\mask[3][5] ), 
        .QN(n213) );
  DFFRX1 \mask_reg[2][1]  ( .D(n826), .CK(clk), .RN(n1118), .Q(\mask[2][1] ), 
        .QN(n226) );
  DFFRX1 \mask_reg[5][4]  ( .D(n772), .CK(clk), .RN(n1121), .Q(\mask[5][4] ), 
        .QN(n196) );
  DFFRX1 \mask_reg[2][6]  ( .D(n816), .CK(clk), .RN(n1119), .Q(\mask[2][6] ), 
        .QN(n221) );
  DFFRX1 \mask_reg[4][4]  ( .D(n788), .CK(clk), .RN(n1120), .Q(\mask[4][4] ), 
        .QN(n205) );
  DFFRX1 \mask_reg[3][4]  ( .D(n804), .CK(clk), .RN(n1119), .Q(\mask[3][4] ), 
        .QN(n214) );
  DFFRX1 \mask_reg[5][0]  ( .D(n780), .CK(clk), .RN(n1120), .Q(\mask[5][0] ), 
        .QN(n200) );
  DFFRX1 \mask_reg[4][0]  ( .D(n796), .CK(clk), .RN(n1120), .Q(\mask[4][0] ), 
        .QN(n209) );
  DFFRX1 \mask_reg[3][0]  ( .D(n812), .CK(clk), .RN(n1119), .Q(\mask[3][0] ), 
        .QN(n218) );
  DFFRX1 \mask_reg[2][5]  ( .D(n818), .CK(clk), .RN(n1119), .Q(\mask[2][5] ), 
        .QN(n222) );
  DFFRX1 \mask_reg[2][4]  ( .D(n820), .CK(clk), .RN(n1119), .Q(\mask[2][4] ), 
        .QN(n223) );
  DFFRX1 \mask_reg[2][0]  ( .D(n828), .CK(clk), .RN(n1118), .Q(\mask[2][0] ), 
        .QN(n227) );
  DFFRX1 \counter_fin_reg[5]  ( .D(n1048), .CK(clk), .RN(n1123), .Q(
        counter_fin[5]) );
  DFFRX2 \pr_table_reg[0][6]  ( .D(n1040), .CK(clk), .RN(n1116), .Q(CNT1[6]), 
        .QN(n247) );
  DFFRX1 \counter_init_reg[3]  ( .D(n987), .CK(clk), .RN(n1122), .Q(
        counter_init[3]) );
  DFFRX1 \counter_init_reg[4]  ( .D(n986), .CK(clk), .RN(n1121), .Q(
        counter_init[4]) );
  DFFRX1 \counter_init_reg[6]  ( .D(n991), .CK(clk), .RN(n1122), .Q(
        counter_init[6]) );
  DFFRX1 \counter_init_reg[5]  ( .D(n985), .CK(clk), .RN(n1121), .Q(
        counter_init[5]) );
  DFFRX2 \pr_table_reg[0][5]  ( .D(n1041), .CK(clk), .RN(n1117), .Q(CNT1[5]), 
        .QN(n248) );
  DFFRX2 \pr_table_reg[0][4]  ( .D(n1042), .CK(clk), .RN(n1117), .Q(CNT1[4]), 
        .QN(n249) );
  DFFRX1 \counter_reg[3]  ( .D(n994), .CK(clk), .RN(n1122), .Q(counter[3]), 
        .QN(n54) );
  DFFRX1 \counter_reg[4]  ( .D(n993), .CK(clk), .RN(n1122), .Q(counter[4]), 
        .QN(n53) );
  DFFRX1 \counter_reg[6]  ( .D(n998), .CK(clk), .RN(n1122), .Q(counter[6]), 
        .QN(n49) );
  DFFRX1 \counter_reg[5]  ( .D(n992), .CK(clk), .RN(n1122), .Q(counter[5]), 
        .QN(n52) );
  DFFRX2 \pr_table_reg[0][3]  ( .D(n1043), .CK(clk), .RN(n1117), .Q(CNT1[3]), 
        .QN(n250) );
  DFFSX1 \min1_value_reg[9]  ( .D(n872), .CK(clk), .SN(n1132), .Q(
        min1_value[9]), .QN(n114) );
  DFFRX2 \pr_table_reg[0][2]  ( .D(n1044), .CK(clk), .RN(n1117), .Q(CNT1[2]), 
        .QN(n251) );
  DFFRX2 \pr_table_reg[0][1]  ( .D(n1046), .CK(clk), .RN(n1117), .Q(CNT1[1]), 
        .QN(n252) );
  DFFRX2 \pr_table_reg[0][0]  ( .D(n1045), .CK(clk), .RN(n1117), .Q(CNT1[0]), 
        .QN(n253) );
  DFFSX1 \min1_value_reg[6]  ( .D(n875), .CK(clk), .SN(n1134), .Q(
        min1_value[6]), .QN(n117) );
  DFFRX1 \group_values_reg[1][9]  ( .D(n920), .CK(clk), .RN(n1113), .QN(n124)
         );
  DFFRX1 \group_values_reg[0][9]  ( .D(n930), .CK(clk), .RN(n1114), .QN(n134)
         );
  DFFRX1 \group_values_reg[2][9]  ( .D(n910), .CK(clk), .RN(n1115), .Q(
        \group_values[2][9] ) );
  DFFRX1 \group_values_reg[3][9]  ( .D(n900), .CK(clk), .RN(n1115), .Q(
        \group_values[3][9] ) );
  DFFSX1 \group_reg[0][0]  ( .D(n954), .CK(clk), .SN(n1133), .Q(\group[0][0] ), 
        .QN(n290) );
  DFFRX1 \group_reg[0][3]  ( .D(n957), .CK(clk), .RN(n1126), .Q(\group[0][3] ), 
        .QN(n287) );
  DFFRX1 \group_values_reg[5][9]  ( .D(n984), .CK(clk), .RN(n1111), .Q(
        \group_values[5][9] ) );
  DFFSX1 \min1_value_reg[8]  ( .D(n873), .CK(clk), .SN(n1132), .QN(n115) );
  DFFRX1 \group_values_reg[4][9]  ( .D(n890), .CK(clk), .RN(n1116), .Q(
        \group_values[4][9] ) );
  DFFRX1 \group_reg[1][3]  ( .D(n952), .CK(clk), .RN(n1126), .Q(\group[1][3] ), 
        .QN(n281) );
  DFFRX1 \group_reg[2][0]  ( .D(n945), .CK(clk), .RN(n1111), .Q(\group[2][0] ), 
        .QN(n278) );
  DFFRX1 \group_reg[1][0]  ( .D(n949), .CK(clk), .RN(n1111), .Q(\group[1][0] ), 
        .QN(n284) );
  DFFSX1 \group_reg[3][3]  ( .D(n963), .CK(clk), .SN(n1132), .Q(\group[3][3] ), 
        .QN(n269) );
  DFFRX1 \group_values_reg[0][6]  ( .D(n933), .CK(clk), .RN(n1114), .QN(n137)
         );
  DFFRX1 \group_reg[3][0]  ( .D(n942), .CK(clk), .RN(n1111), .Q(\group[3][0] ), 
        .QN(n272) );
  DFFRX1 \group_reg[5][0]  ( .D(n981), .CK(clk), .RN(n1111), .Q(\group[5][0] ), 
        .QN(n259) );
  DFFRX1 \group_reg[0][1]  ( .D(n955), .CK(clk), .RN(n1126), .Q(\group[0][1] ), 
        .QN(n289) );
  DFFRX1 \group_reg[0][4]  ( .D(n958), .CK(clk), .RN(n1127), .Q(\group[0][4] ), 
        .QN(n286) );
  DFFRX1 \group_reg[5][3]  ( .D(n972), .CK(clk), .RN(n1126), .Q(\group[5][3] ), 
        .QN(n256) );
  DFFRX1 \group_reg[4][0]  ( .D(n940), .CK(clk), .RN(n1111), .Q(\group[4][0] ), 
        .QN(n266) );
  DFFSX1 \min1_value_reg[7]  ( .D(n874), .CK(clk), .SN(n1134), .Q(
        min1_value[7]), .QN(n116) );
  DFFSX1 \min1_value_reg[3]  ( .D(n878), .CK(clk), .SN(n1133), .Q(
        min1_value[3]), .QN(n120) );
  DFFRX1 \group_values_reg[1][6]  ( .D(n923), .CK(clk), .RN(n1113), .QN(n127)
         );
  DFFRX1 \group_reg[4][3]  ( .D(n967), .CK(clk), .RN(n1126), .Q(\group[4][3] ), 
        .QN(n263) );
  DFFRX1 \group_reg[1][4]  ( .D(n953), .CK(clk), .RN(n1127), .Q(\group[1][4] ), 
        .QN(n280) );
  DFFRX1 \group_reg[0][2]  ( .D(n956), .CK(clk), .RN(n1126), .Q(\group[0][2] ), 
        .QN(n288) );
  DFFRX1 \group_reg[0][5]  ( .D(n959), .CK(clk), .RN(n1111), .Q(\group[0][5] ), 
        .QN(n285) );
  DFFRX1 \group_reg[2][1]  ( .D(n946), .CK(clk), .RN(n1125), .Q(\group[2][1] ), 
        .QN(n277) );
  DFFSX1 \group_reg[1][1]  ( .D(n950), .CK(clk), .SN(n1133), .Q(\group[1][1] ), 
        .QN(n283) );
  DFFSX1 \group_reg[2][2]  ( .D(n947), .CK(clk), .SN(n1133), .Q(\group[2][2] ), 
        .QN(n276) );
  DFFSX1 \min1_value_reg[0]  ( .D(n977), .CK(clk), .SN(n1132), .QN(n123) );
  DFFRX1 \group_values_reg[2][6]  ( .D(n913), .CK(clk), .RN(n1114), .Q(
        \group_values[2][6] ) );
  DFFRX1 \group_reg[1][5]  ( .D(n960), .CK(clk), .RN(n1111), .Q(\group[1][5] ), 
        .QN(n279) );
  DFFSX1 \min1_value_reg[2]  ( .D(n879), .CK(clk), .SN(n1132), .Q(
        min1_value[2]), .QN(n121) );
  DFFRX1 \group_reg[3][1]  ( .D(n943), .CK(clk), .RN(n1125), .Q(\group[3][1] ), 
        .QN(n271) );
  DFFRX1 \group_reg[3][4]  ( .D(n964), .CK(clk), .RN(n1127), .Q(\group[3][4] ), 
        .QN(n268) );
  DFFRX1 \group_reg[1][2]  ( .D(n951), .CK(clk), .RN(n1126), .Q(\group[1][2] ), 
        .QN(n282) );
  DFFSX1 \group_reg[4][4]  ( .D(n968), .CK(clk), .SN(n1132), .Q(\group[4][4] ), 
        .QN(n262) );
  DFFSX1 \min1_value_reg[1]  ( .D(n880), .CK(clk), .SN(n1133), .Q(
        min1_value[1]), .QN(n122) );
  DFFRX1 \group_values_reg[3][6]  ( .D(n903), .CK(clk), .RN(n1115), .Q(
        \group_values[3][6] ) );
  DFFRX1 \group_reg[5][1]  ( .D(n970), .CK(clk), .RN(n1126), .Q(\group[5][1] ), 
        .QN(n258) );
  DFFRX1 \group_reg[3][2]  ( .D(n944), .CK(clk), .RN(n1126), .Q(\group[3][2] ), 
        .QN(n270) );
  DFFRX1 \group_reg[5][4]  ( .D(n973), .CK(clk), .RN(n1127), .Q(\group[5][4] ), 
        .QN(n255) );
  DFFRX1 \group_reg[3][5]  ( .D(n965), .CK(clk), .RN(n1111), .Q(\group[3][5] ), 
        .QN(n267) );
  DFFSX1 \group_reg[5][5]  ( .D(n974), .CK(clk), .SN(n1134), .Q(\group[5][5] ), 
        .QN(n254) );
  DFFRX1 \group_reg[4][1]  ( .D(n941), .CK(clk), .RN(n1055), .Q(\group[4][1] ), 
        .QN(n265) );
  DFFRX1 \group_values_reg[5][6]  ( .D(n883), .CK(clk), .RN(n1112), .Q(
        \group_values[5][6] ) );
  DFFRX1 \group_reg[5][2]  ( .D(n971), .CK(clk), .RN(n1126), .Q(\group[5][2] ), 
        .QN(n257) );
  DFFRX1 \group_values_reg[4][6]  ( .D(n893), .CK(clk), .RN(n1116), .Q(
        \group_values[4][6] ) );
  DFFRX1 \group_reg[4][2]  ( .D(n966), .CK(clk), .RN(n1126), .Q(\group[4][2] ), 
        .QN(n264) );
  DFFRX1 \group_values_reg[0][8]  ( .D(n931), .CK(clk), .RN(n1116), .QN(n135)
         );
  DFFRX1 \group_reg[4][5]  ( .D(n969), .CK(clk), .RN(n1111), .Q(\group[4][5] ), 
        .QN(n261) );
  DFFSX1 \min1_value_reg[5]  ( .D(n876), .CK(clk), .SN(n1134), .Q(
        min1_value[5]), .QN(n118) );
  DFFRX1 \group_values_reg[0][0]  ( .D(n939), .CK(clk), .RN(n1113), .QN(n143)
         );
  DFFRX1 \group_values_reg[1][8]  ( .D(n921), .CK(clk), .RN(n1113), .QN(n125)
         );
  DFFSX1 \min1_value_reg[4]  ( .D(n877), .CK(clk), .SN(n1134), .Q(
        min1_value[4]), .QN(n119) );
  DFFRX1 \group_values_reg[0][7]  ( .D(n932), .CK(clk), .RN(n1114), .QN(n136)
         );
  DFFRX1 \group_values_reg[0][3]  ( .D(n936), .CK(clk), .RN(n1113), .QN(n140)
         );
  DFFRX1 \group_values_reg[2][8]  ( .D(n911), .CK(clk), .RN(n1114), .Q(
        \group_values[2][8] ) );
  DFFRX1 \group_values_reg[1][0]  ( .D(n929), .CK(clk), .RN(n1112), .QN(n133)
         );
  DFFRX1 \group_values_reg[0][1]  ( .D(n938), .CK(clk), .RN(n1113), .QN(n142)
         );
  DFFRX1 \group_values_reg[1][7]  ( .D(n922), .CK(clk), .RN(n1113), .QN(n126)
         );
  DFFRX1 \group_values_reg[1][3]  ( .D(n926), .CK(clk), .RN(n1112), .QN(n130)
         );
  DFFRX1 \group_values_reg[2][0]  ( .D(n919), .CK(clk), .RN(n1114), .Q(
        \group_values[2][0] ) );
  DFFRX1 \group_values_reg[3][8]  ( .D(n901), .CK(clk), .RN(n1115), .Q(
        \group_values[3][8] ) );
  DFFRX1 \group_values_reg[1][1]  ( .D(n928), .CK(clk), .RN(n1112), .QN(n132)
         );
  DFFRX1 \group_values_reg[0][2]  ( .D(n937), .CK(clk), .RN(n1113), .QN(n141)
         );
  DFFRX1 \group_values_reg[5][8]  ( .D(n881), .CK(clk), .RN(n1112), .Q(
        \group_values[5][8] ) );
  DFFRX1 \group_values_reg[2][7]  ( .D(n912), .CK(clk), .RN(n1114), .Q(
        \group_values[2][7] ) );
  DFFRX1 \group_values_reg[2][3]  ( .D(n916), .CK(clk), .RN(n1114), .Q(
        \group_values[2][3] ) );
  DFFRX1 \group_values_reg[4][8]  ( .D(n891), .CK(clk), .RN(n1116), .Q(
        \group_values[4][8] ) );
  DFFRX1 \group_values_reg[3][0]  ( .D(n909), .CK(clk), .RN(n1115), .Q(
        \group_values[3][0] ) );
  DFFRX1 \group_values_reg[2][1]  ( .D(n918), .CK(clk), .RN(n1114), .Q(
        \group_values[2][1] ) );
  DFFRX1 \group_values_reg[1][2]  ( .D(n927), .CK(clk), .RN(n1112), .QN(n131)
         );
  DFFRX1 \group_values_reg[5][0]  ( .D(n889), .CK(clk), .RN(n1111), .Q(
        \group_values[5][0] ) );
  DFFRX1 \group_values_reg[0][5]  ( .D(n934), .CK(clk), .RN(n1113), .QN(n138)
         );
  DFFRX1 \group_values_reg[3][7]  ( .D(n902), .CK(clk), .RN(n1115), .Q(
        \group_values[3][7] ) );
  DFFRX1 \group_values_reg[3][3]  ( .D(n906), .CK(clk), .RN(n1115), .Q(
        \group_values[3][3] ) );
  DFFRX1 \group_values_reg[4][0]  ( .D(n899), .CK(clk), .RN(n1115), .Q(
        \group_values[4][0] ) );
  DFFRX1 \group_values_reg[5][7]  ( .D(n882), .CK(clk), .RN(n1112), .Q(
        \group_values[5][7] ) );
  DFFRX1 \group_values_reg[5][3]  ( .D(n886), .CK(clk), .RN(n1112), .Q(
        \group_values[5][3] ) );
  DFFRX1 \group_values_reg[3][1]  ( .D(n908), .CK(clk), .RN(n1115), .Q(
        \group_values[3][1] ) );
  DFFRX1 \group_values_reg[2][2]  ( .D(n917), .CK(clk), .RN(n1114), .Q(
        \group_values[2][2] ) );
  DFFRX1 \group_values_reg[0][4]  ( .D(n935), .CK(clk), .RN(n1113), .QN(n139)
         );
  DFFRX1 \group_values_reg[4][7]  ( .D(n892), .CK(clk), .RN(n1116), .Q(
        \group_values[4][7] ) );
  DFFRX1 \group_values_reg[4][3]  ( .D(n896), .CK(clk), .RN(n1116), .Q(
        \group_values[4][3] ) );
  DFFRX1 \group_values_reg[1][5]  ( .D(n924), .CK(clk), .RN(n1113), .QN(n128)
         );
  DFFRX1 \group_values_reg[5][1]  ( .D(n888), .CK(clk), .RN(n1112), .Q(
        \group_values[5][1] ) );
  DFFRX1 \group_values_reg[4][1]  ( .D(n898), .CK(clk), .RN(n1116), .Q(
        \group_values[4][1] ) );
  DFFRX1 \group_values_reg[3][2]  ( .D(n907), .CK(clk), .RN(n1115), .Q(
        \group_values[3][2] ) );
  DFFRX1 \group_values_reg[1][4]  ( .D(n925), .CK(clk), .RN(n1113), .QN(n129)
         );
  DFFRX1 \group_values_reg[2][5]  ( .D(n914), .CK(clk), .RN(n1114), .Q(
        \group_values[2][5] ) );
  DFFRX1 \group_values_reg[5][2]  ( .D(n887), .CK(clk), .RN(n1112), .Q(
        \group_values[5][2] ) );
  DFFRX1 \group_values_reg[4][2]  ( .D(n897), .CK(clk), .RN(n1116), .Q(
        \group_values[4][2] ) );
  DFFRX1 \group_values_reg[2][4]  ( .D(n915), .CK(clk), .RN(n1114), .Q(
        \group_values[2][4] ) );
  DFFRX1 \group_values_reg[3][5]  ( .D(n904), .CK(clk), .RN(n1115), .Q(
        \group_values[3][5] ) );
  DFFRX1 \group_values_reg[5][5]  ( .D(n884), .CK(clk), .RN(n1112), .Q(
        \group_values[5][5] ) );
  DFFRX1 \group_values_reg[3][4]  ( .D(n905), .CK(clk), .RN(n1115), .Q(
        \group_values[3][4] ) );
  DFFRX1 \group_values_reg[4][5]  ( .D(n894), .CK(clk), .RN(n1116), .Q(
        \group_values[4][5] ) );
  DFFRX1 \group_values_reg[5][4]  ( .D(n885), .CK(clk), .RN(n1112), .Q(
        \group_values[5][4] ) );
  DFFRX1 \group_values_reg[4][4]  ( .D(n895), .CK(clk), .RN(n1116), .Q(
        \group_values[4][4] ) );
  DFFRX2 \counter_reg[1]  ( .D(n996), .CK(clk), .RN(n1122), .Q(counter[1]), 
        .QN(n100) );
  DFFRX2 \counter_reg[0]  ( .D(n997), .CK(clk), .RN(n1122), .Q(counter[0]), 
        .QN(n101) );
  DFFRX1 \cur_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(n1129), .Q(
        cur_state[0]), .QN(n306) );
  DFFRX1 \cur_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n1123), .Q(
        cur_state[1]), .QN(n305) );
  DFFRX1 \group_reg[2][3]  ( .D(n948), .CK(clk), .RN(n1126), .Q(\group[2][3] ), 
        .QN(n275) );
  DFFRX1 \counter_init_reg[1]  ( .D(n989), .CK(clk), .RN(n1122), .Q(
        counter_init[1]), .QN(n108) );
  DFFRX1 \group_reg[2][4]  ( .D(n961), .CK(clk), .RN(n1127), .Q(\group[2][4] ), 
        .QN(n274) );
  DFFRX1 \counter_init_reg[2]  ( .D(n988), .CK(clk), .RN(n1122), .Q(
        counter_init[2]), .QN(n107) );
  DFFRX1 \counter_init_reg[0]  ( .D(n990), .CK(clk), .RN(n1122), .Q(
        counter_init[0]), .QN(n109) );
  DFFRX1 \group_reg[2][5]  ( .D(n962), .CK(clk), .RN(n1111), .Q(\group[2][5] ), 
        .QN(n273) );
  DFFSX1 \min1_idx_reg[1]  ( .D(n979), .CK(clk), .SN(n1133), .Q(min1_idx[1]), 
        .QN(n112) );
  DFFSX1 \min1_idx_reg[2]  ( .D(n980), .CK(clk), .SN(n1133), .Q(min1_idx[2]), 
        .QN(n111) );
  DFFSX1 \min1_idx_reg[0]  ( .D(n978), .CK(clk), .SN(n1133), .Q(min1_idx[0]), 
        .QN(n113) );
  DFFSX1 \min2_idx_reg[0]  ( .D(n976), .CK(clk), .SN(n1133), .Q(\min2_idx[0] ), 
        .QN(n294) );
  DFFSXL \min2_value_reg[8]  ( .D(n863), .CK(clk), .SN(n1056), .Q(
        min2_value[8]), .QN(n1215) );
  DFFSXL \min2_value_reg[5]  ( .D(n866), .CK(clk), .SN(n1055), .Q(
        min2_value[5]), .QN(n1214) );
  DFFSXL \min2_value_reg[1]  ( .D(n870), .CK(clk), .SN(n1056), .Q(
        min2_value[1]), .QN(n1212) );
  DFFSXL \min2_value_reg[0]  ( .D(n871), .CK(clk), .SN(n1055), .Q(
        min2_value[0]), .QN(n1211) );
  DFFSXL \min2_value_reg[3]  ( .D(n868), .CK(clk), .SN(n1056), .Q(
        min2_value[3]), .QN(n1213) );
  DFFSX1 \min2_value_reg[6]  ( .D(n865), .CK(clk), .SN(n1056), .Q(
        min2_value[6]) );
  DFFSX1 \min2_value_reg[9]  ( .D(n983), .CK(clk), .SN(n1055), .Q(
        min2_value[9]) );
  DFFSX1 \min2_value_reg[7]  ( .D(n864), .CK(clk), .SN(n1055), .Q(
        min2_value[7]) );
  DFFSX1 \min2_value_reg[2]  ( .D(n869), .CK(clk), .SN(n1056), .Q(
        min2_value[2]) );
  DFFSX1 \min2_value_reg[4]  ( .D(n867), .CK(clk), .SN(n1055), .Q(
        min2_value[4]) );
  DFFRX2 \counter_reg[2]  ( .D(n995), .CK(clk), .RN(n1122), .Q(counter[2]), 
        .QN(n97) );
  OAI222X1 U868 ( .A0(N602), .A1(n118), .B0(N602), .B1(n1178), .C0(n118), .C1(
        n1178), .Y(n1179) );
  NAND2X2 U869 ( .A(n1068), .B(n527), .Y(n521) );
  OAI211X1 U870 ( .A0(n503), .A1(n287), .B0(n643), .C0(n644), .Y(N642) );
  OAI211X1 U871 ( .A0(n503), .A1(n290), .B0(n637), .C0(n638), .Y(N645) );
  OAI211X1 U872 ( .A0(n1165), .A1(n142), .B0(n651), .C0(n652), .Y(N606) );
  OAI211X1 U873 ( .A0(n1165), .A1(n141), .B0(n653), .C0(n654), .Y(N605) );
  OAI211X1 U874 ( .A0(n503), .A1(n285), .B0(n647), .C0(n648), .Y(N640) );
  OAI211X1 U875 ( .A0(n503), .A1(n288), .B0(n641), .C0(n642), .Y(N643) );
  OAI211X1 U876 ( .A0(n1166), .A1(n136), .B0(n663), .C0(n664), .Y(N600) );
  OAI211X1 U877 ( .A0(n503), .A1(n286), .B0(n645), .C0(n646), .Y(N641) );
  OAI211X1 U878 ( .A0(n503), .A1(n289), .B0(n639), .C0(n640), .Y(N644) );
  OAI32X4 U879 ( .A0(n375), .A1(n1219), .A2(n1058), .B0(n378), .B1(n377), .Y(
        n387) );
  CLKINVX3 U880 ( .A(n1162), .Y(n1161) );
  INVX1 U881 ( .A(n392), .Y(n1278) );
  AO22XL U882 ( .A0(n1241), .A1(HC3[0]), .B0(n1090), .B1(HC3[1]), .Y(n731) );
  AO22XL U883 ( .A0(n1240), .A1(HC2[0]), .B0(n1086), .B1(HC2[1]), .Y(n747) );
  AO22XL U884 ( .A0(n1239), .A1(HC1[0]), .B0(n1082), .B1(HC1[1]), .Y(n763) );
  AOI22XL U885 ( .A0(CNT3[1]), .A1(n1145), .B0(n1162), .B1(CNT2[1]), .Y(n591)
         );
  AOI22XL U886 ( .A0(CNT3[2]), .A1(n1145), .B0(n1162), .B1(CNT2[2]), .Y(n593)
         );
  AOI22XL U887 ( .A0(CNT3[3]), .A1(n1145), .B0(n1162), .B1(CNT2[3]), .Y(n595)
         );
  AOI22XL U888 ( .A0(CNT3[4]), .A1(n1145), .B0(n1162), .B1(CNT2[4]), .Y(n597)
         );
  AOI22XL U889 ( .A0(CNT3[5]), .A1(n1145), .B0(n1162), .B1(CNT2[5]), .Y(n599)
         );
  AOI22XL U890 ( .A0(CNT3[6]), .A1(n1145), .B0(n1162), .B1(CNT2[6]), .Y(n601)
         );
  AOI22XL U891 ( .A0(CNT3[7]), .A1(n1145), .B0(n1162), .B1(CNT2[7]), .Y(n603)
         );
  AOI22XL U892 ( .A0(CNT3[0]), .A1(n1145), .B0(n1162), .B1(CNT2[0]), .Y(n589)
         );
  INVX3 U893 ( .A(n1230), .Y(n1054) );
  INVX16 U894 ( .A(n1054), .Y(n1055) );
  INVX16 U895 ( .A(n1054), .Y(n1056) );
  CLKINVX1 U896 ( .A(n386), .Y(n1277) );
  CLKINVX1 U897 ( .A(n395), .Y(n1276) );
  INVX3 U898 ( .A(n325), .Y(n1251) );
  CLKINVX1 U899 ( .A(n543), .Y(n1220) );
  CLKBUFX3 U900 ( .A(n471), .Y(n1061) );
  NAND3X1 U901 ( .A(n100), .B(n97), .C(n101), .Y(n353) );
  CLKBUFX3 U902 ( .A(n553), .Y(n1060) );
  CLKBUFX3 U903 ( .A(n587), .Y(n1066) );
  CLKINVX1 U904 ( .A(gray_data[0]), .Y(n1237) );
  NOR4X2 U905 ( .A(counter[3]), .B(counter[4]), .C(counter[5]), .D(counter[6]), 
        .Y(n390) );
  NAND3X1 U906 ( .A(n305), .B(n304), .C(cur_state[0]), .Y(n545) );
  NOR4X2 U907 ( .A(counter_init[3]), .B(counter_init[4]), .C(counter_init[5]), 
        .D(counter_init[6]), .Y(n465) );
  CLKINVX1 U908 ( .A(n358), .Y(n1274) );
  CLKINVX1 U909 ( .A(n352), .Y(n1275) );
  CLKINVX1 U910 ( .A(n361), .Y(n1273) );
  CLKINVX1 U911 ( .A(n364), .Y(n1272) );
  CLKINVX1 U912 ( .A(n367), .Y(n1271) );
  CLKINVX1 U913 ( .A(n370), .Y(n1270) );
  CLKINVX1 U914 ( .A(n401), .Y(n1268) );
  CLKINVX1 U915 ( .A(n404), .Y(n1267) );
  CLKINVX1 U916 ( .A(n407), .Y(n1266) );
  CLKINVX1 U917 ( .A(n410), .Y(n1265) );
  CLKINVX1 U918 ( .A(n413), .Y(n1264) );
  CLKINVX1 U919 ( .A(n416), .Y(n1263) );
  CLKINVX1 U920 ( .A(n380), .Y(n1269) );
  CLKINVX1 U921 ( .A(n422), .Y(n1262) );
  CLKBUFX3 U922 ( .A(n1135), .Y(n1133) );
  CLKBUFX3 U923 ( .A(n1136), .Y(n1132) );
  CLKBUFX3 U924 ( .A(n1140), .Y(n1124) );
  CLKBUFX3 U925 ( .A(n1136), .Y(n1131) );
  CLKBUFX3 U926 ( .A(n1137), .Y(n1130) );
  CLKBUFX3 U927 ( .A(n1138), .Y(n1128) );
  CLKBUFX3 U928 ( .A(n1138), .Y(n1127) );
  CLKBUFX3 U929 ( .A(n1139), .Y(n1126) );
  CLKBUFX3 U930 ( .A(n1139), .Y(n1125) );
  CLKBUFX3 U931 ( .A(n1144), .Y(n1113) );
  CLKBUFX3 U932 ( .A(n1144), .Y(n1114) );
  CLKBUFX3 U933 ( .A(n1143), .Y(n1115) );
  CLKBUFX3 U934 ( .A(n1143), .Y(n1116) );
  CLKBUFX3 U935 ( .A(n1105), .Y(n1117) );
  CLKBUFX3 U936 ( .A(n1142), .Y(n1118) );
  CLKBUFX3 U937 ( .A(n1142), .Y(n1119) );
  CLKBUFX3 U938 ( .A(n1141), .Y(n1120) );
  CLKBUFX3 U939 ( .A(n1141), .Y(n1121) );
  CLKBUFX3 U940 ( .A(n1105), .Y(n1122) );
  CLKBUFX3 U941 ( .A(n1230), .Y(n1123) );
  CLKBUFX3 U942 ( .A(n1137), .Y(n1129) );
  CLKBUFX3 U943 ( .A(n1135), .Y(n1134) );
  CLKINVX1 U944 ( .A(n379), .Y(n1219) );
  INVX3 U945 ( .A(n1071), .Y(n1244) );
  CLKBUFX3 U946 ( .A(n1155), .Y(n1160) );
  CLKBUFX3 U947 ( .A(n1154), .Y(n1159) );
  CLKBUFX3 U948 ( .A(n1154), .Y(n1158) );
  CLKBUFX3 U949 ( .A(n1156), .Y(n1157) );
  CLKBUFX3 U950 ( .A(n1108), .Y(n1112) );
  CLKBUFX3 U951 ( .A(n1140), .Y(n1111) );
  CLKBUFX3 U952 ( .A(n1103), .Y(n1135) );
  CLKBUFX3 U953 ( .A(n1104), .Y(n1140) );
  CLKBUFX3 U954 ( .A(n1104), .Y(n1138) );
  CLKBUFX3 U955 ( .A(n1104), .Y(n1139) );
  CLKBUFX3 U956 ( .A(n1107), .Y(n1144) );
  CLKBUFX3 U957 ( .A(n1103), .Y(n1136) );
  CLKBUFX3 U958 ( .A(n1107), .Y(n1143) );
  CLKBUFX3 U959 ( .A(n1106), .Y(n1142) );
  CLKBUFX3 U960 ( .A(n1106), .Y(n1141) );
  CLKBUFX3 U961 ( .A(n1103), .Y(n1137) );
  INVX3 U962 ( .A(n582), .Y(n1233) );
  CLKBUFX3 U963 ( .A(n1278), .Y(n1150) );
  CLKBUFX3 U964 ( .A(n1277), .Y(n1148) );
  CLKBUFX3 U965 ( .A(n1276), .Y(n1146) );
  CLKBUFX3 U966 ( .A(n1277), .Y(n1147) );
  INVX3 U967 ( .A(n1068), .Y(n1247) );
  CLKBUFX3 U968 ( .A(n342), .Y(n1093) );
  NAND2X1 U969 ( .A(n1251), .B(n1091), .Y(n342) );
  CLKBUFX3 U970 ( .A(n338), .Y(n1097) );
  NAND2X1 U971 ( .A(n1251), .B(n1095), .Y(n338) );
  CLKBUFX3 U972 ( .A(n350), .Y(n1085) );
  NAND2X1 U973 ( .A(n1251), .B(n1083), .Y(n350) );
  CLKBUFX3 U974 ( .A(n328), .Y(n1081) );
  NAND2X1 U975 ( .A(n1251), .B(n1080), .Y(n328) );
  CLKBUFX3 U976 ( .A(n343), .Y(n1092) );
  NAND2X1 U977 ( .A(n1078), .B(n1091), .Y(n343) );
  CLKBUFX3 U978 ( .A(n339), .Y(n1096) );
  NAND2X1 U979 ( .A(n1078), .B(n1095), .Y(n339) );
  CLKBUFX3 U980 ( .A(n351), .Y(n1084) );
  NAND2X1 U981 ( .A(n1078), .B(n1083), .Y(n351) );
  CLKBUFX3 U982 ( .A(n329), .Y(n1102) );
  NAND2X1 U983 ( .A(n1078), .B(n1080), .Y(n329) );
  CLKBUFX3 U984 ( .A(n346), .Y(n1089) );
  NAND2X1 U985 ( .A(n1251), .B(n1087), .Y(n346) );
  CLKBUFX3 U986 ( .A(n347), .Y(n1088) );
  NAND2X1 U987 ( .A(n1078), .B(n1087), .Y(n347) );
  OR3X2 U988 ( .A(N1096), .B(N1097), .C(n1057), .Y(n379) );
  XNOR2X1 U989 ( .A(N1083), .B(N1081), .Y(n1057) );
  CLKBUFX3 U990 ( .A(n1278), .Y(n1149) );
  CLKBUFX3 U991 ( .A(n1276), .Y(n1145) );
  CLKINVX1 U992 ( .A(n473), .Y(n1249) );
  CLKBUFX3 U993 ( .A(n475), .Y(n1071) );
  AO21X1 U994 ( .A0(n1249), .A1(n486), .B0(n1153), .Y(n475) );
  INVX3 U995 ( .A(n1072), .Y(n1245) );
  INVX3 U996 ( .A(n1153), .Y(n1151) );
  NAND2X2 U997 ( .A(n1250), .B(n1253), .Y(n570) );
  INVX3 U998 ( .A(n1086), .Y(n1240) );
  INVX3 U999 ( .A(n1079), .Y(n1238) );
  INVX3 U1000 ( .A(n1090), .Y(n1241) );
  INVX3 U1001 ( .A(n1094), .Y(n1242) );
  INVX3 U1002 ( .A(n1098), .Y(n1243) );
  INVX3 U1003 ( .A(n1082), .Y(n1239) );
  INVX3 U1004 ( .A(n1153), .Y(n1152) );
  NOR3X1 U1005 ( .A(n1250), .B(n1251), .C(n1248), .Y(n576) );
  CLKBUFX3 U1006 ( .A(n1156), .Y(n1154) );
  CLKBUFX3 U1007 ( .A(n1110), .Y(n1104) );
  CLKBUFX3 U1008 ( .A(n1108), .Y(n1107) );
  CLKBUFX3 U1009 ( .A(n1109), .Y(n1106) );
  CLKBUFX3 U1010 ( .A(n1109), .Y(n1105) );
  CLKBUFX3 U1011 ( .A(n1110), .Y(n1103) );
  INVX3 U1012 ( .A(n586), .Y(n1231) );
  INVX3 U1013 ( .A(n584), .Y(n1232) );
  NAND3X2 U1014 ( .A(n1237), .B(n1236), .C(n580), .Y(n582) );
  INVX3 U1015 ( .A(n579), .Y(n1235) );
  INVX3 U1016 ( .A(n581), .Y(n1234) );
  CLKINVX1 U1017 ( .A(N603), .Y(n1188) );
  CLKBUFX3 U1018 ( .A(n460), .Y(n1068) );
  NAND3X1 U1019 ( .A(n1248), .B(n528), .C(N1032), .Y(n460) );
  CLKBUFX3 U1020 ( .A(n451), .Y(n1070) );
  NAND2X1 U1021 ( .A(N1032), .B(n521), .Y(n451) );
  CLKBUFX3 U1022 ( .A(n448), .Y(n1069) );
  NAND2X1 U1023 ( .A(n521), .B(n1252), .Y(n448) );
  CLKINVX1 U1024 ( .A(N1032), .Y(n1252) );
  CLKBUFX3 U1025 ( .A(n356), .Y(n1164) );
  NAND2X2 U1026 ( .A(n576), .B(n578), .Y(n572) );
  AND2X2 U1027 ( .A(n574), .B(n572), .Y(n573) );
  OAI22XL U1028 ( .A0(n326), .A1(n575), .B0(n1253), .B1(n576), .Y(n574) );
  INVX3 U1029 ( .A(n521), .Y(n1246) );
  CLKBUFX3 U1030 ( .A(n353), .Y(n1166) );
  CLKINVX1 U1031 ( .A(n1172), .Y(n1187) );
  CLKBUFX3 U1032 ( .A(n353), .Y(n1165) );
  CLKINVX1 U1033 ( .A(N601), .Y(n1189) );
  AND2X2 U1034 ( .A(n433), .B(N1116), .Y(n1058) );
  XOR2X1 U1035 ( .A(N644), .B(N643), .Y(n1289) );
  XOR2X1 U1036 ( .A(N645), .B(n1289), .Y(N1102) );
  CLKBUFX3 U1037 ( .A(n334), .Y(n1101) );
  NAND2X1 U1038 ( .A(n1251), .B(n1099), .Y(n334) );
  CLKBUFX3 U1039 ( .A(n341), .Y(n1091) );
  OAI31XL U1040 ( .A0(n391), .A1(n395), .A2(n387), .B0(n1090), .Y(n341) );
  CLKBUFX3 U1041 ( .A(n337), .Y(n1095) );
  OAI31XL U1042 ( .A0(n391), .A1(n392), .A2(n387), .B0(n1094), .Y(n337) );
  CLKBUFX3 U1043 ( .A(n349), .Y(n1083) );
  OAI31XL U1044 ( .A0(n419), .A1(n325), .A2(n387), .B0(n1082), .Y(n349) );
  NOR2X1 U1045 ( .A(N1118), .B(N1117), .Y(n433) );
  ADDFXL U1046 ( .A(N1103), .B(N1105), .CI(\add_2_root_add_309_5/carry[1] ), 
        .CO(N1118), .S(N1117) );
  AO22X1 U1047 ( .A0(N640), .A1(N641), .B0(n1288), .B1(N642), .Y(N1105) );
  AO22X1 U1048 ( .A0(N643), .A1(N644), .B0(n1289), .B1(N645), .Y(N1103) );
  CLKBUFX3 U1049 ( .A(n330), .Y(n1080) );
  OAI31XL U1050 ( .A0(n387), .A1(n316), .A2(n325), .B0(n1079), .Y(n330) );
  CLKBUFX3 U1051 ( .A(n335), .Y(n1100) );
  NAND2X1 U1052 ( .A(n1078), .B(n1099), .Y(n335) );
  XOR2X1 U1053 ( .A(N641), .B(N640), .Y(n1288) );
  XOR2X1 U1054 ( .A(N642), .B(n1288), .Y(N1104) );
  CLKBUFX3 U1055 ( .A(n345), .Y(n1087) );
  NAND2X1 U1056 ( .A(n1086), .B(n398), .Y(n345) );
  NAND4BX1 U1057 ( .AN(n387), .B(n1162), .C(n1251), .D(n390), .Y(n398) );
  XOR2X1 U1058 ( .A(N663), .B(N662), .Y(n1287) );
  XOR2X1 U1059 ( .A(N664), .B(n1287), .Y(N1081) );
  ADDFXL U1060 ( .A(N1082), .B(N1084), .CI(\add_2_root_add_298_5/carry[1] ), 
        .CO(N1097), .S(N1096) );
  AO22X1 U1061 ( .A0(N659), .A1(N660), .B0(n1286), .B1(N661), .Y(N1084) );
  AO22X1 U1062 ( .A0(N662), .A1(N663), .B0(n1287), .B1(N664), .Y(N1082) );
  XOR2X1 U1063 ( .A(N660), .B(N659), .Y(n1286) );
  XOR2X1 U1064 ( .A(N661), .B(n1286), .Y(N1083) );
  CLKINVX1 U1065 ( .A(N601), .Y(n1217) );
  CLKBUFX3 U1066 ( .A(n356), .Y(n1163) );
  CLKINVX1 U1067 ( .A(n476), .Y(n1221) );
  OAI2BB1X1 U1068 ( .A0N(N827), .A1N(n1250), .B0(n477), .Y(n476) );
  CLKINVX1 U1069 ( .A(n478), .Y(n1222) );
  OAI2BB1X1 U1070 ( .A0N(N826), .A1N(n1250), .B0(n477), .Y(n478) );
  INVX3 U1071 ( .A(n357), .Y(n1162) );
  OAI211X1 U1072 ( .A0(n1284), .A1(n1166), .B0(n428), .C0(n429), .Y(n377) );
  AOI22X1 U1073 ( .A0(N644), .A1(n1162), .B0(n1145), .B1(N643), .Y(n428) );
  CLKINVX1 U1074 ( .A(N645), .Y(n1284) );
  AOI222XL U1075 ( .A0(n1150), .A1(N642), .B0(n1164), .B1(N640), .C0(n1148), 
        .C1(N641), .Y(n429) );
  CLKINVX1 U1076 ( .A(n479), .Y(n1223) );
  OAI2BB1X1 U1077 ( .A0N(N825), .A1N(n1250), .B0(n477), .Y(n479) );
  CLKINVX1 U1078 ( .A(N598), .Y(n1218) );
  OA21X2 U1079 ( .A0(n374), .A1(n375), .B0(n376), .Y(n332) );
  NAND2BX1 U1080 ( .AN(n377), .B(n375), .Y(n376) );
  OA22X1 U1081 ( .A0(n1219), .A1(n377), .B0(n378), .B1(n379), .Y(n374) );
  CLKINVX1 U1082 ( .A(n480), .Y(n1224) );
  OAI2BB1X1 U1083 ( .A0N(N824), .A1N(n1250), .B0(n477), .Y(n480) );
  OAI211X1 U1084 ( .A0(n1285), .A1(n1166), .B0(n430), .C0(n431), .Y(n378) );
  AOI22X1 U1085 ( .A0(N663), .A1(n1162), .B0(n1145), .B1(N662), .Y(n430) );
  CLKINVX1 U1086 ( .A(N664), .Y(n1285) );
  AOI222XL U1087 ( .A0(n1150), .A1(N661), .B0(n1164), .B1(N659), .C0(n1148), 
        .C1(N660), .Y(n431) );
  CLKINVX1 U1088 ( .A(n481), .Y(n1225) );
  OAI2BB1X1 U1089 ( .A0N(N823), .A1N(n1250), .B0(n477), .Y(n481) );
  OAI31X1 U1090 ( .A0(n546), .A1(n547), .A2(n548), .B0(n1250), .Y(n473) );
  OAI222XL U1091 ( .A0(n1280), .A1(n1161), .B0(n1281), .B1(n395), .C0(n1282), 
        .C1(n1166), .Y(n546) );
  AO22X1 U1092 ( .A0(n549), .A1(n1150), .B0(n550), .B1(n1148), .Y(n548) );
  OAI2BB1X1 U1093 ( .A0N(n551), .A1N(n1164), .B0(n544), .Y(n547) );
  NAND4X1 U1094 ( .A(n1280), .B(n1281), .C(n1282), .D(n552), .Y(n544) );
  NOR3X1 U1095 ( .A(n549), .B(n551), .C(n550), .Y(n552) );
  INVX3 U1096 ( .A(n1074), .Y(n1075) );
  CLKINVX1 U1097 ( .A(n1073), .Y(n1074) );
  NOR2BX1 U1098 ( .AN(n470), .B(n1153), .Y(n1073) );
  AND2X2 U1099 ( .A(n463), .B(n1151), .Y(n462) );
  AND2X2 U1100 ( .A(n467), .B(n1151), .Y(n1076) );
  AND2X2 U1101 ( .A(n467), .B(n1151), .Y(n466) );
  AND2X2 U1102 ( .A(n463), .B(n1151), .Y(n1077) );
  CLKINVX1 U1103 ( .A(n482), .Y(n1226) );
  OAI2BB1X1 U1104 ( .A0N(N822), .A1N(n1250), .B0(n477), .Y(n482) );
  CLKBUFX3 U1105 ( .A(n472), .Y(n1072) );
  OAI31XL U1106 ( .A0(n473), .A1(n1279), .A2(n1062), .B0(n1152), .Y(n472) );
  CLKINVX1 U1107 ( .A(n483), .Y(n1227) );
  OAI2BB1X1 U1108 ( .A0N(N821), .A1N(n1250), .B0(n477), .Y(n483) );
  CLKBUFX3 U1109 ( .A(n461), .Y(n1067) );
  OA21XL U1110 ( .A0(n327), .A1(n473), .B0(n1152), .Y(n461) );
  CLKBUFX3 U1111 ( .A(n384), .Y(n1078) );
  NOR2BX1 U1112 ( .AN(n309), .B(n1059), .Y(n384) );
  CLKBUFX3 U1113 ( .A(n344), .Y(n1090) );
  NAND2X1 U1114 ( .A(n1078), .B(n321), .Y(n344) );
  CLKBUFX3 U1115 ( .A(n340), .Y(n1094) );
  NAND2X1 U1116 ( .A(n1078), .B(n320), .Y(n340) );
  CLKBUFX3 U1117 ( .A(n336), .Y(n1098) );
  NAND2X1 U1118 ( .A(n1078), .B(n319), .Y(n336) );
  CLKBUFX3 U1119 ( .A(n331), .Y(n1079) );
  NAND2X1 U1120 ( .A(n1078), .B(n318), .Y(n331) );
  CLKBUFX3 U1121 ( .A(n373), .Y(n1082) );
  NAND2X1 U1122 ( .A(n1078), .B(n323), .Y(n373) );
  CLKINVX1 U1123 ( .A(n484), .Y(n1228) );
  OAI2BB1X1 U1124 ( .A0N(N820), .A1N(n1250), .B0(n477), .Y(n484) );
  OR2X2 U1125 ( .A(n544), .B(n545), .Y(n477) );
  CLKINVX1 U1126 ( .A(n485), .Y(n1229) );
  OAI2BB1X1 U1127 ( .A0N(N819), .A1N(n1250), .B0(n477), .Y(n485) );
  CLKBUFX3 U1128 ( .A(n348), .Y(n1086) );
  NAND2X1 U1129 ( .A(n1078), .B(n322), .Y(n348) );
  NAND2X1 U1130 ( .A(n519), .B(n522), .Y(n520) );
  NAND2X1 U1131 ( .A(n487), .B(n515), .Y(n489) );
  NAND2X1 U1132 ( .A(n491), .B(n511), .Y(n492) );
  NAND2X1 U1133 ( .A(n494), .B(n507), .Y(n495) );
  AOI2BB1X2 U1134 ( .A0N(n504), .A1N(n1283), .B0(n1151), .Y(n500) );
  CLKINVX1 U1135 ( .A(n503), .Y(n1283) );
  NAND2X1 U1136 ( .A(n500), .B(n503), .Y(n501) );
  NAND2BX1 U1137 ( .AN(n1166), .B(n390), .Y(n419) );
  NOR2BX2 U1138 ( .AN(n327), .B(n570), .Y(n571) );
  CLKINVX1 U1139 ( .A(n316), .Y(n1253) );
  AOI2BB1X2 U1140 ( .A0N(n506), .A1N(n505), .B0(n1151), .Y(n497) );
  NAND2BX1 U1141 ( .AN(n505), .B(n497), .Y(n498) );
  CLKINVX1 U1142 ( .A(n314), .Y(n1248) );
  CLKINVX1 U1143 ( .A(n465), .Y(n1279) );
  NOR2X1 U1144 ( .A(n1060), .B(n1279), .Y(n486) );
  INVX3 U1145 ( .A(n545), .Y(n1250) );
  CLKINVX1 U1146 ( .A(N602), .Y(n1257) );
  CLKINVX1 U1147 ( .A(N599), .Y(n1255) );
  CLKINVX1 U1148 ( .A(N604), .Y(n1258) );
  NOR2X2 U1149 ( .A(N643), .B(N662), .Y(n493) );
  NOR2X2 U1150 ( .A(N644), .B(N663), .Y(n490) );
  NOR2X2 U1151 ( .A(N645), .B(N664), .Y(n488) );
  NOR2X2 U1152 ( .A(N640), .B(N659), .Y(n502) );
  NOR2X2 U1153 ( .A(N642), .B(N661), .Y(n496) );
  NOR2X2 U1154 ( .A(N641), .B(N660), .Y(n499) );
  CLKINVX1 U1155 ( .A(N606), .Y(n1260) );
  CLKINVX1 U1156 ( .A(N605), .Y(n1259) );
  NOR2X1 U1157 ( .A(n327), .B(n316), .Y(n317) );
  CLKINVX1 U1158 ( .A(N600), .Y(n1256) );
  CLKBUFX3 U1159 ( .A(n1059), .Y(n1153) );
  CLKBUFX3 U1160 ( .A(n383), .Y(n1156) );
  CLKBUFX3 U1161 ( .A(n383), .Y(n1155) );
  CLKINVX1 U1162 ( .A(N607), .Y(n1261) );
  CLKBUFX3 U1163 ( .A(n1055), .Y(n1109) );
  CLKBUFX3 U1164 ( .A(n1056), .Y(n1108) );
  CLKBUFX3 U1165 ( .A(n1055), .Y(n1110) );
  NOR2BX1 U1166 ( .AN(n583), .B(gray_data[2]), .Y(n585) );
  NOR4X1 U1167 ( .A(gray_data[4]), .B(gray_data[3]), .C(n578), .D(n588), .Y(
        n583) );
  OR3X2 U1168 ( .A(gray_data[5]), .B(gray_data[7]), .C(gray_data[6]), .Y(n588)
         );
  NAND3X2 U1169 ( .A(n585), .B(gray_data[1]), .C(n1237), .Y(n586) );
  AO22X1 U1170 ( .A0(n586), .A1(CNT2[0]), .B0(N717), .B1(n1231), .Y(n1037) );
  AO22X1 U1171 ( .A0(n586), .A1(CNT2[6]), .B0(N723), .B1(n1231), .Y(n1032) );
  AO22X1 U1172 ( .A0(n586), .A1(CNT2[5]), .B0(N722), .B1(n1231), .Y(n1033) );
  AO22X1 U1173 ( .A0(n586), .A1(CNT2[4]), .B0(N721), .B1(n1231), .Y(n1034) );
  AO22X1 U1174 ( .A0(n586), .A1(CNT2[3]), .B0(N720), .B1(n1231), .Y(n1035) );
  AO22X1 U1175 ( .A0(n586), .A1(CNT2[2]), .B0(N719), .B1(n1231), .Y(n1036) );
  AO22X1 U1176 ( .A0(n586), .A1(CNT2[1]), .B0(N718), .B1(n1231), .Y(n1038) );
  AO22X1 U1177 ( .A0(n586), .A1(CNT2[7]), .B0(N724), .B1(n1231), .Y(n1031) );
  NAND3X2 U1178 ( .A(gray_data[0]), .B(gray_data[1]), .C(n585), .Y(n584) );
  AO22X1 U1179 ( .A0(n584), .A1(CNT3[0]), .B0(N725), .B1(n1232), .Y(n1029) );
  AO22X1 U1180 ( .A0(n584), .A1(CNT3[6]), .B0(N731), .B1(n1232), .Y(n1024) );
  AO22X1 U1181 ( .A0(n584), .A1(CNT3[5]), .B0(N730), .B1(n1232), .Y(n1025) );
  AO22X1 U1182 ( .A0(n584), .A1(CNT3[4]), .B0(N729), .B1(n1232), .Y(n1026) );
  AO22X1 U1183 ( .A0(n584), .A1(CNT3[3]), .B0(N728), .B1(n1232), .Y(n1027) );
  AO22X1 U1184 ( .A0(n584), .A1(CNT3[2]), .B0(N727), .B1(n1232), .Y(n1028) );
  AO22X1 U1185 ( .A0(n584), .A1(CNT3[1]), .B0(N726), .B1(n1232), .Y(n1030) );
  AO22X1 U1186 ( .A0(n584), .A1(CNT3[7]), .B0(N732), .B1(n1232), .Y(n1023) );
  OAI2BB2XL U1187 ( .B0(n1066), .B1(n246), .A0N(N716), .A1N(n1066), .Y(n1039)
         );
  OAI2BB2XL U1188 ( .B0(n1066), .B1(n247), .A0N(N715), .A1N(n1066), .Y(n1040)
         );
  OAI2BB2XL U1189 ( .B0(n1066), .B1(n248), .A0N(N714), .A1N(n1066), .Y(n1041)
         );
  OAI2BB2XL U1190 ( .B0(n1066), .B1(n249), .A0N(N713), .A1N(n1066), .Y(n1042)
         );
  OAI2BB2XL U1191 ( .B0(n1066), .B1(n250), .A0N(N712), .A1N(n1066), .Y(n1043)
         );
  OAI2BB2XL U1192 ( .B0(n1066), .B1(n251), .A0N(N711), .A1N(n1066), .Y(n1044)
         );
  OAI2BB2XL U1193 ( .B0(n1066), .B1(n253), .A0N(N709), .A1N(n1066), .Y(n1045)
         );
  OAI2BB2XL U1194 ( .B0(n1066), .B1(n252), .A0N(N710), .A1N(n1066), .Y(n1046)
         );
  NOR3BXL U1195 ( .AN(n585), .B(n1237), .C(gray_data[1]), .Y(n587) );
  NAND2BX1 U1196 ( .AN(n575), .B(gray_valid), .Y(n578) );
  AND2X2 U1197 ( .A(gray_data[2]), .B(n583), .Y(n580) );
  AO22X1 U1198 ( .A0(n582), .A1(CNT4[0]), .B0(N733), .B1(n1233), .Y(n1021) );
  AO22X1 U1199 ( .A0(n582), .A1(CNT4[6]), .B0(N739), .B1(n1233), .Y(n1016) );
  AO22X1 U1200 ( .A0(n582), .A1(CNT4[5]), .B0(N738), .B1(n1233), .Y(n1017) );
  AO22X1 U1201 ( .A0(n582), .A1(CNT4[4]), .B0(N737), .B1(n1233), .Y(n1018) );
  AO22X1 U1202 ( .A0(n582), .A1(CNT4[3]), .B0(N736), .B1(n1233), .Y(n1019) );
  AO22X1 U1203 ( .A0(n582), .A1(CNT4[2]), .B0(N735), .B1(n1233), .Y(n1020) );
  AO22X1 U1204 ( .A0(n582), .A1(CNT4[1]), .B0(N734), .B1(n1233), .Y(n1022) );
  AO22X1 U1205 ( .A0(n582), .A1(CNT4[7]), .B0(N740), .B1(n1233), .Y(n1015) );
  NAND3X2 U1206 ( .A(n580), .B(n1237), .C(gray_data[1]), .Y(n579) );
  AO22X1 U1207 ( .A0(n579), .A1(CNT6[0]), .B0(N749), .B1(n1235), .Y(n1005) );
  AO22X1 U1208 ( .A0(n579), .A1(CNT6[6]), .B0(N755), .B1(n1235), .Y(n1000) );
  AO22X1 U1209 ( .A0(n579), .A1(CNT6[5]), .B0(N754), .B1(n1235), .Y(n1001) );
  AO22X1 U1210 ( .A0(n579), .A1(CNT6[4]), .B0(N753), .B1(n1235), .Y(n1002) );
  AO22X1 U1211 ( .A0(n579), .A1(CNT6[3]), .B0(N752), .B1(n1235), .Y(n1003) );
  AO22X1 U1212 ( .A0(n579), .A1(CNT6[2]), .B0(N751), .B1(n1235), .Y(n1004) );
  AO22X1 U1213 ( .A0(n579), .A1(CNT6[1]), .B0(N750), .B1(n1235), .Y(n1006) );
  AO22X1 U1214 ( .A0(n579), .A1(CNT6[7]), .B0(N756), .B1(n1235), .Y(n999) );
  NAND3X2 U1215 ( .A(n580), .B(n1236), .C(gray_data[0]), .Y(n581) );
  AO22X1 U1216 ( .A0(n581), .A1(CNT5[0]), .B0(N741), .B1(n1234), .Y(n1013) );
  AO22X1 U1217 ( .A0(n581), .A1(CNT5[6]), .B0(N747), .B1(n1234), .Y(n1008) );
  AO22X1 U1218 ( .A0(n581), .A1(CNT5[5]), .B0(N746), .B1(n1234), .Y(n1009) );
  AO22X1 U1219 ( .A0(n581), .A1(CNT5[4]), .B0(N745), .B1(n1234), .Y(n1010) );
  AO22X1 U1220 ( .A0(n581), .A1(CNT5[3]), .B0(N744), .B1(n1234), .Y(n1011) );
  AO22X1 U1221 ( .A0(n581), .A1(CNT5[2]), .B0(N743), .B1(n1234), .Y(n1012) );
  AO22X1 U1222 ( .A0(n581), .A1(CNT5[1]), .B0(N742), .B1(n1234), .Y(n1014) );
  AO22X1 U1223 ( .A0(n581), .A1(CNT5[7]), .B0(N748), .B1(n1234), .Y(n1007) );
  CLKINVX1 U1224 ( .A(N598), .Y(n1190) );
  OAI211X1 U1225 ( .A0(n1166), .A1(n139), .B0(n657), .C0(n658), .Y(N603) );
  AOI2BB2X1 U1226 ( .B0(\group_values[2][4] ), .B1(n1146), .A0N(n1161), .A1N(
        n129), .Y(n657) );
  AOI222XL U1227 ( .A0(\group_values[3][4] ), .A1(n1150), .B0(
        \group_values[5][4] ), .B1(n1164), .C0(\group_values[4][4] ), .C1(
        n1148), .Y(n658) );
  NAND3X1 U1228 ( .A(n1248), .B(n528), .C(N1036), .Y(n527) );
  OAI211X1 U1229 ( .A0(n1218), .A1(n1069), .B0(n1152), .C0(n526), .Y(n983) );
  AOI2BB2X1 U1230 ( .B0(n1246), .B1(min2_value[9]), .A0N(n114), .A1N(n1070), 
        .Y(n526) );
  NAND2X1 U1231 ( .A(counter[1]), .B(counter[0]), .Y(n392) );
  OAI211X1 U1232 ( .A0(n1217), .A1(n1069), .B0(n1152), .C0(n453), .Y(n865) );
  AOI2BB2X1 U1233 ( .B0(n1246), .B1(min2_value[6]), .A0N(n117), .A1N(n1070), 
        .Y(n453) );
  OAI211X1 U1234 ( .A0(n1258), .A1(n1069), .B0(n1152), .C0(n456), .Y(n868) );
  AOI2BB2X1 U1235 ( .B0(n1246), .B1(min2_value[3]), .A0N(n120), .A1N(n1070), 
        .Y(n456) );
  OAI211X1 U1236 ( .A0(n1259), .A1(n1069), .B0(n1152), .C0(n457), .Y(n869) );
  AOI2BB2X1 U1237 ( .B0(n1246), .B1(min2_value[2]), .A0N(n121), .A1N(n1070), 
        .Y(n457) );
  OAI211X1 U1238 ( .A0(n1256), .A1(n1069), .B0(n1152), .C0(n452), .Y(n864) );
  AOI2BB2X1 U1239 ( .B0(n1246), .B1(min2_value[7]), .A0N(n116), .A1N(n1070), 
        .Y(n452) );
  OAI211X1 U1240 ( .A0(n1188), .A1(n1069), .B0(n1152), .C0(n455), .Y(n867) );
  AOI2BB2X1 U1241 ( .B0(n1246), .B1(min2_value[4]), .A0N(n119), .A1N(n1070), 
        .Y(n455) );
  OAI211X1 U1242 ( .A0(n1257), .A1(n1069), .B0(n1152), .C0(n454), .Y(n866) );
  AOI2BB2X1 U1243 ( .B0(n1246), .B1(min2_value[5]), .A0N(n118), .A1N(n1070), 
        .Y(n454) );
  OAI211X1 U1244 ( .A0(n1255), .A1(n1069), .B0(n1152), .C0(n450), .Y(n863) );
  AOI2BB2X1 U1245 ( .B0(n1246), .B1(min2_value[8]), .A0N(n115), .A1N(n1070), 
        .Y(n450) );
  OAI211X1 U1246 ( .A0(n1260), .A1(n1069), .B0(n1152), .C0(n458), .Y(n870) );
  AOI2BB2X1 U1247 ( .B0(n1246), .B1(min2_value[1]), .A0N(n122), .A1N(n1070), 
        .Y(n458) );
  OAI211X1 U1248 ( .A0(n1261), .A1(n1069), .B0(n1152), .C0(n459), .Y(n871) );
  AOI2BB2X1 U1249 ( .B0(n1246), .B1(min2_value[0]), .A0N(n123), .A1N(n1070), 
        .Y(n459) );
  NAND2X1 U1250 ( .A(counter[2]), .B(n101), .Y(n386) );
  OAI222XL U1251 ( .A0(n112), .A1(n1070), .B0(n100), .B1(n1069), .C0(n293), 
        .C1(n521), .Y(n975) );
  OAI222XL U1252 ( .A0(n113), .A1(n1070), .B0(n101), .B1(n1069), .C0(n294), 
        .C1(n521), .Y(n976) );
  OAI222XL U1253 ( .A0(n111), .A1(n1070), .B0(n97), .B1(n1069), .C0(n292), 
        .C1(n521), .Y(n982) );
  AOI2BB2X1 U1254 ( .B0(\group_values[2][5] ), .B1(n1146), .A0N(n1161), .A1N(
        n128), .Y(n659) );
  AOI222XL U1255 ( .A0(\group_values[3][5] ), .A1(n1150), .B0(
        \group_values[5][5] ), .B1(n1164), .C0(\group_values[4][5] ), .C1(
        n1148), .Y(n660) );
  NOR2X1 U1256 ( .A(n97), .B(n101), .Y(n356) );
  OAI2BB2XL U1257 ( .B0(n572), .B1(n53), .A0N(N486), .A1N(n573), .Y(n993) );
  OAI2BB2XL U1258 ( .B0(n572), .B1(n54), .A0N(N485), .A1N(n573), .Y(n994) );
  OAI2BB2XL U1259 ( .B0(n52), .B1(n572), .A0N(N487), .A1N(n573), .Y(n992) );
  OAI2BB2XL U1260 ( .B0(n97), .B1(n572), .A0N(N484), .A1N(n573), .Y(n995) );
  OAI2BB2XL U1261 ( .B0(n100), .B1(n572), .A0N(N483), .A1N(n573), .Y(n996) );
  OAI2BB2XL U1262 ( .B0(n101), .B1(n572), .A0N(N482), .A1N(n573), .Y(n997) );
  OAI2BB2XL U1263 ( .B0(n49), .B1(n572), .A0N(N488), .A1N(n573), .Y(n998) );
  CLKINVX1 U1264 ( .A(gray_data[1]), .Y(n1236) );
  NAND2X1 U1265 ( .A(counter[1]), .B(n101), .Y(n395) );
  AOI2BB2X1 U1266 ( .B0(\group_values[2][2] ), .B1(n1146), .A0N(n1161), .A1N(
        n131), .Y(n653) );
  AOI222XL U1267 ( .A0(\group_values[3][2] ), .A1(n1150), .B0(
        \group_values[5][2] ), .B1(n1164), .C0(\group_values[4][2] ), .C1(
        n1148), .Y(n654) );
  NAND3X1 U1268 ( .A(n100), .B(n97), .C(counter[0]), .Y(n357) );
  AOI2BB2X1 U1269 ( .B0(\group_values[2][1] ), .B1(n1146), .A0N(n1161), .A1N(
        n132), .Y(n651) );
  AOI222XL U1270 ( .A0(\group_values[3][1] ), .A1(n1150), .B0(
        \group_values[5][1] ), .B1(n1164), .C0(\group_values[4][1] ), .C1(
        n1148), .Y(n652) );
  AOI2BB2X1 U1271 ( .B0(\group_values[2][3] ), .B1(n1146), .A0N(n1161), .A1N(
        n130), .Y(n655) );
  AOI222XL U1272 ( .A0(\group_values[3][3] ), .A1(n1150), .B0(
        \group_values[5][3] ), .B1(n1164), .C0(\group_values[4][3] ), .C1(
        n1148), .Y(n656) );
  AOI2BB2X1 U1273 ( .B0(\group_values[2][7] ), .B1(n1146), .A0N(n1161), .A1N(
        n126), .Y(n663) );
  AOI222XL U1274 ( .A0(\group_values[3][7] ), .A1(n1150), .B0(
        \group_values[5][7] ), .B1(n1164), .C0(\group_values[4][7] ), .C1(
        n1148), .Y(n664) );
  OAI211X1 U1275 ( .A0(n1165), .A1(n143), .B0(n649), .C0(n650), .Y(N607) );
  AOI2BB2X1 U1276 ( .B0(\group_values[2][0] ), .B1(n1146), .A0N(n1161), .A1N(
        n133), .Y(n649) );
  AOI222XL U1277 ( .A0(\group_values[3][0] ), .A1(n1149), .B0(
        \group_values[5][0] ), .B1(n1164), .C0(\group_values[4][0] ), .C1(
        n1147), .Y(n650) );
  AOI2BB2X1 U1278 ( .B0(\group_values[2][8] ), .B1(n1146), .A0N(n1161), .A1N(
        n125), .Y(n665) );
  AOI222XL U1279 ( .A0(\group_values[3][8] ), .A1(n1150), .B0(
        \group_values[5][8] ), .B1(n1164), .C0(\group_values[4][8] ), .C1(
        n1148), .Y(n666) );
  OAI221XL U1280 ( .A0(n1260), .A1(n1068), .B0(n1247), .B1(n122), .C0(n1152), 
        .Y(n880) );
  OAI221XL U1281 ( .A0(n1258), .A1(n1068), .B0(n1247), .B1(n120), .C0(n1151), 
        .Y(n878) );
  OAI221XL U1282 ( .A0(n1188), .A1(n1068), .B0(n1247), .B1(n119), .C0(n1151), 
        .Y(n877) );
  OAI221XL U1283 ( .A0(n1257), .A1(n1068), .B0(n1247), .B1(n118), .C0(n1152), 
        .Y(n876) );
  OAI221XL U1284 ( .A0(n1217), .A1(n1068), .B0(n1247), .B1(n117), .C0(n1152), 
        .Y(n875) );
  OAI221XL U1285 ( .A0(n1256), .A1(n1068), .B0(n1247), .B1(n116), .C0(n1152), 
        .Y(n874) );
  OAI221XL U1286 ( .A0(n1259), .A1(n1068), .B0(n1247), .B1(n121), .C0(n1151), 
        .Y(n879) );
  OAI221XL U1287 ( .A0(n1218), .A1(n1068), .B0(n1247), .B1(n114), .C0(n1151), 
        .Y(n872) );
  OAI221XL U1288 ( .A0(n1261), .A1(n1068), .B0(n1247), .B1(n123), .C0(n1151), 
        .Y(n977) );
  OAI221XL U1289 ( .A0(n1255), .A1(n1068), .B0(n1247), .B1(n115), .C0(n1151), 
        .Y(n873) );
  CLKINVX1 U1290 ( .A(n1196), .Y(n1216) );
  OAI22XL U1291 ( .A0(n101), .A1(n1068), .B0(n1247), .B1(n113), .Y(n978) );
  OAI22XL U1292 ( .A0(n97), .A1(n1068), .B0(n1247), .B1(n111), .Y(n980) );
  OAI22XL U1293 ( .A0(n100), .A1(n1068), .B0(n1247), .B1(n112), .Y(n979) );
  OAI211X1 U1294 ( .A0(n1166), .A1(n137), .B0(n661), .C0(n662), .Y(N601) );
  AOI2BB2X1 U1295 ( .B0(\group_values[2][6] ), .B1(n1146), .A0N(n1161), .A1N(
        n127), .Y(n661) );
  AOI222XL U1296 ( .A0(\group_values[3][6] ), .A1(n1150), .B0(
        \group_values[5][6] ), .B1(n1164), .C0(\group_values[4][6] ), .C1(
        n1148), .Y(n662) );
  AOI22X1 U1297 ( .A0(\group[2][2] ), .A1(n510), .B0(n505), .B1(\group[1][2] ), 
        .Y(n641) );
  AOI222XL U1298 ( .A0(\group[3][2] ), .A1(n514), .B0(\group[5][2] ), .B1(n525), .C0(\group[4][2] ), .C1(n518), .Y(n642) );
  OAI222XL U1299 ( .A0(n174), .A1(n1092), .B0(n332), .B1(n1093), .C0(n175), 
        .C1(n1091), .Y(n733) );
  OAI222XL U1300 ( .A0(n166), .A1(n1096), .B0(n332), .B1(n1097), .C0(n167), 
        .C1(n1095), .Y(n717) );
  OAI222XL U1301 ( .A0(n158), .A1(n1100), .B0(n332), .B1(n1101), .C0(n159), 
        .C1(n1099), .Y(n701) );
  OAI222XL U1302 ( .A0(n190), .A1(n1084), .B0(n332), .B1(n1085), .C0(n191), 
        .C1(n1083), .Y(n765) );
  NAND3X2 U1303 ( .A(n293), .B(n292), .C(n294), .Y(n503) );
  CLKBUFX3 U1304 ( .A(n333), .Y(n1099) );
  OAI31XL U1305 ( .A0(n385), .A1(n386), .A2(n387), .B0(n1098), .Y(n333) );
  NAND3X1 U1306 ( .A(n390), .B(n100), .C(n1251), .Y(n385) );
  OAI222XL U1307 ( .A0(n1102), .A1(n150), .B0(n332), .B1(n1081), .C0(n1080), 
        .C1(n151), .Y(n685) );
  OAI222XL U1308 ( .A0(n1270), .A1(n1093), .B0(n173), .B1(n1092), .C0(n174), 
        .C1(n1091), .Y(n724) );
  OAI222XL U1309 ( .A0(n1271), .A1(n1093), .B0(n172), .B1(n1092), .C0(n173), 
        .C1(n1091), .Y(n723) );
  OAI222XL U1310 ( .A0(n1272), .A1(n1093), .B0(n171), .B1(n1092), .C0(n172), 
        .C1(n1091), .Y(n722) );
  OAI222XL U1311 ( .A0(n1273), .A1(n1093), .B0(n170), .B1(n1092), .C0(n171), 
        .C1(n1091), .Y(n721) );
  OAI222XL U1312 ( .A0(n1274), .A1(n1093), .B0(n169), .B1(n1092), .C0(n170), 
        .C1(n1091), .Y(n720) );
  OAI222XL U1313 ( .A0(n1275), .A1(n1093), .B0(n168), .B1(n1092), .C0(n169), 
        .C1(n1091), .Y(n719) );
  OAI222XL U1314 ( .A0(n1270), .A1(n1097), .B0(n165), .B1(n1096), .C0(n166), 
        .C1(n1095), .Y(n708) );
  OAI222XL U1315 ( .A0(n1271), .A1(n1097), .B0(n164), .B1(n1096), .C0(n165), 
        .C1(n1095), .Y(n707) );
  OAI222XL U1316 ( .A0(n1272), .A1(n1097), .B0(n163), .B1(n1096), .C0(n164), 
        .C1(n1095), .Y(n706) );
  OAI222XL U1317 ( .A0(n1273), .A1(n1097), .B0(n162), .B1(n1096), .C0(n163), 
        .C1(n1095), .Y(n705) );
  OAI222XL U1318 ( .A0(n1274), .A1(n1097), .B0(n161), .B1(n1096), .C0(n162), 
        .C1(n1095), .Y(n704) );
  OAI222XL U1319 ( .A0(n1275), .A1(n1097), .B0(n160), .B1(n1096), .C0(n161), 
        .C1(n1095), .Y(n703) );
  OAI222XL U1320 ( .A0(n1270), .A1(n1101), .B0(n157), .B1(n1100), .C0(n158), 
        .C1(n1099), .Y(n692) );
  OAI222XL U1321 ( .A0(n1271), .A1(n1101), .B0(n156), .B1(n1100), .C0(n157), 
        .C1(n1099), .Y(n691) );
  OAI222XL U1322 ( .A0(n1272), .A1(n1101), .B0(n155), .B1(n1100), .C0(n156), 
        .C1(n1099), .Y(n690) );
  OAI222XL U1323 ( .A0(n1273), .A1(n1101), .B0(n154), .B1(n1100), .C0(n155), 
        .C1(n1099), .Y(n689) );
  OAI222XL U1324 ( .A0(n1274), .A1(n1101), .B0(n153), .B1(n1100), .C0(n154), 
        .C1(n1099), .Y(n688) );
  OAI222XL U1325 ( .A0(n1275), .A1(n1101), .B0(n152), .B1(n1100), .C0(n153), 
        .C1(n1099), .Y(n687) );
  OAI222XL U1326 ( .A0(n1275), .A1(n1085), .B0(n184), .B1(n1084), .C0(n185), 
        .C1(n1083), .Y(n751) );
  OAI222XL U1327 ( .A0(n1274), .A1(n1085), .B0(n185), .B1(n1084), .C0(n186), 
        .C1(n1083), .Y(n752) );
  OAI222XL U1328 ( .A0(n1273), .A1(n1085), .B0(n186), .B1(n1084), .C0(n187), 
        .C1(n1083), .Y(n753) );
  OAI222XL U1329 ( .A0(n1272), .A1(n1085), .B0(n187), .B1(n1084), .C0(n188), 
        .C1(n1083), .Y(n754) );
  OAI222XL U1330 ( .A0(n1271), .A1(n1085), .B0(n188), .B1(n1084), .C0(n189), 
        .C1(n1083), .Y(n755) );
  OAI222XL U1331 ( .A0(n1270), .A1(n1085), .B0(n189), .B1(n1084), .C0(n190), 
        .C1(n1083), .Y(n756) );
  OAI222XL U1332 ( .A0(n1263), .A1(n1093), .B0(n1092), .B1(n225), .C0(n1091), 
        .C1(n226), .Y(n826) );
  OAI222XL U1333 ( .A0(n1264), .A1(n1093), .B0(n1092), .B1(n224), .C0(n1091), 
        .C1(n225), .Y(n824) );
  OAI222XL U1334 ( .A0(n1265), .A1(n1093), .B0(n1092), .B1(n223), .C0(n1091), 
        .C1(n224), .Y(n822) );
  OAI222XL U1335 ( .A0(n1266), .A1(n1093), .B0(n1092), .B1(n222), .C0(n1091), 
        .C1(n223), .Y(n820) );
  OAI222XL U1336 ( .A0(n1267), .A1(n1093), .B0(n1092), .B1(n221), .C0(n1091), 
        .C1(n222), .Y(n818) );
  OAI222XL U1337 ( .A0(n1268), .A1(n1093), .B0(n1092), .B1(n219), .C0(n1091), 
        .C1(n221), .Y(n816) );
  OAI222XL U1338 ( .A0(n1263), .A1(n1097), .B0(n1096), .B1(n216), .C0(n1095), 
        .C1(n217), .Y(n810) );
  OAI222XL U1339 ( .A0(n1264), .A1(n1097), .B0(n1096), .B1(n215), .C0(n1095), 
        .C1(n216), .Y(n808) );
  OAI222XL U1340 ( .A0(n1265), .A1(n1097), .B0(n1096), .B1(n214), .C0(n1095), 
        .C1(n215), .Y(n806) );
  OAI222XL U1341 ( .A0(n1266), .A1(n1097), .B0(n1096), .B1(n213), .C0(n1095), 
        .C1(n214), .Y(n804) );
  OAI222XL U1342 ( .A0(n1267), .A1(n1097), .B0(n1096), .B1(n212), .C0(n1095), 
        .C1(n213), .Y(n802) );
  OAI222XL U1343 ( .A0(n1268), .A1(n1097), .B0(n1096), .B1(n210), .C0(n1095), 
        .C1(n212), .Y(n800) );
  OAI222XL U1344 ( .A0(n1263), .A1(n1101), .B0(n1100), .B1(n207), .C0(n1099), 
        .C1(n208), .Y(n794) );
  OAI222XL U1345 ( .A0(n1264), .A1(n1101), .B0(n1100), .B1(n206), .C0(n1099), 
        .C1(n207), .Y(n792) );
  OAI222XL U1346 ( .A0(n1265), .A1(n1101), .B0(n1100), .B1(n205), .C0(n1099), 
        .C1(n206), .Y(n790) );
  OAI222XL U1347 ( .A0(n1266), .A1(n1101), .B0(n1100), .B1(n204), .C0(n1099), 
        .C1(n205), .Y(n788) );
  OAI222XL U1348 ( .A0(n1267), .A1(n1101), .B0(n1100), .B1(n203), .C0(n1099), 
        .C1(n204), .Y(n786) );
  OAI222XL U1349 ( .A0(n1268), .A1(n1101), .B0(n1100), .B1(n201), .C0(n1099), 
        .C1(n203), .Y(n784) );
  OAI222XL U1350 ( .A0(n1268), .A1(n1085), .B0(n1084), .B1(n237), .C0(n1083), 
        .C1(n239), .Y(n848) );
  OAI222XL U1351 ( .A0(n1267), .A1(n1085), .B0(n1084), .B1(n239), .C0(n1083), 
        .C1(n240), .Y(n850) );
  OAI222XL U1352 ( .A0(n1266), .A1(n1085), .B0(n1084), .B1(n240), .C0(n1083), 
        .C1(n241), .Y(n852) );
  OAI222XL U1353 ( .A0(n1265), .A1(n1085), .B0(n1084), .B1(n241), .C0(n1083), 
        .C1(n242), .Y(n854) );
  OAI222XL U1354 ( .A0(n1264), .A1(n1085), .B0(n1084), .B1(n242), .C0(n1083), 
        .C1(n243), .Y(n856) );
  OAI222XL U1355 ( .A0(n1263), .A1(n1085), .B0(n1084), .B1(n243), .C0(n1083), 
        .C1(n244), .Y(n858) );
  AOI22X1 U1356 ( .A0(\group[2][5] ), .A1(n510), .B0(n505), .B1(\group[1][5] ), 
        .Y(n647) );
  AOI222XL U1357 ( .A0(\group[3][5] ), .A1(n514), .B0(\group[5][5] ), .B1(n525), .C0(\group[4][5] ), .C1(n518), .Y(n648) );
  NOR2X2 U1358 ( .A(n292), .B(\min2_idx[0] ), .Y(n518) );
  OAI222XL U1359 ( .A0(n1270), .A1(n1081), .B0(n1102), .B1(n149), .C0(n1080), 
        .C1(n150), .Y(n676) );
  OAI222XL U1360 ( .A0(n1271), .A1(n1081), .B0(n1102), .B1(n148), .C0(n1080), 
        .C1(n149), .Y(n675) );
  OAI222XL U1361 ( .A0(n1272), .A1(n1081), .B0(n1102), .B1(n147), .C0(n1080), 
        .C1(n148), .Y(n674) );
  OAI222XL U1362 ( .A0(n1273), .A1(n1081), .B0(n1102), .B1(n146), .C0(n1080), 
        .C1(n147), .Y(n673) );
  OAI222XL U1363 ( .A0(n1274), .A1(n1081), .B0(n1102), .B1(n145), .C0(n146), 
        .C1(n1080), .Y(n672) );
  OAI222XL U1364 ( .A0(n1275), .A1(n1081), .B0(n1102), .B1(n144), .C0(n1080), 
        .C1(n145), .Y(n671) );
  OAI222XL U1365 ( .A0(n1263), .A1(n1081), .B0(n1102), .B1(n198), .C0(n1080), 
        .C1(n199), .Y(n778) );
  OAI222XL U1366 ( .A0(n1264), .A1(n1081), .B0(n1102), .B1(n197), .C0(n1080), 
        .C1(n198), .Y(n776) );
  OAI222XL U1367 ( .A0(n1265), .A1(n1081), .B0(n1102), .B1(n196), .C0(n1080), 
        .C1(n197), .Y(n774) );
  OAI222XL U1368 ( .A0(n1266), .A1(n1081), .B0(n1102), .B1(n195), .C0(n1080), 
        .C1(n196), .Y(n772) );
  OAI222XL U1369 ( .A0(n1267), .A1(n1081), .B0(n1102), .B1(n194), .C0(n1080), 
        .C1(n195), .Y(n770) );
  OAI222XL U1370 ( .A0(n1268), .A1(n1081), .B0(n1102), .B1(n192), .C0(n1080), 
        .C1(n194), .Y(n768) );
  NOR2X2 U1371 ( .A(n292), .B(n294), .Y(n525) );
  OAI222XL U1372 ( .A0(n182), .A1(n1088), .B0(n332), .B1(n1089), .C0(n183), 
        .C1(n1087), .Y(n749) );
  OAI222XL U1373 ( .A0(n1270), .A1(n1089), .B0(n181), .B1(n1088), .C0(n182), 
        .C1(n1087), .Y(n740) );
  OAI222XL U1374 ( .A0(n1271), .A1(n1089), .B0(n180), .B1(n1088), .C0(n181), 
        .C1(n1087), .Y(n739) );
  OAI222XL U1375 ( .A0(n1272), .A1(n1089), .B0(n179), .B1(n1088), .C0(n180), 
        .C1(n1087), .Y(n738) );
  OAI222XL U1376 ( .A0(n1273), .A1(n1089), .B0(n178), .B1(n1088), .C0(n179), 
        .C1(n1087), .Y(n737) );
  OAI222XL U1377 ( .A0(n1274), .A1(n1089), .B0(n177), .B1(n1088), .C0(n178), 
        .C1(n1087), .Y(n736) );
  OAI222XL U1378 ( .A0(n1275), .A1(n1089), .B0(n176), .B1(n1088), .C0(n177), 
        .C1(n1087), .Y(n735) );
  OAI222XL U1379 ( .A0(n1263), .A1(n1089), .B0(n1088), .B1(n234), .C0(n1087), 
        .C1(n235), .Y(n842) );
  OAI222XL U1380 ( .A0(n1264), .A1(n1089), .B0(n1088), .B1(n233), .C0(n1087), 
        .C1(n234), .Y(n840) );
  OAI222XL U1381 ( .A0(n1265), .A1(n1089), .B0(n1088), .B1(n232), .C0(n1087), 
        .C1(n233), .Y(n838) );
  OAI222XL U1382 ( .A0(n1266), .A1(n1089), .B0(n1088), .B1(n231), .C0(n1087), 
        .C1(n232), .Y(n836) );
  OAI222XL U1383 ( .A0(n1267), .A1(n1089), .B0(n1088), .B1(n230), .C0(n1087), 
        .C1(n231), .Y(n834) );
  OAI222XL U1384 ( .A0(n1268), .A1(n1089), .B0(n1088), .B1(n228), .C0(n1087), 
        .C1(n230), .Y(n832) );
  AOI22X1 U1385 ( .A0(\group[2][1] ), .A1(n510), .B0(n505), .B1(\group[1][1] ), 
        .Y(n639) );
  AOI222XL U1386 ( .A0(\group[3][1] ), .A1(n514), .B0(\group[5][1] ), .B1(n525), .C0(\group[4][1] ), .C1(n518), .Y(n640) );
  OAI221XL U1387 ( .A0(n1092), .A1(n226), .B0(n1091), .B1(n227), .C0(n1093), 
        .Y(n828) );
  OAI221XL U1388 ( .A0(n1096), .A1(n217), .B0(n1095), .B1(n218), .C0(n1097), 
        .Y(n812) );
  OAI221XL U1389 ( .A0(n1100), .A1(n208), .B0(n1099), .B1(n209), .C0(n1101), 
        .Y(n796) );
  OAI221XL U1390 ( .A0(n1084), .A1(n244), .B0(n1083), .B1(n245), .C0(n1085), 
        .Y(n860) );
  AOI22X1 U1391 ( .A0(\group[2][4] ), .A1(n510), .B0(n505), .B1(\group[1][4] ), 
        .Y(n645) );
  AOI222XL U1392 ( .A0(\group[3][4] ), .A1(n514), .B0(\group[5][4] ), .B1(n525), .C0(\group[4][4] ), .C1(n518), .Y(n646) );
  NOR2X2 U1393 ( .A(n293), .B(n294), .Y(n514) );
  OAI221XL U1394 ( .A0(n1102), .A1(n199), .B0(n1080), .B1(n200), .C0(n1081), 
        .Y(n780) );
  OAI221XL U1395 ( .A0(n1088), .A1(n235), .B0(n1087), .B1(n236), .C0(n1089), 
        .Y(n844) );
  AND3X2 U1396 ( .A(n293), .B(n292), .C(\min2_idx[0] ), .Y(n505) );
  OAI22XL U1397 ( .A0(n1083), .A1(n184), .B0(n1269), .B1(n1085), .Y(n750) );
  OAI22XL U1398 ( .A0(n1091), .A1(n168), .B0(n1269), .B1(n1093), .Y(n718) );
  OAI22XL U1399 ( .A0(n1095), .A1(n160), .B0(n1269), .B1(n1097), .Y(n702) );
  OAI22XL U1400 ( .A0(n1099), .A1(n152), .B0(n1269), .B1(n1101), .Y(n686) );
  OAI22XL U1401 ( .A0(n1083), .A1(n237), .B0(n1262), .B1(n1085), .Y(n846) );
  OAI22XL U1402 ( .A0(n1091), .A1(n219), .B0(n1262), .B1(n1093), .Y(n814) );
  OAI22XL U1403 ( .A0(n1095), .A1(n210), .B0(n1262), .B1(n1097), .Y(n798) );
  OAI22XL U1404 ( .A0(n1099), .A1(n201), .B0(n1262), .B1(n1101), .Y(n782) );
  OAI22XL U1405 ( .A0(n144), .A1(n1080), .B0(n1269), .B1(n1081), .Y(n766) );
  OAI22XL U1406 ( .A0(n1080), .A1(n192), .B0(n1262), .B1(n1081), .Y(n862) );
  OAI22XL U1407 ( .A0(n1087), .A1(n228), .B0(n1262), .B1(n1089), .Y(n830) );
  OAI22XL U1408 ( .A0(n1087), .A1(n176), .B0(n1269), .B1(n1089), .Y(n734) );
  NOR2X2 U1409 ( .A(n293), .B(\min2_idx[0] ), .Y(n510) );
  NOR3X2 U1410 ( .A(min1_idx[1]), .B(min1_idx[2]), .C(n113), .Y(n506) );
  NAND2X1 U1411 ( .A(n629), .B(n630), .Y(N662) );
  AOI222XL U1412 ( .A0(n513), .A1(\group[3][2] ), .B0(n524), .B1(\group[5][2] ), .C0(n517), .C1(\group[4][2] ), .Y(n630) );
  AOI222XL U1413 ( .A0(n504), .A1(\group[0][2] ), .B0(n509), .B1(\group[2][2] ), .C0(n506), .C1(\group[1][2] ), .Y(n629) );
  NAND2X1 U1414 ( .A(n635), .B(n636), .Y(N659) );
  AOI222XL U1415 ( .A0(n513), .A1(\group[3][5] ), .B0(n524), .B1(\group[5][5] ), .C0(n517), .C1(\group[4][5] ), .Y(n636) );
  AOI222XL U1416 ( .A0(n504), .A1(\group[0][5] ), .B0(n509), .B1(\group[2][5] ), .C0(n506), .C1(\group[1][5] ), .Y(n635) );
  OAI211X1 U1417 ( .A0(n1166), .A1(n134), .B0(n667), .C0(n668), .Y(N598) );
  AOI2BB2X1 U1418 ( .B0(\group_values[2][9] ), .B1(n1145), .A0N(n1161), .A1N(
        n124), .Y(n667) );
  AOI222XL U1419 ( .A0(\group_values[3][9] ), .A1(n1149), .B0(
        \group_values[5][9] ), .B1(n1163), .C0(\group_values[4][9] ), .C1(
        n1147), .Y(n668) );
  AOI22X1 U1420 ( .A0(\group[2][0] ), .A1(n510), .B0(n505), .B1(\group[1][0] ), 
        .Y(n637) );
  AOI222XL U1421 ( .A0(\group[3][0] ), .A1(n514), .B0(\group[5][0] ), .B1(n525), .C0(\group[4][0] ), .C1(n518), .Y(n638) );
  NAND2X1 U1422 ( .A(n627), .B(n628), .Y(N663) );
  AOI222XL U1423 ( .A0(n513), .A1(\group[3][1] ), .B0(n524), .B1(\group[5][1] ), .C0(n517), .C1(\group[4][1] ), .Y(n628) );
  AOI222XL U1424 ( .A0(n504), .A1(\group[0][1] ), .B0(n509), .B1(\group[2][1] ), .C0(n506), .C1(\group[1][1] ), .Y(n627) );
  AOI22X1 U1425 ( .A0(\group[2][3] ), .A1(n510), .B0(n505), .B1(\group[1][3] ), 
        .Y(n643) );
  AOI222XL U1426 ( .A0(\group[3][3] ), .A1(n514), .B0(\group[5][3] ), .B1(n525), .C0(\group[4][3] ), .C1(n518), .Y(n644) );
  NAND2X1 U1427 ( .A(n633), .B(n634), .Y(N660) );
  AOI222XL U1428 ( .A0(n513), .A1(\group[3][4] ), .B0(n524), .B1(\group[5][4] ), .C0(n517), .C1(\group[4][4] ), .Y(n634) );
  AOI222XL U1429 ( .A0(n504), .A1(\group[0][4] ), .B0(n509), .B1(\group[2][4] ), .C0(n506), .C1(\group[1][4] ), .Y(n633) );
  NOR2X2 U1430 ( .A(n111), .B(min1_idx[0]), .Y(n517) );
  OAI211X1 U1431 ( .A0(n1165), .A1(n253), .B0(n589), .C0(n590), .Y(N818) );
  AOI222XL U1432 ( .A0(CNT4[0]), .A1(n1149), .B0(CNT6[0]), .B1(n1163), .C0(
        CNT5[0]), .C1(n1147), .Y(n590) );
  OAI22XL U1433 ( .A0(n124), .A1(n1072), .B0(n1220), .B1(n1245), .Y(n920) );
  OAI22XL U1434 ( .A0(n134), .A1(n1071), .B0(n1220), .B1(n1244), .Y(n930) );
  OAI211X1 U1435 ( .A0(n136), .A1(n1060), .B0(n619), .C0(n620), .Y(N797) );
  OAI211X1 U1436 ( .A0(n1165), .A1(n246), .B0(n603), .C0(n604), .Y(N811) );
  AOI2BB2X1 U1437 ( .B0(n1061), .B1(\group_values[2][7] ), .A0N(n126), .A1N(
        n1062), .Y(n619) );
  OAI2BB1X1 U1438 ( .A0N(N828), .A1N(n1250), .B0(n477), .Y(n543) );
  OAI211X1 U1439 ( .A0(n134), .A1(n1060), .B0(n623), .C0(n624), .Y(N795) );
  OAI211X1 U1440 ( .A0(n142), .A1(n1060), .B0(n607), .C0(n608), .Y(N803) );
  OAI211X1 U1441 ( .A0(n1165), .A1(n252), .B0(n591), .C0(n592), .Y(N817) );
  OAI211X1 U1442 ( .A0(n141), .A1(n1060), .B0(n609), .C0(n610), .Y(N802) );
  OAI211X1 U1443 ( .A0(n1165), .A1(n251), .B0(n593), .C0(n594), .Y(N816) );
  AOI2BB2X1 U1444 ( .B0(n1061), .B1(\group_values[2][2] ), .A0N(n131), .A1N(
        n1062), .Y(n609) );
  OAI211X1 U1445 ( .A0(n140), .A1(n1060), .B0(n611), .C0(n612), .Y(N801) );
  OAI211X1 U1446 ( .A0(n1165), .A1(n250), .B0(n595), .C0(n596), .Y(N815) );
  AOI2BB2X1 U1447 ( .B0(n1061), .B1(\group_values[2][3] ), .A0N(n130), .A1N(
        n1062), .Y(n611) );
  OAI211X1 U1448 ( .A0(n139), .A1(n1060), .B0(n613), .C0(n614), .Y(N800) );
  OAI211X1 U1449 ( .A0(n1165), .A1(n249), .B0(n597), .C0(n598), .Y(N814) );
  AOI2BB2X1 U1450 ( .B0(n1061), .B1(\group_values[2][4] ), .A0N(n129), .A1N(
        n1062), .Y(n613) );
  OAI211X1 U1451 ( .A0(n138), .A1(n1060), .B0(n615), .C0(n616), .Y(N799) );
  OAI211X1 U1452 ( .A0(n1165), .A1(n248), .B0(n599), .C0(n600), .Y(N813) );
  AOI2BB2X1 U1453 ( .B0(n1061), .B1(\group_values[2][5] ), .A0N(n128), .A1N(
        n1062), .Y(n615) );
  OAI211X1 U1454 ( .A0(n137), .A1(n1060), .B0(n617), .C0(n618), .Y(N798) );
  OAI211X1 U1455 ( .A0(n1165), .A1(n247), .B0(n601), .C0(n602), .Y(N812) );
  AOI2BB2X1 U1456 ( .B0(n1061), .B1(\group_values[2][6] ), .A0N(n127), .A1N(
        n1062), .Y(n617) );
  NOR2X2 U1457 ( .A(n112), .B(min1_idx[0]), .Y(n509) );
  NOR2X2 U1458 ( .A(n111), .B(n113), .Y(n524) );
  NOR3X2 U1459 ( .A(min1_idx[1]), .B(min1_idx[2]), .C(min1_idx[0]), .Y(n504)
         );
  OAI2BB2XL U1460 ( .B0(n1220), .B1(n1073), .A0N(\group_values[2][9] ), .A1N(
        n1073), .Y(n910) );
  OAI2BB2XL U1461 ( .B0(n1220), .B1(n466), .A0N(\group_values[3][9] ), .A1N(
        n466), .Y(n900) );
  OAI2BB2XL U1462 ( .B0(n462), .B1(n1220), .A0N(\group_values[4][9] ), .A1N(
        n462), .Y(n890) );
  OAI2BB2XL U1463 ( .B0(n1067), .B1(n1220), .A0N(\group_values[5][9] ), .A1N(
        n1067), .Y(n984) );
  NOR2X2 U1464 ( .A(n112), .B(n113), .Y(n513) );
  AOI222XL U1465 ( .A0(CNT4[1]), .A1(n1149), .B0(CNT6[1]), .B1(n1163), .C0(
        CNT5[1]), .C1(n1147), .Y(n592) );
  OAI22XL U1466 ( .A0(n125), .A1(n1072), .B0(n1221), .B1(n1245), .Y(n921) );
  OAI22XL U1467 ( .A0(n135), .A1(n1071), .B0(n1221), .B1(n1244), .Y(n931) );
  OAI211X1 U1468 ( .A0(n143), .A1(n1060), .B0(n605), .C0(n606), .Y(N804) );
  AOI2BB2X1 U1469 ( .B0(n1061), .B1(\group_values[2][0] ), .A0N(n133), .A1N(
        n1062), .Y(n605) );
  AOI222XL U1470 ( .A0(n1063), .A1(\group_values[3][0] ), .B0(
        \group_values[5][0] ), .B1(n1064), .C0(n1065), .C1(
        \group_values[4][0] ), .Y(n606) );
  CLKBUFX3 U1471 ( .A(n464), .Y(n1065) );
  NOR2X1 U1472 ( .A(n107), .B(counter_init[0]), .Y(n464) );
  CLKBUFX3 U1473 ( .A(n556), .Y(n1064) );
  NOR2X1 U1474 ( .A(n107), .B(n109), .Y(n556) );
  OAI2BB2XL U1475 ( .B0(n1221), .B1(n1075), .A0N(\group_values[2][8] ), .A1N(
        n1075), .Y(n911) );
  OAI2BB2XL U1476 ( .B0(n1221), .B1(n1076), .A0N(\group_values[3][8] ), .A1N(
        n1076), .Y(n901) );
  OAI2BB2XL U1477 ( .B0(n1221), .B1(n1077), .A0N(\group_values[4][8] ), .A1N(
        n1077), .Y(n891) );
  OAI2BB2XL U1478 ( .B0(n1067), .B1(n1221), .A0N(\group_values[5][8] ), .A1N(
        n1067), .Y(n881) );
  NAND2X1 U1479 ( .A(n625), .B(n626), .Y(N664) );
  AOI222XL U1480 ( .A0(n513), .A1(\group[3][0] ), .B0(n524), .B1(\group[5][0] ), .C0(n517), .C1(\group[4][0] ), .Y(n626) );
  AOI222XL U1481 ( .A0(n504), .A1(\group[0][0] ), .B0(n509), .B1(\group[2][0] ), .C0(n506), .C1(\group[1][0] ), .Y(n625) );
  NAND2X1 U1482 ( .A(n631), .B(n632), .Y(N661) );
  AOI222XL U1483 ( .A0(n513), .A1(\group[3][3] ), .B0(n524), .B1(\group[5][3] ), .C0(n517), .C1(\group[4][3] ), .Y(n632) );
  AOI222XL U1484 ( .A0(n504), .A1(\group[0][3] ), .B0(n509), .B1(\group[2][3] ), .C0(n506), .C1(\group[1][3] ), .Y(n631) );
  CLKBUFX3 U1485 ( .A(n468), .Y(n1063) );
  NOR2X1 U1486 ( .A(n108), .B(n109), .Y(n468) );
  AOI222XL U1487 ( .A0(CNT4[2]), .A1(n1149), .B0(CNT6[2]), .B1(n1164), .C0(
        CNT5[2]), .C1(n1147), .Y(n594) );
  CLKBUFX3 U1488 ( .A(n474), .Y(n1062) );
  NAND3X1 U1489 ( .A(n108), .B(n107), .C(counter_init[0]), .Y(n474) );
  AOI222XL U1490 ( .A0(n1063), .A1(\group_values[3][1] ), .B0(
        \group_values[5][1] ), .B1(n1064), .C0(n1065), .C1(
        \group_values[4][1] ), .Y(n608) );
  OAI22XL U1491 ( .A0(n126), .A1(n1072), .B0(n1222), .B1(n1245), .Y(n922) );
  OAI22XL U1492 ( .A0(n136), .A1(n1071), .B0(n1222), .B1(n1244), .Y(n932) );
  OAI2BB2XL U1493 ( .B0(n1222), .B1(n1075), .A0N(\group_values[2][7] ), .A1N(
        n1073), .Y(n912) );
  OAI2BB2XL U1494 ( .B0(n1222), .B1(n466), .A0N(\group_values[3][7] ), .A1N(
        n466), .Y(n902) );
  OAI2BB2XL U1495 ( .B0(n1222), .B1(n462), .A0N(\group_values[4][7] ), .A1N(
        n462), .Y(n892) );
  OAI2BB2XL U1496 ( .B0(n1067), .B1(n1222), .A0N(\group_values[5][7] ), .A1N(
        n1067), .Y(n882) );
  NOR2X1 U1497 ( .A(n108), .B(counter_init[0]), .Y(n471) );
  AOI2BB2X1 U1498 ( .B0(n1061), .B1(\group_values[2][1] ), .A0N(n132), .A1N(
        n1062), .Y(n607) );
  AOI222XL U1499 ( .A0(CNT4[3]), .A1(n1149), .B0(CNT6[3]), .B1(n1164), .C0(
        CNT5[3]), .C1(n1147), .Y(n596) );
  AOI222XL U1500 ( .A0(n1063), .A1(\group_values[3][2] ), .B0(
        \group_values[5][2] ), .B1(n1064), .C0(n1065), .C1(
        \group_values[4][2] ), .Y(n610) );
  OAI22XL U1501 ( .A0(n127), .A1(n1072), .B0(n1223), .B1(n1245), .Y(n923) );
  OAI22XL U1502 ( .A0(n137), .A1(n1071), .B0(n1223), .B1(n1244), .Y(n933) );
  OAI2BB2XL U1503 ( .B0(n1223), .B1(n1075), .A0N(\group_values[2][6] ), .A1N(
        n1075), .Y(n913) );
  OAI2BB2XL U1504 ( .B0(n1223), .B1(n1076), .A0N(\group_values[3][6] ), .A1N(
        n1076), .Y(n903) );
  OAI2BB2XL U1505 ( .B0(n1223), .B1(n1077), .A0N(\group_values[4][6] ), .A1N(
        n1077), .Y(n893) );
  OAI2BB2XL U1506 ( .B0(n1067), .B1(n1223), .A0N(\group_values[5][6] ), .A1N(
        n1067), .Y(n883) );
  NAND3X1 U1507 ( .A(n108), .B(n107), .C(n109), .Y(n553) );
  AOI222XL U1508 ( .A0(CNT4[4]), .A1(n1149), .B0(CNT6[4]), .B1(n1164), .C0(
        CNT5[4]), .C1(n1147), .Y(n598) );
  AOI222XL U1509 ( .A0(n1063), .A1(\group_values[3][3] ), .B0(
        \group_values[5][3] ), .B1(n1064), .C0(n1065), .C1(
        \group_values[4][3] ), .Y(n612) );
  OAI22XL U1510 ( .A0(n128), .A1(n1072), .B0(n1224), .B1(n1245), .Y(n924) );
  OAI22XL U1511 ( .A0(n138), .A1(n1071), .B0(n1224), .B1(n1244), .Y(n934) );
  OAI2BB2XL U1512 ( .B0(n1224), .B1(n1075), .A0N(\group_values[2][5] ), .A1N(
        n1073), .Y(n914) );
  OAI2BB2XL U1513 ( .B0(n1224), .B1(n466), .A0N(\group_values[3][5] ), .A1N(
        n466), .Y(n904) );
  OAI2BB2XL U1514 ( .B0(n1224), .B1(n462), .A0N(\group_values[4][5] ), .A1N(
        n462), .Y(n894) );
  OAI2BB2XL U1515 ( .B0(n1067), .B1(n1224), .A0N(\group_values[5][5] ), .A1N(
        n1067), .Y(n884) );
  AOI222XL U1516 ( .A0(CNT4[5]), .A1(n1149), .B0(CNT6[5]), .B1(n1164), .C0(
        CNT5[5]), .C1(n1147), .Y(n600) );
  AOI222XL U1517 ( .A0(n1063), .A1(\group_values[3][4] ), .B0(
        \group_values[5][4] ), .B1(n1064), .C0(n1065), .C1(
        \group_values[4][4] ), .Y(n614) );
  OAI22XL U1518 ( .A0(n129), .A1(n1072), .B0(n1225), .B1(n1245), .Y(n925) );
  OAI22XL U1519 ( .A0(n139), .A1(n1071), .B0(n1225), .B1(n1244), .Y(n935) );
  OAI2BB2XL U1520 ( .B0(n1225), .B1(n1075), .A0N(\group_values[2][4] ), .A1N(
        n1075), .Y(n915) );
  OAI2BB2XL U1521 ( .B0(n1225), .B1(n1076), .A0N(\group_values[3][4] ), .A1N(
        n1076), .Y(n905) );
  OAI2BB2XL U1522 ( .B0(n1225), .B1(n1077), .A0N(\group_values[4][4] ), .A1N(
        n1077), .Y(n895) );
  OAI2BB2XL U1523 ( .B0(n1067), .B1(n1225), .A0N(\group_values[5][4] ), .A1N(
        n1067), .Y(n885) );
  OAI211X1 U1524 ( .A0(n286), .A1(n1060), .B0(n554), .C0(n555), .Y(n550) );
  AOI2BB2X1 U1525 ( .B0(n1061), .B1(\group[2][4] ), .A0N(n280), .A1N(n1062), 
        .Y(n554) );
  AOI222XL U1526 ( .A0(n1063), .A1(\group[3][4] ), .B0(\group[5][4] ), .B1(
        n1064), .C0(n1065), .C1(\group[4][4] ), .Y(n555) );
  NAND4X1 U1527 ( .A(n1249), .B(n1061), .C(n465), .D(n107), .Y(n470) );
  OAI2BB2XL U1528 ( .B0(n1229), .B1(n1075), .A0N(\group_values[2][0] ), .A1N(
        n1075), .Y(n919) );
  OAI2BB2XL U1529 ( .B0(n1228), .B1(n1075), .A0N(\group_values[2][1] ), .A1N(
        n1073), .Y(n918) );
  OAI2BB2XL U1530 ( .B0(n1227), .B1(n1075), .A0N(\group_values[2][2] ), .A1N(
        n1075), .Y(n917) );
  OAI2BB2XL U1531 ( .B0(n1226), .B1(n1075), .A0N(\group_values[2][3] ), .A1N(
        n1075), .Y(n916) );
  OAI211X1 U1532 ( .A0(n285), .A1(n1060), .B0(n559), .C0(n560), .Y(n551) );
  AOI2BB2X1 U1533 ( .B0(n1061), .B1(\group[2][5] ), .A0N(n279), .A1N(n1062), 
        .Y(n559) );
  AOI222XL U1534 ( .A0(n1063), .A1(\group[3][5] ), .B0(\group[5][5] ), .B1(
        n1064), .C0(n1065), .C1(\group[4][5] ), .Y(n560) );
  NAND4X1 U1535 ( .A(n1249), .B(n1065), .C(n465), .D(n108), .Y(n463) );
  OAI2BB2XL U1536 ( .B0(n1228), .B1(n462), .A0N(\group_values[4][1] ), .A1N(
        n462), .Y(n898) );
  OAI2BB2XL U1537 ( .B0(n1226), .B1(n462), .A0N(\group_values[4][3] ), .A1N(
        n462), .Y(n896) );
  NAND4X1 U1538 ( .A(n1249), .B(n1063), .C(n465), .D(n107), .Y(n467) );
  OAI2BB2XL U1539 ( .B0(n1229), .B1(n1076), .A0N(\group_values[3][0] ), .A1N(
        n1076), .Y(n909) );
  OAI2BB2XL U1540 ( .B0(n1228), .B1(n466), .A0N(\group_values[3][1] ), .A1N(
        n466), .Y(n908) );
  OAI2BB2XL U1541 ( .B0(n1227), .B1(n1076), .A0N(\group_values[3][2] ), .A1N(
        n1076), .Y(n907) );
  OAI2BB2XL U1542 ( .B0(n1226), .B1(n466), .A0N(\group_values[3][3] ), .A1N(
        n466), .Y(n906) );
  OAI2BB2XL U1543 ( .B0(n1229), .B1(n1077), .A0N(\group_values[4][0] ), .A1N(
        n1077), .Y(n899) );
  OAI2BB2XL U1544 ( .B0(n1227), .B1(n1077), .A0N(\group_values[4][2] ), .A1N(
        n1077), .Y(n897) );
  OAI211X1 U1545 ( .A0(n287), .A1(n1060), .B0(n557), .C0(n558), .Y(n549) );
  AOI2BB2X1 U1546 ( .B0(n1061), .B1(\group[2][3] ), .A0N(n281), .A1N(n1062), 
        .Y(n557) );
  AOI222XL U1547 ( .A0(n1063), .A1(\group[3][3] ), .B0(\group[5][3] ), .B1(
        n1064), .C0(n1065), .C1(\group[4][3] ), .Y(n558) );
  CLKINVX1 U1548 ( .A(n564), .Y(n1281) );
  OAI211X1 U1549 ( .A0(n288), .A1(n1060), .B0(n565), .C0(n566), .Y(n564) );
  AOI2BB2X1 U1550 ( .B0(n1061), .B1(\group[2][2] ), .A0N(n282), .A1N(n1062), 
        .Y(n565) );
  AOI222XL U1551 ( .A0(n1063), .A1(\group[3][2] ), .B0(\group[5][2] ), .B1(
        n1064), .C0(n1065), .C1(\group[4][2] ), .Y(n566) );
  AOI222XL U1552 ( .A0(CNT4[6]), .A1(n1149), .B0(CNT6[6]), .B1(n1164), .C0(
        CNT5[6]), .C1(n1147), .Y(n602) );
  AOI222XL U1553 ( .A0(n1063), .A1(\group_values[3][5] ), .B0(
        \group_values[5][5] ), .B1(n1064), .C0(n1065), .C1(
        \group_values[4][5] ), .Y(n616) );
  CLKINVX1 U1554 ( .A(n567), .Y(n1280) );
  OAI211X1 U1555 ( .A0(n289), .A1(n1060), .B0(n568), .C0(n569), .Y(n567) );
  AOI2BB2X1 U1556 ( .B0(n1061), .B1(\group[2][1] ), .A0N(n283), .A1N(n1062), 
        .Y(n568) );
  AOI222XL U1557 ( .A0(n1063), .A1(\group[3][1] ), .B0(\group[5][1] ), .B1(
        n1064), .C0(n1065), .C1(\group[4][1] ), .Y(n569) );
  CLKINVX1 U1558 ( .A(n561), .Y(n1282) );
  OAI211X1 U1559 ( .A0(n290), .A1(n1060), .B0(n562), .C0(n563), .Y(n561) );
  AOI2BB2X1 U1560 ( .B0(n1061), .B1(\group[2][0] ), .A0N(n284), .A1N(n1062), 
        .Y(n562) );
  AOI222XL U1561 ( .A0(n1063), .A1(\group[3][0] ), .B0(\group[5][0] ), .B1(
        n1064), .C0(n1065), .C1(\group[4][0] ), .Y(n563) );
  OAI22XL U1562 ( .A0(n143), .A1(n1071), .B0(n1229), .B1(n1244), .Y(n939) );
  OAI22XL U1563 ( .A0(n142), .A1(n1071), .B0(n1228), .B1(n1244), .Y(n938) );
  OAI22XL U1564 ( .A0(n141), .A1(n1071), .B0(n1227), .B1(n1244), .Y(n937) );
  OAI22XL U1565 ( .A0(n140), .A1(n1071), .B0(n1226), .B1(n1244), .Y(n936) );
  OAI22XL U1566 ( .A0(n130), .A1(n1072), .B0(n1226), .B1(n1245), .Y(n926) );
  OAI2BB2XL U1567 ( .B0(n1067), .B1(n1226), .A0N(\group_values[5][3] ), .A1N(
        n1067), .Y(n886) );
  OAI22XL U1568 ( .A0(n133), .A1(n1072), .B0(n1229), .B1(n1245), .Y(n929) );
  OAI22XL U1569 ( .A0(n132), .A1(n1072), .B0(n1228), .B1(n1245), .Y(n928) );
  OAI22XL U1570 ( .A0(n131), .A1(n1072), .B0(n1227), .B1(n1245), .Y(n927) );
  AOI222XL U1571 ( .A0(CNT4[7]), .A1(n1149), .B0(CNT6[7]), .B1(n1164), .C0(
        CNT5[7]), .C1(n1147), .Y(n604) );
  AOI222XL U1572 ( .A0(n1063), .A1(\group_values[3][6] ), .B0(
        \group_values[5][6] ), .B1(n1064), .C0(n1065), .C1(
        \group_values[4][6] ), .Y(n618) );
  OAI2BB2XL U1573 ( .B0(n1067), .B1(n1229), .A0N(\group_values[5][0] ), .A1N(
        n1067), .Y(n889) );
  OAI2BB2XL U1574 ( .B0(n1067), .B1(n1228), .A0N(\group_values[5][1] ), .A1N(
        n1067), .Y(n888) );
  OAI2BB2XL U1575 ( .B0(n1067), .B1(n1227), .A0N(\group_values[5][2] ), .A1N(
        n1067), .Y(n887) );
  OAI211X1 U1576 ( .A0(n529), .A1(n1166), .B0(n530), .C0(n531), .Y(n528) );
  NOR4X1 U1577 ( .A(n542), .B(\group[0][0] ), .C(\group[0][2] ), .D(
        \group[0][1] ), .Y(n529) );
  AOI222XL U1578 ( .A0(n1150), .A1(n532), .B0(n1164), .B1(n533), .C0(n1148), 
        .C1(n534), .Y(n531) );
  AOI2BB2X1 U1579 ( .B0(n1145), .B1(n538), .A0N(n539), .A1N(n1161), .Y(n530)
         );
  NOR2X1 U1580 ( .A(n304), .B(cur_state[1]), .Y(n309) );
  AND2X2 U1581 ( .A(n309), .B(n306), .Y(n1059) );
  AOI222XL U1582 ( .A0(n1063), .A1(\group_values[3][7] ), .B0(
        \group_values[5][7] ), .B1(n1064), .C0(n1065), .C1(
        \group_values[4][7] ), .Y(n620) );
  NAND4X1 U1583 ( .A(n435), .B(n436), .C(n437), .D(n438), .Y(n375) );
  XOR2X1 U1584 ( .A(n115), .B(min2_value[8]), .Y(n435) );
  XOR2X1 U1585 ( .A(n114), .B(min2_value[9]), .Y(n436) );
  NOR3X1 U1586 ( .A(n445), .B(n446), .C(n447), .Y(n437) );
  NOR4X1 U1587 ( .A(n439), .B(n440), .C(n441), .D(n442), .Y(n438) );
  XOR2X1 U1588 ( .A(min2_value[6]), .B(min1_value[6]), .Y(n440) );
  XOR2X1 U1589 ( .A(min2_value[4]), .B(min1_value[4]), .Y(n441) );
  XOR2X1 U1590 ( .A(min2_value[1]), .B(min1_value[1]), .Y(n442) );
  NAND2X1 U1591 ( .A(n443), .B(n444), .Y(n439) );
  XOR2X1 U1592 ( .A(n123), .B(min2_value[0]), .Y(n444) );
  XOR2X1 U1593 ( .A(n121), .B(min2_value[2]), .Y(n443) );
  NAND4X1 U1594 ( .A(n265), .B(n264), .C(n266), .D(n535), .Y(n534) );
  NOR3X1 U1595 ( .A(\group[4][3] ), .B(\group[4][5] ), .C(\group[4][4] ), .Y(
        n535) );
  NAND4X1 U1596 ( .A(n258), .B(n257), .C(n259), .D(n536), .Y(n533) );
  NOR3X1 U1597 ( .A(\group[5][3] ), .B(\group[5][5] ), .C(\group[5][4] ), .Y(
        n536) );
  NAND4X1 U1598 ( .A(n271), .B(n270), .C(n272), .D(n537), .Y(n532) );
  NOR3X1 U1599 ( .A(\group[3][3] ), .B(\group[3][5] ), .C(\group[3][4] ), .Y(
        n537) );
  NAND3X1 U1600 ( .A(n390), .B(n100), .C(n1163), .Y(n316) );
  XOR2X1 U1601 ( .A(min2_value[3]), .B(min1_value[3]), .Y(n447) );
  XOR2X1 U1602 ( .A(min2_value[5]), .B(min1_value[5]), .Y(n446) );
  XOR2X1 U1603 ( .A(min2_value[7]), .B(min1_value[7]), .Y(n445) );
  NAND4X1 U1604 ( .A(n277), .B(n276), .C(n278), .D(n541), .Y(n538) );
  NOR3X1 U1605 ( .A(\group[2][3] ), .B(\group[2][5] ), .C(\group[2][4] ), .Y(
        n541) );
  OAI211X1 U1606 ( .A0(n135), .A1(n1060), .B0(n621), .C0(n622), .Y(N796) );
  AOI2BB2X1 U1607 ( .B0(n1061), .B1(\group_values[2][8] ), .A0N(n125), .A1N(
        n1062), .Y(n621) );
  AOI222XL U1608 ( .A0(n1063), .A1(\group_values[3][8] ), .B0(
        \group_values[5][8] ), .B1(n1064), .C0(n1065), .C1(
        \group_values[4][8] ), .Y(n622) );
  NOR2BX2 U1609 ( .AN(n523), .B(n1151), .Y(n519) );
  OAI2BB1X1 U1610 ( .A0N(n112), .A1N(n524), .B0(n522), .Y(n523) );
  NOR2BX2 U1611 ( .AN(n516), .B(n1151), .Y(n487) );
  OAI2BB1X1 U1612 ( .A0N(n112), .A1N(n517), .B0(n515), .Y(n516) );
  NOR2BX2 U1613 ( .AN(n512), .B(n1151), .Y(n491) );
  OAI2BB1X1 U1614 ( .A0N(n111), .A1N(n513), .B0(n511), .Y(n512) );
  NOR2BX2 U1615 ( .AN(n508), .B(n1151), .Y(n494) );
  OAI2BB1X1 U1616 ( .A0N(n111), .A1N(n509), .B0(n507), .Y(n508) );
  OAI22XL U1617 ( .A0(n519), .A1(n255), .B0(n499), .B1(n520), .Y(n973) );
  OAI22XL U1618 ( .A0(n491), .A1(n268), .B0(n499), .B1(n492), .Y(n964) );
  OAI22XL U1619 ( .A0(n494), .A1(n274), .B0(n499), .B1(n495), .Y(n961) );
  OAI22XL U1620 ( .A0(n519), .A1(n256), .B0(n496), .B1(n520), .Y(n972) );
  OAI22XL U1621 ( .A0(n487), .A1(n263), .B0(n496), .B1(n489), .Y(n967) );
  OAI22XL U1622 ( .A0(n494), .A1(n275), .B0(n496), .B1(n495), .Y(n948) );
  OAI22XL U1623 ( .A0(n519), .A1(n257), .B0(n493), .B1(n520), .Y(n971) );
  OAI22XL U1624 ( .A0(n487), .A1(n264), .B0(n493), .B1(n489), .Y(n966) );
  OAI22XL U1625 ( .A0(n491), .A1(n270), .B0(n493), .B1(n492), .Y(n944) );
  OAI22XL U1626 ( .A0(n519), .A1(n258), .B0(n490), .B1(n520), .Y(n970) );
  OAI22XL U1627 ( .A0(n494), .A1(n277), .B0(n490), .B1(n495), .Y(n946) );
  OAI22XL U1628 ( .A0(n491), .A1(n271), .B0(n490), .B1(n492), .Y(n943) );
  OAI22XL U1629 ( .A0(n487), .A1(n265), .B0(n490), .B1(n489), .Y(n941) );
  OAI22XL U1630 ( .A0(n519), .A1(n259), .B0(n488), .B1(n520), .Y(n981) );
  OAI22XL U1631 ( .A0(n494), .A1(n278), .B0(n488), .B1(n495), .Y(n945) );
  OAI22XL U1632 ( .A0(n491), .A1(n272), .B0(n488), .B1(n492), .Y(n942) );
  OAI22XL U1633 ( .A0(n487), .A1(n266), .B0(n488), .B1(n489), .Y(n940) );
  OAI22XL U1634 ( .A0(n487), .A1(n261), .B0(n502), .B1(n489), .Y(n969) );
  OAI22XL U1635 ( .A0(n491), .A1(n267), .B0(n502), .B1(n492), .Y(n965) );
  OAI22XL U1636 ( .A0(n494), .A1(n273), .B0(n502), .B1(n495), .Y(n962) );
  NAND3X1 U1637 ( .A(n390), .B(n97), .C(n1251), .Y(n391) );
  OAI22XL U1638 ( .A0(n500), .A1(n286), .B0(n499), .B1(n501), .Y(n958) );
  OAI22XL U1639 ( .A0(n500), .A1(n287), .B0(n496), .B1(n501), .Y(n957) );
  OAI22XL U1640 ( .A0(n500), .A1(n288), .B0(n493), .B1(n501), .Y(n956) );
  OAI22XL U1641 ( .A0(n500), .A1(n289), .B0(n490), .B1(n501), .Y(n955) );
  OAI22XL U1642 ( .A0(n500), .A1(n285), .B0(n502), .B1(n501), .Y(n959) );
  AO22X1 U1643 ( .A0(counter_init[5]), .A1(n570), .B0(N503), .B1(n571), .Y(
        n985) );
  AO22X1 U1644 ( .A0(counter_init[4]), .A1(n570), .B0(N502), .B1(n571), .Y(
        n986) );
  AO22X1 U1645 ( .A0(counter_init[3]), .A1(n570), .B0(N501), .B1(n571), .Y(
        n987) );
  AO22X1 U1646 ( .A0(counter_init[2]), .A1(n570), .B0(N500), .B1(n571), .Y(
        n988) );
  AO22X1 U1647 ( .A0(counter_init[1]), .A1(n570), .B0(N499), .B1(n571), .Y(
        n989) );
  AO22X1 U1648 ( .A0(counter_init[0]), .A1(n570), .B0(N498), .B1(n571), .Y(
        n990) );
  AO22X1 U1649 ( .A0(counter_init[6]), .A1(n570), .B0(N504), .B1(n571), .Y(
        n991) );
  OAI22XL U1650 ( .A0(n487), .A1(n262), .B0(n499), .B1(n489), .Y(n968) );
  OAI22XL U1651 ( .A0(n491), .A1(n269), .B0(n496), .B1(n492), .Y(n963) );
  OAI22XL U1652 ( .A0(n494), .A1(n276), .B0(n493), .B1(n495), .Y(n947) );
  OAI22XL U1653 ( .A0(n519), .A1(n254), .B0(n502), .B1(n520), .Y(n974) );
  OAI22XL U1654 ( .A0(n500), .A1(n290), .B0(n488), .B1(n501), .Y(n954) );
  NOR4X1 U1655 ( .A(n540), .B(\group[1][0] ), .C(\group[1][2] ), .D(
        \group[1][1] ), .Y(n539) );
  NAND3X1 U1656 ( .A(n280), .B(n279), .C(n281), .Y(n540) );
  OAI22XL U1657 ( .A0(n497), .A1(n280), .B0(n499), .B1(n498), .Y(n953) );
  OAI22XL U1658 ( .A0(n497), .A1(n281), .B0(n496), .B1(n498), .Y(n952) );
  OAI22XL U1659 ( .A0(n497), .A1(n282), .B0(n493), .B1(n498), .Y(n951) );
  OAI22XL U1660 ( .A0(n497), .A1(n284), .B0(n488), .B1(n498), .Y(n949) );
  OAI22XL U1661 ( .A0(n497), .A1(n279), .B0(n502), .B1(n498), .Y(n960) );
  NAND3X1 U1662 ( .A(cur_state[0]), .B(n304), .C(cur_state[1]), .Y(n325) );
  OAI22XL U1663 ( .A0(n497), .A1(n283), .B0(n490), .B1(n498), .Y(n950) );
  NAND3X1 U1664 ( .A(n286), .B(n285), .C(n287), .Y(n542) );
  NAND3X1 U1665 ( .A(n305), .B(n304), .C(n306), .Y(n575) );
  NAND3X1 U1666 ( .A(n306), .B(n304), .C(cur_state[1]), .Y(n314) );
  NOR4X4 U1667 ( .A(n669), .B(n545), .C(counter_fin[2]), .D(n311), .Y(N455) );
  NAND2BX1 U1668 ( .AN(n419), .B(n486), .Y(n669) );
  NAND2X1 U1669 ( .A(n510), .B(n292), .Y(n507) );
  AOI222XL U1670 ( .A0(n1063), .A1(\group_values[3][9] ), .B0(
        \group_values[5][9] ), .B1(n1064), .C0(n1065), .C1(
        \group_values[4][9] ), .Y(n624) );
  NAND2X1 U1671 ( .A(n518), .B(n293), .Y(n515) );
  AO22X1 U1673 ( .A0(n1240), .A1(HC2[4]), .B0(n1086), .B1(HC2[5]), .Y(n743) );
  AO22X1 U1674 ( .A0(n1240), .A1(HC2[3]), .B0(n1086), .B1(HC2[4]), .Y(n744) );
  AO22X1 U1676 ( .A0(n1240), .A1(HC2[1]), .B0(n1086), .B1(HC2[2]), .Y(n746) );
  AO22X1 U1677 ( .A0(n1240), .A1(HC2[6]), .B0(HC2[7]), .B1(n1086), .Y(n741) );
  NAND2X1 U1678 ( .A(n514), .B(n292), .Y(n511) );
  AO22X1 U1679 ( .A0(\huffman_code[1][0] ), .A1(n1240), .B0(n1086), .B1(HC2[0]), .Y(n748) );
  AO22X1 U1680 ( .A0(n1238), .A1(HC6[5]), .B0(n1079), .B1(HC6[6]), .Y(n678) );
  AO22X1 U1681 ( .A0(n1238), .A1(HC6[4]), .B0(n1079), .B1(HC6[5]), .Y(n679) );
  AO22X1 U1682 ( .A0(n1238), .A1(HC6[3]), .B0(n1079), .B1(HC6[4]), .Y(n680) );
  AO22X1 U1683 ( .A0(n1238), .A1(HC6[2]), .B0(n1079), .B1(HC6[3]), .Y(n681) );
  AO22X1 U1684 ( .A0(n1238), .A1(HC6[1]), .B0(n1079), .B1(HC6[2]), .Y(n682) );
  AO22X1 U1685 ( .A0(n1238), .A1(HC6[0]), .B0(n1079), .B1(HC6[1]), .Y(n683) );
  AO22X1 U1686 ( .A0(n1241), .A1(HC3[5]), .B0(n1090), .B1(HC3[6]), .Y(n726) );
  AO22X1 U1687 ( .A0(n1241), .A1(HC3[4]), .B0(n1090), .B1(HC3[5]), .Y(n727) );
  AO22X1 U1688 ( .A0(n1241), .A1(HC3[3]), .B0(n1090), .B1(HC3[4]), .Y(n728) );
  AO22X1 U1689 ( .A0(n1241), .A1(HC3[2]), .B0(n1090), .B1(HC3[3]), .Y(n729) );
  AO22X1 U1690 ( .A0(n1241), .A1(HC3[1]), .B0(n1090), .B1(HC3[2]), .Y(n730) );
  AO22X1 U1691 ( .A0(n1242), .A1(HC4[5]), .B0(n1094), .B1(HC4[6]), .Y(n710) );
  AO22X1 U1692 ( .A0(n1242), .A1(HC4[4]), .B0(n1094), .B1(HC4[5]), .Y(n711) );
  AO22X1 U1693 ( .A0(n1242), .A1(HC4[3]), .B0(n1094), .B1(HC4[4]), .Y(n712) );
  AO22X1 U1694 ( .A0(n1242), .A1(HC4[2]), .B0(n1094), .B1(HC4[3]), .Y(n713) );
  AO22X1 U1695 ( .A0(n1242), .A1(HC4[1]), .B0(n1094), .B1(HC4[2]), .Y(n714) );
  AO22X1 U1697 ( .A0(n1243), .A1(HC5[5]), .B0(n1098), .B1(HC5[6]), .Y(n694) );
  AO22X1 U1698 ( .A0(n1243), .A1(HC5[4]), .B0(n1098), .B1(HC5[5]), .Y(n695) );
  AO22X1 U1699 ( .A0(n1243), .A1(HC5[3]), .B0(n1098), .B1(HC5[4]), .Y(n696) );
  AO22X1 U1700 ( .A0(n1243), .A1(HC5[2]), .B0(n1098), .B1(HC5[3]), .Y(n697) );
  AO22X1 U1701 ( .A0(n1243), .A1(HC5[1]), .B0(n1098), .B1(HC5[2]), .Y(n698) );
  AO22X1 U1702 ( .A0(n1243), .A1(HC5[0]), .B0(n1098), .B1(HC5[1]), .Y(n699) );
  NAND2X1 U1703 ( .A(n525), .B(n293), .Y(n522) );
  AO22X1 U1704 ( .A0(n1238), .A1(HC6[6]), .B0(HC6[7]), .B1(n1079), .Y(n677) );
  AO22X1 U1705 ( .A0(n1241), .A1(HC3[6]), .B0(HC3[7]), .B1(n1090), .Y(n725) );
  AO22X1 U1706 ( .A0(n1242), .A1(HC4[6]), .B0(HC4[7]), .B1(n1094), .Y(n709) );
  AO22X1 U1707 ( .A0(n1243), .A1(HC5[6]), .B0(HC5[7]), .B1(n1098), .Y(n693) );
  AO22X1 U1708 ( .A0(n1239), .A1(HC1[5]), .B0(n1082), .B1(HC1[6]), .Y(n758) );
  AO22X1 U1709 ( .A0(n1239), .A1(HC1[4]), .B0(n1082), .B1(HC1[5]), .Y(n759) );
  AO22X1 U1711 ( .A0(n1239), .A1(HC1[2]), .B0(n1082), .B1(HC1[3]), .Y(n761) );
  AO22X1 U1712 ( .A0(n1239), .A1(HC1[1]), .B0(n1082), .B1(HC1[2]), .Y(n762) );
  AO22X1 U1713 ( .A0(n1239), .A1(HC1[6]), .B0(HC1[7]), .B1(n1082), .Y(n757) );
  AO22X1 U1714 ( .A0(\huffman_code[5][0] ), .A1(n1238), .B0(n1079), .B1(HC6[0]), .Y(n684) );
  AO22X1 U1715 ( .A0(\huffman_code[2][0] ), .A1(n1241), .B0(n1090), .B1(HC3[0]), .Y(n732) );
  AO22X1 U1716 ( .A0(\huffman_code[3][0] ), .A1(n1242), .B0(n1094), .B1(HC4[0]), .Y(n716) );
  AO22X1 U1717 ( .A0(\huffman_code[4][0] ), .A1(n1243), .B0(n1098), .B1(HC5[0]), .Y(n700) );
  AO22X1 U1718 ( .A0(\huffman_code[0][0] ), .A1(n1239), .B0(n1082), .B1(HC1[0]), .Y(n764) );
  AOI2BB2X1 U1719 ( .B0(n1061), .B1(\group_values[2][9] ), .A0N(n124), .A1N(
        n1062), .Y(n623) );
  OAI222XL U1720 ( .A0(n316), .A1(n314), .B0(cur_state[1]), .B1(n324), .C0(
        n1253), .C1(n325), .Y(next_state[0]) );
  AOI211X1 U1721 ( .A0(cur_state[0]), .A1(n1254), .B0(cur_state[2]), .C0(n326), 
        .Y(n324) );
  CLKINVX1 U1722 ( .A(n317), .Y(n1254) );
  OR4X1 U1723 ( .A(counter_fin[1]), .B(counter_fin[3]), .C(counter_fin[0]), 
        .D(n670), .Y(n311) );
  OR3X2 U1724 ( .A(counter_fin[4]), .B(counter_fin[6]), .C(counter_fin[5]), 
        .Y(n670) );
  OAI211X1 U1725 ( .A0(n1166), .A1(n240), .B0(n402), .C0(n403), .Y(n401) );
  AOI222XL U1726 ( .A0(\mask[3][5] ), .A1(n1149), .B0(\mask[5][5] ), .B1(n1163), .C0(\mask[4][5] ), .C1(n1147), .Y(n403) );
  AOI2BB2X1 U1727 ( .B0(\mask[2][5] ), .B1(n1145), .A0N(n357), .A1N(n231), .Y(
        n402) );
  OAI211X1 U1728 ( .A0(n353), .A1(n241), .B0(n405), .C0(n406), .Y(n404) );
  AOI222XL U1729 ( .A0(\mask[3][4] ), .A1(n1149), .B0(\mask[5][4] ), .B1(n1163), .C0(\mask[4][4] ), .C1(n1147), .Y(n406) );
  AOI2BB2X1 U1730 ( .B0(\mask[2][4] ), .B1(n1146), .A0N(n1161), .A1N(n232), 
        .Y(n405) );
  OAI211X1 U1731 ( .A0(n353), .A1(n242), .B0(n408), .C0(n409), .Y(n407) );
  AOI222XL U1732 ( .A0(\mask[3][3] ), .A1(n1149), .B0(\mask[5][3] ), .B1(n1163), .C0(\mask[4][3] ), .C1(n1147), .Y(n409) );
  AOI2BB2X1 U1733 ( .B0(\mask[2][3] ), .B1(n1276), .A0N(n1161), .A1N(n233), 
        .Y(n408) );
  OAI211X1 U1734 ( .A0(n353), .A1(n243), .B0(n411), .C0(n412), .Y(n410) );
  AOI222XL U1735 ( .A0(\mask[3][2] ), .A1(n1149), .B0(\mask[5][2] ), .B1(n1163), .C0(\mask[4][2] ), .C1(n1148), .Y(n412) );
  AOI2BB2X1 U1736 ( .B0(\mask[2][2] ), .B1(n1276), .A0N(n1161), .A1N(n234), 
        .Y(n411) );
  OAI211X1 U1737 ( .A0(n353), .A1(n244), .B0(n414), .C0(n415), .Y(n413) );
  AOI222XL U1738 ( .A0(\mask[3][1] ), .A1(n1149), .B0(\mask[5][1] ), .B1(n1163), .C0(\mask[4][1] ), .C1(n1148), .Y(n415) );
  AOI2BB2X1 U1739 ( .B0(\mask[2][1] ), .B1(n1276), .A0N(n1161), .A1N(n235), 
        .Y(n414) );
  OAI211X1 U1740 ( .A0(n1166), .A1(n191), .B0(n371), .C0(n372), .Y(n370) );
  AOI222XL U1741 ( .A0(\huffman_code[3][0] ), .A1(n1149), .B0(
        \huffman_code[5][0] ), .B1(n1163), .C0(\huffman_code[4][0] ), .C1(
        n1147), .Y(n372) );
  AOI2BB2X1 U1742 ( .B0(\huffman_code[2][0] ), .B1(n1146), .A0N(n357), .A1N(
        n183), .Y(n371) );
  OAI211X1 U1743 ( .A0(n1166), .A1(n187), .B0(n359), .C0(n360), .Y(n358) );
  AOI222XL U1744 ( .A0(\huffman_code[3][4] ), .A1(n1149), .B0(
        \huffman_code[5][4] ), .B1(n1163), .C0(\huffman_code[4][4] ), .C1(
        n1147), .Y(n360) );
  AOI2BB2X1 U1745 ( .B0(\huffman_code[2][4] ), .B1(n1145), .A0N(n357), .A1N(
        n179), .Y(n359) );
  OAI211X1 U1746 ( .A0(n1165), .A1(n188), .B0(n362), .C0(n363), .Y(n361) );
  AOI222XL U1747 ( .A0(\huffman_code[3][3] ), .A1(n1149), .B0(
        \huffman_code[5][3] ), .B1(n1163), .C0(\huffman_code[4][3] ), .C1(
        n1147), .Y(n363) );
  AOI2BB2X1 U1748 ( .B0(\huffman_code[2][3] ), .B1(n1146), .A0N(n1161), .A1N(
        n180), .Y(n362) );
  OAI211X1 U1749 ( .A0(n1166), .A1(n189), .B0(n365), .C0(n366), .Y(n364) );
  AOI222XL U1750 ( .A0(\huffman_code[3][2] ), .A1(n1149), .B0(
        \huffman_code[5][2] ), .B1(n1163), .C0(\huffman_code[4][2] ), .C1(
        n1147), .Y(n366) );
  AOI2BB2X1 U1751 ( .B0(\huffman_code[2][2] ), .B1(n1145), .A0N(n357), .A1N(
        n181), .Y(n365) );
  OAI211X1 U1752 ( .A0(n1165), .A1(n190), .B0(n368), .C0(n369), .Y(n367) );
  AOI222XL U1753 ( .A0(\huffman_code[3][1] ), .A1(n1149), .B0(
        \huffman_code[5][1] ), .B1(n1163), .C0(\huffman_code[4][1] ), .C1(
        n1147), .Y(n369) );
  AOI2BB2X1 U1754 ( .B0(\huffman_code[2][1] ), .B1(n1146), .A0N(n1161), .A1N(
        n182), .Y(n368) );
  NAND2X1 U1755 ( .A(n396), .B(n397), .Y(n321) );
  NOR4X1 U1756 ( .A(\mask[2][7] ), .B(\mask[2][6] ), .C(\mask[2][5] ), .D(
        \mask[2][4] ), .Y(n397) );
  NOR4X1 U1757 ( .A(\mask[2][3] ), .B(\mask[2][2] ), .C(\mask[2][1] ), .D(
        \mask[2][0] ), .Y(n396) );
  NAND3BX1 U1758 ( .AN(n311), .B(counter_fin[2]), .C(n1153), .Y(n383) );
  OAI2BB2XL U1759 ( .B0(n1159), .B1(n244), .A0N(M1[1]), .A1N(n1159), .Y(n857)
         );
  OAI2BB2XL U1760 ( .B0(n1159), .B1(n243), .A0N(M1[2]), .A1N(n1160), .Y(n855)
         );
  OAI2BB2XL U1761 ( .B0(n1159), .B1(n242), .A0N(M1[3]), .A1N(n1160), .Y(n853)
         );
  OAI2BB2XL U1762 ( .B0(n1159), .B1(n241), .A0N(M1[4]), .A1N(n1160), .Y(n851)
         );
  OAI2BB2XL U1763 ( .B0(n1159), .B1(n240), .A0N(M1[5]), .A1N(n1160), .Y(n849)
         );
  OAI2BB2XL U1764 ( .B0(n1159), .B1(n239), .A0N(M1[6]), .A1N(n1160), .Y(n847)
         );
  OAI2BB2XL U1765 ( .B0(n1159), .B1(n235), .A0N(M2[1]), .A1N(n1160), .Y(n841)
         );
  OAI2BB2XL U1766 ( .B0(n1159), .B1(n234), .A0N(M2[2]), .A1N(n1160), .Y(n839)
         );
  OAI2BB2XL U1767 ( .B0(n1158), .B1(n233), .A0N(M2[3]), .A1N(n1155), .Y(n837)
         );
  OAI2BB2XL U1768 ( .B0(n1158), .B1(n232), .A0N(M2[4]), .A1N(n1155), .Y(n835)
         );
  OAI2BB2XL U1769 ( .B0(n1158), .B1(n231), .A0N(M2[5]), .A1N(n1155), .Y(n833)
         );
  OAI2BB2XL U1770 ( .B0(n1158), .B1(n230), .A0N(M2[6]), .A1N(n1155), .Y(n831)
         );
  OAI2BB2XL U1771 ( .B0(n1159), .B1(n192), .A0N(M6[7]), .A1N(n1158), .Y(n861)
         );
  OAI2BB2XL U1772 ( .B0(n1159), .B1(n237), .A0N(M1[7]), .A1N(n1160), .Y(n845)
         );
  OAI2BB2XL U1773 ( .B0(n1158), .B1(n228), .A0N(M2[7]), .A1N(n1155), .Y(n829)
         );
  OAI2BB2XL U1774 ( .B0(n1157), .B1(n219), .A0N(M3[7]), .A1N(n1155), .Y(n813)
         );
  OAI2BB2XL U1775 ( .B0(n1157), .B1(n210), .A0N(M4[7]), .A1N(n1155), .Y(n797)
         );
  OAI2BB2XL U1776 ( .B0(n1157), .B1(n201), .A0N(M5[7]), .A1N(n1157), .Y(n781)
         );
  OAI2BB2XL U1777 ( .B0(n1158), .B1(n226), .A0N(M3[1]), .A1N(n1159), .Y(n825)
         );
  OAI2BB2XL U1778 ( .B0(n1157), .B1(n217), .A0N(M4[1]), .A1N(n1158), .Y(n809)
         );
  OAI2BB2XL U1779 ( .B0(n1157), .B1(n208), .A0N(M5[1]), .A1N(n1160), .Y(n793)
         );
  OAI2BB2XL U1780 ( .B0(n1157), .B1(n199), .A0N(M6[1]), .A1N(n1160), .Y(n777)
         );
  OAI2BB2XL U1781 ( .B0(n1158), .B1(n225), .A0N(M3[2]), .A1N(n1157), .Y(n823)
         );
  OAI2BB2XL U1782 ( .B0(n1158), .B1(n224), .A0N(M3[3]), .A1N(n1160), .Y(n821)
         );
  OAI2BB2XL U1783 ( .B0(n1158), .B1(n223), .A0N(M3[4]), .A1N(n383), .Y(n819)
         );
  OAI2BB2XL U1784 ( .B0(n1158), .B1(n222), .A0N(M3[5]), .A1N(n1154), .Y(n817)
         );
  OAI2BB2XL U1785 ( .B0(n1158), .B1(n221), .A0N(M3[6]), .A1N(n1156), .Y(n815)
         );
  OAI2BB2XL U1786 ( .B0(n1157), .B1(n216), .A0N(M4[2]), .A1N(n1156), .Y(n807)
         );
  OAI2BB2XL U1787 ( .B0(n1157), .B1(n215), .A0N(M4[3]), .A1N(n1160), .Y(n805)
         );
  OAI2BB2XL U1788 ( .B0(n1157), .B1(n214), .A0N(M4[4]), .A1N(n1155), .Y(n803)
         );
  OAI2BB2XL U1789 ( .B0(n1157), .B1(n213), .A0N(M4[5]), .A1N(n1160), .Y(n801)
         );
  OAI2BB2XL U1790 ( .B0(n1157), .B1(n212), .A0N(M4[6]), .A1N(n1156), .Y(n799)
         );
  OAI2BB2XL U1791 ( .B0(n1157), .B1(n207), .A0N(M5[2]), .A1N(n1160), .Y(n791)
         );
  OAI2BB2XL U1792 ( .B0(n1157), .B1(n206), .A0N(M5[3]), .A1N(n1160), .Y(n789)
         );
  OAI2BB2XL U1793 ( .B0(n1157), .B1(n205), .A0N(M5[4]), .A1N(n1160), .Y(n787)
         );
  OAI2BB2XL U1794 ( .B0(n1157), .B1(n204), .A0N(M5[5]), .A1N(n1160), .Y(n785)
         );
  OAI2BB2XL U1795 ( .B0(n1159), .B1(n203), .A0N(M5[6]), .A1N(n1160), .Y(n783)
         );
  OAI2BB2XL U1796 ( .B0(n1158), .B1(n198), .A0N(M6[2]), .A1N(n1160), .Y(n775)
         );
  OAI2BB2XL U1797 ( .B0(n1157), .B1(n197), .A0N(M6[3]), .A1N(n1155), .Y(n773)
         );
  OAI2BB2XL U1798 ( .B0(n1156), .B1(n196), .A0N(M6[4]), .A1N(n1154), .Y(n771)
         );
  OAI2BB2XL U1799 ( .B0(n1155), .B1(n195), .A0N(M6[5]), .A1N(n1156), .Y(n769)
         );
  OAI2BB2XL U1800 ( .B0(n1157), .B1(n194), .A0N(M6[6]), .A1N(n1156), .Y(n767)
         );
  OAI2BB2XL U1801 ( .B0(n1159), .B1(n245), .A0N(M1[0]), .A1N(n1156), .Y(n859)
         );
  OAI2BB2XL U1802 ( .B0(n1159), .B1(n236), .A0N(M2[0]), .A1N(n1160), .Y(n843)
         );
  OAI2BB2XL U1803 ( .B0(n1158), .B1(n227), .A0N(M3[0]), .A1N(n1155), .Y(n827)
         );
  OAI2BB2XL U1804 ( .B0(n1157), .B1(n218), .A0N(M4[0]), .A1N(n383), .Y(n811)
         );
  OAI2BB2XL U1805 ( .B0(n1157), .B1(n209), .A0N(M5[0]), .A1N(n383), .Y(n795)
         );
  OAI2BB2XL U1806 ( .B0(n1156), .B1(n200), .A0N(M6[0]), .A1N(n1160), .Y(n779)
         );
  OAI211X1 U1807 ( .A0(n1165), .A1(n245), .B0(n417), .C0(n418), .Y(n416) );
  AOI222XL U1808 ( .A0(\mask[3][0] ), .A1(n1150), .B0(\mask[5][0] ), .B1(n1163), .C0(\mask[4][0] ), .C1(n1147), .Y(n418) );
  AOI2BB2X1 U1809 ( .B0(\mask[2][0] ), .B1(n1146), .A0N(n1161), .A1N(n236), 
        .Y(n417) );
  OAI211X1 U1810 ( .A0(n1165), .A1(n186), .B0(n354), .C0(n355), .Y(n352) );
  AOI222XL U1811 ( .A0(\huffman_code[3][5] ), .A1(n1150), .B0(
        \huffman_code[5][5] ), .B1(n1163), .C0(\huffman_code[4][5] ), .C1(
        n1147), .Y(n355) );
  AOI2BB2X1 U1812 ( .B0(\huffman_code[2][5] ), .B1(n1146), .A0N(n1161), .A1N(
        n178), .Y(n354) );
  NAND2X1 U1813 ( .A(n388), .B(n389), .Y(n319) );
  NOR4X1 U1814 ( .A(\mask[4][7] ), .B(\mask[4][6] ), .C(\mask[4][5] ), .D(
        \mask[4][4] ), .Y(n389) );
  NOR4X1 U1815 ( .A(\mask[4][3] ), .B(\mask[4][2] ), .C(\mask[4][1] ), .D(
        \mask[4][0] ), .Y(n388) );
  NAND2X1 U1816 ( .A(n393), .B(n394), .Y(n320) );
  NOR4X1 U1817 ( .A(\mask[3][7] ), .B(\mask[3][6] ), .C(\mask[3][5] ), .D(
        \mask[3][4] ), .Y(n394) );
  NOR4X1 U1818 ( .A(\mask[3][3] ), .B(\mask[3][2] ), .C(\mask[3][1] ), .D(
        \mask[3][0] ), .Y(n393) );
  NAND2X1 U1819 ( .A(n425), .B(n426), .Y(n318) );
  NOR4X1 U1820 ( .A(\mask[5][7] ), .B(\mask[5][6] ), .C(\mask[5][5] ), .D(
        \mask[5][4] ), .Y(n426) );
  NOR4X1 U1821 ( .A(\mask[5][3] ), .B(\mask[5][2] ), .C(\mask[5][1] ), .D(
        \mask[5][0] ), .Y(n425) );
  NAND3X1 U1822 ( .A(n465), .B(n108), .C(n1064), .Y(n327) );
  NAND2X1 U1823 ( .A(n420), .B(n421), .Y(n323) );
  NOR4X1 U1824 ( .A(\mask[0][7] ), .B(\mask[0][6] ), .C(\mask[0][5] ), .D(
        \mask[0][4] ), .Y(n421) );
  NOR4X1 U1825 ( .A(\mask[0][3] ), .B(\mask[0][2] ), .C(\mask[0][1] ), .D(
        \mask[0][0] ), .Y(n420) );
  OAI211X1 U1826 ( .A0(n1165), .A1(n185), .B0(n381), .C0(n382), .Y(n380) );
  AOI222XL U1827 ( .A0(\huffman_code[3][6] ), .A1(n1149), .B0(
        \huffman_code[5][6] ), .B1(n1163), .C0(\huffman_code[4][6] ), .C1(
        n1277), .Y(n382) );
  AOI2BB2X1 U1828 ( .B0(\huffman_code[2][6] ), .B1(n1276), .A0N(n1161), .A1N(
        n177), .Y(n381) );
  OAI211X1 U1829 ( .A0(n1166), .A1(n239), .B0(n423), .C0(n424), .Y(n422) );
  AOI222XL U1830 ( .A0(\mask[3][6] ), .A1(n1278), .B0(\mask[5][6] ), .B1(n1163), .C0(\mask[4][6] ), .C1(n1147), .Y(n424) );
  AOI2BB2X1 U1831 ( .B0(\mask[2][6] ), .B1(n1145), .A0N(n1161), .A1N(n230), 
        .Y(n423) );
  OAI211X1 U1832 ( .A0(n312), .A1(n313), .B0(n314), .C0(n315), .Y(
        next_state[1]) );
  NAND4BBXL U1833 ( .AN(n322), .BN(n323), .C(cur_state[0]), .D(n309), .Y(n312)
         );
  OR4X1 U1834 ( .A(n318), .B(n319), .C(n320), .D(n321), .Y(n313) );
  AOI32X1 U1835 ( .A0(n316), .A1(n304), .A2(cur_state[1]), .B0(n317), .B1(
        n1250), .Y(n315) );
  AO22X1 U1836 ( .A0(n1152), .A1(counter_fin[6]), .B0(N562), .B1(n1153), .Y(
        n1047) );
  NAND2X1 U1837 ( .A(n399), .B(n400), .Y(n322) );
  NOR4X1 U1838 ( .A(\mask[1][7] ), .B(\mask[1][6] ), .C(\mask[1][5] ), .D(
        \mask[1][4] ), .Y(n400) );
  NOR4X1 U1839 ( .A(\mask[1][3] ), .B(\mask[1][2] ), .C(\mask[1][1] ), .D(
        \mask[1][0] ), .Y(n399) );
  AO22X1 U1840 ( .A0(n1251), .A1(n1253), .B0(n309), .B1(n310), .Y(
        next_state[2]) );
  OAI21XL U1841 ( .A0(n311), .A1(n102), .B0(n306), .Y(n310) );
  AND4X1 U1842 ( .A(n54), .B(n53), .C(n97), .D(n577), .Y(n326) );
  NOR3X1 U1843 ( .A(n49), .B(n392), .C(n52), .Y(n577) );
  AO22X1 U1844 ( .A0(n1152), .A1(counter_fin[5]), .B0(N561), .B1(n1153), .Y(
        n1048) );
  AO22X1 U1845 ( .A0(n1152), .A1(counter_fin[4]), .B0(N560), .B1(n1153), .Y(
        n1049) );
  AO22X1 U1846 ( .A0(n1152), .A1(counter_fin[3]), .B0(N559), .B1(n1153), .Y(
        n1050) );
  AO22X1 U1847 ( .A0(n1151), .A1(counter_fin[0]), .B0(N556), .B1(n1153), .Y(
        n1052) );
  AO22X1 U1848 ( .A0(n1151), .A1(counter_fin[1]), .B0(N557), .B1(n1153), .Y(
        n1053) );
  OAI2BB2XL U1849 ( .B0(n1153), .B1(n102), .A0N(N558), .A1N(n1153), .Y(n1051)
         );
  NOR3X2 U1850 ( .A(n305), .B(n304), .C(n306), .Y(N2981) );
  CLKINVX1 U1851 ( .A(reset), .Y(n1230) );
  AND2X1 U1852 ( .A(N1102), .B(N1104), .Y(\add_2_root_add_309_5/carry[1] ) );
  XOR2X1 U1853 ( .A(N1104), .B(N1102), .Y(N1116) );
  AND2X1 U1854 ( .A(N1081), .B(N1083), .Y(\add_2_root_add_298_5/carry[1] ) );
  NAND2BX1 U1855 ( .AN(N600), .B(min1_value[7]), .Y(n1167) );
  OAI222XL U1856 ( .A0(N599), .A1(n115), .B0(N599), .B1(n1167), .C0(n115), 
        .C1(n1167), .Y(n1168) );
  OAI222XL U1857 ( .A0(min1_value[9]), .A1(n1168), .B0(n1190), .B1(n1168), 
        .C0(min1_value[9]), .C1(n1190), .Y(n1186) );
  NOR2BX1 U1858 ( .AN(N600), .B(min1_value[7]), .Y(n1169) );
  OAI22XL U1859 ( .A0(n1169), .A1(n115), .B0(N599), .B1(n1169), .Y(n1184) );
  NAND2BX1 U1860 ( .AN(N605), .B(min1_value[2]), .Y(n1172) );
  AO22X1 U1861 ( .A0(n123), .A1(N607), .B0(n122), .B1(N606), .Y(n1170) );
  OAI21XL U1862 ( .A0(N606), .A1(n122), .B0(n1170), .Y(n1175) );
  NOR2BX1 U1863 ( .AN(N605), .B(min1_value[2]), .Y(n1171) );
  OAI22XL U1864 ( .A0(n1171), .A1(n120), .B0(N604), .B1(n1171), .Y(n1174) );
  OAI22XL U1865 ( .A0(N604), .A1(n120), .B0(N604), .B1(n1172), .Y(n1173) );
  AOI221XL U1866 ( .A0(min1_value[3]), .A1(n1187), .B0(n1175), .B1(n1174), 
        .C0(n1173), .Y(n1182) );
  NOR2X1 U1867 ( .A(n1188), .B(min1_value[4]), .Y(n1176) );
  OAI22XL U1868 ( .A0(n1176), .A1(n118), .B0(N602), .B1(n1176), .Y(n1177) );
  OAI21XL U1869 ( .A0(min1_value[6]), .A1(n1189), .B0(n1177), .Y(n1181) );
  NAND2X1 U1870 ( .A(min1_value[4]), .B(n1188), .Y(n1178) );
  OAI222XL U1871 ( .A0(min1_value[6]), .A1(n1179), .B0(n1189), .B1(n1179), 
        .C0(min1_value[6]), .C1(n1189), .Y(n1180) );
  OAI21XL U1872 ( .A0(n1182), .A1(n1181), .B0(n1180), .Y(n1183) );
  OAI211X1 U1873 ( .A0(min1_value[9]), .A1(n1190), .B0(n1184), .C0(n1183), .Y(
        n1185) );
  NAND2X1 U1874 ( .A(n1186), .B(n1185), .Y(N1032) );
  NAND2BX1 U1875 ( .AN(N600), .B(min2_value[7]), .Y(n1191) );
  OAI222XL U1876 ( .A0(N599), .A1(n1215), .B0(N599), .B1(n1191), .C0(n1215), 
        .C1(n1191), .Y(n1192) );
  OAI222XL U1877 ( .A0(min2_value[9]), .A1(n1192), .B0(n1218), .B1(n1192), 
        .C0(min2_value[9]), .C1(n1218), .Y(n1210) );
  NOR2BX1 U1878 ( .AN(N600), .B(min2_value[7]), .Y(n1193) );
  OAI22XL U1879 ( .A0(n1193), .A1(n1215), .B0(N599), .B1(n1193), .Y(n1208) );
  NAND2BX1 U1880 ( .AN(N605), .B(min2_value[2]), .Y(n1196) );
  AO22X1 U1881 ( .A0(n1211), .A1(N607), .B0(n1212), .B1(N606), .Y(n1194) );
  OAI21XL U1882 ( .A0(N606), .A1(n1212), .B0(n1194), .Y(n1199) );
  NOR2BX1 U1883 ( .AN(N605), .B(min2_value[2]), .Y(n1195) );
  OAI22XL U1884 ( .A0(n1195), .A1(n1213), .B0(N604), .B1(n1195), .Y(n1198) );
  OAI22XL U1885 ( .A0(N604), .A1(n1213), .B0(N604), .B1(n1196), .Y(n1197) );
  AOI221XL U1886 ( .A0(min2_value[3]), .A1(n1216), .B0(n1199), .B1(n1198), 
        .C0(n1197), .Y(n1206) );
  NOR2X1 U1887 ( .A(n1188), .B(min2_value[4]), .Y(n1200) );
  OAI22XL U1888 ( .A0(n1200), .A1(n1214), .B0(N602), .B1(n1200), .Y(n1201) );
  OAI21XL U1889 ( .A0(min2_value[6]), .A1(n1217), .B0(n1201), .Y(n1205) );
  NAND2X1 U1890 ( .A(min2_value[4]), .B(n1188), .Y(n1202) );
  OAI222XL U1891 ( .A0(N602), .A1(n1214), .B0(N602), .B1(n1202), .C0(n1214), 
        .C1(n1202), .Y(n1203) );
  OAI222XL U1892 ( .A0(min2_value[6]), .A1(n1203), .B0(n1217), .B1(n1203), 
        .C0(min2_value[6]), .C1(n1217), .Y(n1204) );
  OAI21XL U1893 ( .A0(n1206), .A1(n1205), .B0(n1204), .Y(n1207) );
  OAI211X1 U1894 ( .A0(min2_value[9]), .A1(n1218), .B0(n1208), .C0(n1207), .Y(
        n1209) );
  NAND2X1 U1895 ( .A(n1210), .B(n1209), .Y(N1036) );
  huffman_DW01_add_0 add_278 ( .A({N795, N796, N797, N798, N799, N800, N801, 
        N802, N803, N804}), .B({1'b0, 1'b0, N811, N812, N813, N814, N815, N816, 
        N817, N818}), .CI(1'b0), .SUM({N828, N827, N826, N825, N824, N823, 
        N822, N821, N820, N819}) );
  huffman_DW01_inc_0 add_266 ( .A(CNT6), .SUM({N756, N755, N754, N753, N752, 
        N751, N750, N749}) );
  huffman_DW01_inc_1 add_263 ( .A(CNT5), .SUM({N748, N747, N746, N745, N744, 
        N743, N742, N741}) );
  huffman_DW01_inc_2 add_260 ( .A(CNT4), .SUM({N740, N739, N738, N737, N736, 
        N735, N734, N733}) );
  huffman_DW01_inc_3 add_257 ( .A(CNT3), .SUM({N732, N731, N730, N729, N728, 
        N727, N726, N725}) );
  huffman_DW01_inc_4 add_254 ( .A(CNT2), .SUM({N724, N723, N722, N721, N720, 
        N719, N718, N717}) );
  huffman_DW01_inc_5 add_251 ( .A(CNT1), .SUM({N716, N715, N714, N713, N712, 
        N711, N710, N709}) );
  huffman_DW01_inc_6 add_197 ( .A(counter_fin), .SUM({N562, N561, N560, N559, 
        N558, N557, N556}) );
  huffman_DW01_inc_7 add_119 ( .A(counter_init), .SUM({N504, N503, N502, N501, 
        N500, N499, N498}) );
  huffman_DW01_inc_8 r642 ( .A(counter), .SUM({N488, N487, N486, N485, N484, 
        N483, N482}) );
  DFFRX2 \pr_table_reg[5][0]  ( .D(n1005), .CK(clk), .RN(n1055), .Q(CNT6[0])
         );
  DFFRX2 \pr_table_reg[3][0]  ( .D(n1021), .CK(clk), .RN(n1056), .Q(CNT4[0])
         );
  DFFRX2 \pr_table_reg[4][0]  ( .D(n1013), .CK(clk), .RN(n1056), .Q(CNT5[0])
         );
  DFFRX2 \pr_table_reg[2][0]  ( .D(n1029), .CK(clk), .RN(n1056), .Q(CNT3[0])
         );
  DFFRX2 \pr_table_reg[1][0]  ( .D(n1037), .CK(clk), .RN(n1056), .Q(CNT2[0])
         );
  DFFRX2 \pr_table_reg[5][7]  ( .D(n999), .CK(clk), .RN(n1056), .Q(CNT6[7]) );
  DFFRX2 \pr_table_reg[3][7]  ( .D(n1015), .CK(clk), .RN(n1055), .Q(CNT4[7])
         );
  DFFRX2 \pr_table_reg[4][7]  ( .D(n1007), .CK(clk), .RN(n1055), .Q(CNT5[7])
         );
  DFFRX2 \pr_table_reg[2][7]  ( .D(n1023), .CK(clk), .RN(n1055), .Q(CNT3[7])
         );
  DFFRX2 \pr_table_reg[1][7]  ( .D(n1031), .CK(clk), .RN(n1055), .Q(CNT2[7])
         );
  DFFRX2 \pr_table_reg[5][6]  ( .D(n1000), .CK(clk), .RN(n1056), .Q(CNT6[6])
         );
  DFFRX2 \pr_table_reg[5][5]  ( .D(n1001), .CK(clk), .RN(n1055), .Q(CNT6[5])
         );
  DFFRX2 \pr_table_reg[5][4]  ( .D(n1002), .CK(clk), .RN(n1056), .Q(CNT6[4])
         );
  DFFRX2 \pr_table_reg[5][3]  ( .D(n1003), .CK(clk), .RN(n1055), .Q(CNT6[3])
         );
  DFFRX2 \pr_table_reg[5][2]  ( .D(n1004), .CK(clk), .RN(n1056), .Q(CNT6[2])
         );
  DFFRX2 \pr_table_reg[5][1]  ( .D(n1006), .CK(clk), .RN(n1055), .Q(CNT6[1])
         );
  DFFRX2 \pr_table_reg[3][6]  ( .D(n1016), .CK(clk), .RN(n1055), .Q(CNT4[6])
         );
  DFFRX2 \pr_table_reg[3][5]  ( .D(n1017), .CK(clk), .RN(n1056), .Q(CNT4[5])
         );
  DFFRX2 \pr_table_reg[3][4]  ( .D(n1018), .CK(clk), .RN(n1055), .Q(CNT4[4])
         );
  DFFRX2 \pr_table_reg[3][3]  ( .D(n1019), .CK(clk), .RN(n1056), .Q(CNT4[3])
         );
  DFFRX2 \pr_table_reg[3][2]  ( .D(n1020), .CK(clk), .RN(n1055), .Q(CNT4[2])
         );
  DFFRX2 \pr_table_reg[3][1]  ( .D(n1022), .CK(clk), .RN(n1056), .Q(CNT4[1])
         );
  DFFRX2 \pr_table_reg[4][6]  ( .D(n1008), .CK(clk), .RN(n1055), .Q(CNT5[6])
         );
  DFFRX2 \pr_table_reg[4][5]  ( .D(n1009), .CK(clk), .RN(n1056), .Q(CNT5[5])
         );
  DFFRX2 \pr_table_reg[4][4]  ( .D(n1010), .CK(clk), .RN(n1055), .Q(CNT5[4])
         );
  DFFRX2 \pr_table_reg[4][3]  ( .D(n1011), .CK(clk), .RN(n1056), .Q(CNT5[3])
         );
  DFFRX2 \pr_table_reg[4][2]  ( .D(n1012), .CK(clk), .RN(n1055), .Q(CNT5[2])
         );
  DFFRX2 \pr_table_reg[4][1]  ( .D(n1014), .CK(clk), .RN(n1056), .Q(CNT5[1])
         );
  DFFRX2 \pr_table_reg[2][6]  ( .D(n1024), .CK(clk), .RN(n1055), .Q(CNT3[6])
         );
  DFFRX2 \pr_table_reg[2][5]  ( .D(n1025), .CK(clk), .RN(n1056), .Q(CNT3[5])
         );
  DFFRX2 \pr_table_reg[2][4]  ( .D(n1026), .CK(clk), .RN(n1055), .Q(CNT3[4])
         );
  DFFRX2 \pr_table_reg[2][3]  ( .D(n1027), .CK(clk), .RN(n1056), .Q(CNT3[3])
         );
  DFFRX2 \pr_table_reg[2][2]  ( .D(n1028), .CK(clk), .RN(n1055), .Q(CNT3[2])
         );
  DFFRX2 \pr_table_reg[2][1]  ( .D(n1030), .CK(clk), .RN(n1056), .Q(CNT3[1])
         );
  DFFRX2 \pr_table_reg[1][6]  ( .D(n1032), .CK(clk), .RN(n1055), .Q(CNT2[6])
         );
  DFFRX2 \pr_table_reg[1][5]  ( .D(n1033), .CK(clk), .RN(n1056), .Q(CNT2[5])
         );
  DFFRX2 \pr_table_reg[1][4]  ( .D(n1034), .CK(clk), .RN(n1055), .Q(CNT2[4])
         );
  DFFRX2 \pr_table_reg[1][3]  ( .D(n1035), .CK(clk), .RN(n1056), .Q(CNT2[3])
         );
  DFFRX2 \pr_table_reg[1][2]  ( .D(n1036), .CK(clk), .RN(n1055), .Q(CNT2[2])
         );
  DFFRX2 \pr_table_reg[1][1]  ( .D(n1038), .CK(clk), .RN(n1056), .Q(CNT2[1])
         );
  DFFRX2 \HC3_reg[0]  ( .D(n732), .CK(clk), .RN(n1056), .Q(HC3[0]) );
  DFFRX2 \HC1_reg[0]  ( .D(n764), .CK(clk), .RN(n1055), .Q(HC1[0]) );
  DFFRX2 \HC2_reg[0]  ( .D(n748), .CK(clk), .RN(n1056), .Q(HC2[0]) );
  DFFRX2 \HC6_reg[6]  ( .D(n678), .CK(clk), .RN(n1055), .Q(HC6[6]) );
  DFFRX2 \HC6_reg[5]  ( .D(n679), .CK(clk), .RN(n1056), .Q(HC6[5]) );
  DFFRX2 \HC6_reg[4]  ( .D(n680), .CK(clk), .RN(n1055), .Q(HC6[4]) );
  DFFRX2 \HC6_reg[3]  ( .D(n681), .CK(clk), .RN(n1056), .Q(HC6[3]) );
  DFFRX2 \HC6_reg[2]  ( .D(n682), .CK(clk), .RN(n1055), .Q(HC6[2]) );
  DFFRX2 \HC6_reg[1]  ( .D(n683), .CK(clk), .RN(n1056), .Q(HC6[1]) );
  DFFRX2 \HC5_reg[6]  ( .D(n694), .CK(clk), .RN(n1055), .Q(HC5[6]) );
  DFFRX2 \HC5_reg[5]  ( .D(n695), .CK(clk), .RN(n1056), .Q(HC5[5]) );
  DFFRX2 \HC5_reg[4]  ( .D(n696), .CK(clk), .RN(n1055), .Q(HC5[4]) );
  DFFRX2 \HC5_reg[3]  ( .D(n697), .CK(clk), .RN(n1056), .Q(HC5[3]) );
  DFFRX2 \HC5_reg[2]  ( .D(n698), .CK(clk), .RN(n1055), .Q(HC5[2]) );
  DFFRX2 \HC5_reg[1]  ( .D(n699), .CK(clk), .RN(n1056), .Q(HC5[1]) );
  DFFRX2 \HC4_reg[6]  ( .D(n710), .CK(clk), .RN(n1055), .Q(HC4[6]) );
  DFFRX2 \HC4_reg[5]  ( .D(n711), .CK(clk), .RN(n1056), .Q(HC4[5]) );
  DFFRX2 \HC4_reg[4]  ( .D(n712), .CK(clk), .RN(n1055), .Q(HC4[4]) );
  DFFRX2 \HC4_reg[3]  ( .D(n713), .CK(clk), .RN(n1056), .Q(HC4[3]) );
  DFFRX2 \HC4_reg[2]  ( .D(n714), .CK(clk), .RN(n1055), .Q(HC4[2]) );
  DFFRX2 \HC5_reg[0]  ( .D(n700), .CK(clk), .RN(n1056), .Q(HC5[0]) );
  DFFRX2 \HC4_reg[0]  ( .D(n716), .CK(clk), .RN(n1055), .Q(HC4[0]) );
  DFFRX2 \HC2_reg[2]  ( .D(n746), .CK(clk), .RN(n1056), .Q(HC2[2]) );
  DFFRX2 \HC6_reg[0]  ( .D(n684), .CK(clk), .RN(n1055), .Q(HC6[0]) );
  DFFRX2 \HC2_reg[5]  ( .D(n743), .CK(clk), .RN(n1055), .Q(HC2[5]) );
  DFFRX2 \HC2_reg[4]  ( .D(n744), .CK(clk), .RN(n1056), .Q(HC2[4]) );
  DFFRX2 \HC1_reg[3]  ( .D(n761), .CK(clk), .RN(n1056), .Q(HC1[3]) );
  DFFRX2 \HC1_reg[2]  ( .D(n762), .CK(clk), .RN(n1055), .Q(HC1[2]) );
  DFFRX2 \HC3_reg[6]  ( .D(n726), .CK(clk), .RN(n1055), .Q(HC3[6]) );
  DFFRX2 \HC3_reg[5]  ( .D(n727), .CK(clk), .RN(n1056), .Q(HC3[5]) );
  DFFRX2 \HC3_reg[4]  ( .D(n728), .CK(clk), .RN(n1055), .Q(HC3[4]) );
  DFFRX2 \HC3_reg[3]  ( .D(n729), .CK(clk), .RN(n1056), .Q(HC3[3]) );
  DFFRX2 \HC3_reg[2]  ( .D(n730), .CK(clk), .RN(n1055), .Q(HC3[2]) );
  DFFRX2 \HC1_reg[6]  ( .D(n758), .CK(clk), .RN(n1055), .Q(HC1[6]) );
  DFFRX2 \HC1_reg[5]  ( .D(n759), .CK(clk), .RN(n1056), .Q(HC1[5]) );
  DFFRX2 \HC4_reg[1]  ( .D(n715), .CK(clk), .RN(n1056), .Q(HC4[1]) );
  DFFRX2 \HC1_reg[4]  ( .D(n760), .CK(clk), .RN(n1055), .Q(HC1[4]) );
  DFFRX2 \HC2_reg[6]  ( .D(n742), .CK(clk), .RN(n1056), .Q(HC2[6]) );
  DFFRX2 \HC2_reg[3]  ( .D(n745), .CK(clk), .RN(n1055), .Q(HC2[3]) );
  DFFRX2 \HC3_reg[1]  ( .D(n731), .CK(clk), .RN(n1056), .Q(HC3[1]) );
  DFFRX2 \HC1_reg[1]  ( .D(n763), .CK(clk), .RN(n1056), .Q(HC1[1]) );
  DFFRX2 \HC2_reg[1]  ( .D(n747), .CK(clk), .RN(n1055), .Q(HC2[1]) );
  DFFRX2 \HC6_reg[7]  ( .D(n677), .CK(clk), .RN(n1055), .Q(HC6[7]) );
  DFFRX2 \HC5_reg[7]  ( .D(n693), .CK(clk), .RN(n1056), .Q(HC5[7]) );
  DFFRX2 \HC2_reg[7]  ( .D(n741), .CK(clk), .RN(n1056), .Q(HC2[7]) );
  DFFRX2 \HC4_reg[7]  ( .D(n709), .CK(clk), .RN(n1055), .Q(HC4[7]) );
  DFFRX2 \HC3_reg[7]  ( .D(n725), .CK(clk), .RN(n1056), .Q(HC3[7]) );
  DFFRX2 \HC1_reg[7]  ( .D(n757), .CK(clk), .RN(n1055), .Q(HC1[7]) );
  DFFRX2 \M6_reg[5]  ( .D(n769), .CK(clk), .RN(n1055), .Q(M6[5]) );
  DFFRX2 \M6_reg[4]  ( .D(n771), .CK(clk), .RN(n1056), .Q(M6[4]) );
  DFFRX2 \M6_reg[0]  ( .D(n779), .CK(clk), .RN(n1055), .Q(M6[0]) );
  DFFRX2 \M6_reg[6]  ( .D(n767), .CK(clk), .RN(n1056), .Q(M6[6]) );
  DFFRX2 \M6_reg[3]  ( .D(n773), .CK(clk), .RN(n1055), .Q(M6[3]) );
  DFFRX2 \M6_reg[1]  ( .D(n777), .CK(clk), .RN(n1056), .Q(M6[1]) );
  DFFRX2 \M5_reg[7]  ( .D(n781), .CK(clk), .RN(n1056), .Q(M5[7]) );
  DFFRX2 \M5_reg[5]  ( .D(n785), .CK(clk), .RN(n1055), .Q(M5[5]) );
  DFFRX2 \M5_reg[4]  ( .D(n787), .CK(clk), .RN(n1056), .Q(M5[4]) );
  DFFRX2 \M5_reg[3]  ( .D(n789), .CK(clk), .RN(n1055), .Q(M5[3]) );
  DFFRX2 \M5_reg[2]  ( .D(n791), .CK(clk), .RN(n1056), .Q(M5[2]) );
  DFFRX2 \M5_reg[1]  ( .D(n793), .CK(clk), .RN(n1055), .Q(M5[1]) );
  DFFRX2 \M5_reg[0]  ( .D(n795), .CK(clk), .RN(n1056), .Q(M5[0]) );
  DFFRX2 \M4_reg[7]  ( .D(n797), .CK(clk), .RN(n1055), .Q(M4[7]) );
  DFFRX2 \M4_reg[6]  ( .D(n799), .CK(clk), .RN(n1056), .Q(M4[6]) );
  DFFRX2 \M4_reg[5]  ( .D(n801), .CK(clk), .RN(n1055), .Q(M4[5]) );
  DFFRX2 \M4_reg[4]  ( .D(n803), .CK(clk), .RN(n1056), .Q(M4[4]) );
  DFFRX2 \M4_reg[3]  ( .D(n805), .CK(clk), .RN(n1055), .Q(M4[3]) );
  DFFRX2 \M4_reg[2]  ( .D(n807), .CK(clk), .RN(n1056), .Q(M4[2]) );
  DFFRX2 \M4_reg[1]  ( .D(n809), .CK(clk), .RN(n1055), .Q(M4[1]) );
  DFFRX2 \M4_reg[0]  ( .D(n811), .CK(clk), .RN(n1056), .Q(M4[0]) );
  DFFRX2 \M3_reg[7]  ( .D(n813), .CK(clk), .RN(n1055), .Q(M3[7]) );
  DFFRX2 \M6_reg[7]  ( .D(n861), .CK(clk), .RN(n1055), .Q(M6[7]) );
  DFFRX2 \M6_reg[2]  ( .D(n775), .CK(clk), .RN(n1055), .Q(M6[2]) );
  DFFRX2 \M5_reg[6]  ( .D(n783), .CK(clk), .RN(n1056), .Q(M5[6]) );
  DFFRX2 \M3_reg[6]  ( .D(n815), .CK(clk), .RN(n1056), .Q(M3[6]) );
  DFFRX2 \M3_reg[5]  ( .D(n817), .CK(clk), .RN(n1055), .Q(M3[5]) );
  DFFRX2 \M3_reg[4]  ( .D(n819), .CK(clk), .RN(n1056), .Q(M3[4]) );
  DFFRX2 \M3_reg[3]  ( .D(n821), .CK(clk), .RN(n1055), .Q(M3[3]) );
  DFFRX2 \M3_reg[2]  ( .D(n823), .CK(clk), .RN(n1056), .Q(M3[2]) );
  DFFRX2 \M3_reg[1]  ( .D(n825), .CK(clk), .RN(n1055), .Q(M3[1]) );
  DFFRX2 \M3_reg[0]  ( .D(n827), .CK(clk), .RN(n1056), .Q(M3[0]) );
  DFFRX2 \M2_reg[7]  ( .D(n829), .CK(clk), .RN(n1055), .Q(M2[7]) );
  DFFRX2 \M2_reg[6]  ( .D(n831), .CK(clk), .RN(n1056), .Q(M2[6]) );
  DFFRX2 \M2_reg[5]  ( .D(n833), .CK(clk), .RN(n1055), .Q(M2[5]) );
  DFFRX2 \M2_reg[4]  ( .D(n835), .CK(clk), .RN(n1056), .Q(M2[4]) );
  DFFRX2 \M2_reg[3]  ( .D(n837), .CK(clk), .RN(n1055), .Q(M2[3]) );
  DFFRX2 \M2_reg[2]  ( .D(n839), .CK(clk), .RN(n1056), .Q(M2[2]) );
  DFFRX2 \M2_reg[1]  ( .D(n841), .CK(clk), .RN(n1055), .Q(M2[1]) );
  DFFRX2 \M2_reg[0]  ( .D(n843), .CK(clk), .RN(n1056), .Q(M2[0]) );
  DFFRX2 \M1_reg[7]  ( .D(n845), .CK(clk), .RN(n1055), .Q(M1[7]) );
  DFFRX2 \M1_reg[6]  ( .D(n847), .CK(clk), .RN(n1056), .Q(M1[6]) );
  DFFRX2 \M1_reg[5]  ( .D(n849), .CK(clk), .RN(n1055), .Q(M1[5]) );
  DFFRX2 \M1_reg[4]  ( .D(n851), .CK(clk), .RN(n1056), .Q(M1[4]) );
  DFFRX2 \M1_reg[3]  ( .D(n853), .CK(clk), .RN(n1055), .Q(M1[3]) );
  DFFRX2 \M1_reg[2]  ( .D(n855), .CK(clk), .RN(n1056), .Q(M1[2]) );
  DFFRX2 \M1_reg[1]  ( .D(n857), .CK(clk), .RN(n1055), .Q(M1[1]) );
  DFFRX2 \M1_reg[0]  ( .D(n859), .CK(clk), .RN(n1056), .Q(M1[0]) );
  DFFSX2 \min2_idx_reg[2]  ( .D(n982), .CK(clk), .SN(n1056), .QN(n292) );
  DFFSX2 \min2_idx_reg[1]  ( .D(n975), .CK(clk), .SN(n1056), .QN(n293) );
  DFFRX2 \cur_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(n1055), .Q(
        cur_state[2]), .QN(n304) );
  AO22XL U1672 ( .A0(n1239), .A1(HC1[3]), .B0(n1082), .B1(HC1[4]), .Y(n760) );
  AO22XL U1675 ( .A0(n1240), .A1(HC2[5]), .B0(n1086), .B1(HC2[6]), .Y(n742) );
  AO22XL U1696 ( .A0(n1240), .A1(HC2[2]), .B0(n1086), .B1(HC2[3]), .Y(n745) );
  AO22XL U1710 ( .A0(n1242), .A1(HC4[0]), .B0(n1094), .B1(HC4[1]), .Y(n715) );
endmodule

