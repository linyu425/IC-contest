/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Wed Jan 31 21:55:53 2024
/////////////////////////////////////////////////////////////


module JAM_DW01_add_0 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3;
  wire   [9:1] carry;

  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2XL U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
  XOR2XL U3 ( .A(A[8]), .B(n2), .Y(SUM[8]) );
  XOR2XL U4 ( .A(A[7]), .B(carry[7]), .Y(SUM[7]) );
  XNOR2X1 U5 ( .A(A[9]), .B(n3), .Y(SUM[9]) );
  NAND2X1 U6 ( .A(A[8]), .B(n2), .Y(n3) );
  AND2X2 U7 ( .A(A[7]), .B(carry[7]), .Y(n2) );
endmodule


module JAM_DW01_add_1 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;
  wire   [9:1] carry;

  ADDFHX4 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFHX4 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFHX4 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFHX4 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  XNOR2X2 U1 ( .A(A[9]), .B(n16), .Y(SUM[9]) );
  NAND2X2 U2 ( .A(A[8]), .B(n15), .Y(n16) );
  CLKXOR2X2 U3 ( .A(n3), .B(n4), .Y(SUM[1]) );
  XOR2X4 U4 ( .A(A[7]), .B(carry[7]), .Y(SUM[7]) );
  AND2X6 U5 ( .A(B[0]), .B(A[0]), .Y(n2) );
  NAND2X4 U6 ( .A(n14), .B(n13), .Y(n8) );
  NAND2X1 U7 ( .A(A[4]), .B(B[4]), .Y(n14) );
  XOR2X1 U8 ( .A(B[1]), .B(A[1]), .Y(n4) );
  XOR2X1 U9 ( .A(B[4]), .B(A[4]), .Y(n11) );
  ADDFHX2 U10 ( .A(A[3]), .B(B[3]), .CI(n1), .CO(n10) );
  XOR2X4 U11 ( .A(A[8]), .B(n15), .Y(SUM[8]) );
  ADDFHX2 U12 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(n1) );
  AND2X8 U13 ( .A(B[0]), .B(A[0]), .Y(n3) );
  NAND2X6 U14 ( .A(B[1]), .B(n3), .Y(n5) );
  NAND2X8 U15 ( .A(A[1]), .B(n2), .Y(n6) );
  NAND2X6 U16 ( .A(A[1]), .B(B[1]), .Y(n7) );
  NAND3X8 U17 ( .A(n5), .B(n6), .C(n7), .Y(carry[2]) );
  NAND2X6 U18 ( .A(n9), .B(n12), .Y(carry[5]) );
  CLKINVX8 U19 ( .A(n8), .Y(n9) );
  NAND2X2 U20 ( .A(B[4]), .B(carry[4]), .Y(n12) );
  NAND2X4 U21 ( .A(A[4]), .B(carry[4]), .Y(n13) );
  CLKAND2X12 U22 ( .A(A[7]), .B(carry[7]), .Y(n15) );
  XOR2X4 U23 ( .A(n10), .B(n11), .Y(SUM[4]) );
  XOR2X1 U24 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   N181, N182, N183, N184, N185, N192, N193, N194, N195, N196, N197,
         N208, N209, N217, n869, n870, n871, n872, n873, n874, n875, n876,
         n877, n878, n879, n880, n881, n882, \job_counter[3] , \pat[7][2] ,
         \pat[7][1] , \pat[7][0] , \pat[6][2] , \pat[6][1] , \pat[6][0] ,
         \pat[5][2] , \pat[5][1] , \pat[5][0] , \pat[4][2] , \pat[4][0] ,
         \pat[3][2] , \pat[3][1] , \pat[3][0] , \pat[2][2] , \pat[2][1] ,
         \pat[2][0] , \pat[1][2] , \pat[1][1] , \pat[1][0] , \pat[0][2] ,
         \pat[0][1] , \pat[0][0] , N315, N316, N317, N318, N326, N327, N328,
         N329, N330, N331, N332, N333, N334, N335, N347, N358, N361, N362,
         N363, N364, N365, N366, N367, N368, N369, N370, N393, N394, N395,
         N402, N403, N404, N493, N494, N495, N674, N675, N676, N693, N694,
         N695, N840, N841, N842, N844, \replace_min[2] , N875, N876, N877,
         N879, N891, N892, N893, N894, N895, N896, N897, N898, N899, N909,
         N910, N911, N939, n143, n144, n152, n174, n175, n176, n181, n182,
         n183, n184, n185, n186, n189, n190, n191, n192, n193, n194, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n209, n210, n211, n212, n213, n214, n215, n216, n217, n218, n219,
         n220, n221, n222, n223, n224, n225, n226, n227, n228, n229, n230,
         n231, n232, n233, n234, n235, n236, n237, n238, n239, n240, n241,
         n242, n243, n244, n245, n246, n247, n248, n249, n250, n251, n252,
         n253, n254, n255, n256, n257, n258, n259, n260, n261, n262, n263,
         n264, n265, n266, n267, n268, n269, n270, n271, n272, n273, n274,
         n275, n276, n277, n278, n279, n280, n281, n282, n283, n284, n285,
         n286, n287, n288, n289, n290, n291, n292, n293, n294, n295, n296,
         n297, n298, n299, n300, n301, n302, n303, n304, n305, n306, n307,
         n308, n309, n310, n311, n312, n313, n314, n315, n316, n317, n318,
         n319, n320, n321, n322, n323, n324, n325, n326, n327, n328, n329,
         n330, n331, n332, n333, n334, n335, n336, n337, n338, n339, n340,
         n341, n342, n343, n344, n345, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460, n461,
         n462, n463, n464, n465, n466, n467, n468, n469, n470, n471, n472,
         n473, n474, n475, n476, n477, n478, n481, n482, n485, n492, n494,
         n496, n498, n500, n502, n503, n504, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n562, n563, n564, n565, n566, n567,
         n568, n569, n571, n572, n573, n574, n575, n576, n577, n578, n579,
         n580, n581, n582, n583, n584, n585, n586, n587, n588, n589, n591,
         n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635,
         n636, n637, n638, n639, n640, n641, n642, n643, n644, n645, n646,
         n647, n648, n649, n650, n651, n652, n653, n654, n655, n656, n657,
         n658, n659, n660, n661, n662, n663, n664, n665, n666, n667, n668,
         n669, n670, n671, n672, n673, n674, n675, n676, n677, n678, n679,
         n680, n681, n682, n683, n684, n685, n686, n687, n688, n689, n690,
         n691, n692, n693, n694, n695, n696, n697, n698, n699, n700, n701,
         n702, n703, n704, n705, n706, n707, n708, n709, n710, n711, n712,
         n713, n714, n715, n716, n717, n718, n719, n720, n721, n722, n723,
         n724, n725, n726, n727, n728, n729, n730, n731, n732, n733, n734,
         n735, n736, n737, n738, n739, n740, n741, n742, n743, n744, n745,
         n746, n747, n748, n749, n750, n751, n752, n753, n754, n755, n756,
         n757, n758, n759, n760, n761, n762, n763, n764, n765, n766, n767,
         n768, n769, n770, n771, n772, n773, n774, n775, n776, n777, n778,
         n779, n780, n781, n782, n783, n784, n785, n786, n787, n788, n789,
         n790, n791, n792, n793, n794, n795, n796, n797, n798, n799, n800,
         n801, n802, n803, n804, n805, n806, n807, n808, n809, n810, n811,
         n812, n813, n814, n815, n816, n817, n818, n819, n820, n821, n822,
         n823, n824, n825, n826, n827, n828, n829, n830, n831, n832, n833,
         n834, n835, n836, n837, n838, n839, n840, n841, n842, n843, n844,
         n845, n846, n847, n848, n849, n850, n851, n852, n853, n854, n855,
         n856, n857, n858, n859, n860, n861, n862, n863, n864, n865, n866,
         n867, n868;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  wire   [9:0] cost;

  OAI31X2 U210 ( .A0(n373), .A1(n535), .A2(n374), .B0(n375), .Y(n342) );
  JAM_DW01_add_0 add_126 ( .A(cost), .B({1'b0, 1'b0, 1'b0, Cost}), .CI(1'b0), 
        .SUM({N370, N369, N368, N367, N366, N365, N364, N363, N362, N361}) );
  JAM_DW01_add_1 r603 ( .A(cost), .B({1'b0, 1'b0, 1'b0, Cost}), .CI(1'b0), 
        .SUM({N335, N334, N333, N332, N331, N330, N329, N328, N327, N326}) );
  DFFRX1 \job_counter_reg[1]  ( .D(N316), .CK(CLK), .RN(n564), .Q(N181), .QN(
        N208) );
  DFFSX1 \replace_min_reg[0]  ( .D(n470), .CK(CLK), .SN(n564), .QN(n194) );
  DFFSX1 \replace_min_reg[1]  ( .D(n469), .CK(CLK), .SN(n564), .QN(n193) );
  DFFSX1 \replace_min_reg[2]  ( .D(n468), .CK(CLK), .SN(n565), .Q(
        \replace_min[2] ), .QN(n192) );
  DFFRX2 \replace_min_index_reg[2]  ( .D(n466), .CK(CLK), .RN(n563), .Q(N194), 
        .QN(n196) );
  DFFRX1 \cost_reg[9]  ( .D(n433), .CK(CLK), .RN(n562), .Q(cost[9]) );
  DFFRX1 \cost_reg[6]  ( .D(n436), .CK(CLK), .RN(n562), .Q(cost[6]) );
  DFFRX2 \replace_min_index_reg[1]  ( .D(n467), .CK(CLK), .RN(n563), .Q(N193), 
        .QN(n197) );
  DFFRX1 \cost_reg[5]  ( .D(n437), .CK(CLK), .RN(n562), .Q(cost[5]) );
  DFFRX1 \cost_reg[3]  ( .D(n439), .CK(CLK), .RN(n562), .Q(cost[3]) );
  DFFRX1 \cost_reg[2]  ( .D(n440), .CK(CLK), .RN(n562), .Q(cost[2]) );
  DFFSX1 \pat_reg[2][2]  ( .D(n457), .CK(CLK), .SN(n565), .Q(\pat[2][2] ) );
  DFFSX1 \pat_reg[3][2]  ( .D(n454), .CK(CLK), .SN(n565), .Q(\pat[3][2] ) );
  DFFRX1 \pat_reg[6][2]  ( .D(n445), .CK(CLK), .RN(n563), .Q(\pat[6][2] ) );
  DFFRX1 \pat_reg[7][2]  ( .D(n474), .CK(CLK), .RN(n563), .Q(\pat[7][2] ) );
  DFFSX1 \pat_reg[1][2]  ( .D(n460), .CK(CLK), .SN(n564), .Q(\pat[1][2] ), 
        .QN(n184) );
  DFFSX1 \pat_reg[0][2]  ( .D(n463), .CK(CLK), .SN(n564), .Q(\pat[0][2] ) );
  DFFRX1 \pat_reg[5][2]  ( .D(n448), .CK(CLK), .RN(n563), .Q(\pat[5][2] ) );
  DFFRX1 \current_state_reg[2]  ( .D(next_state[2]), .CK(CLK), .RN(n564), .Q(
        current_state[2]), .QN(n143) );
  DFFRX2 \right_index_reg[2]  ( .D(n471), .CK(CLK), .RN(n562), .Q(N185), .QN(
        n189) );
  DFFRX2 \pat_reg[4][2]  ( .D(n451), .CK(CLK), .RN(n564), .Q(\pat[4][2] ), 
        .QN(n181) );
  DFFRX1 \current_state_reg[1]  ( .D(next_state[1]), .CK(CLK), .RN(n563), .Q(
        current_state[1]), .QN(n144) );
  DFFSX1 \pat_reg[6][0]  ( .D(n447), .CK(CLK), .SN(n565), .Q(\pat[6][0] ) );
  DFFRX1 \pat_reg[7][0]  ( .D(n444), .CK(CLK), .RN(n563), .Q(\pat[7][0] ) );
  DFFSX1 \pat_reg[2][0]  ( .D(n459), .CK(CLK), .SN(n827), .Q(\pat[2][0] ) );
  DFFRX1 \pat_reg[3][0]  ( .D(n456), .CK(CLK), .RN(n563), .Q(\pat[3][0] ) );
  DFFRX1 \pat_reg[6][1]  ( .D(n446), .CK(CLK), .RN(n563), .Q(\pat[6][1] ) );
  DFFRX1 \pat_reg[7][1]  ( .D(n443), .CK(CLK), .RN(n563), .Q(\pat[7][1] ) );
  DFFRX1 \pat_reg[2][1]  ( .D(n458), .CK(CLK), .RN(n563), .Q(\pat[2][1] ) );
  DFFRX1 \pat_reg[5][0]  ( .D(n450), .CK(CLK), .RN(n564), .Q(\pat[5][0] ) );
  DFFRX1 \pat_reg[3][1]  ( .D(n455), .CK(CLK), .RN(n563), .Q(\pat[3][1] ) );
  DFFSX1 \pat_reg[0][0]  ( .D(n465), .CK(CLK), .SN(n564), .Q(\pat[0][0] ) );
  DFFSX1 \pat_reg[5][1]  ( .D(n449), .CK(CLK), .SN(n564), .Q(\pat[5][1] ) );
  DFFSX2 \pat_reg[4][0]  ( .D(n453), .CK(CLK), .SN(n564), .Q(\pat[4][0] ), 
        .QN(n183) );
  DFFSX1 \pat_reg[1][1]  ( .D(n461), .CK(CLK), .SN(n564), .Q(\pat[1][1] ), 
        .QN(n185) );
  DFFRX2 \pat_reg[1][0]  ( .D(n462), .CK(CLK), .RN(n564), .Q(\pat[1][0] ), 
        .QN(n186) );
  DFFSX1 \pat_reg[0][1]  ( .D(n464), .CK(CLK), .SN(n564), .Q(\pat[0][1] ) );
  DFFRX2 \right_index_reg[1]  ( .D(n472), .CK(CLK), .RN(n564), .Q(N184), .QN(
        n190) );
  DFFRX2 \right_index_reg[0]  ( .D(n473), .CK(CLK), .RN(n565), .Q(N183), .QN(
        n191) );
  DFFRX1 \cost_reg[8]  ( .D(n434), .CK(CLK), .RN(n562), .Q(cost[8]) );
  DFFRX1 \cost_reg[7]  ( .D(n435), .CK(CLK), .RN(n562), .Q(cost[7]) );
  DFFRX1 \job_counter_reg[3]  ( .D(N318), .CK(CLK), .RN(n565), .Q(
        \job_counter[3] ), .QN(n152) );
  DFFRX1 \cost_reg[0]  ( .D(n441), .CK(CLK), .RN(n827), .Q(cost[0]) );
  DFFRX1 \cost_reg[4]  ( .D(n438), .CK(CLK), .RN(n562), .Q(cost[4]) );
  DFFRX1 \current_state_reg[0]  ( .D(next_state[0]), .CK(CLK), .RN(n827), .Q(
        current_state[0]) );
  DFFRX2 \job_counter_reg[0]  ( .D(N315), .CK(CLK), .RN(n827), .Q(n747), .QN(
        n573) );
  DFFSXL \pat_reg[4][1]  ( .D(n452), .CK(CLK), .SN(n827), .QN(n182) );
  DFFRX2 \cost_reg[1]  ( .D(n442), .CK(CLK), .RN(n827), .Q(cost[1]) );
  DFFRX1 \count_reg[1]  ( .D(n421), .CK(CLK), .RN(n562), .Q(n873), .QN(n175)
         );
  DFFSX1 \min_cost_reg[9]  ( .D(n432), .CK(CLK), .SN(n565), .Q(n875), .QN(n492) );
  DFFSX1 \min_cost_reg[1]  ( .D(n430), .CK(CLK), .SN(n565), .Q(n881), .QN(n485) );
  DFFSX1 \min_cost_reg[7]  ( .D(n424), .CK(CLK), .SN(n565), .Q(n877), .QN(n494) );
  DFFSX1 \min_cost_reg[3]  ( .D(n428), .CK(CLK), .SN(n565), .Q(n880), .QN(n500) );
  DFFSX1 \min_cost_reg[6]  ( .D(n425), .CK(CLK), .SN(n827), .QN(n820) );
  DFFSX1 \min_cost_reg[2]  ( .D(n429), .CK(CLK), .SN(n827), .QN(n819) );
  DFFRX1 \job_counter_reg[2]  ( .D(N317), .CK(CLK), .RN(n563), .Q(N182), .QN(
        N209) );
  DFFRX2 \replace_min_index_reg[0]  ( .D(n475), .CK(CLK), .RN(n563), .Q(N192), 
        .QN(n198) );
  DFFRX2 \count_reg[3]  ( .D(n419), .CK(CLK), .RN(n562), .Q(n871), .QN(n521)
         );
  DFFSX1 \min_cost_reg[8]  ( .D(n423), .CK(CLK), .SN(n565), .Q(n876), .QN(n523) );
  DFFSX1 \min_cost_reg[5]  ( .D(n426), .CK(CLK), .SN(n565), .Q(n878), .QN(n510) );
  DFFSX1 \min_cost_reg[4]  ( .D(n427), .CK(CLK), .SN(n565), .Q(n879), .QN(n496) );
  DFFSX1 \min_cost_reg[0]  ( .D(n431), .CK(CLK), .SN(n565), .Q(n882), .QN(n498) );
  DFFRX1 \count_reg[2]  ( .D(n420), .CK(CLK), .RN(n562), .Q(n872), .QN(n174)
         );
  DFFRX1 \count_reg[0]  ( .D(n422), .CK(CLK), .RN(n562), .Q(n874), .QN(n176)
         );
  NAND3XL U351 ( .A(n801), .B(n811), .C(n800), .Y(n818) );
  NOR3BX1 U352 ( .AN(n808), .B(n802), .C(n476), .Y(n800) );
  OR2X8 U353 ( .A(N333), .B(n494), .Y(n531) );
  NAND2X2 U354 ( .A(N333), .B(n494), .Y(n811) );
  NAND2BX4 U355 ( .AN(n476), .B(n808), .Y(n809) );
  NAND2X4 U356 ( .A(N332), .B(n820), .Y(n808) );
  NOR2X4 U357 ( .A(n512), .B(n513), .Y(n502) );
  AND2X6 U358 ( .A(n878), .B(n823), .Y(n512) );
  BUFX12 U359 ( .A(N358), .Y(n482) );
  NOR4X4 U360 ( .A(n818), .B(n817), .C(n816), .D(n815), .Y(N358) );
  OR2X8 U361 ( .A(n810), .B(n809), .Y(n529) );
  INVX3 U362 ( .A(n211), .Y(n527) );
  OA21X4 U363 ( .A0(n872), .A1(n211), .B0(n212), .Y(n522) );
  CLKINVX6 U364 ( .A(n211), .Y(n825) );
  NOR2X2 U365 ( .A(n816), .B(n815), .Y(n807) );
  NOR2X2 U366 ( .A(n822), .B(n879), .Y(n815) );
  NOR2BX1 U367 ( .AN(n882), .B(N326), .Y(n804) );
  INVX3 U368 ( .A(N331), .Y(n823) );
  AND2X4 U369 ( .A(n807), .B(n806), .Y(n514) );
  CLKINVX1 U370 ( .A(n811), .Y(n518) );
  NAND2X1 U371 ( .A(N328), .B(n819), .Y(n813) );
  CLKBUFX3 U372 ( .A(n583), .Y(n506) );
  AND2X2 U373 ( .A(n528), .B(n213), .Y(n212) );
  INVX12 U374 ( .A(n500), .Y(MinCost[3]) );
  INVX16 U375 ( .A(n504), .Y(J[0]) );
  CLKINVX1 U376 ( .A(n870), .Y(n504) );
  OAI32X1 U377 ( .A0(n175), .A1(n872), .A2(n210), .B0(n212), .B1(n174), .Y(
        n420) );
  NAND2X1 U378 ( .A(n511), .B(n209), .Y(n419) );
  OR4X1 U379 ( .A(n871), .B(n174), .C(n175), .D(n210), .Y(n209) );
  OR2X1 U380 ( .A(n521), .B(n522), .Y(n511) );
  AND2X4 U381 ( .A(N334), .B(n523), .Y(n802) );
  NAND3X1 U382 ( .A(n825), .B(n845), .C(n874), .Y(n210) );
  AND2X2 U383 ( .A(N331), .B(n510), .Y(n476) );
  CLKBUFX6 U384 ( .A(N217), .Y(n545) );
  INVX6 U385 ( .A(n566), .Y(n568) );
  OAI21X2 U386 ( .A0(N183), .A1(W[0]), .B0(n417), .Y(N195) );
  OA22X1 U387 ( .A0(W[2]), .A1(n738), .B0(N209), .B1(n737), .Y(n477) );
  INVX12 U388 ( .A(n485), .Y(MinCost[1]) );
  INVX3 U389 ( .A(RST), .Y(n827) );
  INVX3 U390 ( .A(n182), .Y(n478) );
  INVX12 U391 ( .A(n819), .Y(MinCost[2]) );
  INVX12 U392 ( .A(n820), .Y(MinCost[6]) );
  NOR2BX1 U393 ( .AN(N329), .B(n880), .Y(n816) );
  INVX3 U394 ( .A(n517), .Y(n812) );
  BUFX8 U395 ( .A(n214), .Y(n481) );
  OA21X4 U396 ( .A0(n874), .A1(n211), .B0(n481), .Y(n213) );
  AOI2BB1X1 U397 ( .A0N(n482), .A1N(N347), .B0(n218), .Y(n214) );
  AO21X4 U398 ( .A0(n821), .A1(n804), .B0(n881), .Y(n803) );
  NAND3BX4 U399 ( .AN(N347), .B(n814), .C(n813), .Y(n817) );
  OAI22X1 U400 ( .A0(n861), .A1(n581), .B0(n592), .B1(n580), .Y(N694) );
  INVX12 U401 ( .A(n521), .Y(MatchCount[3]) );
  INVX12 U402 ( .A(n510), .Y(MinCost[5]) );
  OAI22X1 U403 ( .A0(n861), .A1(n577), .B0(n593), .B1(n576), .Y(N695) );
  BUFX12 U404 ( .A(N939), .Y(Valid) );
  NOR3X1 U405 ( .A(n143), .B(current_state[1]), .C(current_state[0]), .Y(N939)
         );
  INVX12 U406 ( .A(n523), .Y(MinCost[8]) );
  OAI22X2 U407 ( .A0(n189), .A1(n601), .B0(N185), .B1(n600), .Y(N895) );
  INVX12 U408 ( .A(n176), .Y(MatchCount[0]) );
  INVX12 U409 ( .A(n174), .Y(MatchCount[2]) );
  INVX12 U410 ( .A(n175), .Y(MatchCount[1]) );
  INVX12 U411 ( .A(n492), .Y(MinCost[9]) );
  INVX12 U412 ( .A(n494), .Y(MinCost[7]) );
  INVX16 U413 ( .A(n496), .Y(MinCost[4]) );
  INVX16 U414 ( .A(n498), .Y(MinCost[0]) );
  NOR2X8 U415 ( .A(n514), .B(n503), .Y(n810) );
  INVX4 U416 ( .A(n502), .Y(n503) );
  NOR2XL U417 ( .A(W[0]), .B(N181), .Y(n583) );
  OR2X1 U418 ( .A(N335), .B(n492), .Y(n515) );
  OA21X4 U419 ( .A0(n804), .A1(n821), .B0(n803), .Y(n507) );
  NAND2X1 U420 ( .A(n507), .B(n813), .Y(n805) );
  OR2X1 U421 ( .A(N328), .B(n819), .Y(n508) );
  OR2XL U422 ( .A(N329), .B(n500), .Y(n509) );
  NAND3X1 U423 ( .A(n508), .B(n509), .C(n805), .Y(n806) );
  INVX3 U424 ( .A(N327), .Y(n821) );
  INVX8 U425 ( .A(N330), .Y(n822) );
  AND3X8 U426 ( .A(n529), .B(n530), .C(n531), .Y(n519) );
  NAND2BX2 U427 ( .AN(N347), .B(n482), .Y(n211) );
  NAND2X8 U428 ( .A(n515), .B(n516), .Y(N347) );
  AND2XL U429 ( .A(MinCost[4]), .B(n822), .Y(n513) );
  INVX12 U430 ( .A(n533), .Y(J[1]) );
  INVX1 U431 ( .A(n869), .Y(n533) );
  CLKINVX4 U432 ( .A(n814), .Y(n824) );
  OR2X6 U433 ( .A(n812), .B(n824), .Y(n516) );
  NAND2XL U434 ( .A(n627), .B(n571), .Y(n418) );
  AO22X1 U435 ( .A0(cost[6]), .A1(n547), .B0(N332), .B1(n548), .Y(n436) );
  OAI32X2 U436 ( .A0(n518), .A1(n802), .A2(n519), .B0(n523), .B1(N334), .Y(
        n517) );
  CLKINVX1 U437 ( .A(N196), .Y(n858) );
  CLKINVX2 U438 ( .A(n566), .Y(n569) );
  INVX1 U439 ( .A(n271), .Y(n847) );
  NOR2BX1 U440 ( .AN(n341), .B(N195), .Y(n257) );
  NOR2BX1 U441 ( .AN(n341), .B(n679), .Y(n272) );
  NAND2X2 U442 ( .A(N335), .B(n492), .Y(n814) );
  NAND2XL U443 ( .A(N347), .B(n845), .Y(n216) );
  NAND2X1 U444 ( .A(N403), .B(n319), .Y(n232) );
  XNOR2X1 U445 ( .A(n418), .B(W[2]), .Y(n520) );
  NAND2X1 U446 ( .A(N402), .B(n319), .Y(n246) );
  NAND2X1 U447 ( .A(N404), .B(n319), .Y(n237) );
  INVXL U448 ( .A(n235), .Y(n830) );
  INVXL U449 ( .A(n230), .Y(n831) );
  INVXL U450 ( .A(n244), .Y(n832) );
  OAI211XL U451 ( .A0(N892), .A1(n867), .B0(n835), .C0(N893), .Y(n386) );
  OAI2BB1XL U452 ( .A0N(n867), .A1N(N892), .B0(n386), .Y(n385) );
  AND2XL U453 ( .A(n290), .B(n546), .Y(n288) );
  AND2XL U454 ( .A(n304), .B(n546), .Y(n302) );
  AND2XL U455 ( .A(n243), .B(n546), .Y(n241) );
  AND2XL U456 ( .A(n263), .B(n546), .Y(n261) );
  AND2XL U457 ( .A(n316), .B(n546), .Y(n314) );
  AND2XL U458 ( .A(n546), .B(n229), .Y(n227) );
  AND2XL U459 ( .A(n277), .B(n546), .Y(n275) );
  OAI22XL U460 ( .A0(n589), .A1(n861), .B0(W[2]), .B1(n588), .Y(N693) );
  CLKINVX1 U461 ( .A(n199), .Y(n846) );
  OA22XL U462 ( .A0(n696), .A1(n567), .B0(n568), .B1(n695), .Y(n525) );
  OA22XL U463 ( .A0(n729), .A1(n567), .B0(n569), .B1(n728), .Y(n524) );
  NOR2XL U464 ( .A(n388), .B(W[0]), .Y(N315) );
  AO22XL U465 ( .A0(n550), .A1(n604), .B0(n540), .B1(n603), .Y(n605) );
  NOR2XL U466 ( .A(n798), .B(n388), .Y(N316) );
  OAI21XL U467 ( .A0(n864), .A1(n339), .B0(n356), .Y(n355) );
  CLKINVX1 U468 ( .A(n222), .Y(n864) );
  OAI211XL U469 ( .A0(n481), .A1(n176), .B0(n215), .C0(n216), .Y(n422) );
  NOR2BXL U470 ( .AN(N326), .B(MinCost[0]), .Y(n799) );
  NAND2X1 U471 ( .A(n591), .B(n572), .Y(n256) );
  AOI2BB2X1 U472 ( .B0(n862), .B1(n283), .A0N(n218), .A1N(n284), .Y(n273) );
  AOI32XL U473 ( .A0(N185), .A1(n190), .A2(n191), .B0(n836), .B1(n277), .Y(
        n284) );
  NAND2X1 U474 ( .A(\job_counter[3] ), .B(n223), .Y(n199) );
  AOI2BB2XL U475 ( .B0(n836), .B1(n229), .A0N(n191), .A1N(n258), .Y(n365) );
  AOI32XL U476 ( .A0(N184), .A1(n189), .A2(n191), .B0(n836), .B1(n304), .Y(
        n311) );
  AOI32XL U477 ( .A0(N183), .A1(n189), .A2(N184), .B0(n836), .B1(n290), .Y(
        n297) );
  AOI32XL U478 ( .A0(N183), .A1(n190), .A2(N185), .B0(n836), .B1(n263), .Y(
        n270) );
  NAND3BX1 U479 ( .AN(n391), .B(n218), .C(n392), .Y(n388) );
  AO22XL U480 ( .A0(n552), .A1(n604), .B0(\pat[4][2] ), .B1(n603), .Y(n602) );
  AO22XL U481 ( .A0(n551), .A1(n604), .B0(\pat[4][0] ), .B1(n603), .Y(n594) );
  AO22XL U482 ( .A0(\pat[1][0] ), .A1(n604), .B0(n538), .B1(n603), .Y(n595) );
  OAI22XL U483 ( .A0(W[2]), .A1(n400), .B0(n861), .B1(n401), .Y(n398) );
  OAI22XL U484 ( .A0(W[2]), .A1(n406), .B0(n861), .B1(n407), .Y(n394) );
  XOR2XL U485 ( .A(N184), .B(W[0]), .Y(n412) );
  NAND3X1 U486 ( .A(current_state[0]), .B(n143), .C(current_state[1]), .Y(n340) );
  NAND2X1 U487 ( .A(W[2]), .B(n152), .Y(n255) );
  CLKINVX1 U488 ( .A(n295), .Y(n850) );
  CLKINVX1 U489 ( .A(n309), .Y(n851) );
  CLKINVX1 U490 ( .A(n324), .Y(n852) );
  CLKINVX1 U491 ( .A(n282), .Y(n854) );
  CLKINVX1 U492 ( .A(n268), .Y(n855) );
  CLKINVX1 U493 ( .A(n252), .Y(n856) );
  INVX3 U494 ( .A(n568), .Y(n567) );
  CLKINVX1 U495 ( .A(N196), .Y(n678) );
  CLKINVX1 U496 ( .A(n320), .Y(n839) );
  CLKINVX1 U497 ( .A(n323), .Y(n834) );
  CLKINVX1 U498 ( .A(N197), .Y(n680) );
  NOR3BX2 U499 ( .AN(n272), .B(n858), .C(n853), .Y(n226) );
  CLKINVX1 U500 ( .A(N197), .Y(n853) );
  NAND3X1 U501 ( .A(N196), .B(n853), .C(n272), .Y(n295) );
  NAND3X1 U502 ( .A(N196), .B(n853), .C(n257), .Y(n309) );
  NAND3X1 U503 ( .A(n853), .B(n858), .C(n272), .Y(n324) );
  NAND3X1 U504 ( .A(N197), .B(n858), .C(n257), .Y(n282) );
  NAND3X1 U505 ( .A(n853), .B(n858), .C(n257), .Y(n330) );
  NAND3X1 U506 ( .A(N197), .B(n858), .C(n272), .Y(n268) );
  NAND3X1 U507 ( .A(N196), .B(N197), .C(n257), .Y(n252) );
  INVX20 U508 ( .A(n571), .Y(W[0]) );
  NOR2BXL U509 ( .AN(N695), .B(n846), .Y(n870) );
  NAND2X2 U510 ( .A(n481), .B(n211), .Y(n217) );
  CLKBUFX3 U511 ( .A(n251), .Y(n546) );
  NOR2X1 U512 ( .A(n342), .B(n864), .Y(n251) );
  INVX3 U513 ( .A(n342), .Y(n836) );
  NOR2X1 U514 ( .A(n864), .B(n836), .Y(n319) );
  CLKINVX1 U515 ( .A(n312), .Y(n829) );
  INVX3 U516 ( .A(n216), .Y(n826) );
  AOI2BB2X1 U517 ( .B0(n546), .B1(n828), .A0N(n836), .A1N(n218), .Y(n332) );
  INVX12 U518 ( .A(n532), .Y(J[2]) );
  NAND2X1 U519 ( .A(n199), .B(N693), .Y(n532) );
  NAND2X1 U520 ( .A(n345), .B(n351), .Y(n344) );
  CLKINVX1 U521 ( .A(n374), .Y(n842) );
  CLKINVX1 U522 ( .A(n545), .Y(n627) );
  CLKINVX1 U523 ( .A(n545), .Y(n764) );
  CLKINVX1 U524 ( .A(n545), .Y(n781) );
  CLKINVX1 U525 ( .A(n545), .Y(n730) );
  CLKXOR2X2 U526 ( .A(n417), .B(n409), .Y(N196) );
  CLKINVX1 U527 ( .A(n545), .Y(n697) );
  OA21XL U528 ( .A0(n350), .A1(n351), .B0(n352), .Y(n347) );
  NAND2X1 U529 ( .A(n838), .B(n355), .Y(n354) );
  CLKINVX1 U530 ( .A(n545), .Y(n644) );
  NAND2XL U531 ( .A(N694), .B(n862), .Y(n320) );
  CLKINVX1 U532 ( .A(N195), .Y(n679) );
  NAND2XL U533 ( .A(N695), .B(n862), .Y(n323) );
  CLKINVX1 U534 ( .A(N693), .Y(n841) );
  CLKXOR2X2 U535 ( .A(n410), .B(n371), .Y(N197) );
  CLKINVX1 U536 ( .A(n545), .Y(n798) );
  CLKINVX1 U537 ( .A(n240), .Y(n840) );
  NAND2X1 U538 ( .A(W[0]), .B(n591), .Y(n298) );
  CLKINVX1 U539 ( .A(n285), .Y(n844) );
  INVX3 U540 ( .A(n218), .Y(n845) );
  NOR2BX1 U541 ( .AN(n352), .B(n357), .Y(n350) );
  CLKBUFX3 U542 ( .A(n827), .Y(n565) );
  CLKBUFX3 U543 ( .A(n827), .Y(n564) );
  CLKBUFX3 U544 ( .A(n827), .Y(n562) );
  CLKBUFX3 U545 ( .A(n827), .Y(n563) );
  CLKINVX1 U546 ( .A(n861), .Y(n592) );
  CLKBUFX3 U547 ( .A(n573), .Y(n571) );
  CLKINVX1 U548 ( .A(n861), .Y(n593) );
  OR2X1 U549 ( .A(N332), .B(n820), .Y(n530) );
  INVX1 U550 ( .A(N895), .Y(n867) );
  OAI21XL U551 ( .A0(N394), .A1(n867), .B0(N395), .Y(n373) );
  AOI32X1 U552 ( .A0(n842), .A1(n867), .A2(N394), .B0(N393), .B1(n868), .Y(
        n375) );
  OAI2BB2XL U553 ( .B0(n224), .B1(n225), .A0N(n224), .A1N(n555), .Y(n443) );
  AOI221XL U554 ( .A0(n226), .A1(n839), .B0(n227), .B1(N895), .C0(n228), .Y(
        n225) );
  OAI221XL U555 ( .A0(n229), .A1(n230), .B0(n226), .B1(n231), .C0(n232), .Y(
        n228) );
  OAI2BB2XL U556 ( .B0(n286), .B1(n291), .A0N(n286), .A1N(n557), .Y(n455) );
  AOI221XL U557 ( .A0(n850), .A1(n839), .B0(n288), .B1(N895), .C0(n292), .Y(
        n291) );
  OAI221XL U558 ( .A0(n290), .A1(n230), .B0(n850), .B1(n231), .C0(n232), .Y(
        n292) );
  OAI2BB2XL U559 ( .B0(n238), .B1(n247), .A0N(n238), .A1N(n558), .Y(n446) );
  AOI221XL U560 ( .A0(n856), .A1(n839), .B0(n241), .B1(N895), .C0(n248), .Y(
        n247) );
  OAI221XL U561 ( .A0(n243), .A1(n230), .B0(n856), .B1(n231), .C0(n232), .Y(
        n248) );
  OAI2BB2XL U562 ( .B0(n300), .B1(n305), .A0N(n300), .A1N(n560), .Y(n458) );
  AOI221XL U563 ( .A0(n851), .A1(n839), .B0(n302), .B1(N895), .C0(n306), .Y(
        n305) );
  OAI221XL U564 ( .A0(n304), .A1(n230), .B0(n851), .B1(n231), .C0(n232), .Y(
        n306) );
  OAI2BB2XL U565 ( .B0(n259), .B1(n264), .A0N(n259), .A1N(n537), .Y(n449) );
  AOI221XL U566 ( .A0(n855), .A1(n839), .B0(n261), .B1(N895), .C0(n265), .Y(
        n264) );
  OAI221XL U567 ( .A0(n263), .A1(n230), .B0(n855), .B1(n231), .C0(n232), .Y(
        n265) );
  CLKINVX1 U568 ( .A(N183), .Y(n610) );
  OAI2BB2XL U569 ( .B0(n224), .B1(n363), .A0N(n224), .A1N(n553), .Y(n474) );
  AOI221XL U570 ( .A0(n240), .A1(n226), .B0(n227), .B1(n536), .C0(n364), .Y(
        n363) );
  OAI221XL U571 ( .A0(n229), .A1(n244), .B0(n226), .B1(n245), .C0(n246), .Y(
        n364) );
  OAI2BB2XL U572 ( .B0(n224), .B1(n233), .A0N(n224), .A1N(n554), .Y(n444) );
  AOI221XL U573 ( .A0(n834), .A1(n226), .B0(n535), .B1(n227), .C0(n234), .Y(
        n233) );
  OAI221XL U574 ( .A0(n229), .A1(n235), .B0(n226), .B1(n236), .C0(n237), .Y(
        n234) );
  OAI2BB2XL U575 ( .B0(n238), .B1(n239), .A0N(n238), .A1N(n559), .Y(n445) );
  AOI221XL U576 ( .A0(n856), .A1(n240), .B0(n241), .B1(n536), .C0(n242), .Y(
        n239) );
  OAI221XL U577 ( .A0(n243), .A1(n244), .B0(n856), .B1(n245), .C0(n246), .Y(
        n242) );
  OAI2BB2XL U578 ( .B0(n259), .B1(n260), .A0N(n259), .A1N(n552), .Y(n448) );
  AOI221XL U579 ( .A0(n855), .A1(n240), .B0(n261), .B1(n536), .C0(n262), .Y(
        n260) );
  OAI221XL U580 ( .A0(n263), .A1(n244), .B0(n855), .B1(n245), .C0(n246), .Y(
        n262) );
  OAI2BB2XL U581 ( .B0(n286), .B1(n293), .A0N(n286), .A1N(n556), .Y(n456) );
  AOI221XL U582 ( .A0(n850), .A1(n834), .B0(n288), .B1(n535), .C0(n294), .Y(
        n293) );
  OAI221XL U583 ( .A0(n290), .A1(n235), .B0(n850), .B1(n236), .C0(n237), .Y(
        n294) );
  OAI2BB2XL U584 ( .B0(n259), .B1(n266), .A0N(n259), .A1N(n551), .Y(n450) );
  AOI221XL U585 ( .A0(n855), .A1(n834), .B0(n261), .B1(n535), .C0(n267), .Y(
        n266) );
  OAI221XL U586 ( .A0(n263), .A1(n235), .B0(n855), .B1(n236), .C0(n237), .Y(
        n267) );
  OAI2BB2XL U587 ( .B0(n286), .B1(n287), .A0N(n286), .A1N(n541), .Y(n454) );
  AOI221XL U588 ( .A0(n850), .A1(n240), .B0(n288), .B1(n536), .C0(n289), .Y(
        n287) );
  OAI221XL U589 ( .A0(n290), .A1(n244), .B0(n850), .B1(n245), .C0(n246), .Y(
        n289) );
  OAI2BB2XL U590 ( .B0(n300), .B1(n301), .A0N(n300), .A1N(n543), .Y(n457) );
  AOI221XL U591 ( .A0(n851), .A1(n240), .B0(n302), .B1(n536), .C0(n303), .Y(
        n301) );
  OAI221XL U592 ( .A0(n304), .A1(n244), .B0(n851), .B1(n245), .C0(n246), .Y(
        n303) );
  OAI2BB2XL U593 ( .B0(n238), .B1(n249), .A0N(n238), .A1N(n542), .Y(n447) );
  AOI221XL U594 ( .A0(n856), .A1(n834), .B0(n241), .B1(n535), .C0(n250), .Y(
        n249) );
  OAI221XL U595 ( .A0(n243), .A1(n235), .B0(n856), .B1(n236), .C0(n237), .Y(
        n250) );
  OAI2BB2XL U596 ( .B0(n300), .B1(n307), .A0N(n300), .A1N(n544), .Y(n459) );
  AOI221XL U597 ( .A0(n851), .A1(n834), .B0(n302), .B1(n535), .C0(n308), .Y(
        n307) );
  OAI221XL U598 ( .A0(n304), .A1(n235), .B0(n851), .B1(n236), .C0(n237), .Y(
        n308) );
  AO22X1 U599 ( .A0(n845), .A1(n325), .B0(n862), .B1(n326), .Y(n312) );
  OAI21XL U600 ( .A0(n271), .A1(n299), .B0(n324), .Y(n326) );
  AO22X1 U601 ( .A0(n866), .A1(N183), .B0(n836), .B1(n316), .Y(n325) );
  OAI2BB2XL U602 ( .B0(n327), .B1(n335), .A0N(n538), .A1N(n327), .Y(n465) );
  AOI221XL U603 ( .A0(n830), .A1(n329), .B0(n837), .B1(n330), .C0(n336), .Y(
        n335) );
  CLKINVX1 U604 ( .A(n236), .Y(n837) );
  OAI22XL U605 ( .A0(n332), .A1(n835), .B0(n323), .B1(n330), .Y(n336) );
  OAI2BB2XL U606 ( .B0(n327), .B1(n333), .A0N(n539), .A1N(n327), .Y(n464) );
  AOI221XL U607 ( .A0(n831), .A1(n329), .B0(n848), .B1(n330), .C0(n334), .Y(
        n333) );
  CLKINVX1 U608 ( .A(n231), .Y(n848) );
  OAI22XL U609 ( .A0(n332), .A1(n867), .B0(n320), .B1(n330), .Y(n334) );
  OAI2BB2XL U610 ( .B0(n327), .B1(n328), .A0N(n540), .A1N(n327), .Y(n463) );
  AOI221XL U611 ( .A0(n832), .A1(n329), .B0(n849), .B1(n330), .C0(n331), .Y(
        n328) );
  CLKINVX1 U612 ( .A(n245), .Y(n849) );
  OAI22XL U613 ( .A0(n332), .A1(n868), .B0(n840), .B1(n330), .Y(n331) );
  AOI22X2 U614 ( .A0(n845), .A1(n253), .B0(n862), .B1(n254), .Y(n238) );
  OAI21XL U615 ( .A0(n255), .A1(n256), .B0(n252), .Y(n254) );
  OAI2BB2XL U616 ( .B0(N183), .B1(n258), .A0N(n836), .A1N(n243), .Y(n253) );
  AOI31X1 U617 ( .A0(n357), .A1(n376), .A2(n351), .B0(n350), .Y(n343) );
  NOR2X1 U618 ( .A(N891), .B(n385), .Y(n384) );
  CLKINVX1 U619 ( .A(n273), .Y(n833) );
  NOR2X2 U620 ( .A(n376), .B(n350), .Y(n345) );
  INVX3 U621 ( .A(W[2]), .Y(n861) );
  AND2X2 U622 ( .A(n337), .B(n338), .Y(n327) );
  AO21X1 U623 ( .A0(n330), .A1(n339), .B0(n340), .Y(n338) );
  OAI31XL U624 ( .A0(n342), .A1(n865), .A2(n828), .B0(n845), .Y(n337) );
  CLKINVX1 U625 ( .A(n200), .Y(n865) );
  NAND2X1 U626 ( .A(n571), .B(n860), .Y(n285) );
  NOR2X1 U627 ( .A(n285), .B(W[2]), .Y(n223) );
  NAND2X1 U628 ( .A(W[0]), .B(n860), .Y(n271) );
  NOR2X1 U629 ( .A(n868), .B(N393), .Y(n374) );
  NAND2X1 U630 ( .A(n256), .B(n271), .Y(N217) );
  CLKBUFX3 U631 ( .A(n520), .Y(n566) );
  OAI2BB1X1 U632 ( .A0N(n841), .A1N(n394), .B0(n396), .Y(n395) );
  OAI21XL U633 ( .A0(n397), .A1(n398), .B0(n399), .Y(n396) );
  OAI2BB1XL U634 ( .A0N(n397), .A1N(n398), .B0(N694), .Y(n399) );
  OAI221XL U635 ( .A0(n861), .A1(n403), .B0(W[2]), .B1(n404), .C0(N695), .Y(
        n397) );
  AOI2BB1X1 U636 ( .A0N(n591), .A1N(n388), .B0(N315), .Y(n390) );
  OAI211X1 U637 ( .A0(N877), .A1(n524), .B0(n377), .C0(n378), .Y(n351) );
  NAND3XL U638 ( .A(n380), .B(n477), .C(N875), .Y(n377) );
  OAI211X1 U639 ( .A0(N875), .A1(n477), .B0(n379), .C0(n380), .Y(n378) );
  NAND2X2 U640 ( .A(N675), .B(n862), .Y(n231) );
  XOR2X1 U641 ( .A(n591), .B(n415), .Y(n409) );
  INVX3 U642 ( .A(n860), .Y(n591) );
  OA21XL U643 ( .A0(n838), .A1(n356), .B0(n355), .Y(n353) );
  CLKINVX1 U644 ( .A(n358), .Y(n838) );
  OAI211X1 U645 ( .A0(N842), .A1(n525), .B0(n359), .C0(n360), .Y(n358) );
  NAND3XL U646 ( .A(n362), .B(n526), .C(N840), .Y(n359) );
  OAI211X1 U647 ( .A0(N840), .A1(n526), .B0(n361), .C0(n362), .Y(n360) );
  NAND2XL U648 ( .A(N877), .B(n524), .Y(n380) );
  NAND2X2 U649 ( .A(N674), .B(n862), .Y(n245) );
  NAND2X2 U650 ( .A(N676), .B(n862), .Y(n236) );
  NAND2XL U651 ( .A(N842), .B(n525), .Y(n362) );
  NAND2X1 U652 ( .A(N183), .B(W[0]), .Y(n417) );
  CLKINVX1 U653 ( .A(n536), .Y(n868) );
  CLKBUFX3 U654 ( .A(n573), .Y(n572) );
  OAI22X1 U655 ( .A0(n857), .A1(n415), .B0(n591), .B1(n416), .Y(n371) );
  CLKINVX1 U656 ( .A(n417), .Y(n857) );
  NOR2BX1 U657 ( .AN(n415), .B(n417), .Y(n416) );
  CLKINVX1 U658 ( .A(n535), .Y(n835) );
  NOR2X2 U659 ( .A(n841), .B(n340), .Y(n240) );
  XOR2X1 U660 ( .A(n370), .B(n861), .Y(n410) );
  CLKINVX1 U661 ( .A(n201), .Y(n866) );
  AOI222XL U662 ( .A0(n843), .A1(n554), .B0(n551), .B1(n844), .C0(n847), .C1(
        n542), .Y(n403) );
  CLKINVX1 U663 ( .A(n256), .Y(n843) );
  XOR2X1 U664 ( .A(n368), .B(n369), .Y(n341) );
  OAI2BB1X1 U665 ( .A0N(n370), .A1N(n371), .B0(n372), .Y(n368) );
  OAI21XL U666 ( .A0(n370), .A1(n371), .B0(n861), .Y(n372) );
  NAND2X2 U667 ( .A(n222), .B(n846), .Y(n218) );
  CLKBUFX3 U668 ( .A(n219), .Y(n547) );
  AOI21X1 U669 ( .A0(n222), .A1(n221), .B0(n845), .Y(n219) );
  CLKBUFX3 U670 ( .A(n220), .Y(n548) );
  NOR2BX1 U671 ( .AN(n221), .B(n547), .Y(n220) );
  NAND2BX1 U672 ( .AN(n339), .B(n222), .Y(n352) );
  NAND4BX1 U673 ( .AN(n369), .B(n409), .C(n410), .D(n679), .Y(n207) );
  AND2X2 U674 ( .A(n339), .B(n222), .Y(n357) );
  OAI2BB1X1 U675 ( .A0N(n203), .A1N(n201), .B0(n204), .Y(next_state[0]) );
  OAI21XL U676 ( .A0(n205), .A1(n206), .B0(n862), .Y(n204) );
  OAI22XL U677 ( .A0(n207), .A1(n863), .B0(n199), .B1(n864), .Y(n203) );
  AO21X1 U678 ( .A0(n201), .A1(n202), .B0(next_state[0]), .Y(next_state[1]) );
  NOR2X1 U679 ( .A(n298), .B(n255), .Y(n367) );
  NAND2X1 U680 ( .A(n201), .B(n258), .Y(n414) );
  NOR3X1 U681 ( .A(n864), .B(n199), .C(n200), .Y(next_state[2]) );
  INVX3 U682 ( .A(n340), .Y(n862) );
  CLKINVX1 U683 ( .A(n202), .Y(n863) );
  CLKINVX1 U684 ( .A(n329), .Y(n828) );
  NAND2X1 U685 ( .A(n175), .B(n527), .Y(n528) );
  OAI22XL U686 ( .A0(n213), .A1(n175), .B0(n873), .B1(n210), .Y(n421) );
  AO22XL U687 ( .A0(n876), .A1(n217), .B0(N369), .B1(n826), .Y(n423) );
  AO22XL U688 ( .A0(MinCost[4]), .A1(n217), .B0(N365), .B1(n826), .Y(n427) );
  AO22XL U689 ( .A0(MinCost[3]), .A1(n217), .B0(N364), .B1(n826), .Y(n428) );
  AO22XL U690 ( .A0(MinCost[1]), .A1(n217), .B0(N362), .B1(n826), .Y(n430) );
  AO22XL U691 ( .A0(n878), .A1(n217), .B0(N366), .B1(n826), .Y(n426) );
  AO22XL U692 ( .A0(MinCost[0]), .A1(n217), .B0(N361), .B1(n826), .Y(n431) );
  AO22XL U693 ( .A0(MinCost[2]), .A1(n217), .B0(N363), .B1(n826), .Y(n429) );
  AO22XL U694 ( .A0(n875), .A1(n217), .B0(N370), .B1(n826), .Y(n432) );
  AO22XL U695 ( .A0(MinCost[6]), .A1(n217), .B0(N367), .B1(n826), .Y(n425) );
  AO22XL U696 ( .A0(n877), .A1(n217), .B0(N368), .B1(n826), .Y(n424) );
  NAND3X1 U697 ( .A(n845), .B(n176), .C(n825), .Y(n215) );
  NAND2X2 U698 ( .A(N494), .B(n546), .Y(n230) );
  OAI22XL U699 ( .A0(n312), .A1(n185), .B0(n829), .B1(n317), .Y(n461) );
  AOI221XL U700 ( .A0(n852), .A1(n839), .B0(n314), .B1(N895), .C0(n318), .Y(
        n317) );
  OAI221XL U701 ( .A0(n316), .A1(n230), .B0(n852), .B1(n231), .C0(n232), .Y(
        n318) );
  OAI22XL U702 ( .A0(n833), .A1(n182), .B0(n273), .B1(n278), .Y(n452) );
  AOI221XL U703 ( .A0(n854), .A1(n839), .B0(n275), .B1(N895), .C0(n279), .Y(
        n278) );
  OAI221XL U704 ( .A0(n277), .A1(n230), .B0(n854), .B1(n231), .C0(n232), .Y(
        n279) );
  NAND2X2 U705 ( .A(N493), .B(n546), .Y(n244) );
  OAI22XL U706 ( .A0(n833), .A1(n181), .B0(n273), .B1(n274), .Y(n451) );
  AOI221XL U707 ( .A0(n854), .A1(n240), .B0(n275), .B1(n536), .C0(n276), .Y(
        n274) );
  OAI221XL U708 ( .A0(n277), .A1(n244), .B0(n854), .B1(n245), .C0(n246), .Y(
        n276) );
  NAND2X2 U709 ( .A(N495), .B(n546), .Y(n235) );
  OAI22XL U710 ( .A0(n312), .A1(n186), .B0(n829), .B1(n321), .Y(n462) );
  AOI221XL U711 ( .A0(n852), .A1(n834), .B0(n314), .B1(n535), .C0(n322), .Y(
        n321) );
  OAI221XL U712 ( .A0(n316), .A1(n235), .B0(n852), .B1(n236), .C0(n237), .Y(
        n322) );
  OAI22XL U713 ( .A0(n312), .A1(n184), .B0(n829), .B1(n313), .Y(n460) );
  AOI221XL U714 ( .A0(n852), .A1(n240), .B0(n314), .B1(n536), .C0(n315), .Y(
        n313) );
  OAI221XL U715 ( .A0(n316), .A1(n244), .B0(n852), .B1(n245), .C0(n246), .Y(
        n315) );
  OAI22XL U716 ( .A0(n833), .A1(n183), .B0(n273), .B1(n280), .Y(n453) );
  AOI221XL U717 ( .A0(n854), .A1(n834), .B0(n275), .B1(n535), .C0(n281), .Y(
        n280) );
  OAI221XL U718 ( .A0(n277), .A1(n235), .B0(n854), .B1(n236), .C0(n237), .Y(
        n281) );
  AOI2BB2X2 U719 ( .B0(n862), .B1(n310), .A0N(n218), .A1N(n311), .Y(n300) );
  OAI21XL U720 ( .A0(n256), .A1(n299), .B0(n309), .Y(n310) );
  AOI2BB2X2 U721 ( .B0(n862), .B1(n296), .A0N(n218), .A1N(n297), .Y(n286) );
  OAI21XL U722 ( .A0(n298), .A1(n299), .B0(n295), .Y(n296) );
  AOI2BB2X2 U723 ( .B0(n862), .B1(n269), .A0N(n218), .A1N(n270), .Y(n259) );
  OAI21XL U724 ( .A0(n255), .A1(n271), .B0(n268), .Y(n269) );
  OAI21XL U725 ( .A0(n285), .A1(n255), .B0(n282), .Y(n283) );
  OA21X2 U726 ( .A0(n218), .A1(n365), .B0(n366), .Y(n224) );
  OAI21XL U727 ( .A0(n226), .A1(n367), .B0(n862), .Y(n366) );
  OAI211X1 U728 ( .A0(n381), .A1(n382), .B0(n199), .C0(n383), .Y(n376) );
  AOI221XL U729 ( .A0(N898), .A1(n193), .B0(N899), .B1(n194), .C0(n387), .Y(
        n381) );
  OAI32X1 U730 ( .A0(n193), .A1(N898), .A2(n387), .B0(N897), .B1(n192), .Y(
        n382) );
  OAI2BB2XL U731 ( .B0(n536), .B1(n384), .A0N(n385), .A1N(N891), .Y(n383) );
  OAI22XL U732 ( .A0(n343), .A1(n197), .B0(n798), .B1(n344), .Y(n467) );
  OAI22XL U733 ( .A0(n343), .A1(n196), .B0(n567), .B1(n344), .Y(n466) );
  OAI22XL U734 ( .A0(n343), .A1(n198), .B0(n571), .B1(n344), .Y(n475) );
  OAI211X1 U735 ( .A0(n345), .A1(n192), .B0(n346), .C0(n347), .Y(n468) );
  NAND2X1 U736 ( .A(N909), .B(n345), .Y(n346) );
  OAI211X1 U737 ( .A0(n345), .A1(n194), .B0(n349), .C0(n347), .Y(n470) );
  NAND2X1 U738 ( .A(N911), .B(n345), .Y(n349) );
  OAI211X1 U739 ( .A0(n345), .A1(n193), .B0(n348), .C0(n347), .Y(n469) );
  NAND2X1 U740 ( .A(N910), .B(n345), .Y(n348) );
  BUFX16 U741 ( .A(N182), .Y(W[2]) );
  CLKBUFX3 U742 ( .A(\pat[0][1] ), .Y(n539) );
  CLKBUFX3 U743 ( .A(\pat[1][1] ), .Y(n549) );
  CLKBUFX3 U744 ( .A(\pat[5][1] ), .Y(n537) );
  CLKBUFX3 U745 ( .A(\pat[0][0] ), .Y(n538) );
  CLKBUFX3 U746 ( .A(\pat[3][1] ), .Y(n557) );
  CLKBUFX3 U747 ( .A(\pat[5][0] ), .Y(n551) );
  CLKBUFX3 U748 ( .A(\pat[2][1] ), .Y(n560) );
  CLKBUFX3 U749 ( .A(\pat[7][1] ), .Y(n555) );
  CLKBUFX3 U750 ( .A(\pat[6][1] ), .Y(n558) );
  CLKBUFX3 U751 ( .A(\pat[3][0] ), .Y(n556) );
  CLKBUFX3 U752 ( .A(\pat[2][0] ), .Y(n544) );
  CLKBUFX3 U753 ( .A(\pat[7][0] ), .Y(n554) );
  CLKBUFX3 U754 ( .A(\pat[6][0] ), .Y(n542) );
  CLKBUFX3 U755 ( .A(\pat[5][2] ), .Y(n552) );
  CLKBUFX3 U756 ( .A(\pat[0][2] ), .Y(n540) );
  CLKBUFX3 U757 ( .A(\pat[1][2] ), .Y(n550) );
  AO22X1 U758 ( .A0(cost[9]), .A1(n547), .B0(N335), .B1(n548), .Y(n433) );
  CLKBUFX3 U759 ( .A(\pat[7][2] ), .Y(n553) );
  CLKBUFX3 U760 ( .A(\pat[6][2] ), .Y(n559) );
  AO22X1 U761 ( .A0(cost[8]), .A1(n547), .B0(N334), .B1(n548), .Y(n434) );
  CLKBUFX3 U762 ( .A(\pat[3][2] ), .Y(n541) );
  CLKBUFX3 U763 ( .A(\pat[2][2] ), .Y(n543) );
  AO22X1 U764 ( .A0(cost[7]), .A1(n547), .B0(N333), .B1(n548), .Y(n435) );
  AO22X1 U765 ( .A0(cost[5]), .A1(n547), .B0(N331), .B1(n548), .Y(n437) );
  AO22X1 U766 ( .A0(cost[4]), .A1(n547), .B0(N330), .B1(n548), .Y(n438) );
  OAI2BB2XL U767 ( .B0(n388), .B1(n859), .A0N(\job_counter[3] ), .A1N(n389), 
        .Y(N318) );
  CLKINVX1 U768 ( .A(n367), .Y(n859) );
  OAI21XL U769 ( .A0(W[2]), .A1(n388), .B0(n390), .Y(n389) );
  OAI32X1 U770 ( .A0(n205), .A1(n206), .A2(n340), .B0(n863), .B1(n207), .Y(
        n391) );
  NAND4X1 U771 ( .A(current_state[0]), .B(n393), .C(n144), .D(n143), .Y(n392)
         );
  OAI21XL U772 ( .A0(n841), .A1(n394), .B0(n395), .Y(n393) );
  AO22X1 U773 ( .A0(cost[3]), .A1(n547), .B0(N329), .B1(n548), .Y(n439) );
  OAI32X1 U774 ( .A0(n388), .A1(n593), .A2(n298), .B0(n861), .B1(n390), .Y(
        N317) );
  NOR2BX1 U775 ( .AN(N897), .B(\replace_min[2] ), .Y(n387) );
  AO22X1 U776 ( .A0(cost[1]), .A1(n547), .B0(N327), .B1(n548), .Y(n442) );
  OAI22XL U777 ( .A0(n353), .A1(n190), .B0(n798), .B1(n354), .Y(n472) );
  OAI22XL U778 ( .A0(n353), .A1(n189), .B0(n567), .B1(n354), .Y(n471) );
  OAI22XL U779 ( .A0(n353), .A1(n191), .B0(n571), .B1(n354), .Y(n473) );
  AO22X1 U780 ( .A0(cost[0]), .A1(n547), .B0(N326), .B1(n548), .Y(n441) );
  NAND2BX1 U781 ( .AN(N876), .B(N879), .Y(n379) );
  CLKBUFX3 U782 ( .A(N894), .Y(n536) );
  OAI22XL U783 ( .A0(n609), .A1(n189), .B0(N185), .B1(n608), .Y(N894) );
  XOR2X1 U784 ( .A(n190), .B(n191), .Y(n415) );
  NAND2BX1 U785 ( .AN(N841), .B(N844), .Y(n361) );
  OA22X1 U786 ( .A0(n593), .A1(n705), .B0(N209), .B1(n704), .Y(n526) );
  CLKBUFX3 U787 ( .A(N896), .Y(n535) );
  OAI22XL U788 ( .A0(n189), .A1(n597), .B0(N185), .B1(n596), .Y(N896) );
  OAI211X1 U789 ( .A0(n189), .A1(n191), .B0(n258), .C0(n200), .Y(n370) );
  NAND2X1 U790 ( .A(n190), .B(n189), .Y(n201) );
  NAND2X1 U791 ( .A(n866), .B(n191), .Y(n200) );
  AOI221XL U792 ( .A0(n544), .A1(n847), .B0(n556), .B1(n843), .C0(n405), .Y(
        n404) );
  OAI22XL U793 ( .A0(n285), .A1(n186), .B0(n298), .B1(n183), .Y(n405) );
  CLKINVX1 U794 ( .A(N192), .Y(n661) );
  NAND2X1 U795 ( .A(N185), .B(N184), .Y(n258) );
  AOI221XL U796 ( .A0(n560), .A1(n847), .B0(n557), .B1(n843), .C0(n402), .Y(
        n400) );
  AOI222XL U797 ( .A0(n843), .A1(n555), .B0(n537), .B1(n844), .C0(n847), .C1(
        n558), .Y(n401) );
  OAI22XL U798 ( .A0(n285), .A1(n185), .B0(n298), .B1(n182), .Y(n402) );
  AOI221XL U799 ( .A0(n543), .A1(n847), .B0(n541), .B1(n843), .C0(n408), .Y(
        n406) );
  AOI222XL U800 ( .A0(n553), .A1(n843), .B0(n552), .B1(n844), .C0(n847), .C1(
        n559), .Y(n407) );
  OAI22XL U801 ( .A0(n285), .A1(n184), .B0(n298), .B1(n181), .Y(n408) );
  NAND2X1 U802 ( .A(n223), .B(n152), .Y(n339) );
  XOR2X1 U803 ( .A(n200), .B(n152), .Y(n369) );
  NOR2X1 U804 ( .A(n223), .B(\job_counter[3] ), .Y(n221) );
  NAND2X1 U805 ( .A(n357), .B(n152), .Y(n356) );
  NAND3X1 U806 ( .A(n411), .B(n412), .C(n413), .Y(n206) );
  XOR2X1 U807 ( .A(n861), .B(n866), .Y(n413) );
  XOR2X1 U808 ( .A(n860), .B(n414), .Y(n411) );
  NOR3X2 U809 ( .A(current_state[1]), .B(current_state[2]), .C(
        current_state[0]), .Y(n222) );
  XOR2X1 U810 ( .A(n152), .B(n201), .Y(n205) );
  NAND2X1 U811 ( .A(n861), .B(n152), .Y(n299) );
  NOR3X1 U812 ( .A(current_state[0]), .B(current_state[2]), .C(n144), .Y(n202)
         );
  NOR3X2 U813 ( .A(N193), .B(N194), .C(n198), .Y(n316) );
  NOR3X2 U814 ( .A(N192), .B(N193), .C(n196), .Y(n277) );
  NOR3X2 U815 ( .A(n198), .B(N194), .C(n197), .Y(n290) );
  NOR3X2 U816 ( .A(N192), .B(N194), .C(n197), .Y(n304) );
  NOR3X2 U817 ( .A(n198), .B(N193), .C(n196), .Y(n263) );
  NOR3X2 U818 ( .A(n197), .B(N192), .C(n196), .Y(n243) );
  NOR3X2 U819 ( .A(n197), .B(n198), .C(n196), .Y(n229) );
  NAND3X1 U820 ( .A(n197), .B(n196), .C(n198), .Y(n329) );
  AO22X1 U821 ( .A0(cost[2]), .A1(n547), .B0(N328), .B1(n548), .Y(n440) );
  INVX12 U822 ( .A(n860), .Y(W[1]) );
  INVX3 U823 ( .A(N181), .Y(n860) );
  NOR2BX1 U824 ( .AN(N694), .B(n846), .Y(n869) );
  NOR2X1 U825 ( .A(N208), .B(n747), .Y(n587) );
  NOR2X1 U826 ( .A(N208), .B(n572), .Y(n586) );
  NOR2X1 U827 ( .A(n572), .B(N181), .Y(n584) );
  AO22X1 U828 ( .A0(n551), .A1(n584), .B0(\pat[4][0] ), .B1(n506), .Y(n574) );
  AOI221XL U829 ( .A0(n542), .A1(n587), .B0(n554), .B1(n586), .C0(n574), .Y(
        n577) );
  AO22X1 U830 ( .A0(\pat[1][0] ), .A1(n584), .B0(n538), .B1(n506), .Y(n575) );
  AOI221XL U831 ( .A0(n544), .A1(n587), .B0(n556), .B1(n586), .C0(n575), .Y(
        n576) );
  AO22X1 U832 ( .A0(n537), .A1(n584), .B0(n478), .B1(n506), .Y(n578) );
  AOI221XL U833 ( .A0(n558), .A1(n587), .B0(n555), .B1(n586), .C0(n578), .Y(
        n581) );
  AO22X1 U834 ( .A0(n549), .A1(n584), .B0(n539), .B1(n506), .Y(n579) );
  AOI221XL U835 ( .A0(n560), .A1(n587), .B0(n557), .B1(n586), .C0(n579), .Y(
        n580) );
  AO22X1 U836 ( .A0(n552), .A1(n584), .B0(\pat[4][2] ), .B1(n506), .Y(n582) );
  AOI221XL U837 ( .A0(n559), .A1(n587), .B0(n553), .B1(n586), .C0(n582), .Y(
        n589) );
  AO22X1 U838 ( .A0(n550), .A1(n584), .B0(n540), .B1(n506), .Y(n585) );
  AOI221XL U839 ( .A0(n543), .A1(n587), .B0(n541), .B1(n586), .C0(n585), .Y(
        n588) );
  NOR2X1 U840 ( .A(n190), .B(N183), .Y(n607) );
  NOR2X1 U841 ( .A(n190), .B(n610), .Y(n606) );
  NOR2X1 U842 ( .A(n610), .B(N184), .Y(n604) );
  NOR2X1 U843 ( .A(N183), .B(N184), .Y(n603) );
  AOI221XL U844 ( .A0(n542), .A1(n607), .B0(n554), .B1(n606), .C0(n594), .Y(
        n597) );
  AOI221XL U845 ( .A0(n544), .A1(n607), .B0(n556), .B1(n606), .C0(n595), .Y(
        n596) );
  AO22X1 U846 ( .A0(n537), .A1(n604), .B0(n478), .B1(n603), .Y(n598) );
  AOI221XL U847 ( .A0(n558), .A1(n607), .B0(n555), .B1(n606), .C0(n598), .Y(
        n601) );
  AO22X1 U848 ( .A0(n549), .A1(n604), .B0(n539), .B1(n603), .Y(n599) );
  AOI221XL U849 ( .A0(n560), .A1(n607), .B0(n557), .B1(n606), .C0(n599), .Y(
        n600) );
  AOI221XL U850 ( .A0(n559), .A1(n607), .B0(n553), .B1(n606), .C0(n602), .Y(
        n609) );
  AOI221XL U851 ( .A0(n543), .A1(n607), .B0(n541), .B1(n606), .C0(n605), .Y(
        n608) );
  NOR2X1 U852 ( .A(n627), .B(W[0]), .Y(n624) );
  NOR2X1 U853 ( .A(n627), .B(n572), .Y(n623) );
  NOR2X1 U854 ( .A(n572), .B(n545), .Y(n621) );
  NOR2X1 U855 ( .A(W[0]), .B(n545), .Y(n620) );
  AO22X1 U856 ( .A0(n551), .A1(n621), .B0(\pat[4][0] ), .B1(n620), .Y(n611) );
  AOI221XL U857 ( .A0(n542), .A1(n624), .B0(n554), .B1(n623), .C0(n611), .Y(
        n614) );
  AO22X1 U858 ( .A0(\pat[1][0] ), .A1(n621), .B0(n538), .B1(n620), .Y(n612) );
  AOI221XL U859 ( .A0(n544), .A1(n624), .B0(n556), .B1(n623), .C0(n612), .Y(
        n613) );
  OAI22XL U860 ( .A0(n567), .A1(n614), .B0(n568), .B1(n613), .Y(N395) );
  AO22X1 U861 ( .A0(n537), .A1(n621), .B0(n478), .B1(n620), .Y(n615) );
  AOI221XL U862 ( .A0(n558), .A1(n624), .B0(n555), .B1(n623), .C0(n615), .Y(
        n618) );
  AO22X1 U863 ( .A0(n549), .A1(n621), .B0(n539), .B1(n620), .Y(n616) );
  AOI221XL U864 ( .A0(n560), .A1(n624), .B0(n557), .B1(n623), .C0(n616), .Y(
        n617) );
  OAI22XL U865 ( .A0(n567), .A1(n618), .B0(n568), .B1(n617), .Y(N394) );
  AO22X1 U866 ( .A0(n552), .A1(n621), .B0(\pat[4][2] ), .B1(n620), .Y(n619) );
  AOI221XL U867 ( .A0(n559), .A1(n624), .B0(n553), .B1(n623), .C0(n619), .Y(
        n626) );
  AO22X1 U868 ( .A0(n550), .A1(n621), .B0(n540), .B1(n620), .Y(n622) );
  AOI221XL U869 ( .A0(n543), .A1(n624), .B0(n541), .B1(n623), .C0(n622), .Y(
        n625) );
  OAI22XL U870 ( .A0(n626), .A1(n567), .B0(n568), .B1(n625), .Y(N393) );
  NOR2X1 U871 ( .A(n644), .B(W[0]), .Y(n641) );
  NOR2X1 U872 ( .A(n644), .B(n572), .Y(n640) );
  NOR2X1 U873 ( .A(n572), .B(n545), .Y(n638) );
  NOR2X1 U874 ( .A(W[0]), .B(n545), .Y(n637) );
  AO22X1 U875 ( .A0(n551), .A1(n638), .B0(\pat[4][0] ), .B1(n637), .Y(n628) );
  AOI221XL U876 ( .A0(n542), .A1(n641), .B0(n554), .B1(n640), .C0(n628), .Y(
        n631) );
  AO22X1 U877 ( .A0(\pat[1][0] ), .A1(n638), .B0(n538), .B1(n637), .Y(n629) );
  AOI221XL U878 ( .A0(n544), .A1(n641), .B0(n556), .B1(n640), .C0(n629), .Y(
        n630) );
  OAI22XL U879 ( .A0(n566), .A1(n631), .B0(n568), .B1(n630), .Y(N404) );
  AO22X1 U880 ( .A0(n537), .A1(n638), .B0(n478), .B1(n637), .Y(n632) );
  AOI221XL U881 ( .A0(n558), .A1(n641), .B0(n555), .B1(n640), .C0(n632), .Y(
        n635) );
  AO22X1 U882 ( .A0(n549), .A1(n638), .B0(n539), .B1(n637), .Y(n633) );
  AOI221XL U883 ( .A0(n560), .A1(n641), .B0(n557), .B1(n640), .C0(n633), .Y(
        n634) );
  OAI22XL U884 ( .A0(n567), .A1(n635), .B0(n568), .B1(n634), .Y(N403) );
  AO22X1 U885 ( .A0(n552), .A1(n638), .B0(\pat[4][2] ), .B1(n637), .Y(n636) );
  AOI221XL U886 ( .A0(n559), .A1(n641), .B0(n553), .B1(n640), .C0(n636), .Y(
        n643) );
  AO22X1 U887 ( .A0(n550), .A1(n638), .B0(n540), .B1(n637), .Y(n639) );
  AOI221XL U888 ( .A0(n543), .A1(n641), .B0(n541), .B1(n640), .C0(n639), .Y(
        n642) );
  OAI22XL U889 ( .A0(n643), .A1(n567), .B0(n568), .B1(n642), .Y(N402) );
  NOR2X1 U890 ( .A(n197), .B(N192), .Y(n658) );
  NOR2X1 U891 ( .A(n197), .B(n661), .Y(n657) );
  NOR2X1 U892 ( .A(n661), .B(N193), .Y(n655) );
  NOR2X1 U893 ( .A(N192), .B(N193), .Y(n654) );
  AO22X1 U894 ( .A0(n551), .A1(n655), .B0(\pat[4][0] ), .B1(n654), .Y(n645) );
  AOI221XL U895 ( .A0(n542), .A1(n658), .B0(n554), .B1(n657), .C0(n645), .Y(
        n648) );
  AO22X1 U896 ( .A0(\pat[1][0] ), .A1(n655), .B0(n538), .B1(n654), .Y(n646) );
  AOI221XL U897 ( .A0(n544), .A1(n658), .B0(n556), .B1(n657), .C0(n646), .Y(
        n647) );
  OAI22XL U898 ( .A0(n196), .A1(n648), .B0(N194), .B1(n647), .Y(N495) );
  AO22X1 U899 ( .A0(n537), .A1(n655), .B0(n478), .B1(n654), .Y(n649) );
  AOI221XL U900 ( .A0(n558), .A1(n658), .B0(n555), .B1(n657), .C0(n649), .Y(
        n652) );
  AO22X1 U901 ( .A0(n549), .A1(n655), .B0(n539), .B1(n654), .Y(n650) );
  AOI221XL U902 ( .A0(n560), .A1(n658), .B0(n557), .B1(n657), .C0(n650), .Y(
        n651) );
  OAI22XL U903 ( .A0(n196), .A1(n652), .B0(N194), .B1(n651), .Y(N494) );
  AO22X1 U904 ( .A0(n552), .A1(n655), .B0(\pat[4][2] ), .B1(n654), .Y(n653) );
  AOI221XL U905 ( .A0(n559), .A1(n658), .B0(n553), .B1(n657), .C0(n653), .Y(
        n660) );
  AO22X1 U906 ( .A0(n550), .A1(n655), .B0(n540), .B1(n654), .Y(n656) );
  AOI221XL U907 ( .A0(n543), .A1(n658), .B0(n541), .B1(n657), .C0(n656), .Y(
        n659) );
  OAI22XL U908 ( .A0(n660), .A1(n196), .B0(N194), .B1(n659), .Y(N493) );
  NOR2X1 U909 ( .A(n678), .B(N195), .Y(n675) );
  NOR2X1 U910 ( .A(n678), .B(n679), .Y(n674) );
  NOR2X1 U911 ( .A(n679), .B(N196), .Y(n672) );
  NOR2X1 U912 ( .A(N195), .B(N196), .Y(n671) );
  AO22X1 U913 ( .A0(n551), .A1(n672), .B0(\pat[4][0] ), .B1(n671), .Y(n662) );
  AOI221XL U914 ( .A0(n542), .A1(n675), .B0(n554), .B1(n674), .C0(n662), .Y(
        n665) );
  AO22X1 U915 ( .A0(\pat[1][0] ), .A1(n672), .B0(n538), .B1(n671), .Y(n663) );
  AOI221XL U916 ( .A0(n544), .A1(n675), .B0(n556), .B1(n674), .C0(n663), .Y(
        n664) );
  OAI22XL U917 ( .A0(n680), .A1(n665), .B0(N197), .B1(n664), .Y(N676) );
  AO22X1 U918 ( .A0(n537), .A1(n672), .B0(n478), .B1(n671), .Y(n666) );
  AOI221XL U919 ( .A0(n558), .A1(n675), .B0(n555), .B1(n674), .C0(n666), .Y(
        n669) );
  AO22X1 U920 ( .A0(n549), .A1(n672), .B0(n539), .B1(n671), .Y(n667) );
  AOI221XL U921 ( .A0(n560), .A1(n675), .B0(n557), .B1(n674), .C0(n667), .Y(
        n668) );
  OAI22XL U922 ( .A0(n680), .A1(n669), .B0(N197), .B1(n668), .Y(N675) );
  AO22X1 U923 ( .A0(n552), .A1(n672), .B0(\pat[4][2] ), .B1(n671), .Y(n670) );
  AOI221XL U924 ( .A0(n559), .A1(n675), .B0(n553), .B1(n674), .C0(n670), .Y(
        n677) );
  AO22X1 U925 ( .A0(n550), .A1(n672), .B0(n540), .B1(n671), .Y(n673) );
  AOI221XL U926 ( .A0(n543), .A1(n675), .B0(n541), .B1(n674), .C0(n673), .Y(
        n676) );
  OAI22XL U927 ( .A0(n677), .A1(n680), .B0(N197), .B1(n676), .Y(N674) );
  NOR2X1 U928 ( .A(n697), .B(W[0]), .Y(n694) );
  NOR2X1 U929 ( .A(n697), .B(n572), .Y(n693) );
  NOR2X1 U930 ( .A(n572), .B(n545), .Y(n691) );
  NOR2X1 U931 ( .A(W[0]), .B(n545), .Y(n690) );
  AO22X1 U932 ( .A0(n551), .A1(n691), .B0(\pat[4][0] ), .B1(n690), .Y(n681) );
  AOI221XL U933 ( .A0(n542), .A1(n694), .B0(n554), .B1(n693), .C0(n681), .Y(
        n684) );
  AO22X1 U934 ( .A0(\pat[1][0] ), .A1(n691), .B0(n538), .B1(n690), .Y(n682) );
  AOI221XL U935 ( .A0(n544), .A1(n694), .B0(n556), .B1(n693), .C0(n682), .Y(
        n683) );
  OAI22XL U936 ( .A0(n567), .A1(n684), .B0(n569), .B1(n683), .Y(N841) );
  AO22X1 U937 ( .A0(n537), .A1(n691), .B0(n478), .B1(n690), .Y(n685) );
  AOI221XL U938 ( .A0(n558), .A1(n694), .B0(n555), .B1(n693), .C0(n685), .Y(
        n688) );
  AO22X1 U939 ( .A0(n549), .A1(n691), .B0(n539), .B1(n690), .Y(n686) );
  AOI221XL U940 ( .A0(n560), .A1(n694), .B0(n557), .B1(n693), .C0(n686), .Y(
        n687) );
  OAI22XL U941 ( .A0(n566), .A1(n688), .B0(n569), .B1(n687), .Y(N840) );
  AO22X1 U942 ( .A0(n552), .A1(n691), .B0(\pat[4][2] ), .B1(n690), .Y(n689) );
  AOI221XL U943 ( .A0(n559), .A1(n694), .B0(n553), .B1(n693), .C0(n689), .Y(
        n696) );
  AO22X1 U944 ( .A0(n550), .A1(n691), .B0(n540), .B1(n690), .Y(n692) );
  AOI221XL U945 ( .A0(n543), .A1(n694), .B0(n541), .B1(n693), .C0(n692), .Y(
        n695) );
  NOR2X1 U946 ( .A(n591), .B(n573), .Y(n711) );
  NOR2X1 U947 ( .A(n591), .B(n747), .Y(n710) );
  NOR2X1 U948 ( .A(n747), .B(n860), .Y(n708) );
  NOR2X1 U949 ( .A(n573), .B(n860), .Y(n707) );
  AO22X1 U950 ( .A0(n551), .A1(n708), .B0(\pat[4][0] ), .B1(n707), .Y(n698) );
  AOI221XL U951 ( .A0(n542), .A1(n711), .B0(n554), .B1(n710), .C0(n698), .Y(
        n701) );
  AO22X1 U952 ( .A0(\pat[1][0] ), .A1(n708), .B0(n538), .B1(n707), .Y(n699) );
  AOI221XL U953 ( .A0(n544), .A1(n711), .B0(n556), .B1(n710), .C0(n699), .Y(
        n700) );
  OAI22XL U954 ( .A0(n592), .A1(n701), .B0(N209), .B1(n700), .Y(N844) );
  AO22X1 U955 ( .A0(n537), .A1(n708), .B0(n478), .B1(n707), .Y(n702) );
  AOI221XL U956 ( .A0(n558), .A1(n711), .B0(n555), .B1(n710), .C0(n702), .Y(
        n705) );
  AO22X1 U957 ( .A0(n549), .A1(n708), .B0(n539), .B1(n707), .Y(n703) );
  AOI221XL U958 ( .A0(n560), .A1(n711), .B0(n557), .B1(n710), .C0(n703), .Y(
        n704) );
  AO22X1 U959 ( .A0(n552), .A1(n708), .B0(\pat[4][2] ), .B1(n707), .Y(n706) );
  AOI221XL U960 ( .A0(n559), .A1(n711), .B0(n553), .B1(n710), .C0(n706), .Y(
        n713) );
  AO22X1 U961 ( .A0(n550), .A1(n708), .B0(n540), .B1(n707), .Y(n709) );
  AOI221XL U962 ( .A0(n543), .A1(n711), .B0(n541), .B1(n710), .C0(n709), .Y(
        n712) );
  OAI22XL U963 ( .A0(n713), .A1(n592), .B0(N209), .B1(n712), .Y(N842) );
  NOR2X1 U964 ( .A(n730), .B(W[0]), .Y(n727) );
  NOR2X1 U965 ( .A(n730), .B(n572), .Y(n726) );
  NOR2X1 U966 ( .A(n572), .B(n545), .Y(n724) );
  NOR2X1 U967 ( .A(W[0]), .B(n545), .Y(n723) );
  AO22X1 U968 ( .A0(n551), .A1(n724), .B0(\pat[4][0] ), .B1(n723), .Y(n714) );
  AOI221XL U969 ( .A0(n542), .A1(n727), .B0(n554), .B1(n726), .C0(n714), .Y(
        n717) );
  AO22X1 U970 ( .A0(\pat[1][0] ), .A1(n724), .B0(n538), .B1(n723), .Y(n715) );
  AOI221XL U971 ( .A0(n544), .A1(n727), .B0(n556), .B1(n726), .C0(n715), .Y(
        n716) );
  OAI22XL U972 ( .A0(n567), .A1(n717), .B0(n569), .B1(n716), .Y(N876) );
  AO22X1 U973 ( .A0(n537), .A1(n724), .B0(n478), .B1(n723), .Y(n718) );
  AOI221XL U974 ( .A0(n558), .A1(n727), .B0(n555), .B1(n726), .C0(n718), .Y(
        n721) );
  AO22X1 U975 ( .A0(n549), .A1(n724), .B0(n539), .B1(n723), .Y(n719) );
  AOI221XL U976 ( .A0(n560), .A1(n727), .B0(n557), .B1(n726), .C0(n719), .Y(
        n720) );
  OAI22XL U977 ( .A0(n567), .A1(n721), .B0(n569), .B1(n720), .Y(N875) );
  AO22X1 U978 ( .A0(n552), .A1(n724), .B0(\pat[4][2] ), .B1(n723), .Y(n722) );
  AOI221XL U979 ( .A0(n559), .A1(n727), .B0(n553), .B1(n726), .C0(n722), .Y(
        n729) );
  AO22X1 U980 ( .A0(n550), .A1(n724), .B0(n540), .B1(n723), .Y(n725) );
  AOI221XL U981 ( .A0(n543), .A1(n727), .B0(n541), .B1(n726), .C0(n725), .Y(
        n728) );
  NOR2X1 U982 ( .A(n591), .B(n573), .Y(n744) );
  NOR2X1 U983 ( .A(n591), .B(n747), .Y(n743) );
  NOR2X1 U984 ( .A(n747), .B(n860), .Y(n741) );
  NOR2X1 U985 ( .A(n573), .B(n860), .Y(n740) );
  AO22X1 U986 ( .A0(n551), .A1(n741), .B0(\pat[4][0] ), .B1(n740), .Y(n731) );
  AOI221XL U987 ( .A0(n542), .A1(n744), .B0(n554), .B1(n743), .C0(n731), .Y(
        n734) );
  AO22X1 U988 ( .A0(\pat[1][0] ), .A1(n741), .B0(n538), .B1(n740), .Y(n732) );
  AOI221XL U989 ( .A0(n544), .A1(n744), .B0(n556), .B1(n743), .C0(n732), .Y(
        n733) );
  OAI22XL U990 ( .A0(n592), .A1(n734), .B0(N209), .B1(n733), .Y(N879) );
  AO22X1 U991 ( .A0(n537), .A1(n741), .B0(n478), .B1(n740), .Y(n735) );
  AOI221XL U992 ( .A0(n558), .A1(n744), .B0(n555), .B1(n743), .C0(n735), .Y(
        n738) );
  AO22X1 U993 ( .A0(n549), .A1(n741), .B0(n539), .B1(n740), .Y(n736) );
  AOI221XL U994 ( .A0(n560), .A1(n744), .B0(n557), .B1(n743), .C0(n736), .Y(
        n737) );
  AO22X1 U995 ( .A0(n552), .A1(n741), .B0(\pat[4][2] ), .B1(n740), .Y(n739) );
  AOI221XL U996 ( .A0(n559), .A1(n744), .B0(n553), .B1(n743), .C0(n739), .Y(
        n746) );
  AO22X1 U997 ( .A0(n550), .A1(n741), .B0(n540), .B1(n740), .Y(n742) );
  AOI221XL U998 ( .A0(n543), .A1(n744), .B0(n541), .B1(n743), .C0(n742), .Y(
        n745) );
  OAI22XL U999 ( .A0(n746), .A1(n593), .B0(N209), .B1(n745), .Y(N877) );
  NOR2X1 U1000 ( .A(n764), .B(W[0]), .Y(n761) );
  NOR2X1 U1001 ( .A(n764), .B(n572), .Y(n760) );
  NOR2X1 U1002 ( .A(n572), .B(n545), .Y(n758) );
  NOR2X1 U1003 ( .A(W[0]), .B(n545), .Y(n757) );
  AO22X1 U1004 ( .A0(n551), .A1(n758), .B0(\pat[4][0] ), .B1(n757), .Y(n748)
         );
  AOI221XL U1005 ( .A0(n542), .A1(n761), .B0(n554), .B1(n760), .C0(n748), .Y(
        n751) );
  AO22X1 U1006 ( .A0(\pat[1][0] ), .A1(n758), .B0(n538), .B1(n757), .Y(n749)
         );
  AOI221XL U1007 ( .A0(n544), .A1(n761), .B0(n556), .B1(n760), .C0(n749), .Y(
        n750) );
  OAI22XL U1008 ( .A0(n567), .A1(n751), .B0(n569), .B1(n750), .Y(N893) );
  AO22X1 U1009 ( .A0(n537), .A1(n758), .B0(n478), .B1(n757), .Y(n752) );
  AOI221XL U1010 ( .A0(n558), .A1(n761), .B0(n555), .B1(n760), .C0(n752), .Y(
        n755) );
  AO22X1 U1011 ( .A0(n549), .A1(n758), .B0(n539), .B1(n757), .Y(n753) );
  AOI221XL U1012 ( .A0(n560), .A1(n761), .B0(n557), .B1(n760), .C0(n753), .Y(
        n754) );
  OAI22XL U1013 ( .A0(n567), .A1(n755), .B0(n569), .B1(n754), .Y(N892) );
  AO22X1 U1014 ( .A0(n552), .A1(n758), .B0(\pat[4][2] ), .B1(n757), .Y(n756)
         );
  AOI221XL U1015 ( .A0(n559), .A1(n761), .B0(n553), .B1(n760), .C0(n756), .Y(
        n763) );
  AO22X1 U1016 ( .A0(n550), .A1(n758), .B0(n540), .B1(n757), .Y(n759) );
  AOI221XL U1017 ( .A0(n543), .A1(n761), .B0(n541), .B1(n760), .C0(n759), .Y(
        n762) );
  OAI22XL U1018 ( .A0(n763), .A1(n567), .B0(n569), .B1(n762), .Y(N891) );
  NOR2X1 U1019 ( .A(n781), .B(W[0]), .Y(n778) );
  NOR2X1 U1020 ( .A(n781), .B(n572), .Y(n777) );
  NOR2X1 U1021 ( .A(n572), .B(n545), .Y(n775) );
  NOR2X1 U1022 ( .A(W[0]), .B(n545), .Y(n774) );
  AO22X1 U1023 ( .A0(n551), .A1(n775), .B0(\pat[4][0] ), .B1(n774), .Y(n765)
         );
  AOI221XL U1024 ( .A0(n542), .A1(n778), .B0(n554), .B1(n777), .C0(n765), .Y(
        n768) );
  AO22X1 U1025 ( .A0(\pat[1][0] ), .A1(n775), .B0(n538), .B1(n774), .Y(n766)
         );
  AOI221XL U1026 ( .A0(n544), .A1(n778), .B0(n556), .B1(n777), .C0(n766), .Y(
        n767) );
  OAI22XL U1027 ( .A0(n567), .A1(n768), .B0(n569), .B1(n767), .Y(N899) );
  AO22X1 U1028 ( .A0(n537), .A1(n775), .B0(n478), .B1(n774), .Y(n769) );
  AOI221XL U1029 ( .A0(n558), .A1(n778), .B0(n555), .B1(n777), .C0(n769), .Y(
        n772) );
  AO22X1 U1030 ( .A0(n549), .A1(n775), .B0(n539), .B1(n774), .Y(n770) );
  AOI221XL U1031 ( .A0(n560), .A1(n778), .B0(n557), .B1(n777), .C0(n770), .Y(
        n771) );
  OAI22XL U1032 ( .A0(n567), .A1(n772), .B0(n569), .B1(n771), .Y(N898) );
  AO22X1 U1033 ( .A0(n552), .A1(n775), .B0(\pat[4][2] ), .B1(n774), .Y(n773)
         );
  AOI221XL U1034 ( .A0(n559), .A1(n778), .B0(n553), .B1(n777), .C0(n773), .Y(
        n780) );
  AO22X1 U1035 ( .A0(n550), .A1(n775), .B0(n540), .B1(n774), .Y(n776) );
  AOI221XL U1036 ( .A0(n543), .A1(n778), .B0(n541), .B1(n777), .C0(n776), .Y(
        n779) );
  OAI22XL U1037 ( .A0(n780), .A1(n567), .B0(n569), .B1(n779), .Y(N897) );
  NOR2X1 U1038 ( .A(n798), .B(W[0]), .Y(n795) );
  NOR2X1 U1039 ( .A(n798), .B(n572), .Y(n794) );
  NOR2X1 U1040 ( .A(n572), .B(n545), .Y(n792) );
  NOR2X1 U1041 ( .A(W[0]), .B(n545), .Y(n791) );
  AO22X1 U1042 ( .A0(n551), .A1(n792), .B0(\pat[4][0] ), .B1(n791), .Y(n782)
         );
  AOI221XL U1043 ( .A0(n542), .A1(n795), .B0(n554), .B1(n794), .C0(n782), .Y(
        n785) );
  AO22X1 U1044 ( .A0(\pat[1][0] ), .A1(n792), .B0(n538), .B1(n791), .Y(n783)
         );
  AOI221XL U1045 ( .A0(n544), .A1(n795), .B0(n556), .B1(n794), .C0(n783), .Y(
        n784) );
  OAI22XL U1046 ( .A0(n567), .A1(n785), .B0(n569), .B1(n784), .Y(N911) );
  AO22X1 U1047 ( .A0(n537), .A1(n792), .B0(n478), .B1(n791), .Y(n786) );
  AOI221XL U1048 ( .A0(n558), .A1(n795), .B0(n555), .B1(n794), .C0(n786), .Y(
        n789) );
  AO22X1 U1049 ( .A0(n549), .A1(n792), .B0(n539), .B1(n791), .Y(n787) );
  AOI221XL U1050 ( .A0(n560), .A1(n795), .B0(n557), .B1(n794), .C0(n787), .Y(
        n788) );
  OAI22XL U1051 ( .A0(n567), .A1(n789), .B0(n569), .B1(n788), .Y(N910) );
  AO22X1 U1052 ( .A0(n552), .A1(n792), .B0(\pat[4][2] ), .B1(n791), .Y(n790)
         );
  AOI221XL U1053 ( .A0(n559), .A1(n795), .B0(n553), .B1(n794), .C0(n790), .Y(
        n797) );
  AO22X1 U1054 ( .A0(n550), .A1(n792), .B0(n540), .B1(n791), .Y(n793) );
  AOI221XL U1055 ( .A0(n543), .A1(n795), .B0(n541), .B1(n794), .C0(n793), .Y(
        n796) );
  OAI22XL U1056 ( .A0(n797), .A1(n567), .B0(n569), .B1(n796), .Y(N909) );
  OAI22XL U1057 ( .A0(N327), .A1(n799), .B0(n799), .B1(n485), .Y(n801) );
endmodule

