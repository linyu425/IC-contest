/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03
// Date      : Tue Mar 26 23:32:44 2024
/////////////////////////////////////////////////////////////


module DT ( clk, reset, done, sti_rd, sti_addr, sti_di, res_wr, res_rd, 
        res_addr, res_do, res_di );
  output [9:0] sti_addr;
  input [15:0] sti_di;
  output [13:0] res_addr;
  output [7:0] res_do;
  input [7:0] res_di;
  input clk, reset;
  output done, sti_rd, res_wr, res_rd;
  wire   fwd_done, N139, N140, N141, N142, N143, N144, N145, N146, N699, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, \C1/DATA1_6 , \C1/DATA1_5 , \C1/DATA1_4 , \C1/DATA1_3 ,
         \C1/DATA1_2 , \C1/DATA1_1 , \DP_OP_41J1_122_3547/n9 ,
         \DP_OP_41J1_122_3547/n8 , \DP_OP_41J1_122_3547/n7 ,
         \DP_OP_41J1_122_3547/n6 , \DP_OP_41J1_122_3547/n5 ,
         \DP_OP_41J1_122_3547/n4 , \DP_OP_41J1_122_3547/n3 ,
         \DP_OP_41J1_122_3547/n2 , \DP_OP_154_135_757/n6 ,
         \DP_OP_154_135_757/n5 , \DP_OP_154_135_757/n4 ,
         \DP_OP_154_135_757/n3 , \DP_OP_154_135_757/n2 ,
         \DP_OP_154_135_757/n1 , n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380, n381, n382, n383,
         n384, n385, n386, n387, n388, n389, n390, n391, n392, n393, n394,
         n395, n396, n397, n398, n399, n400, n401, n402, n403, n404, n405,
         n406, n407, n408, n409, n410, n411, n412, n413, n414, n415, n416,
         n417, n418, n419, n420, n421, n422, n423, n424, n425, n426, n427,
         n428, n429, n430, n431, n432, n433, n434, n435, n436, n437, n438,
         n439, n440, n441, n442, n443, n444, n445, n446, n447, n448, n449,
         n450, n451, n452, n453, n454, n455, n456, n457, n458, n459, n460,
         n461, n462, n463, n464, n465, n466, n467, n468, n469, n470, n471,
         n472, n473, n474, n475, n476, n477, n478, n479, n480, n481, n482,
         n483, n484, n485, n486, n487, n488, n489, n490, n491, n492, n493,
         n494, n495, n496, n497, n498, n499, n500, n501, n502, n503, n504,
         n505, n506, n507, n508, n509, n510, n511, n512, n513, n514, n515,
         n516, n517, n518, n519, n520, n521, n522, n523, n524, n525, n526,
         n527, n528, n529, n530, n531, n532, n533, n534, n535, n536, n537,
         n538, n539, n540, n541, n542, n543, n544, n545, n546, n547, n548,
         n549, n550, n551, n552, n553, n554, n555, n556, n557, n558, n559,
         n560, n561, n562, n563, n564, n565, n566, n567, n568, n569, n570,
         n571, n572, n573, n574, n575, n576, n577, n578, n579, n580, n581,
         n582, n583, n584, n585, n586, n587, n588, n589, n590, n591, n592,
         n593, n594, n595, n596, n597, n598, n599, n600, n601, n602, n603,
         n604, n605, n606, n607, n608, n609, n610, n611, n612, n613, n614,
         n615, n616, n617, n618, n619, n620, n621, n622, n623, n624, n625,
         n626, n627, n628, n629, n630, n631, n632, n633, n634, n635, n636,
         n637, n638, n639, n640, n641, n642, n643, n644, n645, n646, n647,
         n648, n649, n650, n651, n652, n653, n654, n655, n656, n657, n658,
         n659, n660, n661, n662, n663, n664, n665, n666, n667, n668, n669,
         n670, n671, n672, n673, n674, n675, n676, n677, n678, n679, n680,
         n681, n682, n683, n684, n685, n686, n687, n688, n689, n690, n691,
         n692, n693, n694, n695, n696, n697, n698, n699, n700, n701, n702,
         n703, n704, n705, n706, n707, n708, n709, n710, n711, n712, n713,
         n714, n715, n716, n717, n718, n719, n720, n721, n722, n723, n724,
         n725, n726, n727, n728, n729, n730, n731, n732, n733, n734, n735,
         n736, n737, n738, n739, n740, n741, n742, n743, n744, n745, n746,
         n747, n748, n749, n750, n751, n752, n753, n754, n755, n756, n757,
         n758, n759, n760, n761, n762, n763, n764, n765, n766, n767, n768,
         n769, n770, n771, n772, n773, n774, n775, n776, n777, n778, n779,
         n780, n781, n782, n783, n784, n785, n786, n787, n788, n789, n790,
         n791, n792, n793, n794, n795, n796, n797, n798, n799, n800, n801,
         n802, n803, n804, n805, n806, n807, n808, n809, n810, n811, n812,
         n813, n814, n815, n816, n817, n818, n819, n820, n821, n822, n823,
         n824, n825, n826, n827, n828, n829, n830, n831, n832, n833, n834,
         n835, n836, n837, n838, n839, n840, n841, n842, n843, n844, n845,
         n846, n847, n848, n849, n850, n851, n852, n853, n854, n855, n856,
         n857, n858, n859, n860, n861, n862, n863, n864, n865, n866, n867,
         n868, n869, n870, n871, n872, n873, n874, n875, n876, n877, n878,
         n879, n880, n881, n882, n883, n884, n885, n886, n887, n888, n889,
         n890, n891, n892;
  wire   [2:0] cur_state;
  wire   [6:0] counter_x;
  wire   [0:15] bin;
  wire   [6:0] counter_y;
  wire   [6:0] counter;
  wire   [2:0] next_state;
  wire   [7:0] min;
  assign done = N699;

  DFFRX1 \counter_reg[6]  ( .D(n285), .CK(clk), .RN(n891), .Q(counter[6]) );
  DFFRX1 \counter_reg[1]  ( .D(n291), .CK(clk), .RN(n891), .Q(counter[1]), 
        .QN(n840) );
  DFFRX1 \counter_reg[0]  ( .D(n290), .CK(clk), .RN(n890), .Q(counter[0]), 
        .QN(n851) );
  DFFRX1 \bin_reg[15]  ( .D(n251), .CK(clk), .RN(n890), .Q(bin[15]) );
  DFFRX1 \bin_reg[0]  ( .D(n250), .CK(clk), .RN(n890), .Q(bin[0]) );
  DFFRX1 \bin_reg[1]  ( .D(n249), .CK(clk), .RN(n890), .Q(bin[1]) );
  DFFRX1 \bin_reg[2]  ( .D(n248), .CK(clk), .RN(n890), .Q(bin[2]) );
  DFFRX1 \bin_reg[3]  ( .D(n247), .CK(clk), .RN(n890), .Q(bin[3]) );
  DFFRX1 \bin_reg[4]  ( .D(n246), .CK(clk), .RN(n890), .Q(bin[4]) );
  DFFRX1 \bin_reg[5]  ( .D(n245), .CK(clk), .RN(n890), .Q(bin[5]) );
  DFFRX1 \bin_reg[6]  ( .D(n244), .CK(clk), .RN(n890), .Q(bin[6]) );
  DFFRX1 \bin_reg[7]  ( .D(n243), .CK(clk), .RN(n890), .Q(bin[7]) );
  DFFRX1 \bin_reg[8]  ( .D(n242), .CK(clk), .RN(n890), .Q(bin[8]) );
  DFFRX1 \bin_reg[9]  ( .D(n241), .CK(clk), .RN(n889), .Q(bin[9]) );
  DFFRX1 \bin_reg[10]  ( .D(n240), .CK(clk), .RN(n890), .Q(bin[10]) );
  DFFRX1 \bin_reg[11]  ( .D(n239), .CK(clk), .RN(n890), .Q(bin[11]) );
  DFFRX1 \bin_reg[12]  ( .D(n238), .CK(clk), .RN(n890), .Q(bin[12]) );
  DFFRX1 \bin_reg[13]  ( .D(n237), .CK(clk), .RN(n890), .Q(bin[13]) );
  DFFRX1 \bin_reg[14]  ( .D(n236), .CK(clk), .RN(n890), .Q(bin[14]) );
  DFFRX1 \counter_y_reg[6]  ( .D(n226), .CK(clk), .RN(n890), .Q(counter_y[6]), 
        .QN(n849) );
  DFFRX1 \counter_y_reg[5]  ( .D(n227), .CK(clk), .RN(n890), .Q(counter_y[5]), 
        .QN(n847) );
  DFFRX1 \counter_x_reg[1]  ( .D(n282), .CK(clk), .RN(n889), .Q(counter_x[1]), 
        .QN(n303) );
  DFFRX1 \counter_x_reg[2]  ( .D(n281), .CK(clk), .RN(n889), .QN(n841) );
  DFFRX1 \counter_x_reg[5]  ( .D(n234), .CK(clk), .RN(n889), .Q(counter_x[5]), 
        .QN(n854) );
  DFFRX1 \counter_y_reg[1]  ( .D(n231), .CK(clk), .RN(n889), .Q(counter_y[1]), 
        .QN(n843) );
  DFFRX1 \counter_y_reg[2]  ( .D(n230), .CK(clk), .RN(n889), .Q(counter_y[2]), 
        .QN(n844) );
  DFFRX1 \counter_y_reg[3]  ( .D(n229), .CK(clk), .RN(n889), .Q(counter_y[3]), 
        .QN(n845) );
  DFFRX1 \counter_y_reg[4]  ( .D(n228), .CK(clk), .RN(n889), .Q(counter_y[4]), 
        .QN(n846) );
  DFFRX1 \counter_reg[2]  ( .D(n289), .CK(clk), .RN(n889), .Q(counter[2]) );
  DFFRX1 \counter_reg[4]  ( .D(n287), .CK(clk), .RN(reset), .Q(counter[4]), 
        .QN(n879) );
  DFFRX1 \counter_reg[5]  ( .D(n286), .CK(clk), .RN(reset), .Q(counter[5]), 
        .QN(n877) );
  DFFSX1 \counter_y_reg[0]  ( .D(n232), .CK(clk), .SN(n891), .Q(counter_y[0]), 
        .QN(n853) );
  DFFSX1 \min_reg[0]  ( .D(n276), .CK(clk), .SN(n891), .Q(min[0]), .QN(n878)
         );
  DFFSX1 \min_reg[2]  ( .D(n274), .CK(clk), .SN(n891), .Q(min[2]), .QN(n873)
         );
  DFFSX1 \min_reg[4]  ( .D(n272), .CK(clk), .SN(n891), .Q(min[4]), .QN(n860)
         );
  DFFSX1 \min_reg[5]  ( .D(n271), .CK(clk), .SN(n891), .Q(min[5]), .QN(n865)
         );
  DFFSX1 \min_reg[6]  ( .D(n270), .CK(clk), .SN(n891), .Q(min[6]), .QN(n866)
         );
  DFFSX1 \min_reg[7]  ( .D(n269), .CK(clk), .SN(n891), .Q(min[7]), .QN(n870)
         );
  ADDHXL \DP_OP_154_135_757/U7  ( .A(min[1]), .B(min[0]), .CO(
        \DP_OP_154_135_757/n6 ), .S(\C1/DATA1_1 ) );
  ADDHXL \DP_OP_154_135_757/U6  ( .A(min[2]), .B(\DP_OP_154_135_757/n6 ), .CO(
        \DP_OP_154_135_757/n5 ), .S(\C1/DATA1_2 ) );
  ADDHXL \DP_OP_154_135_757/U5  ( .A(min[3]), .B(\DP_OP_154_135_757/n5 ), .CO(
        \DP_OP_154_135_757/n4 ), .S(\C1/DATA1_3 ) );
  ADDHXL \DP_OP_154_135_757/U4  ( .A(min[4]), .B(\DP_OP_154_135_757/n4 ), .CO(
        \DP_OP_154_135_757/n3 ), .S(\C1/DATA1_4 ) );
  ADDHXL \DP_OP_154_135_757/U3  ( .A(min[5]), .B(\DP_OP_154_135_757/n3 ), .CO(
        \DP_OP_154_135_757/n2 ), .S(\C1/DATA1_5 ) );
  ADDHXL \DP_OP_154_135_757/U2  ( .A(min[6]), .B(\DP_OP_154_135_757/n2 ), .CO(
        \DP_OP_154_135_757/n1 ), .S(\C1/DATA1_6 ) );
  DFFRX1 \cur_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(n890), .Q(
        cur_state[2]), .QN(n852) );
  DFFRX1 \cur_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(n891), .Q(
        cur_state[0]), .QN(n842) );
  DFFRX1 \cur_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(n890), .Q(
        cur_state[1]), .QN(n839) );
  DFFSX1 \min_reg[1]  ( .D(n275), .CK(clk), .SN(n891), .Q(min[1]), .QN(n872)
         );
  ADDFXL \DP_OP_41J1_122_3547/U4  ( .A(fwd_done), .B(sti_addr[7]), .CI(
        \DP_OP_41J1_122_3547/n4 ), .CO(\DP_OP_41J1_122_3547/n3 ), .S(N145) );
  ADDFXL \DP_OP_41J1_122_3547/U5  ( .A(fwd_done), .B(sti_addr[6]), .CI(
        \DP_OP_41J1_122_3547/n5 ), .CO(\DP_OP_41J1_122_3547/n4 ), .S(N144) );
  ADDFXL \DP_OP_41J1_122_3547/U6  ( .A(fwd_done), .B(sti_addr[5]), .CI(
        \DP_OP_41J1_122_3547/n6 ), .CO(\DP_OP_41J1_122_3547/n5 ), .S(N143) );
  ADDFXL \DP_OP_41J1_122_3547/U7  ( .A(fwd_done), .B(sti_addr[4]), .CI(
        \DP_OP_41J1_122_3547/n7 ), .CO(\DP_OP_41J1_122_3547/n6 ), .S(N142) );
  ADDFXL \DP_OP_41J1_122_3547/U8  ( .A(fwd_done), .B(sti_addr[3]), .CI(
        \DP_OP_41J1_122_3547/n8 ), .CO(\DP_OP_41J1_122_3547/n7 ), .S(N141) );
  ADDFXL \DP_OP_41J1_122_3547/U9  ( .A(fwd_done), .B(sti_addr[2]), .CI(
        \DP_OP_41J1_122_3547/n9 ), .CO(\DP_OP_41J1_122_3547/n8 ), .S(N140) );
  ADDFXL \DP_OP_41J1_122_3547/U10  ( .A(fwd_done), .B(sti_addr[1]), .CI(
        sti_addr[0]), .CO(\DP_OP_41J1_122_3547/n9 ), .S(N139) );
  DFFQX4 \res_do_reg[7]  ( .D(n262), .CK(clk), .Q(res_do[7]) );
  DFFSX2 \counter_x_reg[4]  ( .D(n838), .CK(clk), .SN(n889), .QN(n888) );
  DFFX2 \res_do_reg[2]  ( .D(n267), .CK(clk), .Q(res_do[2]), .QN(n892) );
  DFFSX1 \counter_x_reg[0]  ( .D(n283), .CK(clk), .SN(n891), .Q(counter_x[0]), 
        .QN(n876) );
  ADDFXL \DP_OP_41J1_122_3547/U3  ( .A(fwd_done), .B(sti_addr[8]), .CI(
        \DP_OP_41J1_122_3547/n3 ), .CO(\DP_OP_41J1_122_3547/n2 ), .S(N146) );
  DFFRX2 \sti_addr_reg[9]  ( .D(n252), .CK(clk), .RN(n889), .Q(sti_addr[9]) );
  DFFQX2 \res_do_reg[0]  ( .D(n268), .CK(clk), .Q(res_do[0]) );
  DFFQX2 \res_do_reg[1]  ( .D(n277), .CK(clk), .Q(res_do[1]) );
  DFFQX2 \res_do_reg[5]  ( .D(n264), .CK(clk), .Q(res_do[5]) );
  DFFRX2 \sti_addr_reg[8]  ( .D(n253), .CK(clk), .RN(n889), .Q(sti_addr[8]), 
        .QN(n882) );
  DFFRX2 \sti_addr_reg[5]  ( .D(n256), .CK(clk), .RN(n889), .Q(sti_addr[5]), 
        .QN(n884) );
  DFFSX2 \sti_addr_reg[3]  ( .D(n258), .CK(clk), .SN(n891), .Q(sti_addr[3]), 
        .QN(n887) );
  DFFRX2 res_wr_reg ( .D(n279), .CK(clk), .RN(reset), .Q(res_wr) );
  DFFRX2 \sti_addr_reg[1]  ( .D(n261), .CK(clk), .RN(n889), .Q(sti_addr[1]), 
        .QN(n875) );
  DFFRX2 \sti_addr_reg[2]  ( .D(n259), .CK(clk), .RN(n889), .Q(sti_addr[2]), 
        .QN(n850) );
  DFFRX2 res_rd_reg ( .D(n278), .CK(clk), .RN(reset), .Q(res_rd) );
  DFFRX2 \res_addr_reg[7]  ( .D(n218), .CK(clk), .RN(reset), .Q(res_addr[7]), 
        .QN(n855) );
  DFFRX2 \res_addr_reg[8]  ( .D(n217), .CK(clk), .RN(reset), .Q(res_addr[8]), 
        .QN(n856) );
  DFFRX2 \res_addr_reg[5]  ( .D(n220), .CK(clk), .RN(reset), .Q(res_addr[5]), 
        .QN(n857) );
  DFFRX2 \res_addr_reg[6]  ( .D(n219), .CK(clk), .RN(reset), .Q(res_addr[6]), 
        .QN(n858) );
  DFFRX2 \res_addr_reg[1]  ( .D(n224), .CK(clk), .RN(reset), .Q(res_addr[1]), 
        .QN(n859) );
  DFFRX2 \res_addr_reg[2]  ( .D(n223), .CK(clk), .RN(reset), .Q(res_addr[2]), 
        .QN(n864) );
  DFFRX2 \res_addr_reg[3]  ( .D(n222), .CK(clk), .RN(n889), .Q(res_addr[3]), 
        .QN(n863) );
  DFFRX2 \res_addr_reg[4]  ( .D(n221), .CK(clk), .RN(n890), .Q(res_addr[4]), 
        .QN(n861) );
  DFFRX2 \res_addr_reg[9]  ( .D(n216), .CK(clk), .RN(n889), .Q(res_addr[9]), 
        .QN(n862) );
  DFFRX2 \res_addr_reg[0]  ( .D(n225), .CK(clk), .RN(n890), .Q(res_addr[0]), 
        .QN(n868) );
  DFFRX2 \res_addr_reg[10]  ( .D(n215), .CK(clk), .RN(n891), .Q(res_addr[10]), 
        .QN(n867) );
  DFFRX2 \res_addr_reg[11]  ( .D(n214), .CK(clk), .RN(n891), .Q(res_addr[11]), 
        .QN(n869) );
  DFFRX2 \res_addr_reg[12]  ( .D(n213), .CK(clk), .RN(n891), .Q(res_addr[12]), 
        .QN(n871) );
  DFFRX2 \res_addr_reg[13]  ( .D(n212), .CK(clk), .RN(n891), .Q(res_addr[13]), 
        .QN(n874) );
  DFFRX2 \counter_x_reg[3]  ( .D(n280), .CK(clk), .RN(n889), .Q(counter_x[3]), 
        .QN(n301) );
  DFFRX2 \sti_addr_reg[7]  ( .D(n254), .CK(clk), .RN(n889), .Q(sti_addr[7]), 
        .QN(n886) );
  DFFRX2 \sti_addr_reg[6]  ( .D(n255), .CK(clk), .RN(n889), .Q(sti_addr[6]), 
        .QN(n885) );
  DFFRX2 \sti_addr_reg[4]  ( .D(n257), .CK(clk), .RN(n889), .Q(sti_addr[4]), 
        .QN(n883) );
  DFFRX2 \sti_addr_reg[0]  ( .D(n260), .CK(clk), .RN(n889), .Q(sti_addr[0]), 
        .QN(n881) );
  DFFQX2 \res_do_reg[4]  ( .D(n265), .CK(clk), .Q(res_do[4]) );
  DFFRX2 \counter_x_reg[6]  ( .D(n233), .CK(clk), .RN(n890), .Q(counter_x[6])
         );
  DFFRX2 fwd_done_reg ( .D(n284), .CK(clk), .RN(n889), .Q(fwd_done), .QN(n302)
         );
  DFFSX1 \min_reg[3]  ( .D(n273), .CK(clk), .SN(n891), .Q(min[3]), .QN(n848)
         );
  DFFQX4 \res_do_reg[6]  ( .D(n263), .CK(clk), .Q(res_do[6]) );
  DFFQX2 \res_do_reg[3]  ( .D(n266), .CK(clk), .Q(res_do[3]) );
  DFFRX2 \counter_reg[3]  ( .D(n288), .CK(clk), .RN(reset), .Q(counter[3]), 
        .QN(n880) );
  AOI22X1 U308 ( .A0(n708), .A1(\C1/DATA1_2 ), .B0(n300), .B1(n685), .Y(n687)
         );
  INVX4 U309 ( .A(n819), .Y(n828) );
  INVX8 U310 ( .A(n824), .Y(n825) );
  INVX1 U311 ( .A(n807), .Y(n704) );
  BUFX12 U312 ( .A(n707), .Y(n300) );
  NAND2X2 U313 ( .A(n326), .B(n552), .Y(n633) );
  INVX1 U314 ( .A(n508), .Y(n509) );
  NAND2X4 U315 ( .A(n448), .B(n447), .Y(n452) );
  NOR2X1 U316 ( .A(n504), .B(n503), .Y(n511) );
  NAND2X2 U317 ( .A(res_di[6]), .B(n528), .Y(n479) );
  CLKINVX1 U318 ( .A(res_di[7]), .Y(n806) );
  NAND2X1 U319 ( .A(n498), .B(min[5]), .Y(n499) );
  NOR2X1 U320 ( .A(res_di[7]), .B(n539), .Y(n474) );
  CLKINVX1 U321 ( .A(n723), .Y(n625) );
  NOR2X4 U322 ( .A(n454), .B(n453), .Y(n473) );
  NAND2X1 U323 ( .A(n362), .B(n361), .Y(n786) );
  NOR2X1 U324 ( .A(n362), .B(n361), .Y(n785) );
  AOI22X2 U325 ( .A0(n816), .A1(n848), .B0(res_di[2]), .B1(n873), .Y(n489) );
  NOR2X1 U326 ( .A(res_di[3]), .B(n848), .Y(n492) );
  NOR2X1 U327 ( .A(res_di[6]), .B(n866), .Y(n493) );
  NAND2X1 U328 ( .A(res_di[4]), .B(n860), .Y(n498) );
  CLKBUFX8 U329 ( .A(res_di[3]), .Y(n816) );
  NOR2X2 U330 ( .A(res_di[5]), .B(n810), .Y(n454) );
  NOR2X2 U331 ( .A(res_di[6]), .B(n528), .Y(n453) );
  CLKINVX1 U332 ( .A(res_do[5]), .Y(n810) );
  CLKBUFX3 U333 ( .A(n356), .Y(n798) );
  INVX3 U334 ( .A(n558), .Y(n794) );
  NAND2X1 U335 ( .A(n552), .B(n839), .Y(n714) );
  NOR2X1 U336 ( .A(n842), .B(cur_state[2]), .Y(n552) );
  CLKBUFX3 U337 ( .A(counter_x[0]), .Y(n641) );
  NAND2X2 U338 ( .A(n485), .B(n484), .Y(n486) );
  NAND2XL U339 ( .A(res_di[7]), .B(n539), .Y(n456) );
  NAND2XL U340 ( .A(n402), .B(n401), .Y(n408) );
  NOR2XL U341 ( .A(n794), .B(n859), .Y(n362) );
  NOR2XL U342 ( .A(n429), .B(n437), .Y(n743) );
  NAND2XL U343 ( .A(n408), .B(n437), .Y(n613) );
  NAND3X1 U344 ( .A(n348), .B(n347), .C(n346), .Y(n350) );
  AOI21X1 U345 ( .A0(n752), .A1(n750), .B0(n423), .Y(n747) );
  INVXL U346 ( .A(n791), .Y(n789) );
  NAND2X1 U347 ( .A(n709), .B(res_di[7]), .Y(n537) );
  INVXL U348 ( .A(n660), .Y(n659) );
  CLKBUFX3 U349 ( .A(n345), .Y(n803) );
  NAND2XL U350 ( .A(n837), .B(N146), .Y(n835) );
  CLKINVX1 U351 ( .A(n641), .Y(n795) );
  NAND2X1 U352 ( .A(n349), .B(n352), .Y(n722) );
  INVXL U353 ( .A(n675), .Y(n682) );
  INVX3 U354 ( .A(sti_rd), .Y(n646) );
  NAND2XL U355 ( .A(n674), .B(n673), .Y(n230) );
  NOR2X2 U356 ( .A(n551), .B(cur_state[2]), .Y(sti_rd) );
  OAI21X1 U357 ( .A0(n687), .A1(n693), .B0(n686), .Y(n267) );
  NAND3X1 U358 ( .A(n645), .B(n644), .C(n643), .Y(n282) );
  NAND2X1 U359 ( .A(n756), .B(n755), .Y(n757) );
  OAI2BB1X1 U360 ( .A0N(n738), .A1N(n639), .B0(n742), .Y(n640) );
  NAND2X1 U361 ( .A(n745), .B(n744), .Y(n746) );
  OAI2BB1XL U362 ( .A0N(n738), .A1N(n635), .B0(n742), .Y(n636) );
  NAND2X1 U363 ( .A(n771), .B(n769), .Y(n585) );
  OAI2BB1XL U364 ( .A0N(n738), .A1N(n629), .B0(n742), .Y(n630) );
  NAND2X1 U365 ( .A(n589), .B(n760), .Y(n590) );
  INVX1 U366 ( .A(n761), .Y(n589) );
  INVX1 U367 ( .A(n602), .Y(n407) );
  NAND2X1 U368 ( .A(n765), .B(n764), .Y(n766) );
  INVX1 U369 ( .A(n769), .Y(n770) );
  INVX1 U370 ( .A(n743), .Y(n745) );
  NAND2X1 U371 ( .A(n775), .B(n774), .Y(n776) );
  NAND2X1 U372 ( .A(n436), .B(n435), .Y(n438) );
  INVX1 U373 ( .A(n763), .Y(n765) );
  MX2X1 U374 ( .A(n359), .B(n737), .S0(n796), .Y(n360) );
  NAND2X1 U375 ( .A(n837), .B(N144), .Y(n833) );
  NAND2X2 U376 ( .A(n722), .B(n351), .Y(n558) );
  INVX1 U377 ( .A(n731), .Y(n559) );
  CLKINVX1 U378 ( .A(n572), .Y(n349) );
  CLKINVX1 U379 ( .A(n573), .Y(n355) );
  NAND2X1 U380 ( .A(n307), .B(n642), .Y(n308) );
  NAND2X1 U381 ( .A(n305), .B(n303), .Y(n310) );
  NAND3X1 U382 ( .A(n574), .B(n337), .C(n336), .Y(n338) );
  INVX1 U383 ( .A(n358), .Y(n367) );
  NOR2X1 U384 ( .A(n717), .B(n642), .Y(n337) );
  NOR2X2 U385 ( .A(n551), .B(n852), .Y(n352) );
  NOR2X2 U386 ( .A(res_di[4]), .B(n865), .Y(n504) );
  NAND2X1 U387 ( .A(n638), .B(n637), .Y(n280) );
  NAND2X1 U388 ( .A(n632), .B(n631), .Y(n234) );
  NAND2X2 U389 ( .A(n542), .B(n526), .Y(n532) );
  NAND2X1 U390 ( .A(n614), .B(n613), .Y(n615) );
  NAND2X1 U391 ( .A(n605), .B(n604), .Y(n606) );
  NAND2X1 U392 ( .A(n440), .B(n439), .Y(n441) );
  INVX3 U393 ( .A(n633), .Y(n739) );
  INVX1 U394 ( .A(n612), .Y(n614) );
  INVX1 U395 ( .A(n749), .Y(n423) );
  INVX1 U396 ( .A(n604), .Y(n406) );
  NAND2X1 U397 ( .A(n429), .B(n437), .Y(n744) );
  NAND3X1 U398 ( .A(n428), .B(n427), .C(n426), .Y(n429) );
  INVX16 U399 ( .A(n517), .Y(n819) );
  NAND2X1 U400 ( .A(n387), .B(n386), .Y(n764) );
  NAND3X1 U401 ( .A(n421), .B(n420), .C(n419), .Y(n422) );
  NAND2X1 U402 ( .A(n837), .B(N145), .Y(n834) );
  MX2X1 U403 ( .A(n375), .B(n629), .S0(n796), .Y(n376) );
  NAND2X1 U404 ( .A(n730), .B(n560), .Y(n726) );
  MX2X1 U405 ( .A(n369), .B(n635), .S0(n796), .Y(n370) );
  MX2X1 U406 ( .A(n354), .B(n639), .S0(n796), .Y(n357) );
  MX2X1 U407 ( .A(n378), .B(n720), .S0(n796), .Y(n379) );
  MX2X1 U408 ( .A(n372), .B(n371), .S0(n796), .Y(n373) );
  CLKINVX1 U409 ( .A(n713), .Y(n568) );
  AND2X2 U410 ( .A(n578), .B(n888), .Y(n716) );
  NAND4X4 U411 ( .A(n452), .B(n451), .C(n450), .D(n455), .Y(n478) );
  AOI21X1 U412 ( .A0(n479), .A1(res_do[7]), .B0(n806), .Y(n481) );
  NOR2X2 U413 ( .A(n350), .B(n851), .Y(n572) );
  NOR2X1 U414 ( .A(n714), .B(fwd_done), .Y(n392) );
  INVX4 U415 ( .A(n446), .Y(n447) );
  INVX3 U416 ( .A(n714), .Y(n796) );
  NOR2X2 U417 ( .A(n621), .B(cur_state[0]), .Y(n723) );
  NAND3X2 U418 ( .A(n449), .B(res_di[2]), .C(n892), .Y(n450) );
  INVX3 U419 ( .A(n841), .Y(n740) );
  NOR2X1 U420 ( .A(counter[2]), .B(counter[3]), .Y(n347) );
  NOR2X1 U421 ( .A(min[5]), .B(min[4]), .Y(n505) );
  INVX1 U422 ( .A(res_di[7]), .Y(n534) );
  INVX3 U423 ( .A(res_di[3]), .Y(n689) );
  NAND2X1 U424 ( .A(n666), .B(n665), .Y(n228) );
  OAI21X2 U425 ( .A0(n758), .A1(n754), .B0(n755), .Y(n752) );
  NAND2X1 U426 ( .A(n670), .B(n669), .Y(n227) );
  NAND2X1 U427 ( .A(n658), .B(n657), .Y(n226) );
  NAND2X1 U428 ( .A(n662), .B(n661), .Y(n231) );
  AOI21X1 U429 ( .A0(n772), .A1(n771), .B0(n770), .Y(n777) );
  NOR2X1 U430 ( .A(n610), .B(n612), .Y(n410) );
  INVX1 U431 ( .A(n344), .Y(n838) );
  INVX1 U432 ( .A(n653), .Y(n655) );
  OAI211X1 U433 ( .A0(n828), .A1(n806), .B0(n805), .C0(n804), .Y(n269) );
  AOI21X1 U434 ( .A0(n605), .A1(n407), .B0(n406), .Y(n609) );
  NAND3X2 U435 ( .A(n825), .B(n828), .C(min[7]), .Y(n804) );
  OR2X1 U436 ( .A(n438), .B(n437), .Y(n440) );
  INVX1 U437 ( .A(n584), .Y(n771) );
  NAND2X1 U438 ( .A(n416), .B(n437), .Y(n755) );
  NAND2X1 U439 ( .A(n422), .B(n437), .Y(n749) );
  NOR2X1 U440 ( .A(n416), .B(n437), .Y(n754) );
  NAND2X1 U441 ( .A(n620), .B(n821), .Y(n523) );
  NAND3X1 U442 ( .A(n415), .B(n414), .C(n413), .Y(n416) );
  NAND2X1 U443 ( .A(n715), .B(n796), .Y(n620) );
  NAND2X2 U444 ( .A(n325), .B(n324), .Y(n715) );
  NAND2X4 U445 ( .A(n458), .B(n457), .Y(n472) );
  NAND2X1 U446 ( .A(n323), .B(n795), .Y(n324) );
  NOR2X1 U447 ( .A(n395), .B(counter_x[6]), .Y(n396) );
  NAND2X1 U448 ( .A(n570), .B(n302), .Y(n592) );
  NAND2X1 U449 ( .A(n559), .B(n714), .Y(n345) );
  NAND2X1 U450 ( .A(n322), .B(n321), .Y(n323) );
  NAND2X1 U451 ( .A(n312), .B(n641), .Y(n325) );
  AND2X1 U452 ( .A(n823), .B(n888), .Y(n372) );
  OR2X1 U453 ( .A(n430), .B(counter_y[5]), .Y(n431) );
  NAND2X4 U454 ( .A(n490), .B(n489), .Y(n496) );
  NAND2X1 U455 ( .A(n573), .B(n723), .Y(n353) );
  NAND2X1 U456 ( .A(n333), .B(n332), .Y(n576) );
  NAND2X1 U457 ( .A(n572), .B(n352), .Y(n626) );
  INVX2 U458 ( .A(n473), .Y(n475) );
  NOR2X1 U459 ( .A(n795), .B(n338), .Y(n340) );
  OR2X1 U460 ( .A(n424), .B(counter_y[4]), .Y(n430) );
  NOR2X1 U461 ( .A(counter_x[3]), .B(n841), .Y(n316) );
  OAI2BB1X1 U462 ( .A0N(n574), .A1N(bin[3]), .B0(n306), .Y(n309) );
  OAI2BB1X1 U463 ( .A0N(n574), .A1N(bin[1]), .B0(n304), .Y(n311) );
  OR2X1 U464 ( .A(n417), .B(counter_y[3]), .Y(n424) );
  NOR2X2 U465 ( .A(n350), .B(counter[0]), .Y(n573) );
  AND2X2 U466 ( .A(n479), .B(n456), .Y(n457) );
  NAND2X4 U467 ( .A(n445), .B(n449), .Y(n446) );
  OR2X1 U468 ( .A(n411), .B(counter_y[2]), .Y(n417) );
  NOR2X1 U469 ( .A(n641), .B(n642), .Y(n358) );
  NOR4X1 U470 ( .A(n564), .B(n563), .C(n875), .D(n850), .Y(n565) );
  NOR3X2 U471 ( .A(n508), .B(n493), .C(n492), .Y(n494) );
  NOR2X2 U472 ( .A(n525), .B(n683), .Y(n700) );
  NAND2X2 U473 ( .A(n684), .B(res_do[2]), .Y(n445) );
  OR2X1 U474 ( .A(counter_y[0]), .B(counter_y[1]), .Y(n411) );
  NOR2X1 U475 ( .A(counter[6]), .B(n840), .Y(n346) );
  NOR2X1 U476 ( .A(n851), .B(n840), .Y(n557) );
  NOR2X4 U477 ( .A(res_di[7]), .B(n870), .Y(n508) );
  NOR2X1 U478 ( .A(counter[4]), .B(counter[5]), .Y(n348) );
  NAND2X2 U479 ( .A(res_di[0]), .B(n878), .Y(n485) );
  NAND2X2 U480 ( .A(res_di[2]), .B(n816), .Y(n525) );
  INVX1 U481 ( .A(res_di[0]), .Y(n544) );
  OAI211X1 U482 ( .A0(n828), .A1(n544), .B0(n827), .C0(n826), .Y(n276) );
  INVX6 U483 ( .A(n491), .Y(n811) );
  MXI2X2 U484 ( .A(n820), .B(res_di[2]), .S0(n819), .Y(n822) );
  MXI2X2 U485 ( .A(n812), .B(n811), .S0(n819), .Y(n813) );
  MXI2X2 U486 ( .A(n808), .B(n807), .S0(n819), .Y(n809) );
  AOI21X2 U487 ( .A0(n819), .A1(n816), .B0(n815), .Y(n817) );
  NAND3X4 U488 ( .A(n496), .B(n495), .C(n494), .Y(n515) );
  AOI2BB2X2 U489 ( .B0(n491), .B1(min[4]), .A0N(res_di[5]), .A1N(n865), .Y(
        n495) );
  AOI21X2 U490 ( .A0(n819), .A1(res_di[1]), .B0(n520), .Y(n521) );
  NOR2X4 U491 ( .A(n824), .B(n866), .Y(n518) );
  OAI211X1 U492 ( .A0(n825), .A1(n892), .B0(n822), .C0(n821), .Y(n274) );
  NOR2X4 U493 ( .A(n529), .B(n625), .Y(n707) );
  OAI211X1 U494 ( .A0(n825), .A1(n814), .B0(n813), .C0(n821), .Y(n272) );
  OAI211X1 U495 ( .A0(n825), .A1(n810), .B0(n809), .C0(n821), .Y(n271) );
  MXI2X2 U496 ( .A(n518), .B(res_di[6]), .S0(n819), .Y(n519) );
  AOI22X1 U497 ( .A0(n709), .A1(n816), .B0(res_do[3]), .B1(n693), .Y(n692) );
  NAND2X2 U498 ( .A(n811), .B(n505), .Y(n501) );
  NAND3X2 U499 ( .A(n708), .B(n540), .C(n536), .Y(n538) );
  OAI21X1 U500 ( .A0(n698), .A1(n693), .B0(n697), .Y(n277) );
  OAI21X1 U501 ( .A0(n703), .A1(n693), .B0(n702), .Y(n265) );
  OAI21X1 U502 ( .A0(n546), .A1(n693), .B0(n545), .Y(n268) );
  OAI21X1 U503 ( .A0(n711), .A1(n693), .B0(n710), .Y(n264) );
  AOI22X1 U504 ( .A0(n708), .A1(\C1/DATA1_3 ), .B0(n300), .B1(n691), .Y(n694)
         );
  AND2X8 U505 ( .A(n529), .B(n731), .Y(n708) );
  NAND3X2 U506 ( .A(n532), .B(n531), .C(n530), .Y(n263) );
  OAI21X1 U507 ( .A0(n694), .A1(n693), .B0(n692), .Y(n266) );
  NOR2X2 U508 ( .A(n374), .B(n888), .Y(n377) );
  NAND2X1 U509 ( .A(n358), .B(n574), .Y(n374) );
  OAI211X1 U510 ( .A0(n825), .A1(n818), .B0(n817), .C0(n821), .Y(n273) );
  NOR3X4 U511 ( .A(n824), .B(n819), .C(n848), .Y(n815) );
  AOI22XL U512 ( .A0(n672), .A1(n622), .B0(n547), .B1(n671), .Y(n401) );
  OR2X2 U513 ( .A(n715), .B(cur_state[1]), .Y(n326) );
  NAND2XL U514 ( .A(n316), .B(bin[4]), .Y(n319) );
  NAND2XL U515 ( .A(n317), .B(bin[8]), .Y(n318) );
  NAND2XL U516 ( .A(n316), .B(bin[6]), .Y(n314) );
  AOI21XL U517 ( .A0(n461), .A1(n460), .B0(n459), .Y(n463) );
  AOI22XL U518 ( .A0(min[1]), .A1(min[0]), .B0(min[2]), .B1(n892), .Y(n460) );
  NAND2XL U519 ( .A(n668), .B(n622), .Y(n427) );
  NAND2XL U520 ( .A(n667), .B(n547), .Y(n426) );
  NAND2XL U521 ( .A(n677), .B(n622), .Y(n414) );
  NAND2XL U522 ( .A(n676), .B(n547), .Y(n413) );
  AND2X1 U523 ( .A(n823), .B(counter_x[6]), .Y(n378) );
  NAND2XL U524 ( .A(n791), .B(n798), .Y(n792) );
  INVXL U525 ( .A(n773), .Y(n775) );
  INVXL U526 ( .A(n779), .Y(n781) );
  NOR2X2 U527 ( .A(n524), .B(n693), .Y(n542) );
  OR2X2 U528 ( .A(n839), .B(cur_state[2]), .Y(n621) );
  OAI22XL U529 ( .A0(n311), .A1(n310), .B0(n309), .B1(n308), .Y(n312) );
  NAND2XL U530 ( .A(counter_y[1]), .B(counter_y[6]), .Y(n329) );
  INVXL U531 ( .A(n654), .Y(n548) );
  INVXL U532 ( .A(n593), .Y(n595) );
  AND2X1 U533 ( .A(counter_y[1]), .B(counter_y[0]), .Y(n412) );
  BUFX2 U534 ( .A(counter_x[5]), .Y(n717) );
  BUFX2 U535 ( .A(counter_x[1]), .Y(n642) );
  NOR2XL U536 ( .A(n559), .B(n840), .Y(n560) );
  NAND2X2 U537 ( .A(n684), .B(min[2]), .Y(n487) );
  NAND3X2 U538 ( .A(res_di[4]), .B(n505), .C(n866), .Y(n507) );
  NAND2X2 U539 ( .A(res_di[7]), .B(n870), .Y(n506) );
  NAND2X2 U540 ( .A(res_di[5]), .B(n502), .Y(n503) );
  OAI2BB1X2 U541 ( .A0N(res_di[1]), .A1N(n522), .B0(n444), .Y(n448) );
  OAI21X2 U542 ( .A0(res_di[1]), .A1(n522), .B0(res_di[0]), .Y(n444) );
  NAND2X2 U543 ( .A(n689), .B(res_do[3]), .Y(n449) );
  NAND2X2 U544 ( .A(res_di[5]), .B(n810), .Y(n455) );
  NOR2XL U545 ( .A(n367), .B(n740), .Y(n368) );
  NAND2XL U546 ( .A(n652), .B(n547), .Y(n435) );
  AOI21XL U547 ( .A0(n622), .A1(n656), .B0(n432), .Y(n436) );
  NAND2XL U548 ( .A(n664), .B(n622), .Y(n420) );
  NAND2XL U549 ( .A(n663), .B(n547), .Y(n419) );
  NAND2XL U550 ( .A(n317), .B(bin[11]), .Y(n307) );
  NAND2XL U551 ( .A(n317), .B(bin[10]), .Y(n313) );
  INVX3 U552 ( .A(res_di[4]), .Y(n491) );
  NOR2X1 U553 ( .A(n475), .B(n474), .Y(n477) );
  NAND3X1 U554 ( .A(n491), .B(n455), .C(res_do[4]), .Y(n476) );
  AOI22XL U555 ( .A0(min[6]), .A1(n528), .B0(min[5]), .B1(n810), .Y(n464) );
  NOR2XL U556 ( .A(n463), .B(n462), .Y(n466) );
  NAND3X2 U557 ( .A(n478), .B(n473), .C(n476), .Y(n458) );
  NAND2XL U558 ( .A(counter_y[5]), .B(counter_y[3]), .Y(n327) );
  NAND2XL U559 ( .A(counter_y[2]), .B(counter_y[4]), .Y(n328) );
  NAND2XL U560 ( .A(n845), .B(n334), .Y(n335) );
  INVXL U561 ( .A(n811), .Y(n699) );
  NAND2XL U562 ( .A(n438), .B(n437), .Y(n439) );
  NAND2X1 U563 ( .A(n700), .B(n811), .Y(n705) );
  INVX3 U564 ( .A(res_di[1]), .Y(n695) );
  BUFX2 U565 ( .A(n392), .Y(n622) );
  NOR3XL U566 ( .A(n578), .B(fwd_done), .C(n577), .Y(n579) );
  INVXL U567 ( .A(n576), .Y(n577) );
  CLKBUFX3 U568 ( .A(res_di[5]), .Y(n807) );
  NAND2XL U569 ( .A(n558), .B(n851), .Y(n730) );
  INVXL U570 ( .A(n570), .Y(n571) );
  XNOR2X1 U571 ( .A(counter_x[6]), .B(n718), .Y(n719) );
  NAND2XL U572 ( .A(n717), .B(n716), .Y(n718) );
  NAND2XL U573 ( .A(n881), .B(n837), .Y(n567) );
  NAND2XL U574 ( .A(n837), .B(N142), .Y(n831) );
  INVXL U575 ( .A(n754), .Y(n756) );
  NAND2XL U576 ( .A(n793), .B(n792), .Y(n801) );
  NAND2XL U577 ( .A(n781), .B(n780), .Y(n782) );
  INVXL U578 ( .A(n785), .Y(n787) );
  NAND2XL U579 ( .A(n599), .B(n602), .Y(n600) );
  NAND2XL U580 ( .A(n837), .B(N140), .Y(n830) );
  NAND2XL U581 ( .A(n837), .B(N139), .Y(n829) );
  INVXL U582 ( .A(n552), .Y(n553) );
  NAND2XL U583 ( .A(n837), .B(N141), .Y(n836) );
  NAND2XL U584 ( .A(n837), .B(N143), .Y(n832) );
  OAI211XL U585 ( .A0(n739), .A1(n795), .B0(n651), .C0(n650), .Y(n283) );
  NAND2XL U586 ( .A(n675), .B(n647), .Y(n651) );
  NAND3XL U587 ( .A(n708), .B(n540), .C(\C1/DATA1_6 ), .Y(n530) );
  NAND4XL U588 ( .A(n627), .B(n626), .C(n625), .D(n624), .Y(next_state[1]) );
  NAND2XL U589 ( .A(n623), .B(n622), .Y(n624) );
  OAI2BB1XL U590 ( .A0N(n621), .A1N(n620), .B0(n649), .Y(n627) );
  INVXL U591 ( .A(n715), .Y(n623) );
  INVXL U592 ( .A(n547), .Y(n550) );
  NAND2XL U593 ( .A(n649), .B(n552), .Y(n549) );
  AOI211XL U594 ( .A0(n595), .A1(n853), .B0(n594), .C0(n649), .Y(n597) );
  NAND2XL U595 ( .A(n679), .B(counter_y[0]), .Y(n596) );
  NOR2XL U596 ( .A(n713), .B(n880), .Y(n556) );
  NAND3XL U597 ( .A(n568), .B(counter[3]), .C(n879), .Y(n555) );
  NAND2XL U598 ( .A(n713), .B(counter[3]), .Y(n712) );
  NAND2XL U599 ( .A(n558), .B(n557), .Y(n562) );
  NAND2XL U600 ( .A(n726), .B(counter[2]), .Y(n561) );
  NAND2XL U601 ( .A(n675), .B(n663), .Y(n666) );
  INVXL U602 ( .A(n676), .Y(n681) );
  NAND2XL U603 ( .A(n675), .B(n671), .Y(n674) );
  OAI211XL U604 ( .A0(n717), .A1(n716), .B0(n628), .C0(n732), .Y(n632) );
  NAND2XL U605 ( .A(n675), .B(n667), .Y(n670) );
  NAND2XL U606 ( .A(n675), .B(n652), .Y(n658) );
  NOR2XL U607 ( .A(n725), .B(n851), .Y(n727) );
  INVXL U608 ( .A(n722), .Y(n724) );
  NOR2XL U609 ( .A(n841), .B(n303), .Y(n341) );
  NOR2X2 U610 ( .A(n340), .B(n302), .Y(n738) );
  AOI31XL U611 ( .A0(n575), .A1(n574), .A2(n303), .B0(n302), .Y(n580) );
  NAND4XL U612 ( .A(n739), .B(n641), .C(n303), .D(n302), .Y(n644) );
  BUFX4 U613 ( .A(reset), .Y(n889) );
  OAI21X1 U614 ( .A0(n479), .A1(res_do[7]), .B0(n731), .Y(n480) );
  NAND2X2 U615 ( .A(n625), .B(n527), .Y(n731) );
  MX2X1 U616 ( .A(sti_di[10]), .B(bin[5]), .S0(n646), .Y(n245) );
  MX2X1 U617 ( .A(sti_di[2]), .B(bin[13]), .S0(n646), .Y(n237) );
  MX2X1 U618 ( .A(sti_di[12]), .B(bin[3]), .S0(n646), .Y(n247) );
  MX2X1 U619 ( .A(sti_di[9]), .B(bin[6]), .S0(n646), .Y(n244) );
  MX2X1 U620 ( .A(sti_di[14]), .B(bin[1]), .S0(n646), .Y(n249) );
  MX2X1 U621 ( .A(sti_di[11]), .B(bin[4]), .S0(n646), .Y(n246) );
  MX2X1 U622 ( .A(sti_di[4]), .B(bin[11]), .S0(n646), .Y(n239) );
  MX2X1 U623 ( .A(sti_di[5]), .B(bin[10]), .S0(n646), .Y(n240) );
  MX2X1 U624 ( .A(sti_di[1]), .B(bin[14]), .S0(n646), .Y(n236) );
  MX2X1 U625 ( .A(sti_di[6]), .B(bin[9]), .S0(n646), .Y(n241) );
  MX2X1 U626 ( .A(sti_di[7]), .B(bin[8]), .S0(n646), .Y(n242) );
  MX2X1 U627 ( .A(sti_di[13]), .B(bin[2]), .S0(n646), .Y(n248) );
  MX2X1 U628 ( .A(sti_di[3]), .B(bin[12]), .S0(n646), .Y(n238) );
  MX2X1 U629 ( .A(sti_di[15]), .B(bin[0]), .S0(n646), .Y(n250) );
  MX2X1 U630 ( .A(sti_di[0]), .B(bin[15]), .S0(n646), .Y(n251) );
  BUFX4 U631 ( .A(reset), .Y(n890) );
  OAI21XL U632 ( .A0(n803), .A1(n874), .B0(n443), .Y(n212) );
  OAI21XL U633 ( .A0(n803), .A1(n862), .B0(n617), .Y(n216) );
  NOR2X2 U634 ( .A(n633), .B(n339), .Y(n742) );
  MX2X1 U635 ( .A(res_wr), .B(n731), .S0(n554), .Y(n279) );
  AOI22XL U636 ( .A0(n679), .A1(counter_y[2]), .B0(n678), .B1(n672), .Y(n673)
         );
  AOI22XL U637 ( .A0(n679), .A1(counter_y[5]), .B0(n678), .B1(n668), .Y(n669)
         );
  AOI22XL U638 ( .A0(n679), .A1(counter_y[4]), .B0(n678), .B1(n664), .Y(n665)
         );
  AOI22XL U639 ( .A0(n679), .A1(counter_y[1]), .B0(n678), .B1(n660), .Y(n661)
         );
  AOI22XL U640 ( .A0(n679), .A1(counter_y[6]), .B0(n678), .B1(n656), .Y(n657)
         );
  AOI22XL U641 ( .A0(n679), .A1(counter_y[3]), .B0(n678), .B1(n677), .Y(n680)
         );
  NAND4XL U642 ( .A(sti_addr[8]), .B(sti_addr[4]), .C(sti_addr[5]), .D(
        sti_addr[6]), .Y(n564) );
  INVXL U643 ( .A(n732), .Y(n736) );
  OAI211XL U644 ( .A0(n301), .A1(n733), .B0(n634), .C0(n732), .Y(n638) );
  NAND3XL U645 ( .A(n732), .B(n642), .C(n795), .Y(n643) );
  NOR2X2 U646 ( .A(n570), .B(fwd_done), .Y(n732) );
  MX2X1 U647 ( .A(sti_addr[9]), .B(n619), .S0(n837), .Y(n252) );
  INVX3 U648 ( .A(res_di[6]), .Y(n497) );
  AOI21XL U649 ( .A0(min[5]), .A1(min[4]), .B0(min[6]), .Y(n502) );
  NAND3X2 U650 ( .A(n488), .B(n487), .C(n486), .Y(n490) );
  AOI22XL U651 ( .A0(n622), .A1(n660), .B0(n547), .B1(n659), .Y(n397) );
  NAND2X2 U652 ( .A(n507), .B(n506), .Y(n510) );
  NAND2XL U653 ( .A(n317), .B(bin[9]), .Y(n305) );
  NAND4XL U654 ( .A(n302), .B(sti_addr[9]), .C(sti_addr[0]), .D(sti_addr[7]), 
        .Y(n563) );
  NAND3X2 U655 ( .A(n500), .B(n807), .C(n499), .Y(n514) );
  INVX4 U656 ( .A(res_di[2]), .Y(n684) );
  MX2X1 U657 ( .A(n797), .B(n876), .S0(n796), .Y(n799) );
  NOR3XL U658 ( .A(n329), .B(n328), .C(n327), .Y(n330) );
  XNOR2X1 U659 ( .A(n533), .B(n497), .Y(n526) );
  NAND2XL U660 ( .A(n787), .B(n786), .Y(n788) );
  NAND2XL U661 ( .A(n750), .B(n749), .Y(n751) );
  NAND2XL U662 ( .A(n729), .B(counter[5]), .Y(n728) );
  NAND2XL U663 ( .A(n675), .B(n659), .Y(n662) );
  AOI22XL U664 ( .A0(n720), .A1(n738), .B0(n732), .B1(n719), .Y(n721) );
  OR2X2 U665 ( .A(cur_state[0]), .B(cur_state[1]), .Y(n551) );
  OAI21XL U666 ( .A0(n803), .A1(n856), .B0(n608), .Y(n217) );
  MX2X1 U667 ( .A(sti_di[8]), .B(bin[7]), .S0(n646), .Y(n243) );
  NOR2X2 U668 ( .A(n740), .B(counter_x[3]), .Y(n574) );
  OAI221XL U669 ( .A0(counter_x[3]), .A1(bin[5]), .B0(n301), .B1(bin[13]), 
        .C0(n740), .Y(n304) );
  NOR2X1 U670 ( .A(n301), .B(n740), .Y(n317) );
  OAI221XL U671 ( .A0(counter_x[3]), .A1(bin[7]), .B0(n301), .B1(bin[15]), 
        .C0(n740), .Y(n306) );
  NOR2X1 U672 ( .A(n841), .B(n301), .Y(n332) );
  AO22X1 U673 ( .A0(n332), .A1(bin[14]), .B0(n574), .B1(bin[2]), .Y(n315) );
  NAND4BX1 U674 ( .AN(n315), .B(n314), .C(n642), .D(n313), .Y(n322) );
  AO22X1 U675 ( .A0(n332), .A1(bin[12]), .B0(n574), .B1(bin[0]), .Y(n320) );
  NAND4BX1 U676 ( .AN(n320), .B(n319), .C(n303), .D(n318), .Y(n321) );
  NOR2BX1 U677 ( .AN(n330), .B(counter_y[0]), .Y(n331) );
  CLKINVX1 U678 ( .A(n331), .Y(n647) );
  AND4X1 U679 ( .A(n717), .B(n888), .C(counter_x[6]), .D(n642), .Y(n333) );
  NOR2X1 U680 ( .A(n641), .B(n576), .Y(n570) );
  NOR4XL U681 ( .A(counter_y[6]), .B(counter_y[1]), .C(counter_y[5]), .D(
        counter_y[4]), .Y(n334) );
  NOR3X1 U682 ( .A(n853), .B(counter_y[2]), .C(n335), .Y(n654) );
  NOR2XL U683 ( .A(counter_x[6]), .B(n888), .Y(n336) );
  NAND2X1 U684 ( .A(n340), .B(fwd_done), .Y(n593) );
  OAI22XL U685 ( .A0(n647), .A1(n592), .B0(n654), .B1(n593), .Y(n339) );
  XNOR2X1 U686 ( .A(n374), .B(n888), .Y(n371) );
  NAND2X1 U687 ( .A(n641), .B(n341), .Y(n733) );
  NOR2X1 U688 ( .A(n733), .B(n301), .Y(n578) );
  OAI21XL U689 ( .A0(n888), .A1(n578), .B0(n732), .Y(n342) );
  AOI2BB2X1 U690 ( .B0(n738), .B1(n371), .A0N(n342), .A1N(n716), .Y(n343) );
  AOI2BB2X1 U691 ( .B0(n742), .B1(n343), .A0N(n739), .A1N(n888), .Y(n344) );
  CLKINVX1 U692 ( .A(n352), .Y(n527) );
  NAND2X1 U693 ( .A(n355), .B(n723), .Y(n351) );
  NOR2X1 U694 ( .A(n794), .B(n868), .Y(n791) );
  NAND2X2 U695 ( .A(n626), .B(n353), .Y(n823) );
  INVX4 U696 ( .A(n823), .Y(n821) );
  NOR2X1 U697 ( .A(n821), .B(n303), .Y(n354) );
  XNOR2X1 U698 ( .A(n642), .B(n641), .Y(n639) );
  NOR2X1 U699 ( .A(n722), .B(n355), .Y(n356) );
  XOR2X1 U700 ( .A(n357), .B(n798), .Y(n361) );
  NOR2X1 U701 ( .A(n794), .B(n864), .Y(n364) );
  NOR2X1 U702 ( .A(n821), .B(n841), .Y(n359) );
  XNOR2X1 U703 ( .A(n367), .B(n740), .Y(n737) );
  XOR2X1 U704 ( .A(n360), .B(n798), .Y(n363) );
  NOR2X1 U705 ( .A(n364), .B(n363), .Y(n779) );
  NOR2X1 U706 ( .A(n785), .B(n779), .Y(n366) );
  NAND2X1 U707 ( .A(n364), .B(n363), .Y(n780) );
  OAI21X1 U708 ( .A0(n779), .A1(n786), .B0(n780), .Y(n365) );
  AOI21X1 U709 ( .A0(n791), .A1(n366), .B0(n365), .Y(n583) );
  NOR2X1 U710 ( .A(n794), .B(n863), .Y(n381) );
  NOR2X1 U711 ( .A(n821), .B(n301), .Y(n369) );
  XOR2X1 U712 ( .A(n368), .B(counter_x[3]), .Y(n635) );
  XOR2X1 U713 ( .A(n370), .B(n798), .Y(n380) );
  NOR2X1 U714 ( .A(n381), .B(n380), .Y(n584) );
  NOR2X1 U715 ( .A(n794), .B(n861), .Y(n383) );
  XOR2X1 U716 ( .A(n373), .B(n798), .Y(n382) );
  NOR2X1 U717 ( .A(n383), .B(n382), .Y(n773) );
  NOR2X1 U718 ( .A(n584), .B(n773), .Y(n588) );
  NOR2X1 U719 ( .A(n794), .B(n857), .Y(n385) );
  NOR2X1 U720 ( .A(n821), .B(n854), .Y(n375) );
  XOR2X1 U721 ( .A(n377), .B(n717), .Y(n629) );
  XOR2X1 U722 ( .A(n376), .B(n798), .Y(n384) );
  NOR2X1 U723 ( .A(n385), .B(n384), .Y(n761) );
  NOR2X1 U724 ( .A(n794), .B(n858), .Y(n387) );
  NAND2X1 U725 ( .A(n377), .B(n854), .Y(n395) );
  XNOR2X1 U726 ( .A(n395), .B(counter_x[6]), .Y(n720) );
  XOR2X1 U727 ( .A(n379), .B(n798), .Y(n386) );
  NOR2X1 U728 ( .A(n387), .B(n386), .Y(n763) );
  NOR2X1 U729 ( .A(n761), .B(n763), .Y(n389) );
  NAND2X1 U730 ( .A(n588), .B(n389), .Y(n391) );
  NAND2X1 U731 ( .A(n381), .B(n380), .Y(n769) );
  NAND2X1 U732 ( .A(n383), .B(n382), .Y(n774) );
  OAI21X1 U733 ( .A0(n773), .A1(n769), .B0(n774), .Y(n587) );
  NAND2X1 U734 ( .A(n385), .B(n384), .Y(n760) );
  OAI21XL U735 ( .A0(n763), .A1(n760), .B0(n764), .Y(n388) );
  AOI21X1 U736 ( .A0(n587), .A1(n389), .B0(n388), .Y(n390) );
  OAI21X2 U737 ( .A0(n583), .A1(n391), .B0(n390), .Y(n598) );
  OA22X1 U738 ( .A0(n794), .A1(n855), .B0(n821), .B1(n853), .Y(n394) );
  NOR2X2 U739 ( .A(n714), .B(n302), .Y(n547) );
  OAI21XL U740 ( .A0(n622), .A1(n547), .B0(n853), .Y(n393) );
  NAND2X1 U741 ( .A(n394), .B(n393), .Y(n404) );
  AND2X2 U742 ( .A(n396), .B(n796), .Y(n403) );
  NOR2X1 U743 ( .A(n404), .B(n403), .Y(n603) );
  CLKINVX1 U744 ( .A(n603), .Y(n599) );
  OA22X1 U745 ( .A0(n794), .A1(n856), .B0(n821), .B1(n843), .Y(n398) );
  XNOR2X1 U746 ( .A(counter_y[0]), .B(counter_y[1]), .Y(n660) );
  NAND2X1 U747 ( .A(n398), .B(n397), .Y(n405) );
  XOR2X1 U748 ( .A(n403), .B(n798), .Y(n399) );
  BUFX4 U749 ( .A(n399), .Y(n437) );
  NOR2X1 U750 ( .A(n405), .B(n437), .Y(n400) );
  CLKINVX1 U751 ( .A(n400), .Y(n605) );
  NAND2X1 U752 ( .A(n599), .B(n605), .Y(n610) );
  OA22X1 U753 ( .A0(n794), .A1(n862), .B0(n821), .B1(n844), .Y(n402) );
  XNOR2X1 U754 ( .A(n411), .B(counter_y[2]), .Y(n672) );
  NOR2X1 U755 ( .A(n408), .B(n437), .Y(n612) );
  NAND2X1 U756 ( .A(n404), .B(n403), .Y(n602) );
  NAND2X1 U757 ( .A(n405), .B(n437), .Y(n604) );
  OAI21X1 U758 ( .A0(n609), .A1(n612), .B0(n613), .Y(n409) );
  AOI21X2 U759 ( .A0(n598), .A1(n410), .B0(n409), .Y(n758) );
  OA22X1 U760 ( .A0(n794), .A1(n867), .B0(n821), .B1(n845), .Y(n415) );
  XNOR2X1 U761 ( .A(n417), .B(counter_y[3]), .Y(n677) );
  ADDHXL U762 ( .A(counter_y[2]), .B(n412), .CO(n418), .S(n671) );
  OA22X1 U763 ( .A0(n794), .A1(n869), .B0(n821), .B1(n846), .Y(n421) );
  XNOR2X1 U764 ( .A(n424), .B(counter_y[4]), .Y(n664) );
  ADDHXL U765 ( .A(counter_y[3]), .B(n418), .CO(n425), .S(n676) );
  OR2X1 U766 ( .A(n422), .B(n437), .Y(n750) );
  OA22X1 U767 ( .A0(n794), .A1(n871), .B0(n821), .B1(n847), .Y(n428) );
  XNOR2X1 U768 ( .A(n430), .B(counter_y[5]), .Y(n668) );
  ADDHXL U769 ( .A(counter_y[4]), .B(n425), .CO(n433), .S(n663) );
  OAI21X1 U770 ( .A0(n747), .A1(n743), .B0(n744), .Y(n442) );
  XNOR2X1 U771 ( .A(n431), .B(counter_y[6]), .Y(n656) );
  OAI22XL U772 ( .A0(n794), .A1(n874), .B0(n821), .B1(n849), .Y(n432) );
  ADDHXL U773 ( .A(counter_y[5]), .B(n433), .CO(n434), .S(n667) );
  XOR2X1 U774 ( .A(n434), .B(counter_y[6]), .Y(n652) );
  XOR2X1 U775 ( .A(n442), .B(n441), .Y(n443) );
  CLKINVX1 U776 ( .A(res_do[1]), .Y(n522) );
  CLKINVX1 U777 ( .A(res_do[4]), .Y(n814) );
  CLKINVX1 U778 ( .A(res_do[3]), .Y(n818) );
  AOI22X4 U779 ( .A0(n811), .A1(n814), .B0(n816), .B1(n818), .Y(n451) );
  CLKINVX1 U780 ( .A(res_do[6]), .Y(n528) );
  CLKINVX1 U781 ( .A(res_do[7]), .Y(n539) );
  OAI21XL U782 ( .A0(min[0]), .A1(min[1]), .B0(n522), .Y(n461) );
  OAI22XL U783 ( .A0(min[3]), .A1(n818), .B0(min[2]), .B1(n892), .Y(n459) );
  OAI22XL U784 ( .A0(res_do[4]), .A1(n860), .B0(n848), .B1(res_do[3]), .Y(n462) );
  OAI22XL U785 ( .A0(min[4]), .A1(n814), .B0(min[5]), .B1(n810), .Y(n465) );
  OAI21XL U786 ( .A0(n466), .A1(n465), .B0(n464), .Y(n468) );
  NAND2BX1 U787 ( .AN(min[6]), .B(res_do[6]), .Y(n467) );
  AOI2BB2X1 U788 ( .B0(n468), .B1(n467), .A0N(res_do[7]), .A1N(n870), .Y(n470)
         );
  OAI21XL U789 ( .A0(min[7]), .A1(n539), .B0(n731), .Y(n469) );
  NOR3X1 U790 ( .A(n474), .B(n470), .C(n469), .Y(n471) );
  AND2X8 U791 ( .A(n472), .B(n471), .Y(n824) );
  NAND3X4 U792 ( .A(n478), .B(n477), .C(n476), .Y(n483) );
  NOR2X1 U793 ( .A(n481), .B(n480), .Y(n482) );
  NAND2X4 U794 ( .A(n483), .B(n482), .Y(n516) );
  NAND2X2 U795 ( .A(n695), .B(min[1]), .Y(n488) );
  NAND2X4 U796 ( .A(res_di[1]), .B(n872), .Y(n484) );
  NOR2X4 U797 ( .A(n508), .B(n497), .Y(n500) );
  OAI2BB1X4 U798 ( .A0N(min[6]), .A1N(n501), .B0(n500), .Y(n513) );
  OAI21X2 U799 ( .A0(n511), .A1(n510), .B0(n509), .Y(n512) );
  NAND4X8 U800 ( .A(n515), .B(n514), .C(n513), .D(n512), .Y(n529) );
  OR2X8 U801 ( .A(n516), .B(n529), .Y(n517) );
  OAI211X1 U802 ( .A0(n825), .A1(n528), .B0(n519), .C0(n821), .Y(n270) );
  NOR3X2 U803 ( .A(n824), .B(n819), .C(n872), .Y(n520) );
  OAI211X1 U804 ( .A0(n825), .A1(n522), .B0(n521), .C0(n821), .Y(n275) );
  INVX1 U805 ( .A(n300), .Y(n524) );
  NAND2X6 U806 ( .A(reset), .B(n523), .Y(n693) );
  NAND2X2 U807 ( .A(res_di[1]), .B(res_di[0]), .Y(n683) );
  NOR2X2 U808 ( .A(n705), .B(n704), .Y(n533) );
  NOR3X6 U809 ( .A(n529), .B(n527), .C(n693), .Y(n709) );
  CLKINVX1 U810 ( .A(n693), .Y(n540) );
  AOI2BB2X1 U811 ( .B0(n709), .B1(res_di[6]), .A0N(n540), .A1N(n528), .Y(n531)
         );
  NAND2X1 U812 ( .A(n533), .B(res_di[6]), .Y(n535) );
  XOR2X1 U813 ( .A(n535), .B(n534), .Y(n543) );
  XOR2X1 U814 ( .A(\DP_OP_154_135_757/n1 ), .B(min[7]), .Y(n536) );
  OAI211X1 U815 ( .A0(n540), .A1(n539), .B0(n538), .C0(n537), .Y(n541) );
  AO21X4 U816 ( .A0(n543), .A1(n542), .B0(n541), .Y(n262) );
  AOI22X1 U817 ( .A0(n708), .A1(n878), .B0(n300), .B1(n544), .Y(n546) );
  AOI22X1 U818 ( .A0(n709), .A1(res_di[0]), .B0(res_do[0]), .B1(n693), .Y(n545) );
  NOR2X1 U819 ( .A(n548), .B(n593), .Y(n649) );
  OAI211XL U820 ( .A0(n715), .A1(n550), .B0(n722), .C0(n549), .Y(next_state[2]) );
  CLKBUFX3 U821 ( .A(reset), .Y(n891) );
  OAI21XL U822 ( .A0(n839), .A1(n553), .B0(n821), .Y(n554) );
  NAND3X1 U823 ( .A(n731), .B(n557), .C(counter[2]), .Y(n713) );
  OAI21XL U824 ( .A0(n556), .A1(n879), .B0(n555), .Y(n287) );
  OAI21XL U825 ( .A0(counter[2]), .A1(n562), .B0(n561), .Y(n289) );
  NOR2BX1 U826 ( .AN(n565), .B(sti_addr[3]), .Y(n566) );
  NOR2X4 U827 ( .A(n566), .B(n646), .Y(n837) );
  OAI21XL U828 ( .A0(n837), .A1(n881), .B0(n567), .Y(n260) );
  NAND3X1 U829 ( .A(n568), .B(counter[4]), .C(counter[3]), .Y(n729) );
  OAI21XL U830 ( .A0(n729), .A1(n877), .B0(counter[6]), .Y(n569) );
  OAI31XL U831 ( .A0(n729), .A1(counter[6]), .A2(n877), .B0(n569), .Y(n285) );
  OAI31XL U832 ( .A0(n633), .A1(n571), .A2(n647), .B0(n302), .Y(n284) );
  AOI22XL U833 ( .A0(n573), .A1(n852), .B0(n572), .B1(n839), .Y(n582) );
  OAI31XL U834 ( .A0(n717), .A1(n888), .A2(counter_x[6]), .B0(n641), .Y(n575)
         );
  OAI31XL U835 ( .A0(n580), .A1(n649), .A2(n579), .B0(n739), .Y(n581) );
  OAI211XL U836 ( .A0(cur_state[0]), .A1(n582), .B0(n581), .C0(n646), .Y(
        next_state[0]) );
  CLKINVX1 U837 ( .A(n583), .Y(n772) );
  XOR2X1 U838 ( .A(n772), .B(n585), .Y(n586) );
  OAI21XL U839 ( .A0(n803), .A1(n863), .B0(n586), .Y(n222) );
  AOI21X1 U840 ( .A0(n772), .A1(n588), .B0(n587), .Y(n762) );
  XNOR2X1 U841 ( .A(n762), .B(n590), .Y(n591) );
  OAI21XL U842 ( .A0(n803), .A1(n857), .B0(n591), .Y(n220) );
  NOR2X2 U843 ( .A(n633), .B(n592), .Y(n675) );
  NOR2X1 U844 ( .A(n633), .B(n593), .Y(n653) );
  NOR2X2 U845 ( .A(n675), .B(n653), .Y(n679) );
  AND2X1 U846 ( .A(n853), .B(n647), .Y(n594) );
  OAI21XL U847 ( .A0(n679), .A1(n597), .B0(n596), .Y(n232) );
  CLKINVX1 U848 ( .A(n598), .Y(n611) );
  XNOR2X1 U849 ( .A(n611), .B(n600), .Y(n601) );
  OAI21XL U850 ( .A0(n803), .A1(n855), .B0(n601), .Y(n218) );
  OAI21XL U851 ( .A0(n611), .A1(n603), .B0(n602), .Y(n607) );
  XOR2X1 U852 ( .A(n607), .B(n606), .Y(n608) );
  OAI21XL U853 ( .A0(n611), .A1(n610), .B0(n609), .Y(n616) );
  XOR2X1 U854 ( .A(n616), .B(n615), .Y(n617) );
  XOR2X1 U855 ( .A(fwd_done), .B(sti_addr[9]), .Y(n618) );
  XOR2X1 U856 ( .A(\DP_OP_41J1_122_3547/n2 ), .B(n618), .Y(n619) );
  OAI21XL U857 ( .A0(n633), .A1(n717), .B0(n716), .Y(n628) );
  OAI21XL U858 ( .A0(n739), .A1(n717), .B0(n630), .Y(n631) );
  OAI21XL U859 ( .A0(n633), .A1(n733), .B0(n301), .Y(n634) );
  OAI21XL U860 ( .A0(counter_x[3]), .A1(n739), .B0(n636), .Y(n637) );
  OAI21XL U861 ( .A0(n642), .A1(n739), .B0(n640), .Y(n645) );
  AO22X1 U862 ( .A0(n732), .A1(n795), .B0(n876), .B1(n738), .Y(n648) );
  OAI21XL U863 ( .A0(n649), .A1(n648), .B0(n739), .Y(n650) );
  NOR2X1 U864 ( .A(n655), .B(n654), .Y(n678) );
  OAI21XL U865 ( .A0(n682), .A1(n681), .B0(n680), .Y(n229) );
  CLKINVX1 U866 ( .A(n683), .Y(n688) );
  XNOR2X1 U867 ( .A(n688), .B(n684), .Y(n685) );
  AOI22X1 U868 ( .A0(n709), .A1(res_di[2]), .B0(res_do[2]), .B1(n693), .Y(n686) );
  NAND2X1 U869 ( .A(n688), .B(res_di[2]), .Y(n690) );
  XOR2X1 U870 ( .A(n690), .B(n689), .Y(n691) );
  XNOR2X1 U871 ( .A(n695), .B(res_di[0]), .Y(n696) );
  AOI22X1 U872 ( .A0(n708), .A1(\C1/DATA1_1 ), .B0(n300), .B1(n696), .Y(n698)
         );
  AOI22X1 U873 ( .A0(n709), .A1(res_di[1]), .B0(res_do[1]), .B1(n693), .Y(n697) );
  XNOR2X1 U874 ( .A(n700), .B(n699), .Y(n701) );
  AOI22X1 U875 ( .A0(n708), .A1(\C1/DATA1_4 ), .B0(n300), .B1(n701), .Y(n703)
         );
  AOI22X1 U876 ( .A0(n709), .A1(n811), .B0(res_do[4]), .B1(n693), .Y(n702) );
  XOR2X1 U877 ( .A(n705), .B(n704), .Y(n706) );
  AOI22X1 U878 ( .A0(n708), .A1(\C1/DATA1_5 ), .B0(n300), .B1(n706), .Y(n711)
         );
  AOI22X1 U879 ( .A0(n709), .A1(n807), .B0(res_do[5]), .B1(n693), .Y(n710) );
  NOR3X2 U880 ( .A(n852), .B(n839), .C(n842), .Y(N699) );
  OAI21XL U881 ( .A0(n713), .A1(counter[3]), .B0(n712), .Y(n288) );
  OAI2BB2XL U882 ( .B0(n715), .B1(n714), .A0N(n821), .A1N(res_rd), .Y(n278) );
  AOI2BB2X1 U883 ( .B0(n742), .B1(n721), .A0N(n739), .A1N(counter_x[6]), .Y(
        n233) );
  NOR2XL U884 ( .A(n724), .B(n723), .Y(n725) );
  OA21XL U885 ( .A0(n727), .A1(counter[1]), .B0(n726), .Y(n291) );
  OAI21XL U886 ( .A0(n729), .A1(counter[5]), .B0(n728), .Y(n286) );
  OAI21XL U887 ( .A0(n731), .A1(n851), .B0(n730), .Y(n290) );
  NOR2XL U888 ( .A(n795), .B(n303), .Y(n734) );
  OAI21XL U889 ( .A0(n734), .A1(n740), .B0(n733), .Y(n735) );
  AOI2BB2X1 U890 ( .B0(n738), .B1(n737), .A0N(n736), .A1N(n735), .Y(n741) );
  AOI2BB2X1 U891 ( .B0(n742), .B1(n741), .A0N(n740), .A1N(n739), .Y(n281) );
  XNOR2X1 U892 ( .A(n747), .B(n746), .Y(n748) );
  OAI21XL U893 ( .A0(n803), .A1(n871), .B0(n748), .Y(n213) );
  XOR2X1 U894 ( .A(n752), .B(n751), .Y(n753) );
  OAI21XL U895 ( .A0(n803), .A1(n869), .B0(n753), .Y(n214) );
  XNOR2X1 U896 ( .A(n758), .B(n757), .Y(n759) );
  OAI21XL U897 ( .A0(n803), .A1(n867), .B0(n759), .Y(n215) );
  OAI21XL U898 ( .A0(n762), .A1(n761), .B0(n760), .Y(n767) );
  XOR2X1 U899 ( .A(n767), .B(n766), .Y(n768) );
  OAI21XL U900 ( .A0(n803), .A1(n858), .B0(n768), .Y(n219) );
  XNOR2X1 U901 ( .A(n777), .B(n776), .Y(n778) );
  OAI21XL U902 ( .A0(n803), .A1(n861), .B0(n778), .Y(n221) );
  OAI21XL U903 ( .A0(n789), .A1(n785), .B0(n786), .Y(n783) );
  XOR2X1 U904 ( .A(n783), .B(n782), .Y(n784) );
  OAI21XL U905 ( .A0(n803), .A1(n864), .B0(n784), .Y(n223) );
  XNOR2X1 U906 ( .A(n789), .B(n788), .Y(n790) );
  OAI21XL U907 ( .A0(n803), .A1(n859), .B0(n790), .Y(n224) );
  OR2X1 U908 ( .A(n791), .B(n798), .Y(n793) );
  OAI21XL U909 ( .A0(n821), .A1(n795), .B0(n794), .Y(n797) );
  XOR2X1 U910 ( .A(n799), .B(n798), .Y(n800) );
  XOR2X1 U911 ( .A(n801), .B(n800), .Y(n802) );
  OAI21XL U912 ( .A0(n803), .A1(n868), .B0(n802), .Y(n225) );
  AOI21X1 U913 ( .A0(n824), .A1(res_do[7]), .B0(n823), .Y(n805) );
  NOR2X4 U914 ( .A(n824), .B(n865), .Y(n808) );
  NOR2X4 U915 ( .A(n824), .B(n860), .Y(n812) );
  NOR2X4 U916 ( .A(n824), .B(n873), .Y(n820) );
  AOI21X1 U917 ( .A0(n824), .A1(res_do[0]), .B0(n823), .Y(n827) );
  NAND3X2 U918 ( .A(n825), .B(n828), .C(min[0]), .Y(n826) );
  OAI21XL U919 ( .A0(n837), .A1(n875), .B0(n829), .Y(n261) );
  OAI21XL U920 ( .A0(n837), .A1(n850), .B0(n830), .Y(n259) );
  OAI21XL U921 ( .A0(n837), .A1(n883), .B0(n831), .Y(n257) );
  OAI21XL U922 ( .A0(n837), .A1(n884), .B0(n832), .Y(n256) );
  OAI21XL U923 ( .A0(n837), .A1(n885), .B0(n833), .Y(n255) );
  OAI21XL U924 ( .A0(n837), .A1(n886), .B0(n834), .Y(n254) );
  OAI21XL U925 ( .A0(n837), .A1(n882), .B0(n835), .Y(n253) );
  OAI21XL U926 ( .A0(n837), .A1(n887), .B0(n836), .Y(n258) );
endmodule

