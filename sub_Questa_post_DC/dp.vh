/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sun Apr 28 02:16:10 2024
/////////////////////////////////////////////////////////////


module dp ( clka, clkb, restart, new_game, set_board_flag, set_diff_flag, 
        row_flag, col_flag, val_flag, check_flag, rand_setup, rand_A, rand_B, 
        diff_cell_val, solved, fill_flag, user_board_0, user_board_1, 
        user_board_2, user_board_3, user_board_4, user_board_5, user_board_6, 
        user_board_7, user_board_8, user_board_9, user_board_10, user_board_11, 
        user_board_12, user_board_13, user_board_14, user_board_15, 
        real_board_0, real_board_1, real_board_2, real_board_3, real_board_4, 
        real_board_5, real_board_6, real_board_7, real_board_8, real_board_9, 
        real_board_10, real_board_11, real_board_12, real_board_13, 
        real_board_14, real_board_15 );
  input [3:0] rand_setup;
  input [3:0] rand_A;
  input [3:0] rand_B;
  input [1:0] diff_cell_val;
  output [15:0] fill_flag;
  output [2:0] user_board_0;
  output [2:0] user_board_1;
  output [2:0] user_board_2;
  output [2:0] user_board_3;
  output [2:0] user_board_4;
  output [2:0] user_board_5;
  output [2:0] user_board_6;
  output [2:0] user_board_7;
  output [2:0] user_board_8;
  output [2:0] user_board_9;
  output [2:0] user_board_10;
  output [2:0] user_board_11;
  output [2:0] user_board_12;
  output [2:0] user_board_13;
  output [2:0] user_board_14;
  output [2:0] user_board_15;
  output [2:0] real_board_0;
  output [2:0] real_board_1;
  output [2:0] real_board_2;
  output [2:0] real_board_3;
  output [2:0] real_board_4;
  output [2:0] real_board_5;
  output [2:0] real_board_6;
  output [2:0] real_board_7;
  output [2:0] real_board_8;
  output [2:0] real_board_9;
  output [2:0] real_board_10;
  output [2:0] real_board_11;
  output [2:0] real_board_12;
  output [2:0] real_board_13;
  output [2:0] real_board_14;
  output [2:0] real_board_15;
  input clka, clkb, restart, new_game, set_board_flag, set_diff_flag, row_flag,
         col_flag, val_flag, check_flag;
  output solved;
  wire   temp_solved, N509, N510, N511, N512, N513, N514, N515, N516, N517,
         N518, N519, N520, N521, N522, N523, N524, N525, N526, N527, N528,
         N529, N530, N531, N532, N533, N534, N535, N536, N537, N538, N539,
         N540, N541, N542, N543, N544, N545, N546, N547, N548, N549, N550,
         N551, N552, N553, N554, N555, N556, N557, N558, N559, N560, N561,
         N562, N563, N564, N565, N566, N567, N568, N569, N570, N571, N572,
         N573, N574, N575, N576, N577, N578, N579, N580, N581, N582, N583,
         N584, N585, N586, N587, N588, N589, N590, N591, N592, N593, N594,
         N595, N596, N597, N598, N599, N600, N601, N602, N603, N604, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n344, n346,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n391,
         n392, n393, n394, n395, n396, n397, n398, n399, n400, n401, n402,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
         n612, n613, n614, n615, n616, n617, n618, n619, n620, n621, n622,
         n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, n633,
         n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644,
         n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655,
         n656, n657, n658, n659, n660, n661, n662, n663, n664, n665, n666,
         n667, n668, n669, n670, n671, n672, n673, n674, n675, n676, n677,
         n678, n679, n680, n681, n682, n683, n684, n685, n686, n687, n688,
         n689, n690, n691, n692, n693, n694, n695, n696, n697, n698, n699,
         n700, n701, n702, n703, n704, n705, n706, n707, n708, n709, n710,
         n711, n712, n713, n714, n715, n716, n717, n718;
  wire   [2:0] temp_real_board_0;
  wire   [2:0] temp_real_board_1;
  wire   [2:0] temp_real_board_2;
  wire   [2:0] temp_real_board_3;
  wire   [2:0] temp_real_board_4;
  wire   [2:0] temp_real_board_7;
  wire   [2:0] temp_real_board_5;
  wire   [2:0] temp_real_board_6;
  wire   [2:0] temp_real_board_8;
  wire   [2:0] temp_real_board_11;
  wire   [2:0] temp_real_board_9;
  wire   [2:0] temp_real_board_10;
  wire   [2:0] temp_real_board_12;
  wire   [2:0] temp_real_board_13;
  wire   [2:0] temp_real_board_14;
  wire   [2:0] temp_real_board_15;
  wire   [1:0] current_row;
  wire   [3:0] current_cell;
  wire   [2:0] temp_user_board_0;
  wire   [2:0] temp_user_board_1;
  wire   [2:0] temp_user_board_2;
  wire   [2:0] temp_user_board_3;
  wire   [2:0] temp_user_board_4;
  wire   [2:0] temp_user_board_5;
  wire   [2:0] temp_user_board_6;
  wire   [2:0] temp_user_board_7;
  wire   [2:0] temp_user_board_8;
  wire   [2:0] temp_user_board_9;
  wire   [2:0] temp_user_board_10;
  wire   [2:0] temp_user_board_11;
  wire   [2:0] temp_user_board_12;
  wire   [2:0] temp_user_board_13;
  wire   [2:0] temp_user_board_14;
  wire   [2:0] temp_user_board_15;
  wire   [15:0] temp_fill_flag;

  DFFNEGX1 \temp_real_board_14_reg[2]  ( .D(n664), .CLK(n718), .Q(
        temp_real_board_14[2]) );
  DFFNEGX1 \temp_real_board_14_reg[1]  ( .D(n663), .CLK(n718), .Q(
        temp_real_board_14[1]) );
  DFFNEGX1 \temp_real_board_14_reg[0]  ( .D(n662), .CLK(n717), .Q(
        temp_real_board_14[0]) );
  DFFNEGX1 \temp_fill_flag_reg[15]  ( .D(n661), .CLK(n717), .Q(
        temp_fill_flag[15]) );
  DFFNEGX1 \temp_fill_flag_reg[14]  ( .D(n660), .CLK(n717), .Q(
        temp_fill_flag[14]) );
  DFFNEGX1 \temp_fill_flag_reg[13]  ( .D(n659), .CLK(n717), .Q(
        temp_fill_flag[13]) );
  DFFNEGX1 \temp_fill_flag_reg[12]  ( .D(n658), .CLK(n717), .Q(
        temp_fill_flag[12]) );
  DFFNEGX1 \temp_fill_flag_reg[11]  ( .D(n657), .CLK(n717), .Q(
        temp_fill_flag[11]) );
  DFFNEGX1 \temp_fill_flag_reg[10]  ( .D(n656), .CLK(n717), .Q(
        temp_fill_flag[10]) );
  DFFNEGX1 \temp_fill_flag_reg[9]  ( .D(n655), .CLK(n717), .Q(
        temp_fill_flag[9]) );
  DFFNEGX1 \temp_fill_flag_reg[8]  ( .D(n654), .CLK(n717), .Q(
        temp_fill_flag[8]) );
  DFFNEGX1 \temp_fill_flag_reg[7]  ( .D(n653), .CLK(n717), .Q(
        temp_fill_flag[7]) );
  DFFNEGX1 \temp_fill_flag_reg[6]  ( .D(n652), .CLK(n717), .Q(
        temp_fill_flag[6]) );
  DFFNEGX1 \temp_fill_flag_reg[5]  ( .D(n651), .CLK(n717), .Q(
        temp_fill_flag[5]) );
  DFFNEGX1 \temp_fill_flag_reg[4]  ( .D(n650), .CLK(n717), .Q(
        temp_fill_flag[4]) );
  DFFNEGX1 \temp_fill_flag_reg[3]  ( .D(n649), .CLK(n716), .Q(
        temp_fill_flag[3]) );
  DFFNEGX1 \temp_fill_flag_reg[2]  ( .D(n648), .CLK(n716), .Q(
        temp_fill_flag[2]) );
  DFFNEGX1 \temp_fill_flag_reg[1]  ( .D(n647), .CLK(n716), .Q(
        temp_fill_flag[1]) );
  DFFNEGX1 \temp_fill_flag_reg[0]  ( .D(n646), .CLK(n716), .Q(
        temp_fill_flag[0]) );
  DFFNEGX1 \temp_real_board_15_reg[2]  ( .D(n645), .CLK(n716), .Q(
        temp_real_board_15[2]) );
  DFFNEGX1 \temp_real_board_15_reg[1]  ( .D(n644), .CLK(n716), .Q(
        temp_real_board_15[1]) );
  DFFNEGX1 \temp_real_board_15_reg[0]  ( .D(n643), .CLK(n716), .Q(
        temp_real_board_15[0]) );
  DFFNEGX1 \temp_real_board_7_reg[2]  ( .D(n642), .CLK(n716), .Q(
        temp_real_board_7[2]) );
  DFFNEGX1 \temp_real_board_7_reg[1]  ( .D(n641), .CLK(n716), .Q(
        temp_real_board_7[1]) );
  DFFNEGX1 \temp_real_board_7_reg[0]  ( .D(n640), .CLK(n716), .Q(
        temp_real_board_7[0]) );
  DFFNEGX1 \temp_real_board_13_reg[2]  ( .D(n639), .CLK(n716), .Q(
        temp_real_board_13[2]) );
  DFFNEGX1 \temp_real_board_13_reg[1]  ( .D(n638), .CLK(n716), .Q(
        temp_real_board_13[1]) );
  DFFNEGX1 \temp_real_board_13_reg[0]  ( .D(n637), .CLK(n716), .Q(
        temp_real_board_13[0]) );
  DFFNEGX1 \temp_real_board_12_reg[2]  ( .D(n636), .CLK(n715), .Q(
        temp_real_board_12[2]) );
  DFFNEGX1 \temp_real_board_12_reg[1]  ( .D(n635), .CLK(n715), .Q(
        temp_real_board_12[1]) );
  DFFNEGX1 \temp_real_board_12_reg[0]  ( .D(n634), .CLK(n715), .Q(
        temp_real_board_12[0]) );
  DFFNEGX1 \temp_real_board_9_reg[2]  ( .D(n633), .CLK(n715), .Q(
        temp_real_board_9[2]) );
  DFFNEGX1 \temp_real_board_9_reg[1]  ( .D(n632), .CLK(n715), .Q(
        temp_real_board_9[1]) );
  DFFNEGX1 \temp_real_board_9_reg[0]  ( .D(n631), .CLK(n715), .Q(
        temp_real_board_9[0]) );
  DFFNEGX1 \temp_real_board_11_reg[2]  ( .D(n630), .CLK(n715), .Q(
        temp_real_board_11[2]) );
  DFFNEGX1 \temp_real_board_11_reg[1]  ( .D(n629), .CLK(n715), .Q(
        temp_real_board_11[1]) );
  DFFNEGX1 \temp_real_board_11_reg[0]  ( .D(n628), .CLK(n715), .Q(
        temp_real_board_11[0]) );
  DFFNEGX1 \temp_real_board_0_reg[2]  ( .D(n627), .CLK(n715), .Q(
        temp_real_board_0[2]) );
  DFFNEGX1 \temp_real_board_0_reg[1]  ( .D(n626), .CLK(n715), .Q(
        temp_real_board_0[1]) );
  DFFNEGX1 \temp_real_board_0_reg[0]  ( .D(n625), .CLK(n715), .Q(
        temp_real_board_0[0]) );
  DFFNEGX1 \temp_real_board_1_reg[2]  ( .D(n624), .CLK(n715), .Q(
        temp_real_board_1[2]) );
  DFFNEGX1 \temp_real_board_1_reg[1]  ( .D(n623), .CLK(n714), .Q(
        temp_real_board_1[1]) );
  DFFNEGX1 \temp_real_board_1_reg[0]  ( .D(n622), .CLK(n714), .Q(
        temp_real_board_1[0]) );
  DFFNEGX1 \temp_real_board_2_reg[2]  ( .D(n621), .CLK(n714), .Q(
        temp_real_board_2[2]) );
  DFFNEGX1 \temp_real_board_2_reg[1]  ( .D(n620), .CLK(n714), .Q(
        temp_real_board_2[1]) );
  DFFNEGX1 \temp_real_board_2_reg[0]  ( .D(n619), .CLK(n714), .Q(
        temp_real_board_2[0]) );
  DFFNEGX1 \temp_real_board_10_reg[2]  ( .D(n618), .CLK(n714), .Q(
        temp_real_board_10[2]) );
  DFFNEGX1 \temp_real_board_10_reg[1]  ( .D(n617), .CLK(n714), .Q(
        temp_real_board_10[1]) );
  DFFNEGX1 \temp_real_board_10_reg[0]  ( .D(n616), .CLK(n714), .Q(
        temp_real_board_10[0]) );
  DFFNEGX1 \temp_real_board_3_reg[2]  ( .D(n615), .CLK(n714), .Q(
        temp_real_board_3[2]) );
  DFFNEGX1 \temp_real_board_3_reg[1]  ( .D(n614), .CLK(n714), .Q(
        temp_real_board_3[1]) );
  DFFNEGX1 \temp_real_board_3_reg[0]  ( .D(n613), .CLK(n714), .Q(
        temp_real_board_3[0]) );
  DFFNEGX1 \temp_real_board_4_reg[2]  ( .D(n612), .CLK(n714), .Q(
        temp_real_board_4[2]) );
  DFFNEGX1 \temp_real_board_4_reg[1]  ( .D(n611), .CLK(n714), .Q(
        temp_real_board_4[1]) );
  DFFNEGX1 \temp_real_board_4_reg[0]  ( .D(n610), .CLK(n713), .Q(
        temp_real_board_4[0]) );
  DFFNEGX1 \temp_real_board_5_reg[2]  ( .D(n609), .CLK(n713), .Q(
        temp_real_board_5[2]) );
  DFFNEGX1 \temp_real_board_5_reg[1]  ( .D(n608), .CLK(n713), .Q(
        temp_real_board_5[1]) );
  DFFNEGX1 \temp_real_board_5_reg[0]  ( .D(n607), .CLK(n713), .Q(
        temp_real_board_5[0]) );
  DFFNEGX1 \temp_real_board_6_reg[2]  ( .D(n606), .CLK(n713), .Q(
        temp_real_board_6[2]) );
  DFFNEGX1 \temp_real_board_6_reg[1]  ( .D(n605), .CLK(n713), .Q(
        temp_real_board_6[1]) );
  DFFNEGX1 \temp_real_board_6_reg[0]  ( .D(n604), .CLK(n713), .Q(
        temp_real_board_6[0]) );
  DFFNEGX1 \temp_real_board_8_reg[2]  ( .D(n603), .CLK(n713), .Q(
        temp_real_board_8[2]) );
  DFFNEGX1 \temp_real_board_8_reg[1]  ( .D(n602), .CLK(n713), .Q(
        temp_real_board_8[1]) );
  DFFNEGX1 \temp_real_board_8_reg[0]  ( .D(n601), .CLK(n713), .Q(
        temp_real_board_8[0]) );
  DFFNEGX1 \current_row_reg[1]  ( .D(n600), .CLK(n713), .Q(current_row[1]) );
  DFFNEGX1 \current_row_reg[0]  ( .D(n599), .CLK(n713), .Q(current_row[0]) );
  DFFNEGX1 \current_cell_reg[3]  ( .D(n598), .CLK(n713), .Q(current_cell[3])
         );
  DFFNEGX1 \current_cell_reg[2]  ( .D(n597), .CLK(n712), .Q(current_cell[2])
         );
  DFFNEGX1 \current_cell_reg[1]  ( .D(n596), .CLK(n712), .Q(current_cell[1])
         );
  DFFNEGX1 \current_cell_reg[0]  ( .D(n595), .CLK(n712), .Q(current_cell[0])
         );
  DFFNEGX1 \temp_user_board_15_reg[1]  ( .D(n568), .CLK(n712), .Q(
        temp_user_board_15[1]) );
  DFFNEGX1 \temp_user_board_15_reg[2]  ( .D(n569), .CLK(n712), .Q(
        temp_user_board_15[2]) );
  DFFNEGX1 \temp_user_board_15_reg[0]  ( .D(n570), .CLK(n712), .Q(
        temp_user_board_15[0]) );
  DFFNEGX1 \temp_user_board_14_reg[1]  ( .D(n571), .CLK(n712), .Q(
        temp_user_board_14[1]) );
  DFFNEGX1 \temp_user_board_14_reg[2]  ( .D(n572), .CLK(n712), .Q(
        temp_user_board_14[2]) );
  DFFNEGX1 \temp_user_board_14_reg[0]  ( .D(n573), .CLK(n712), .Q(
        temp_user_board_14[0]) );
  DFFNEGX1 \temp_user_board_13_reg[1]  ( .D(n574), .CLK(n712), .Q(
        temp_user_board_13[1]) );
  DFFNEGX1 \temp_user_board_13_reg[2]  ( .D(n575), .CLK(n712), .Q(
        temp_user_board_13[2]) );
  DFFNEGX1 \temp_user_board_13_reg[0]  ( .D(n576), .CLK(n712), .Q(
        temp_user_board_13[0]) );
  DFFNEGX1 \temp_user_board_11_reg[1]  ( .D(n580), .CLK(n712), .Q(
        temp_user_board_11[1]) );
  DFFNEGX1 \temp_user_board_11_reg[2]  ( .D(n581), .CLK(n711), .Q(
        temp_user_board_11[2]) );
  DFFNEGX1 \temp_user_board_11_reg[0]  ( .D(n582), .CLK(n711), .Q(
        temp_user_board_11[0]) );
  DFFNEGX1 \temp_user_board_10_reg[1]  ( .D(n583), .CLK(n711), .Q(
        temp_user_board_10[1]) );
  DFFNEGX1 \temp_user_board_10_reg[2]  ( .D(n584), .CLK(n711), .Q(
        temp_user_board_10[2]) );
  DFFNEGX1 \temp_user_board_10_reg[0]  ( .D(n585), .CLK(n711), .Q(
        temp_user_board_10[0]) );
  DFFNEGX1 \temp_user_board_9_reg[1]  ( .D(n586), .CLK(n711), .Q(
        temp_user_board_9[1]) );
  DFFNEGX1 \temp_user_board_9_reg[2]  ( .D(n587), .CLK(n711), .Q(
        temp_user_board_9[2]) );
  DFFNEGX1 \temp_user_board_9_reg[0]  ( .D(n588), .CLK(n711), .Q(
        temp_user_board_9[0]) );
  DFFNEGX1 \temp_user_board_7_reg[1]  ( .D(n592), .CLK(n711), .Q(
        temp_user_board_7[1]) );
  DFFNEGX1 \temp_user_board_7_reg[2]  ( .D(n593), .CLK(n711), .Q(
        temp_user_board_7[2]) );
  DFFNEGX1 \temp_user_board_7_reg[0]  ( .D(n594), .CLK(n711), .Q(
        temp_user_board_7[0]) );
  DFFNEGX1 \temp_user_board_8_reg[1]  ( .D(n589), .CLK(n711), .Q(
        temp_user_board_8[1]) );
  DFFNEGX1 \temp_user_board_8_reg[2]  ( .D(n590), .CLK(n711), .Q(
        temp_user_board_8[2]) );
  DFFNEGX1 \temp_user_board_8_reg[0]  ( .D(n591), .CLK(n710), .Q(
        temp_user_board_8[0]) );
  DFFNEGX1 \temp_user_board_12_reg[1]  ( .D(n577), .CLK(n710), .Q(
        temp_user_board_12[1]) );
  DFFNEGX1 \temp_user_board_12_reg[2]  ( .D(n578), .CLK(n710), .Q(
        temp_user_board_12[2]) );
  DFFNEGX1 \temp_user_board_12_reg[0]  ( .D(n579), .CLK(n710), .Q(
        temp_user_board_12[0]) );
  DFFNEGX1 \temp_user_board_0_reg[2]  ( .D(n567), .CLK(n710), .Q(
        temp_user_board_0[2]) );
  DFFNEGX1 \temp_user_board_0_reg[1]  ( .D(n566), .CLK(n710), .Q(
        temp_user_board_0[1]) );
  DFFNEGX1 \temp_user_board_0_reg[0]  ( .D(n565), .CLK(n710), .Q(
        temp_user_board_0[0]) );
  DFFNEGX1 \temp_user_board_1_reg[2]  ( .D(n564), .CLK(n710), .Q(
        temp_user_board_1[2]) );
  DFFNEGX1 \temp_user_board_1_reg[1]  ( .D(n563), .CLK(n710), .Q(
        temp_user_board_1[1]) );
  DFFNEGX1 \temp_user_board_1_reg[0]  ( .D(n562), .CLK(n710), .Q(
        temp_user_board_1[0]) );
  DFFNEGX1 \temp_user_board_2_reg[2]  ( .D(n561), .CLK(n710), .Q(
        temp_user_board_2[2]) );
  DFFNEGX1 \temp_user_board_2_reg[1]  ( .D(n560), .CLK(n710), .Q(
        temp_user_board_2[1]) );
  DFFNEGX1 \temp_user_board_2_reg[0]  ( .D(n559), .CLK(n710), .Q(
        temp_user_board_2[0]) );
  DFFNEGX1 \temp_user_board_3_reg[2]  ( .D(n558), .CLK(n709), .Q(
        temp_user_board_3[2]) );
  DFFNEGX1 \temp_user_board_3_reg[1]  ( .D(n557), .CLK(n709), .Q(
        temp_user_board_3[1]) );
  DFFNEGX1 \temp_user_board_3_reg[0]  ( .D(n556), .CLK(n709), .Q(
        temp_user_board_3[0]) );
  DFFNEGX1 \temp_user_board_4_reg[2]  ( .D(n555), .CLK(n709), .Q(
        temp_user_board_4[2]) );
  DFFNEGX1 \temp_user_board_4_reg[1]  ( .D(n554), .CLK(n709), .Q(
        temp_user_board_4[1]) );
  DFFNEGX1 \temp_user_board_4_reg[0]  ( .D(n553), .CLK(n709), .Q(
        temp_user_board_4[0]) );
  DFFNEGX1 \temp_user_board_5_reg[2]  ( .D(n552), .CLK(n709), .Q(
        temp_user_board_5[2]) );
  DFFNEGX1 \temp_user_board_5_reg[1]  ( .D(n551), .CLK(n709), .Q(
        temp_user_board_5[1]) );
  DFFNEGX1 \temp_user_board_5_reg[0]  ( .D(n550), .CLK(n709), .Q(
        temp_user_board_5[0]) );
  DFFNEGX1 \temp_user_board_6_reg[2]  ( .D(n549), .CLK(n709), .Q(
        temp_user_board_6[2]) );
  DFFNEGX1 \temp_user_board_6_reg[1]  ( .D(n548), .CLK(n709), .Q(
        temp_user_board_6[1]) );
  DFFNEGX1 \temp_user_board_6_reg[0]  ( .D(n547), .CLK(n709), .Q(
        temp_user_board_6[0]) );
  DFFNEGX1 temp_solved_reg ( .D(n546), .CLK(n709), .Q(temp_solved) );
  DFFNEGX1 solved_reg ( .D(n181), .CLK(n704), .Q(solved) );
  DFFNEGX1 \real_board_0_reg[2]  ( .D(N511), .CLK(n704), .Q(real_board_0[2])
         );
  DFFNEGX1 \real_board_0_reg[1]  ( .D(N510), .CLK(n704), .Q(real_board_0[1])
         );
  DFFNEGX1 \real_board_0_reg[0]  ( .D(N509), .CLK(n704), .Q(real_board_0[0])
         );
  DFFNEGX1 \real_board_1_reg[2]  ( .D(N514), .CLK(n704), .Q(real_board_1[2])
         );
  DFFNEGX1 \real_board_1_reg[1]  ( .D(N513), .CLK(n704), .Q(real_board_1[1])
         );
  DFFNEGX1 \real_board_1_reg[0]  ( .D(N512), .CLK(n704), .Q(real_board_1[0])
         );
  DFFNEGX1 \real_board_2_reg[2]  ( .D(N517), .CLK(n704), .Q(real_board_2[2])
         );
  DFFNEGX1 \real_board_2_reg[1]  ( .D(N516), .CLK(n704), .Q(real_board_2[1])
         );
  DFFNEGX1 \real_board_2_reg[0]  ( .D(N515), .CLK(n703), .Q(real_board_2[0])
         );
  DFFNEGX1 \real_board_3_reg[2]  ( .D(N520), .CLK(n703), .Q(real_board_3[2])
         );
  DFFNEGX1 \real_board_3_reg[1]  ( .D(N519), .CLK(n703), .Q(real_board_3[1])
         );
  DFFNEGX1 \real_board_3_reg[0]  ( .D(N518), .CLK(n703), .Q(real_board_3[0])
         );
  DFFNEGX1 \real_board_4_reg[2]  ( .D(N523), .CLK(n703), .Q(real_board_4[2])
         );
  DFFNEGX1 \real_board_4_reg[1]  ( .D(N522), .CLK(n703), .Q(real_board_4[1])
         );
  DFFNEGX1 \real_board_4_reg[0]  ( .D(N521), .CLK(n703), .Q(real_board_4[0])
         );
  DFFNEGX1 \real_board_5_reg[2]  ( .D(N526), .CLK(n703), .Q(real_board_5[2])
         );
  DFFNEGX1 \real_board_5_reg[1]  ( .D(N525), .CLK(n703), .Q(real_board_5[1])
         );
  DFFNEGX1 \real_board_5_reg[0]  ( .D(N524), .CLK(n703), .Q(real_board_5[0])
         );
  DFFNEGX1 \real_board_6_reg[2]  ( .D(N529), .CLK(n703), .Q(real_board_6[2])
         );
  DFFNEGX1 \real_board_6_reg[1]  ( .D(N528), .CLK(n703), .Q(real_board_6[1])
         );
  DFFNEGX1 \real_board_6_reg[0]  ( .D(N527), .CLK(n703), .Q(real_board_6[0])
         );
  DFFNEGX1 \real_board_7_reg[2]  ( .D(N532), .CLK(n702), .Q(real_board_7[2])
         );
  DFFNEGX1 \real_board_7_reg[1]  ( .D(N531), .CLK(n702), .Q(real_board_7[1])
         );
  DFFNEGX1 \real_board_7_reg[0]  ( .D(N530), .CLK(n702), .Q(real_board_7[0])
         );
  DFFNEGX1 \real_board_8_reg[2]  ( .D(N535), .CLK(n702), .Q(real_board_8[2])
         );
  DFFNEGX1 \real_board_8_reg[1]  ( .D(N534), .CLK(n702), .Q(real_board_8[1])
         );
  DFFNEGX1 \real_board_8_reg[0]  ( .D(N533), .CLK(n702), .Q(real_board_8[0])
         );
  DFFNEGX1 \real_board_9_reg[2]  ( .D(N538), .CLK(n702), .Q(real_board_9[2])
         );
  DFFNEGX1 \real_board_9_reg[1]  ( .D(N537), .CLK(n702), .Q(real_board_9[1])
         );
  DFFNEGX1 \real_board_9_reg[0]  ( .D(N536), .CLK(n702), .Q(real_board_9[0])
         );
  DFFNEGX1 \real_board_10_reg[2]  ( .D(N541), .CLK(n702), .Q(real_board_10[2])
         );
  DFFNEGX1 \real_board_10_reg[1]  ( .D(N540), .CLK(n702), .Q(real_board_10[1])
         );
  DFFNEGX1 \real_board_10_reg[0]  ( .D(N539), .CLK(n702), .Q(real_board_10[0])
         );
  DFFNEGX1 \real_board_11_reg[2]  ( .D(N544), .CLK(n702), .Q(real_board_11[2])
         );
  DFFNEGX1 \real_board_11_reg[1]  ( .D(N543), .CLK(n701), .Q(real_board_11[1])
         );
  DFFNEGX1 \real_board_11_reg[0]  ( .D(N542), .CLK(n701), .Q(real_board_11[0])
         );
  DFFNEGX1 \real_board_12_reg[2]  ( .D(N547), .CLK(n701), .Q(real_board_12[2])
         );
  DFFNEGX1 \real_board_12_reg[1]  ( .D(N546), .CLK(n701), .Q(real_board_12[1])
         );
  DFFNEGX1 \real_board_12_reg[0]  ( .D(N545), .CLK(n701), .Q(real_board_12[0])
         );
  DFFNEGX1 \real_board_13_reg[2]  ( .D(N550), .CLK(n701), .Q(real_board_13[2])
         );
  DFFNEGX1 \real_board_13_reg[1]  ( .D(N549), .CLK(n701), .Q(real_board_13[1])
         );
  DFFNEGX1 \real_board_13_reg[0]  ( .D(N548), .CLK(n701), .Q(real_board_13[0])
         );
  DFFNEGX1 \real_board_14_reg[2]  ( .D(N553), .CLK(n701), .Q(real_board_14[2])
         );
  DFFNEGX1 \real_board_14_reg[1]  ( .D(N552), .CLK(n701), .Q(real_board_14[1])
         );
  DFFNEGX1 \real_board_14_reg[0]  ( .D(N551), .CLK(n701), .Q(real_board_14[0])
         );
  DFFNEGX1 \real_board_15_reg[2]  ( .D(N556), .CLK(n701), .Q(real_board_15[2])
         );
  DFFNEGX1 \real_board_15_reg[1]  ( .D(N555), .CLK(n701), .Q(real_board_15[1])
         );
  DFFNEGX1 \real_board_15_reg[0]  ( .D(N554), .CLK(n700), .Q(real_board_15[0])
         );
  DFFNEGX1 \user_board_0_reg[2]  ( .D(N559), .CLK(n700), .Q(user_board_0[2])
         );
  DFFNEGX1 \user_board_0_reg[1]  ( .D(N558), .CLK(n700), .Q(user_board_0[1])
         );
  DFFNEGX1 \user_board_0_reg[0]  ( .D(N557), .CLK(n700), .Q(user_board_0[0])
         );
  DFFNEGX1 \user_board_1_reg[2]  ( .D(N562), .CLK(n700), .Q(user_board_1[2])
         );
  DFFNEGX1 \user_board_1_reg[1]  ( .D(N561), .CLK(n700), .Q(user_board_1[1])
         );
  DFFNEGX1 \user_board_1_reg[0]  ( .D(N560), .CLK(n700), .Q(user_board_1[0])
         );
  DFFNEGX1 \user_board_2_reg[2]  ( .D(N565), .CLK(n700), .Q(user_board_2[2])
         );
  DFFNEGX1 \user_board_2_reg[1]  ( .D(N564), .CLK(n700), .Q(user_board_2[1])
         );
  DFFNEGX1 \user_board_2_reg[0]  ( .D(N563), .CLK(n700), .Q(user_board_2[0])
         );
  DFFNEGX1 \user_board_3_reg[2]  ( .D(N568), .CLK(n700), .Q(user_board_3[2])
         );
  DFFNEGX1 \user_board_3_reg[1]  ( .D(N567), .CLK(n700), .Q(user_board_3[1])
         );
  DFFNEGX1 \user_board_3_reg[0]  ( .D(N566), .CLK(n700), .Q(user_board_3[0])
         );
  DFFNEGX1 \user_board_4_reg[2]  ( .D(N571), .CLK(n699), .Q(user_board_4[2])
         );
  DFFNEGX1 \user_board_4_reg[1]  ( .D(N570), .CLK(n699), .Q(user_board_4[1])
         );
  DFFNEGX1 \user_board_4_reg[0]  ( .D(N569), .CLK(n699), .Q(user_board_4[0])
         );
  DFFNEGX1 \user_board_5_reg[2]  ( .D(N574), .CLK(n699), .Q(user_board_5[2])
         );
  DFFNEGX1 \user_board_5_reg[1]  ( .D(N573), .CLK(n699), .Q(user_board_5[1])
         );
  DFFNEGX1 \user_board_5_reg[0]  ( .D(N572), .CLK(n699), .Q(user_board_5[0])
         );
  DFFNEGX1 \user_board_6_reg[2]  ( .D(N577), .CLK(n699), .Q(user_board_6[2])
         );
  DFFNEGX1 \user_board_6_reg[1]  ( .D(N576), .CLK(n699), .Q(user_board_6[1])
         );
  DFFNEGX1 \user_board_6_reg[0]  ( .D(N575), .CLK(n699), .Q(user_board_6[0])
         );
  DFFNEGX1 \user_board_7_reg[2]  ( .D(N580), .CLK(n699), .Q(user_board_7[2])
         );
  DFFNEGX1 \user_board_7_reg[1]  ( .D(N579), .CLK(n699), .Q(user_board_7[1])
         );
  DFFNEGX1 \user_board_7_reg[0]  ( .D(N578), .CLK(n699), .Q(user_board_7[0])
         );
  DFFNEGX1 \user_board_8_reg[2]  ( .D(N583), .CLK(n699), .Q(user_board_8[2])
         );
  DFFNEGX1 \user_board_8_reg[1]  ( .D(N582), .CLK(n698), .Q(user_board_8[1])
         );
  DFFNEGX1 \user_board_8_reg[0]  ( .D(N581), .CLK(n698), .Q(user_board_8[0])
         );
  DFFNEGX1 \user_board_9_reg[2]  ( .D(N586), .CLK(n698), .Q(user_board_9[2])
         );
  DFFNEGX1 \user_board_9_reg[1]  ( .D(N585), .CLK(n698), .Q(user_board_9[1])
         );
  DFFNEGX1 \user_board_9_reg[0]  ( .D(N584), .CLK(n698), .Q(user_board_9[0])
         );
  DFFNEGX1 \user_board_10_reg[2]  ( .D(N589), .CLK(n698), .Q(user_board_10[2])
         );
  DFFNEGX1 \user_board_10_reg[1]  ( .D(N588), .CLK(n698), .Q(user_board_10[1])
         );
  DFFNEGX1 \user_board_10_reg[0]  ( .D(N587), .CLK(n698), .Q(user_board_10[0])
         );
  DFFNEGX1 \user_board_11_reg[2]  ( .D(N592), .CLK(n698), .Q(user_board_11[2])
         );
  DFFNEGX1 \user_board_11_reg[1]  ( .D(N591), .CLK(n698), .Q(user_board_11[1])
         );
  DFFNEGX1 \user_board_11_reg[0]  ( .D(N590), .CLK(n698), .Q(user_board_11[0])
         );
  DFFNEGX1 \user_board_12_reg[2]  ( .D(N595), .CLK(n698), .Q(user_board_12[2])
         );
  DFFNEGX1 \user_board_12_reg[1]  ( .D(N594), .CLK(n698), .Q(user_board_12[1])
         );
  DFFNEGX1 \user_board_12_reg[0]  ( .D(N593), .CLK(n697), .Q(user_board_12[0])
         );
  DFFNEGX1 \user_board_13_reg[2]  ( .D(N598), .CLK(n697), .Q(user_board_13[2])
         );
  DFFNEGX1 \user_board_13_reg[1]  ( .D(N597), .CLK(n697), .Q(user_board_13[1])
         );
  DFFNEGX1 \user_board_13_reg[0]  ( .D(N596), .CLK(n697), .Q(user_board_13[0])
         );
  DFFNEGX1 \user_board_14_reg[2]  ( .D(N601), .CLK(n697), .Q(user_board_14[2])
         );
  DFFNEGX1 \user_board_14_reg[1]  ( .D(N600), .CLK(n697), .Q(user_board_14[1])
         );
  DFFNEGX1 \user_board_14_reg[0]  ( .D(N599), .CLK(n697), .Q(user_board_14[0])
         );
  DFFNEGX1 \user_board_15_reg[2]  ( .D(N604), .CLK(n697), .Q(user_board_15[2])
         );
  DFFNEGX1 \user_board_15_reg[1]  ( .D(N603), .CLK(n697), .Q(user_board_15[1])
         );
  DFFNEGX1 \user_board_15_reg[0]  ( .D(N602), .CLK(n697), .Q(user_board_15[0])
         );
  DFFNEGX1 \fill_flag_reg[15]  ( .D(n89), .CLK(n697), .Q(fill_flag[15]) );
  DFFNEGX1 \fill_flag_reg[14]  ( .D(n90), .CLK(n697), .Q(fill_flag[14]) );
  DFFNEGX1 \fill_flag_reg[13]  ( .D(n92), .CLK(n697), .Q(fill_flag[13]) );
  DFFNEGX1 \fill_flag_reg[12]  ( .D(n93), .CLK(n696), .Q(fill_flag[12]) );
  DFFNEGX1 \fill_flag_reg[11]  ( .D(n94), .CLK(n696), .Q(fill_flag[11]) );
  DFFNEGX1 \fill_flag_reg[10]  ( .D(n95), .CLK(n696), .Q(fill_flag[10]) );
  DFFNEGX1 \fill_flag_reg[9]  ( .D(n96), .CLK(n696), .Q(fill_flag[9]) );
  DFFNEGX1 \fill_flag_reg[8]  ( .D(n98), .CLK(n696), .Q(fill_flag[8]) );
  DFFNEGX1 \fill_flag_reg[7]  ( .D(n99), .CLK(n696), .Q(fill_flag[7]) );
  DFFNEGX1 \fill_flag_reg[6]  ( .D(n100), .CLK(n696), .Q(fill_flag[6]) );
  DFFNEGX1 \fill_flag_reg[5]  ( .D(n102), .CLK(n696), .Q(fill_flag[5]) );
  DFFNEGX1 \fill_flag_reg[4]  ( .D(n103), .CLK(n696), .Q(fill_flag[4]) );
  DFFNEGX1 \fill_flag_reg[3]  ( .D(n104), .CLK(n696), .Q(fill_flag[3]) );
  DFFNEGX1 \fill_flag_reg[2]  ( .D(n105), .CLK(n696), .Q(fill_flag[2]) );
  DFFNEGX1 \fill_flag_reg[1]  ( .D(n106), .CLK(n696), .Q(fill_flag[1]) );
  DFFNEGX1 \fill_flag_reg[0]  ( .D(n108), .CLK(n696), .Q(fill_flag[0]) );
  AND2X2 U3 ( .A(n265), .B(n266), .Y(n264) );
  AND2X2 U4 ( .A(n302), .B(n303), .Y(n301) );
  AND2X2 U5 ( .A(n692), .B(n340), .Y(n342) );
  AND2X2 U6 ( .A(n692), .B(n352), .Y(n354) );
  AND2X2 U7 ( .A(n692), .B(n359), .Y(n361) );
  AND2X2 U8 ( .A(n692), .B(n366), .Y(n368) );
  AND2X2 U9 ( .A(n692), .B(n374), .Y(n376) );
  AND2X2 U10 ( .A(n692), .B(n381), .Y(n383) );
  AND2X2 U11 ( .A(n692), .B(n388), .Y(n390) );
  AND2X2 U12 ( .A(n395), .B(n185), .Y(n372) );
  AND2X2 U13 ( .A(n692), .B(n396), .Y(n398) );
  AND2X2 U14 ( .A(n692), .B(n404), .Y(n406) );
  AND2X2 U15 ( .A(n692), .B(n411), .Y(n413) );
  AND2X2 U16 ( .A(n692), .B(n418), .Y(n420) );
  AND2X2 U17 ( .A(n425), .B(current_cell[2]), .Y(n402) );
  AND2X2 U18 ( .A(n692), .B(n426), .Y(n428) );
  AND2X2 U19 ( .A(n692), .B(n434), .Y(n436) );
  AND2X2 U20 ( .A(n692), .B(n442), .Y(n444) );
  AND2X2 U21 ( .A(n692), .B(n450), .Y(n452) );
  AND2X2 U22 ( .A(n425), .B(n185), .Y(n432) );
  AND2X2 U23 ( .A(n458), .B(current_cell[3]), .Y(n425) );
  AND2X2 U24 ( .A(n692), .B(n459), .Y(n461) );
  AND2X2 U25 ( .A(n395), .B(current_cell[2]), .Y(n350) );
  AND2X2 U26 ( .A(n458), .B(n184), .Y(n395) );
  AND2X2 U27 ( .A(n505), .B(n224), .Y(n504) );
  INVX2 U28 ( .A(temp_real_board_14[2]), .Y(n85) );
  INVX2 U29 ( .A(temp_real_board_14[1]), .Y(n86) );
  INVX2 U30 ( .A(temp_real_board_14[0]), .Y(n87) );
  INVX2 U31 ( .A(n471), .Y(n88) );
  INVX2 U32 ( .A(n542), .Y(n89) );
  INVX2 U33 ( .A(n541), .Y(n90) );
  INVX2 U34 ( .A(n479), .Y(n91) );
  INVX2 U35 ( .A(n540), .Y(n92) );
  INVX2 U36 ( .A(n539), .Y(n93) );
  INVX2 U37 ( .A(n536), .Y(n94) );
  INVX2 U38 ( .A(n533), .Y(n95) );
  INVX2 U39 ( .A(n532), .Y(n96) );
  INVX2 U40 ( .A(n478), .Y(n97) );
  INVX2 U41 ( .A(n530), .Y(n98) );
  INVX2 U42 ( .A(n527), .Y(n99) );
  INVX2 U43 ( .A(n524), .Y(n100) );
  INVX2 U44 ( .A(n485), .Y(n101) );
  INVX2 U45 ( .A(n520), .Y(n102) );
  INVX2 U46 ( .A(n518), .Y(n103) );
  INVX2 U47 ( .A(n517), .Y(n104) );
  INVX2 U48 ( .A(n516), .Y(n105) );
  INVX2 U49 ( .A(n515), .Y(n106) );
  INVX2 U50 ( .A(n484), .Y(n107) );
  INVX2 U51 ( .A(n513), .Y(n108) );
  INVX2 U52 ( .A(temp_real_board_15[2]), .Y(n109) );
  INVX2 U53 ( .A(temp_real_board_15[1]), .Y(n110) );
  INVX2 U54 ( .A(temp_real_board_15[0]), .Y(n111) );
  INVX2 U55 ( .A(temp_real_board_7[2]), .Y(n112) );
  INVX2 U56 ( .A(temp_real_board_7[1]), .Y(n113) );
  INVX2 U57 ( .A(temp_real_board_7[0]), .Y(n114) );
  INVX2 U58 ( .A(temp_real_board_13[2]), .Y(n115) );
  INVX2 U59 ( .A(temp_real_board_13[1]), .Y(n116) );
  INVX2 U60 ( .A(temp_real_board_13[0]), .Y(n117) );
  INVX2 U61 ( .A(temp_user_board_7[2]), .Y(n118) );
  INVX2 U62 ( .A(temp_user_board_7[1]), .Y(n119) );
  INVX2 U63 ( .A(temp_user_board_7[0]), .Y(n120) );
  INVX2 U64 ( .A(temp_user_board_8[2]), .Y(n121) );
  INVX2 U65 ( .A(temp_user_board_8[1]), .Y(n122) );
  INVX2 U66 ( .A(temp_user_board_8[0]), .Y(n123) );
  INVX2 U67 ( .A(temp_user_board_9[2]), .Y(n124) );
  INVX2 U68 ( .A(temp_user_board_9[1]), .Y(n125) );
  INVX2 U69 ( .A(temp_user_board_9[0]), .Y(n126) );
  INVX2 U70 ( .A(temp_user_board_10[2]), .Y(n127) );
  INVX2 U71 ( .A(temp_user_board_10[1]), .Y(n128) );
  INVX2 U72 ( .A(temp_user_board_10[0]), .Y(n129) );
  INVX2 U73 ( .A(temp_real_board_12[2]), .Y(n130) );
  INVX2 U74 ( .A(temp_real_board_12[1]), .Y(n131) );
  INVX2 U75 ( .A(temp_real_board_12[0]), .Y(n132) );
  INVX2 U76 ( .A(temp_user_board_11[2]), .Y(n133) );
  INVX2 U77 ( .A(temp_user_board_11[1]), .Y(n134) );
  INVX2 U78 ( .A(temp_user_board_11[0]), .Y(n135) );
  INVX2 U79 ( .A(temp_user_board_12[2]), .Y(n136) );
  INVX2 U80 ( .A(temp_user_board_12[1]), .Y(n137) );
  INVX2 U81 ( .A(temp_user_board_12[0]), .Y(n138) );
  INVX2 U82 ( .A(temp_user_board_13[2]), .Y(n139) );
  INVX2 U83 ( .A(temp_user_board_13[1]), .Y(n140) );
  INVX2 U84 ( .A(temp_user_board_13[0]), .Y(n141) );
  INVX2 U85 ( .A(temp_user_board_14[2]), .Y(n142) );
  INVX2 U86 ( .A(temp_user_board_14[1]), .Y(n143) );
  INVX2 U87 ( .A(temp_user_board_14[0]), .Y(n144) );
  INVX2 U88 ( .A(temp_real_board_9[2]), .Y(n145) );
  INVX2 U89 ( .A(temp_real_board_9[1]), .Y(n146) );
  INVX2 U90 ( .A(temp_real_board_9[0]), .Y(n147) );
  INVX2 U91 ( .A(temp_real_board_11[2]), .Y(n148) );
  INVX2 U92 ( .A(temp_real_board_11[1]), .Y(n149) );
  INVX2 U93 ( .A(temp_real_board_11[0]), .Y(n150) );
  INVX2 U94 ( .A(temp_user_board_15[2]), .Y(n151) );
  INVX2 U95 ( .A(temp_user_board_15[1]), .Y(n152) );
  INVX2 U96 ( .A(temp_user_board_15[0]), .Y(n153) );
  INVX2 U97 ( .A(temp_real_board_0[2]), .Y(n154) );
  INVX2 U98 ( .A(temp_real_board_0[1]), .Y(n155) );
  INVX2 U99 ( .A(temp_real_board_0[0]), .Y(n156) );
  INVX2 U100 ( .A(temp_real_board_1[2]), .Y(n157) );
  INVX2 U101 ( .A(temp_real_board_1[1]), .Y(n158) );
  INVX2 U102 ( .A(temp_real_board_1[0]), .Y(n159) );
  INVX2 U103 ( .A(temp_real_board_2[2]), .Y(n160) );
  INVX2 U104 ( .A(temp_real_board_2[1]), .Y(n161) );
  INVX2 U105 ( .A(temp_real_board_2[0]), .Y(n162) );
  INVX2 U106 ( .A(temp_real_board_10[2]), .Y(n163) );
  INVX2 U107 ( .A(temp_real_board_10[1]), .Y(n164) );
  INVX2 U108 ( .A(temp_real_board_10[0]), .Y(n165) );
  INVX2 U109 ( .A(temp_real_board_3[2]), .Y(n166) );
  INVX2 U110 ( .A(temp_real_board_3[1]), .Y(n167) );
  INVX2 U111 ( .A(temp_real_board_3[0]), .Y(n168) );
  INVX2 U112 ( .A(temp_real_board_4[2]), .Y(n169) );
  INVX2 U113 ( .A(temp_real_board_4[1]), .Y(n170) );
  INVX2 U114 ( .A(temp_real_board_4[0]), .Y(n171) );
  INVX2 U115 ( .A(temp_real_board_5[2]), .Y(n172) );
  INVX2 U116 ( .A(temp_real_board_5[1]), .Y(n173) );
  INVX2 U117 ( .A(temp_real_board_5[0]), .Y(n174) );
  INVX2 U118 ( .A(temp_real_board_6[2]), .Y(n175) );
  INVX2 U119 ( .A(temp_real_board_6[1]), .Y(n176) );
  INVX2 U120 ( .A(temp_real_board_6[0]), .Y(n177) );
  INVX2 U121 ( .A(temp_real_board_8[2]), .Y(n178) );
  INVX2 U122 ( .A(temp_real_board_8[1]), .Y(n179) );
  INVX2 U123 ( .A(temp_real_board_8[0]), .Y(n180) );
  INVX2 U124 ( .A(n259), .Y(n181) );
  INVX2 U125 ( .A(current_row[1]), .Y(n182) );
  INVX2 U126 ( .A(current_row[0]), .Y(n183) );
  INVX2 U127 ( .A(current_cell[3]), .Y(n184) );
  INVX2 U128 ( .A(current_cell[2]), .Y(n185) );
  INVX2 U129 ( .A(n470), .Y(n186) );
  INVX2 U130 ( .A(n441), .Y(n187) );
  INVX2 U131 ( .A(n457), .Y(n188) );
  INVX2 U132 ( .A(n449), .Y(n189) );
  INVX2 U133 ( .A(current_cell[1]), .Y(n190) );
  INVX2 U134 ( .A(current_cell[0]), .Y(n191) );
  INVX2 U135 ( .A(temp_user_board_0[2]), .Y(n192) );
  INVX2 U136 ( .A(temp_user_board_0[1]), .Y(n193) );
  INVX2 U137 ( .A(temp_user_board_0[0]), .Y(n194) );
  INVX2 U138 ( .A(temp_user_board_1[2]), .Y(n195) );
  INVX2 U139 ( .A(temp_user_board_1[1]), .Y(n196) );
  INVX2 U140 ( .A(temp_user_board_1[0]), .Y(n197) );
  INVX2 U141 ( .A(temp_user_board_2[2]), .Y(n198) );
  INVX2 U142 ( .A(temp_user_board_2[1]), .Y(n199) );
  INVX2 U143 ( .A(temp_user_board_2[0]), .Y(n200) );
  INVX2 U144 ( .A(temp_user_board_3[2]), .Y(n201) );
  INVX2 U145 ( .A(temp_user_board_3[1]), .Y(n202) );
  INVX2 U146 ( .A(temp_user_board_3[0]), .Y(n203) );
  INVX2 U147 ( .A(temp_user_board_4[2]), .Y(n204) );
  INVX2 U148 ( .A(temp_user_board_4[1]), .Y(n205) );
  INVX2 U149 ( .A(temp_user_board_4[0]), .Y(n206) );
  INVX2 U150 ( .A(temp_user_board_5[2]), .Y(n207) );
  INVX2 U151 ( .A(temp_user_board_5[1]), .Y(n208) );
  INVX2 U152 ( .A(temp_user_board_5[0]), .Y(n209) );
  INVX2 U153 ( .A(temp_user_board_6[2]), .Y(n210) );
  INVX2 U154 ( .A(temp_user_board_6[1]), .Y(n211) );
  INVX2 U155 ( .A(temp_user_board_6[0]), .Y(n212) );
  INVX2 U156 ( .A(n543), .Y(n213) );
  INVX2 U157 ( .A(n508), .Y(n214) );
  INVX2 U158 ( .A(n507), .Y(n215) );
  INVX2 U161 ( .A(n488), .Y(n218) );
  INVX2 U162 ( .A(n337), .Y(n219) );
  INVX2 U163 ( .A(set_board_flag), .Y(n220) );
  INVX2 U164 ( .A(set_diff_flag), .Y(n221) );
  INVX2 U165 ( .A(col_flag), .Y(n222) );
  INVX2 U166 ( .A(n506), .Y(n223) );
  INVX2 U167 ( .A(rand_setup[3]), .Y(n224) );
  INVX2 U168 ( .A(n502), .Y(n225) );
  INVX2 U169 ( .A(n503), .Y(n226) );
  INVX2 U170 ( .A(n668), .Y(n227) );
  INVX2 U171 ( .A(rand_setup[1]), .Y(n228) );
  INVX2 U172 ( .A(rand_setup[0]), .Y(n229) );
  INVX2 U173 ( .A(n468), .Y(n230) );
  INVX2 U174 ( .A(n351), .Y(n231) );
  INVX2 U175 ( .A(n358), .Y(n232) );
  INVX2 U176 ( .A(n365), .Y(n233) );
  INVX2 U177 ( .A(rand_A[3]), .Y(n234) );
  INVX2 U178 ( .A(rand_A[2]), .Y(n235) );
  INVX2 U179 ( .A(n387), .Y(n236) );
  INVX2 U180 ( .A(n394), .Y(n237) );
  INVX2 U181 ( .A(rand_A[1]), .Y(n238) );
  INVX2 U182 ( .A(n380), .Y(n239) );
  INVX2 U183 ( .A(n373), .Y(n240) );
  INVX2 U184 ( .A(rand_A[0]), .Y(n241) );
  INVX2 U185 ( .A(n417), .Y(n242) );
  INVX2 U186 ( .A(n424), .Y(n243) );
  INVX2 U187 ( .A(rand_B[3]), .Y(n244) );
  INVX2 U188 ( .A(n410), .Y(n245) );
  INVX2 U189 ( .A(n403), .Y(n246) );
  INVX2 U190 ( .A(rand_B[2]), .Y(n247) );
  INVX2 U191 ( .A(n448), .Y(n248) );
  INVX2 U192 ( .A(n456), .Y(n249) );
  INVX2 U193 ( .A(n433), .Y(n250) );
  INVX2 U194 ( .A(n440), .Y(n251) );
  INVX2 U195 ( .A(rand_B[1]), .Y(n252) );
  INVX2 U196 ( .A(rand_B[0]), .Y(n253) );
  INVX2 U197 ( .A(n465), .Y(n254) );
  INVX2 U198 ( .A(n463), .Y(n255) );
  INVX2 U199 ( .A(n521), .Y(n256) );
  INVX2 U200 ( .A(diff_cell_val[1]), .Y(n257) );
  INVX2 U201 ( .A(diff_cell_val[0]), .Y(n258) );
  OAI22X1 U202 ( .A(n219), .B(n259), .C(n260), .D(n261), .Y(n546) );
  NAND3X1 U203 ( .A(n262), .B(n263), .C(n264), .Y(n261) );
  NOR2X1 U204 ( .A(n267), .B(n268), .Y(n266) );
  NAND3X1 U205 ( .A(n269), .B(n270), .C(n271), .Y(n268) );
  XOR2X1 U206 ( .A(n124), .B(temp_real_board_9[2]), .Y(n271) );
  XOR2X1 U207 ( .A(n125), .B(temp_real_board_9[1]), .Y(n270) );
  XOR2X1 U208 ( .A(n126), .B(temp_real_board_9[0]), .Y(n269) );
  NAND3X1 U209 ( .A(n272), .B(n273), .C(n274), .Y(n267) );
  XOR2X1 U210 ( .A(n122), .B(temp_real_board_8[1]), .Y(n274) );
  XOR2X1 U211 ( .A(n123), .B(temp_real_board_8[0]), .Y(n273) );
  XOR2X1 U212 ( .A(n121), .B(temp_real_board_8[2]), .Y(n272) );
  NOR2X1 U213 ( .A(n275), .B(n276), .Y(n265) );
  NAND3X1 U214 ( .A(n277), .B(n278), .C(n279), .Y(n276) );
  XOR2X1 U215 ( .A(n133), .B(temp_real_board_11[2]), .Y(n279) );
  XOR2X1 U216 ( .A(n134), .B(temp_real_board_11[1]), .Y(n278) );
  XOR2X1 U217 ( .A(n135), .B(temp_real_board_11[0]), .Y(n277) );
  NAND3X1 U218 ( .A(n280), .B(n281), .C(n282), .Y(n275) );
  XOR2X1 U219 ( .A(n127), .B(temp_real_board_10[2]), .Y(n282) );
  XOR2X1 U220 ( .A(n128), .B(temp_real_board_10[1]), .Y(n281) );
  XOR2X1 U221 ( .A(n129), .B(temp_real_board_10[0]), .Y(n280) );
  NOR2X1 U222 ( .A(n283), .B(n284), .Y(n263) );
  NAND3X1 U223 ( .A(n285), .B(n286), .C(n287), .Y(n284) );
  XOR2X1 U224 ( .A(n139), .B(temp_real_board_13[2]), .Y(n287) );
  XOR2X1 U225 ( .A(n140), .B(temp_real_board_13[1]), .Y(n286) );
  XOR2X1 U226 ( .A(n141), .B(temp_real_board_13[0]), .Y(n285) );
  NAND3X1 U227 ( .A(n288), .B(n289), .C(n290), .Y(n283) );
  XOR2X1 U228 ( .A(n136), .B(temp_real_board_12[2]), .Y(n290) );
  XOR2X1 U229 ( .A(n137), .B(temp_real_board_12[1]), .Y(n289) );
  XOR2X1 U230 ( .A(n138), .B(temp_real_board_12[0]), .Y(n288) );
  NOR2X1 U231 ( .A(n291), .B(n292), .Y(n262) );
  NAND3X1 U232 ( .A(n293), .B(n294), .C(n295), .Y(n292) );
  XOR2X1 U233 ( .A(n151), .B(temp_real_board_15[2]), .Y(n295) );
  XOR2X1 U234 ( .A(n152), .B(temp_real_board_15[1]), .Y(n294) );
  XOR2X1 U235 ( .A(n153), .B(temp_real_board_15[0]), .Y(n293) );
  NAND3X1 U236 ( .A(n296), .B(n297), .C(n298), .Y(n291) );
  XOR2X1 U237 ( .A(n142), .B(temp_real_board_14[2]), .Y(n298) );
  XOR2X1 U238 ( .A(n143), .B(temp_real_board_14[1]), .Y(n297) );
  XOR2X1 U239 ( .A(n144), .B(temp_real_board_14[0]), .Y(n296) );
  NAND3X1 U240 ( .A(n299), .B(n300), .C(n301), .Y(n260) );
  NOR2X1 U241 ( .A(n304), .B(n305), .Y(n303) );
  NAND3X1 U242 ( .A(n306), .B(n307), .C(n308), .Y(n305) );
  XOR2X1 U243 ( .A(n210), .B(temp_real_board_6[2]), .Y(n308) );
  XOR2X1 U244 ( .A(n205), .B(temp_real_board_4[1]), .Y(n307) );
  XOR2X1 U245 ( .A(n209), .B(temp_real_board_5[0]), .Y(n306) );
  NAND3X1 U246 ( .A(n309), .B(n310), .C(n311), .Y(n304) );
  XOR2X1 U247 ( .A(n207), .B(temp_real_board_5[2]), .Y(n311) );
  XOR2X1 U248 ( .A(n202), .B(temp_real_board_3[1]), .Y(n310) );
  XOR2X1 U249 ( .A(n206), .B(temp_real_board_4[0]), .Y(n309) );
  NOR2X1 U250 ( .A(n312), .B(n313), .Y(n302) );
  NAND3X1 U251 ( .A(n314), .B(n315), .C(n316), .Y(n313) );
  XOR2X1 U252 ( .A(n119), .B(temp_real_board_7[1]), .Y(n316) );
  XOR2X1 U253 ( .A(n211), .B(temp_real_board_6[1]), .Y(n315) );
  XOR2X1 U254 ( .A(n120), .B(temp_real_board_7[0]), .Y(n314) );
  NAND3X1 U255 ( .A(n317), .B(n318), .C(n319), .Y(n312) );
  XOR2X1 U256 ( .A(n118), .B(temp_real_board_7[2]), .Y(n319) );
  XOR2X1 U257 ( .A(n208), .B(temp_real_board_5[1]), .Y(n318) );
  XOR2X1 U258 ( .A(n212), .B(temp_real_board_6[0]), .Y(n317) );
  NOR2X1 U259 ( .A(n320), .B(n321), .Y(n300) );
  NAND3X1 U260 ( .A(n322), .B(n323), .C(n324), .Y(n321) );
  XOR2X1 U261 ( .A(n198), .B(temp_real_board_2[2]), .Y(n324) );
  XOR2X1 U262 ( .A(n193), .B(temp_real_board_0[1]), .Y(n323) );
  XOR2X1 U263 ( .A(n197), .B(temp_real_board_1[0]), .Y(n322) );
  NAND3X1 U264 ( .A(n325), .B(n219), .C(n326), .Y(n320) );
  NOR2X1 U265 ( .A(n327), .B(n328), .Y(n326) );
  XOR2X1 U266 ( .A(temp_user_board_1[2]), .B(temp_real_board_1[2]), .Y(n328)
         );
  XOR2X1 U267 ( .A(temp_user_board_0[2]), .B(temp_real_board_0[2]), .Y(n327)
         );
  XOR2X1 U268 ( .A(n194), .B(temp_real_board_0[0]), .Y(n325) );
  NOR2X1 U269 ( .A(n329), .B(n330), .Y(n299) );
  NAND3X1 U270 ( .A(n331), .B(n332), .C(n333), .Y(n330) );
  XOR2X1 U271 ( .A(n204), .B(temp_real_board_4[2]), .Y(n333) );
  XOR2X1 U272 ( .A(n199), .B(temp_real_board_2[1]), .Y(n332) );
  XOR2X1 U273 ( .A(n203), .B(temp_real_board_3[0]), .Y(n331) );
  NAND3X1 U274 ( .A(n334), .B(n335), .C(n336), .Y(n329) );
  XOR2X1 U275 ( .A(n201), .B(temp_real_board_3[2]), .Y(n336) );
  XOR2X1 U276 ( .A(n196), .B(temp_real_board_1[1]), .Y(n335) );
  XOR2X1 U277 ( .A(n200), .B(temp_real_board_2[0]), .Y(n334) );
  NAND3X1 U278 ( .A(check_flag), .B(n338), .C(n339), .Y(n337) );
  NOR2X1 U279 ( .A(val_flag), .B(col_flag), .Y(n339) );
  OAI21X1 U280 ( .A(n212), .B(n340), .C(n341), .Y(n547) );
  AOI22X1 U281 ( .A(n342), .B(temp_real_board_6[0]), .C(n670), .D(n340), .Y(
        n341) );
  OAI21X1 U282 ( .A(n211), .B(n340), .C(n344), .Y(n548) );
  AOI22X1 U283 ( .A(n342), .B(temp_real_board_6[1]), .C(n672), .D(n340), .Y(
        n344) );
  OAI21X1 U284 ( .A(n210), .B(n340), .C(n346), .Y(n549) );
  AOI22X1 U285 ( .A(n342), .B(temp_real_board_6[2]), .C(n671), .D(n340), .Y(
        n346) );
  NAND2X1 U286 ( .A(n348), .B(n686), .Y(n340) );
  AOI22X1 U287 ( .A(n350), .B(n187), .C(n691), .D(n351), .Y(n348) );
  OAI21X1 U288 ( .A(n209), .B(n352), .C(n353), .Y(n550) );
  AOI22X1 U289 ( .A(n354), .B(temp_real_board_5[0]), .C(n670), .D(n352), .Y(
        n353) );
  OAI21X1 U290 ( .A(n208), .B(n352), .C(n355), .Y(n551) );
  AOI22X1 U291 ( .A(n354), .B(temp_real_board_5[1]), .C(n672), .D(n352), .Y(
        n355) );
  OAI21X1 U292 ( .A(n207), .B(n352), .C(n356), .Y(n552) );
  AOI22X1 U293 ( .A(n354), .B(temp_real_board_5[2]), .C(n671), .D(n352), .Y(
        n356) );
  NAND2X1 U294 ( .A(n357), .B(n683), .Y(n352) );
  AOI22X1 U295 ( .A(n350), .B(n189), .C(n232), .D(n691), .Y(n357) );
  OAI21X1 U296 ( .A(n206), .B(n359), .C(n360), .Y(n553) );
  AOI22X1 U297 ( .A(n361), .B(temp_real_board_4[0]), .C(n670), .D(n359), .Y(
        n360) );
  OAI21X1 U298 ( .A(n205), .B(n359), .C(n362), .Y(n554) );
  AOI22X1 U299 ( .A(n361), .B(temp_real_board_4[1]), .C(n672), .D(n359), .Y(
        n362) );
  OAI21X1 U300 ( .A(n204), .B(n359), .C(n363), .Y(n555) );
  AOI22X1 U301 ( .A(n361), .B(temp_real_board_4[2]), .C(n671), .D(n359), .Y(
        n363) );
  NAND2X1 U302 ( .A(n364), .B(n683), .Y(n359) );
  AOI22X1 U303 ( .A(n350), .B(n188), .C(n233), .D(n691), .Y(n364) );
  OAI21X1 U304 ( .A(n203), .B(n366), .C(n367), .Y(n556) );
  AOI22X1 U305 ( .A(n368), .B(temp_real_board_3[0]), .C(n670), .D(n366), .Y(
        n367) );
  OAI21X1 U306 ( .A(n202), .B(n366), .C(n369), .Y(n557) );
  AOI22X1 U307 ( .A(n368), .B(temp_real_board_3[1]), .C(n672), .D(n366), .Y(
        n369) );
  OAI21X1 U308 ( .A(n201), .B(n366), .C(n370), .Y(n558) );
  AOI22X1 U309 ( .A(n368), .B(temp_real_board_3[2]), .C(n671), .D(n366), .Y(
        n370) );
  NAND2X1 U310 ( .A(n371), .B(n684), .Y(n366) );
  AOI22X1 U311 ( .A(n372), .B(n186), .C(n240), .D(n691), .Y(n371) );
  OAI21X1 U312 ( .A(n200), .B(n374), .C(n375), .Y(n559) );
  AOI22X1 U313 ( .A(n376), .B(temp_real_board_2[0]), .C(n670), .D(n374), .Y(
        n375) );
  OAI21X1 U314 ( .A(n199), .B(n374), .C(n377), .Y(n560) );
  AOI22X1 U315 ( .A(n376), .B(temp_real_board_2[1]), .C(n672), .D(n374), .Y(
        n377) );
  OAI21X1 U316 ( .A(n198), .B(n374), .C(n378), .Y(n561) );
  AOI22X1 U317 ( .A(n376), .B(temp_real_board_2[2]), .C(n671), .D(n374), .Y(
        n378) );
  NAND2X1 U318 ( .A(n379), .B(n684), .Y(n374) );
  AOI22X1 U319 ( .A(n372), .B(n187), .C(n239), .D(n691), .Y(n379) );
  OAI21X1 U320 ( .A(n197), .B(n381), .C(n382), .Y(n562) );
  AOI22X1 U321 ( .A(n383), .B(temp_real_board_1[0]), .C(n670), .D(n381), .Y(
        n382) );
  OAI21X1 U322 ( .A(n196), .B(n381), .C(n384), .Y(n563) );
  AOI22X1 U323 ( .A(n383), .B(temp_real_board_1[1]), .C(n672), .D(n381), .Y(
        n384) );
  OAI21X1 U324 ( .A(n195), .B(n381), .C(n385), .Y(n564) );
  AOI22X1 U325 ( .A(n383), .B(temp_real_board_1[2]), .C(n671), .D(n381), .Y(
        n385) );
  NAND2X1 U326 ( .A(n386), .B(n684), .Y(n381) );
  AOI22X1 U327 ( .A(n372), .B(n189), .C(n236), .D(n691), .Y(n386) );
  OAI21X1 U328 ( .A(n194), .B(n388), .C(n389), .Y(n565) );
  AOI22X1 U329 ( .A(n390), .B(temp_real_board_0[0]), .C(n670), .D(n388), .Y(
        n389) );
  OAI21X1 U330 ( .A(n193), .B(n388), .C(n391), .Y(n566) );
  AOI22X1 U331 ( .A(n390), .B(temp_real_board_0[1]), .C(n672), .D(n388), .Y(
        n391) );
  OAI21X1 U332 ( .A(n192), .B(n388), .C(n392), .Y(n567) );
  AOI22X1 U333 ( .A(n390), .B(temp_real_board_0[2]), .C(n671), .D(n388), .Y(
        n392) );
  NAND2X1 U334 ( .A(n393), .B(n686), .Y(n388) );
  AOI22X1 U335 ( .A(n372), .B(n188), .C(n237), .D(n691), .Y(n393) );
  OAI21X1 U336 ( .A(n152), .B(n396), .C(n397), .Y(n568) );
  AOI22X1 U337 ( .A(n398), .B(temp_real_board_15[1]), .C(n672), .D(n396), .Y(
        n397) );
  OAI21X1 U338 ( .A(n151), .B(n396), .C(n399), .Y(n569) );
  AOI22X1 U339 ( .A(n398), .B(temp_real_board_15[2]), .C(n671), .D(n396), .Y(
        n399) );
  OAI21X1 U340 ( .A(n153), .B(n396), .C(n400), .Y(n570) );
  AOI22X1 U341 ( .A(n398), .B(temp_real_board_15[0]), .C(n670), .D(n396), .Y(
        n400) );
  NAND2X1 U342 ( .A(n401), .B(n684), .Y(n396) );
  AOI22X1 U343 ( .A(n402), .B(n186), .C(n246), .D(n691), .Y(n401) );
  OAI21X1 U344 ( .A(n143), .B(n404), .C(n405), .Y(n571) );
  AOI22X1 U345 ( .A(n406), .B(temp_real_board_14[1]), .C(n672), .D(n404), .Y(
        n405) );
  OAI21X1 U346 ( .A(n142), .B(n404), .C(n407), .Y(n572) );
  AOI22X1 U347 ( .A(n406), .B(temp_real_board_14[2]), .C(n671), .D(n404), .Y(
        n407) );
  OAI21X1 U348 ( .A(n144), .B(n404), .C(n408), .Y(n573) );
  AOI22X1 U349 ( .A(n406), .B(temp_real_board_14[0]), .C(n670), .D(n404), .Y(
        n408) );
  NAND2X1 U350 ( .A(n409), .B(n684), .Y(n404) );
  AOI22X1 U351 ( .A(n402), .B(n187), .C(n245), .D(n691), .Y(n409) );
  OAI21X1 U352 ( .A(n140), .B(n411), .C(n412), .Y(n574) );
  AOI22X1 U353 ( .A(n413), .B(temp_real_board_13[1]), .C(n672), .D(n411), .Y(
        n412) );
  OAI21X1 U354 ( .A(n139), .B(n411), .C(n414), .Y(n575) );
  AOI22X1 U355 ( .A(n413), .B(temp_real_board_13[2]), .C(n671), .D(n411), .Y(
        n414) );
  OAI21X1 U356 ( .A(n141), .B(n411), .C(n415), .Y(n576) );
  AOI22X1 U357 ( .A(n413), .B(temp_real_board_13[0]), .C(n670), .D(n411), .Y(
        n415) );
  NAND2X1 U358 ( .A(n416), .B(n685), .Y(n411) );
  AOI22X1 U359 ( .A(n402), .B(n189), .C(n242), .D(n691), .Y(n416) );
  OAI21X1 U360 ( .A(n137), .B(n418), .C(n419), .Y(n577) );
  AOI22X1 U361 ( .A(n420), .B(temp_real_board_12[1]), .C(n672), .D(n418), .Y(
        n419) );
  OAI21X1 U362 ( .A(n136), .B(n418), .C(n421), .Y(n578) );
  AOI22X1 U363 ( .A(n420), .B(temp_real_board_12[2]), .C(n671), .D(n418), .Y(
        n421) );
  OAI21X1 U364 ( .A(n138), .B(n418), .C(n422), .Y(n579) );
  AOI22X1 U365 ( .A(n420), .B(temp_real_board_12[0]), .C(n670), .D(n418), .Y(
        n422) );
  NAND2X1 U366 ( .A(n423), .B(n685), .Y(n418) );
  AOI22X1 U367 ( .A(n402), .B(n188), .C(n243), .D(n691), .Y(n423) );
  OAI21X1 U368 ( .A(n134), .B(n426), .C(n427), .Y(n580) );
  AOI22X1 U369 ( .A(n428), .B(temp_real_board_11[1]), .C(n672), .D(n426), .Y(
        n427) );
  OAI21X1 U370 ( .A(n133), .B(n426), .C(n429), .Y(n581) );
  AOI22X1 U371 ( .A(n428), .B(temp_real_board_11[2]), .C(n671), .D(n426), .Y(
        n429) );
  OAI21X1 U372 ( .A(n135), .B(n426), .C(n430), .Y(n582) );
  AOI22X1 U373 ( .A(n428), .B(temp_real_board_11[0]), .C(n670), .D(n426), .Y(
        n430) );
  NAND2X1 U374 ( .A(n431), .B(n685), .Y(n426) );
  AOI22X1 U375 ( .A(n432), .B(n186), .C(n692), .D(n433), .Y(n431) );
  OAI21X1 U376 ( .A(n128), .B(n434), .C(n435), .Y(n583) );
  AOI22X1 U377 ( .A(n436), .B(temp_real_board_10[1]), .C(n672), .D(n434), .Y(
        n435) );
  OAI21X1 U378 ( .A(n127), .B(n434), .C(n437), .Y(n584) );
  AOI22X1 U379 ( .A(n436), .B(temp_real_board_10[2]), .C(n671), .D(n434), .Y(
        n437) );
  OAI21X1 U380 ( .A(n129), .B(n434), .C(n438), .Y(n585) );
  AOI22X1 U381 ( .A(n436), .B(temp_real_board_10[0]), .C(n670), .D(n434), .Y(
        n438) );
  NAND2X1 U382 ( .A(n439), .B(n685), .Y(n434) );
  AOI22X1 U383 ( .A(n432), .B(n187), .C(n692), .D(n440), .Y(n439) );
  OAI21X1 U384 ( .A(n125), .B(n442), .C(n443), .Y(n586) );
  AOI22X1 U385 ( .A(n444), .B(temp_real_board_9[1]), .C(n672), .D(n442), .Y(
        n443) );
  OAI21X1 U386 ( .A(n124), .B(n442), .C(n445), .Y(n587) );
  AOI22X1 U387 ( .A(n444), .B(temp_real_board_9[2]), .C(n671), .D(n442), .Y(
        n445) );
  OAI21X1 U388 ( .A(n126), .B(n442), .C(n446), .Y(n588) );
  AOI22X1 U389 ( .A(n444), .B(temp_real_board_9[0]), .C(n670), .D(n442), .Y(
        n446) );
  NAND2X1 U390 ( .A(n447), .B(n685), .Y(n442) );
  AOI22X1 U391 ( .A(n432), .B(n189), .C(n248), .D(n691), .Y(n447) );
  OAI21X1 U392 ( .A(n122), .B(n450), .C(n451), .Y(n589) );
  AOI22X1 U393 ( .A(n452), .B(temp_real_board_8[1]), .C(n672), .D(n450), .Y(
        n451) );
  OAI21X1 U394 ( .A(n121), .B(n450), .C(n453), .Y(n590) );
  AOI22X1 U395 ( .A(n452), .B(temp_real_board_8[2]), .C(n671), .D(n450), .Y(
        n453) );
  OAI21X1 U396 ( .A(n123), .B(n450), .C(n454), .Y(n591) );
  AOI22X1 U397 ( .A(n452), .B(temp_real_board_8[0]), .C(n670), .D(n450), .Y(
        n454) );
  NAND2X1 U398 ( .A(n455), .B(n686), .Y(n450) );
  AOI22X1 U399 ( .A(n432), .B(n188), .C(n249), .D(n691), .Y(n455) );
  OAI21X1 U400 ( .A(n119), .B(n459), .C(n460), .Y(n592) );
  AOI22X1 U401 ( .A(n461), .B(temp_real_board_7[1]), .C(n672), .D(n459), .Y(
        n460) );
  OAI21X1 U403 ( .A(n118), .B(n459), .C(n464), .Y(n593) );
  AOI22X1 U404 ( .A(n461), .B(temp_real_board_7[2]), .C(n671), .D(n459), .Y(
        n464) );
  OAI21X1 U406 ( .A(n120), .B(n459), .C(n466), .Y(n594) );
  AOI22X1 U407 ( .A(n461), .B(temp_real_board_7[0]), .C(n670), .D(n459), .Y(
        n466) );
  NAND2X1 U409 ( .A(n467), .B(n686), .Y(n459) );
  AOI22X1 U410 ( .A(n350), .B(n186), .C(n692), .D(n468), .Y(n467) );
  NOR2X1 U411 ( .A(n88), .B(n462), .Y(n458) );
  NAND3X1 U412 ( .A(n338), .B(n222), .C(val_flag), .Y(n462) );
  AOI22X1 U413 ( .A(n472), .B(n184), .C(current_cell[3]), .D(n473), .Y(n471)
         );
  OAI22X1 U414 ( .A(n474), .B(n475), .C(n476), .D(n477), .Y(n473) );
  OAI22X1 U415 ( .A(temp_fill_flag[11]), .B(n470), .C(temp_fill_flag[10]), .D(
        n441), .Y(n477) );
  OAI21X1 U416 ( .A(temp_fill_flag[9]), .B(n449), .C(n97), .Y(n476) );
  OAI21X1 U417 ( .A(n457), .B(temp_fill_flag[8]), .C(n185), .Y(n478) );
  OAI21X1 U418 ( .A(temp_fill_flag[15]), .B(n470), .C(current_cell[2]), .Y(
        n475) );
  OAI21X1 U419 ( .A(temp_fill_flag[14]), .B(n441), .C(n91), .Y(n474) );
  OAI22X1 U420 ( .A(n457), .B(temp_fill_flag[12]), .C(n449), .D(
        temp_fill_flag[13]), .Y(n479) );
  OAI22X1 U421 ( .A(n480), .B(n481), .C(n482), .D(n483), .Y(n472) );
  OAI22X1 U422 ( .A(temp_fill_flag[3]), .B(n470), .C(temp_fill_flag[2]), .D(
        n441), .Y(n483) );
  OAI21X1 U423 ( .A(temp_fill_flag[1]), .B(n449), .C(n107), .Y(n482) );
  OAI21X1 U424 ( .A(n457), .B(temp_fill_flag[0]), .C(n185), .Y(n484) );
  OAI21X1 U425 ( .A(temp_fill_flag[7]), .B(n470), .C(current_cell[2]), .Y(n481) );
  NAND2X1 U426 ( .A(current_cell[0]), .B(current_cell[1]), .Y(n470) );
  OAI21X1 U427 ( .A(temp_fill_flag[6]), .B(n441), .C(n101), .Y(n480) );
  OAI22X1 U428 ( .A(n457), .B(temp_fill_flag[4]), .C(n449), .D(
        temp_fill_flag[5]), .Y(n485) );
  NAND2X1 U429 ( .A(current_cell[0]), .B(n190), .Y(n449) );
  NAND2X1 U430 ( .A(n191), .B(n190), .Y(n457) );
  NAND2X1 U431 ( .A(current_cell[1]), .B(n191), .Y(n441) );
  OAI22X1 U432 ( .A(n191), .B(n486), .C(n258), .D(n487), .Y(n595) );
  OAI22X1 U433 ( .A(n190), .B(n486), .C(n257), .D(n487), .Y(n596) );
  OAI22X1 U434 ( .A(n185), .B(n486), .C(n487), .D(n183), .Y(n597) );
  OAI22X1 U435 ( .A(n184), .B(n486), .C(n487), .D(n182), .Y(n598) );
  NAND2X1 U436 ( .A(n690), .B(n487), .Y(n486) );
  NAND2X1 U437 ( .A(col_flag), .B(n338), .Y(n487) );
  NOR2X1 U438 ( .A(n488), .B(row_flag), .Y(n338) );
  OAI22X1 U439 ( .A(n183), .B(n489), .C(n258), .D(n490), .Y(n599) );
  OAI22X1 U440 ( .A(n182), .B(n489), .C(n257), .D(n490), .Y(n600) );
  NAND2X1 U441 ( .A(n690), .B(n490), .Y(n489) );
  NAND2X1 U442 ( .A(row_flag), .B(n218), .Y(n490) );
  NAND3X1 U443 ( .A(n220), .B(n221), .C(n683), .Y(n488) );
  OAI21X1 U444 ( .A(n180), .B(n676), .C(n492), .Y(n601) );
  OAI21X1 U445 ( .A(n179), .B(n676), .C(n493), .Y(n602) );
  OAI21X1 U446 ( .A(n178), .B(n676), .C(n213), .Y(n603) );
  OAI21X1 U447 ( .A(n177), .B(n676), .C(n494), .Y(n604) );
  OAI21X1 U448 ( .A(n176), .B(n676), .C(n495), .Y(n605) );
  OAI21X1 U449 ( .A(n175), .B(n676), .C(n496), .Y(n606) );
  OAI21X1 U450 ( .A(n174), .B(n676), .C(n497), .Y(n607) );
  OAI21X1 U451 ( .A(n173), .B(n676), .C(n498), .Y(n608) );
  OAI21X1 U452 ( .A(n172), .B(n676), .C(n215), .Y(n609) );
  OAI21X1 U453 ( .A(n171), .B(n676), .C(n499), .Y(n610) );
  OAI21X1 U454 ( .A(n170), .B(n676), .C(n500), .Y(n611) );
  OAI21X1 U455 ( .A(n169), .B(n676), .C(n501), .Y(n612) );
  OAI21X1 U456 ( .A(n168), .B(n675), .C(n497), .Y(n613) );
  OAI21X1 U457 ( .A(n167), .B(n675), .C(n498), .Y(n614) );
  OAI21X1 U458 ( .A(n166), .B(n675), .C(n215), .Y(n615) );
  OAI21X1 U459 ( .A(n165), .B(n675), .C(n497), .Y(n616) );
  OAI21X1 U460 ( .A(n164), .B(n675), .C(n498), .Y(n617) );
  OAI21X1 U461 ( .A(n163), .B(n675), .C(n215), .Y(n618) );
  OAI21X1 U462 ( .A(n162), .B(n675), .C(n499), .Y(n619) );
  OAI21X1 U463 ( .A(n161), .B(n675), .C(n500), .Y(n620) );
  OAI21X1 U464 ( .A(n160), .B(n675), .C(n501), .Y(n621) );
  OAI21X1 U465 ( .A(n159), .B(n675), .C(n492), .Y(n622) );
  OAI21X1 U466 ( .A(n158), .B(n675), .C(n493), .Y(n623) );
  OAI21X1 U467 ( .A(n157), .B(n675), .C(n213), .Y(n624) );
  OAI21X1 U468 ( .A(n156), .B(n674), .C(n494), .Y(n625) );
  OAI21X1 U469 ( .A(n155), .B(n674), .C(n495), .Y(n626) );
  OAI21X1 U470 ( .A(n154), .B(n674), .C(n496), .Y(n627) );
  OAI21X1 U471 ( .A(n150), .B(n674), .C(n499), .Y(n628) );
  OAI21X1 U472 ( .A(n149), .B(n674), .C(n500), .Y(n629) );
  OAI21X1 U473 ( .A(n148), .B(n674), .C(n501), .Y(n630) );
  OAI21X1 U474 ( .A(n147), .B(n674), .C(n494), .Y(n631) );
  OAI21X1 U475 ( .A(n146), .B(n674), .C(n495), .Y(n632) );
  OAI21X1 U476 ( .A(n145), .B(n674), .C(n496), .Y(n633) );
  OAI21X1 U477 ( .A(n132), .B(n674), .C(n497), .Y(n634) );
  AOI22X1 U478 ( .A(n502), .B(n214), .C(n503), .D(n504), .Y(n497) );
  OAI21X1 U479 ( .A(n131), .B(n674), .C(n498), .Y(n635) );
  NAND2X1 U480 ( .A(n505), .B(n506), .Y(n498) );
  OAI21X1 U481 ( .A(n130), .B(n674), .C(n215), .Y(n636) );
  OAI21X1 U482 ( .A(n508), .B(n509), .C(n510), .Y(n507) );
  NAND3X1 U483 ( .A(n228), .B(n227), .C(n504), .Y(n510) );
  NAND2X1 U484 ( .A(rand_setup[0]), .B(n668), .Y(n509) );
  OAI21X1 U485 ( .A(n117), .B(n673), .C(n499), .Y(n637) );
  AOI22X1 U486 ( .A(n225), .B(n214), .C(n502), .D(n504), .Y(n499) );
  OAI21X1 U487 ( .A(n116), .B(n673), .C(n500), .Y(n638) );
  NAND2X1 U488 ( .A(n505), .B(n227), .Y(n500) );
  OAI21X1 U489 ( .A(n115), .B(n673), .C(n501), .Y(n639) );
  NAND3X1 U490 ( .A(n505), .B(n511), .C(n668), .Y(n501) );
  XOR2X1 U491 ( .A(rand_setup[3]), .B(rand_setup[0]), .Y(n511) );
  OAI21X1 U492 ( .A(n114), .B(n673), .C(n492), .Y(n640) );
  OAI21X1 U493 ( .A(n113), .B(n673), .C(n493), .Y(n641) );
  OAI21X1 U494 ( .A(n112), .B(n673), .C(n213), .Y(n642) );
  OAI21X1 U495 ( .A(n111), .B(n673), .C(n494), .Y(n643) );
  AOI22X1 U496 ( .A(n503), .B(n214), .C(n504), .D(n226), .Y(n494) );
  OAI21X1 U497 ( .A(n110), .B(n673), .C(n495), .Y(n644) );
  NAND2X1 U498 ( .A(n668), .B(n505), .Y(n495) );
  OAI21X1 U499 ( .A(n109), .B(n673), .C(n496), .Y(n645) );
  NAND3X1 U500 ( .A(n512), .B(n227), .C(n505), .Y(n496) );
  XOR2X1 U501 ( .A(rand_setup[3]), .B(rand_setup[1]), .Y(n512) );
  OAI21X1 U502 ( .A(n669), .B(n394), .C(n513), .Y(n646) );
  NAND3X1 U503 ( .A(n241), .B(n238), .C(n514), .Y(n394) );
  OAI21X1 U504 ( .A(n669), .B(n387), .C(n515), .Y(n647) );
  NAND3X1 U505 ( .A(n514), .B(n238), .C(rand_A[0]), .Y(n387) );
  OAI21X1 U506 ( .A(n669), .B(n380), .C(n516), .Y(n648) );
  NAND3X1 U507 ( .A(n514), .B(n241), .C(rand_A[1]), .Y(n380) );
  OAI21X1 U508 ( .A(n669), .B(n373), .C(n517), .Y(n649) );
  NAND3X1 U509 ( .A(rand_A[0]), .B(n514), .C(rand_A[1]), .Y(n373) );
  OAI21X1 U510 ( .A(n669), .B(n365), .C(n518), .Y(n650) );
  NAND2X1 U511 ( .A(n519), .B(n235), .Y(n365) );
  OAI21X1 U512 ( .A(n669), .B(n358), .C(n520), .Y(n651) );
  NAND2X1 U513 ( .A(rand_A[2]), .B(n519), .Y(n358) );
  NAND2X1 U514 ( .A(n521), .B(n522), .Y(n519) );
  OAI21X1 U515 ( .A(n254), .B(n523), .C(n234), .Y(n522) );
  OAI21X1 U516 ( .A(n231), .B(n469), .C(n524), .Y(n652) );
  OAI21X1 U517 ( .A(n234), .B(n525), .C(n526), .Y(n351) );
  NAND3X1 U518 ( .A(n256), .B(n234), .C(rand_A[2]), .Y(n526) );
  NAND2X1 U519 ( .A(n514), .B(n235), .Y(n525) );
  OAI21X1 U520 ( .A(n230), .B(n469), .C(n527), .Y(n653) );
  OAI21X1 U521 ( .A(n235), .B(n528), .C(n529), .Y(n468) );
  NAND3X1 U522 ( .A(n235), .B(n234), .C(n256), .Y(n529) );
  NAND2X1 U523 ( .A(rand_A[3]), .B(n514), .Y(n528) );
  OAI21X1 U524 ( .A(n669), .B(n456), .C(n530), .Y(n654) );
  NAND2X1 U525 ( .A(n531), .B(n253), .Y(n456) );
  OAI21X1 U526 ( .A(n669), .B(n448), .C(n532), .Y(n655) );
  NAND2X1 U527 ( .A(rand_B[0]), .B(n531), .Y(n448) );
  OAI21X1 U528 ( .A(rand_B[1]), .B(n465), .C(n463), .Y(n531) );
  OAI21X1 U529 ( .A(n251), .B(n469), .C(n533), .Y(n656) );
  OAI21X1 U530 ( .A(n252), .B(n534), .C(n535), .Y(n440) );
  NAND3X1 U531 ( .A(n255), .B(n252), .C(rand_B[0]), .Y(n535) );
  NAND2X1 U532 ( .A(n514), .B(n253), .Y(n534) );
  OAI21X1 U533 ( .A(n250), .B(n469), .C(n536), .Y(n657) );
  OAI21X1 U534 ( .A(n252), .B(n537), .C(n538), .Y(n433) );
  NAND3X1 U535 ( .A(n253), .B(n252), .C(n255), .Y(n538) );
  NAND2X1 U536 ( .A(rand_B[0]), .B(n514), .Y(n537) );
  OAI21X1 U537 ( .A(n669), .B(n424), .C(n539), .Y(n658) );
  NAND3X1 U538 ( .A(n247), .B(n244), .C(n514), .Y(n424) );
  OAI21X1 U539 ( .A(n469), .B(n417), .C(n540), .Y(n659) );
  NAND3X1 U540 ( .A(n514), .B(n244), .C(rand_B[2]), .Y(n417) );
  OAI21X1 U541 ( .A(n469), .B(n410), .C(n541), .Y(n660) );
  NAND3X1 U542 ( .A(n514), .B(n247), .C(rand_B[3]), .Y(n410) );
  OAI21X1 U543 ( .A(n469), .B(n403), .C(n542), .Y(n661) );
  NAND3X1 U544 ( .A(rand_B[2]), .B(n514), .C(rand_B[3]), .Y(n403) );
  NAND2X1 U545 ( .A(n463), .B(n465), .Y(n514) );
  NAND2X1 U546 ( .A(diff_cell_val[1]), .B(diff_cell_val[0]), .Y(n465) );
  NOR2X1 U547 ( .A(n256), .B(n523), .Y(n463) );
  NOR2X1 U548 ( .A(n257), .B(diff_cell_val[0]), .Y(n523) );
  NAND2X1 U549 ( .A(diff_cell_val[0]), .B(n257), .Y(n521) );
  NAND3X1 U550 ( .A(n683), .B(n220), .C(set_diff_flag), .Y(n469) );
  OAI21X1 U551 ( .A(n87), .B(n673), .C(n492), .Y(n662) );
  AOI22X1 U552 ( .A(n226), .B(n214), .C(n225), .D(n504), .Y(n492) );
  XNOR2X1 U553 ( .A(n229), .B(n668), .Y(n502) );
  XNOR2X1 U554 ( .A(n228), .B(n668), .Y(n503) );
  OAI21X1 U555 ( .A(n86), .B(n673), .C(n493), .Y(n663) );
  NAND2X1 U556 ( .A(n223), .B(n505), .Y(n493) );
  XNOR2X1 U557 ( .A(n224), .B(n668), .Y(n506) );
  OAI21X1 U558 ( .A(n85), .B(n673), .C(n213), .Y(n664) );
  OAI21X1 U559 ( .A(n508), .B(n544), .C(n545), .Y(n543) );
  NAND3X1 U560 ( .A(n668), .B(n229), .C(n504), .Y(n545) );
  NAND2X1 U561 ( .A(rand_setup[1]), .B(n227), .Y(n544) );
  NAND2X1 U562 ( .A(rand_setup[3]), .B(n505), .Y(n508) );
  OR2X1 U563 ( .A(n682), .B(n505), .Y(n491) );
  NOR2X1 U564 ( .A(n220), .B(n682), .Y(n505) );
  NAND2X1 U565 ( .A(temp_solved), .B(n687), .Y(n259) );
  NAND2X1 U566 ( .A(temp_fill_flag[15]), .B(n687), .Y(n542) );
  NAND2X1 U567 ( .A(temp_fill_flag[14]), .B(n687), .Y(n541) );
  NAND2X1 U568 ( .A(temp_fill_flag[13]), .B(n687), .Y(n540) );
  NAND2X1 U569 ( .A(temp_fill_flag[12]), .B(n687), .Y(n539) );
  NAND2X1 U570 ( .A(temp_fill_flag[11]), .B(n688), .Y(n536) );
  NAND2X1 U571 ( .A(temp_fill_flag[10]), .B(n688), .Y(n533) );
  NAND2X1 U572 ( .A(temp_fill_flag[9]), .B(n686), .Y(n532) );
  NAND2X1 U573 ( .A(temp_fill_flag[8]), .B(n688), .Y(n530) );
  NAND2X1 U574 ( .A(temp_fill_flag[7]), .B(n688), .Y(n527) );
  NAND2X1 U575 ( .A(temp_fill_flag[6]), .B(n689), .Y(n524) );
  NAND2X1 U576 ( .A(temp_fill_flag[5]), .B(n689), .Y(n520) );
  NAND2X1 U577 ( .A(temp_fill_flag[4]), .B(n689), .Y(n518) );
  NAND2X1 U578 ( .A(temp_fill_flag[3]), .B(n689), .Y(n517) );
  NAND2X1 U579 ( .A(temp_fill_flag[2]), .B(n689), .Y(n516) );
  NAND2X1 U580 ( .A(temp_fill_flag[1]), .B(n688), .Y(n515) );
  NAND2X1 U581 ( .A(temp_fill_flag[0]), .B(n683), .Y(n513) );
  NOR2X1 U582 ( .A(n680), .B(n151), .Y(N604) );
  NOR2X1 U583 ( .A(n681), .B(n152), .Y(N603) );
  NOR2X1 U584 ( .A(n682), .B(n153), .Y(N602) );
  NOR2X1 U585 ( .A(n682), .B(n142), .Y(N601) );
  NOR2X1 U586 ( .A(n681), .B(n143), .Y(N600) );
  NOR2X1 U587 ( .A(n682), .B(n144), .Y(N599) );
  NOR2X1 U588 ( .A(n680), .B(n139), .Y(N598) );
  NOR2X1 U589 ( .A(n681), .B(n140), .Y(N597) );
  NOR2X1 U590 ( .A(n681), .B(n141), .Y(N596) );
  NOR2X1 U591 ( .A(n680), .B(n136), .Y(N595) );
  NOR2X1 U592 ( .A(n680), .B(n137), .Y(N594) );
  NOR2X1 U593 ( .A(n681), .B(n138), .Y(N593) );
  NOR2X1 U594 ( .A(n680), .B(n133), .Y(N592) );
  NOR2X1 U595 ( .A(n681), .B(n134), .Y(N591) );
  NOR2X1 U596 ( .A(n682), .B(n135), .Y(N590) );
  NOR2X1 U597 ( .A(n682), .B(n127), .Y(N589) );
  NOR2X1 U598 ( .A(n682), .B(n128), .Y(N588) );
  NOR2X1 U599 ( .A(n680), .B(n129), .Y(N587) );
  NOR2X1 U600 ( .A(n681), .B(n124), .Y(N586) );
  NOR2X1 U601 ( .A(n682), .B(n125), .Y(N585) );
  NOR2X1 U602 ( .A(n680), .B(n126), .Y(N584) );
  NOR2X1 U603 ( .A(n680), .B(n121), .Y(N583) );
  NOR2X1 U604 ( .A(n680), .B(n122), .Y(N582) );
  NOR2X1 U605 ( .A(n681), .B(n123), .Y(N581) );
  NOR2X1 U606 ( .A(n680), .B(n118), .Y(N580) );
  NOR2X1 U607 ( .A(n680), .B(n119), .Y(N579) );
  NOR2X1 U608 ( .A(n680), .B(n120), .Y(N578) );
  NOR2X1 U609 ( .A(n680), .B(n210), .Y(N577) );
  NOR2X1 U610 ( .A(n680), .B(n211), .Y(N576) );
  NOR2X1 U611 ( .A(n680), .B(n212), .Y(N575) );
  NOR2X1 U612 ( .A(n680), .B(n207), .Y(N574) );
  NOR2X1 U613 ( .A(n680), .B(n208), .Y(N573) );
  NOR2X1 U614 ( .A(n680), .B(n209), .Y(N572) );
  NOR2X1 U615 ( .A(n680), .B(n204), .Y(N571) );
  NOR2X1 U616 ( .A(n680), .B(n205), .Y(N570) );
  NOR2X1 U617 ( .A(n680), .B(n206), .Y(N569) );
  NOR2X1 U618 ( .A(n680), .B(n201), .Y(N568) );
  NOR2X1 U619 ( .A(n680), .B(n202), .Y(N567) );
  NOR2X1 U620 ( .A(n681), .B(n203), .Y(N566) );
  NOR2X1 U621 ( .A(n682), .B(n198), .Y(N565) );
  NOR2X1 U622 ( .A(n680), .B(n199), .Y(N564) );
  NOR2X1 U623 ( .A(n681), .B(n200), .Y(N563) );
  NOR2X1 U624 ( .A(n682), .B(n195), .Y(N562) );
  NOR2X1 U625 ( .A(n680), .B(n196), .Y(N561) );
  NOR2X1 U626 ( .A(n681), .B(n197), .Y(N560) );
  NOR2X1 U627 ( .A(n682), .B(n192), .Y(N559) );
  NOR2X1 U628 ( .A(n680), .B(n193), .Y(N558) );
  NOR2X1 U629 ( .A(n681), .B(n194), .Y(N557) );
  NOR2X1 U630 ( .A(n682), .B(n109), .Y(N556) );
  NOR2X1 U631 ( .A(n680), .B(n110), .Y(N555) );
  NOR2X1 U632 ( .A(n681), .B(n111), .Y(N554) );
  NOR2X1 U633 ( .A(n681), .B(n85), .Y(N553) );
  NOR2X1 U634 ( .A(n681), .B(n86), .Y(N552) );
  NOR2X1 U635 ( .A(n681), .B(n87), .Y(N551) );
  NOR2X1 U636 ( .A(n681), .B(n115), .Y(N550) );
  NOR2X1 U637 ( .A(n681), .B(n116), .Y(N549) );
  NOR2X1 U638 ( .A(n681), .B(n117), .Y(N548) );
  NOR2X1 U639 ( .A(n681), .B(n130), .Y(N547) );
  NOR2X1 U640 ( .A(n681), .B(n131), .Y(N546) );
  NOR2X1 U641 ( .A(n681), .B(n132), .Y(N545) );
  NOR2X1 U642 ( .A(n681), .B(n148), .Y(N544) );
  NOR2X1 U643 ( .A(n681), .B(n149), .Y(N543) );
  NOR2X1 U644 ( .A(n681), .B(n150), .Y(N542) );
  NOR2X1 U645 ( .A(n682), .B(n163), .Y(N541) );
  NOR2X1 U646 ( .A(n682), .B(n164), .Y(N540) );
  NOR2X1 U647 ( .A(n682), .B(n165), .Y(N539) );
  NOR2X1 U648 ( .A(n682), .B(n145), .Y(N538) );
  NOR2X1 U649 ( .A(n682), .B(n146), .Y(N537) );
  NOR2X1 U650 ( .A(n682), .B(n147), .Y(N536) );
  NOR2X1 U651 ( .A(n682), .B(n178), .Y(N535) );
  NOR2X1 U652 ( .A(n682), .B(n179), .Y(N534) );
  NOR2X1 U653 ( .A(n682), .B(n180), .Y(N533) );
  NOR2X1 U654 ( .A(n682), .B(n112), .Y(N532) );
  NOR2X1 U655 ( .A(n682), .B(n113), .Y(N531) );
  NOR2X1 U656 ( .A(n682), .B(n114), .Y(N530) );
  NOR2X1 U657 ( .A(n682), .B(n175), .Y(N529) );
  NOR2X1 U658 ( .A(n680), .B(n176), .Y(N528) );
  NOR2X1 U659 ( .A(n681), .B(n177), .Y(N527) );
  NOR2X1 U660 ( .A(n682), .B(n172), .Y(N526) );
  NOR2X1 U661 ( .A(n682), .B(n173), .Y(N525) );
  NOR2X1 U662 ( .A(n680), .B(n174), .Y(N524) );
  NOR2X1 U663 ( .A(n681), .B(n169), .Y(N523) );
  NOR2X1 U664 ( .A(n682), .B(n170), .Y(N522) );
  NOR2X1 U665 ( .A(n680), .B(n171), .Y(N521) );
  NOR2X1 U666 ( .A(n680), .B(n166), .Y(N520) );
  NOR2X1 U667 ( .A(n681), .B(n167), .Y(N519) );
  NOR2X1 U668 ( .A(n682), .B(n168), .Y(N518) );
  NOR2X1 U669 ( .A(n681), .B(n160), .Y(N517) );
  NOR2X1 U670 ( .A(n680), .B(n161), .Y(N516) );
  NOR2X1 U671 ( .A(n681), .B(n162), .Y(N515) );
  NOR2X1 U672 ( .A(n681), .B(n157), .Y(N514) );
  NOR2X1 U673 ( .A(n682), .B(n158), .Y(N513) );
  NOR2X1 U674 ( .A(n682), .B(n159), .Y(N512) );
  NOR2X1 U675 ( .A(n681), .B(n154), .Y(N511) );
  NOR2X1 U676 ( .A(n680), .B(n155), .Y(N510) );
  NOR2X1 U677 ( .A(n681), .B(n156), .Y(N509) );
  NOR2X1 U678 ( .A(new_game), .B(restart), .Y(n349) );
  BUFX2 U679 ( .A(n491), .Y(n676) );
  BUFX2 U680 ( .A(n491), .Y(n675) );
  BUFX2 U681 ( .A(n491), .Y(n674) );
  BUFX2 U682 ( .A(n491), .Y(n673) );
  INVX2 U683 ( .A(n469), .Y(n691) );
  INVX2 U684 ( .A(n469), .Y(n692) );
  INVX2 U685 ( .A(n688), .Y(n680) );
  INVX2 U686 ( .A(n686), .Y(n681) );
  INVX2 U687 ( .A(n685), .Y(n682) );
  BUFX2 U688 ( .A(n677), .Y(n683) );
  BUFX2 U689 ( .A(n677), .Y(n685) );
  BUFX2 U690 ( .A(n677), .Y(n684) );
  BUFX2 U691 ( .A(n678), .Y(n686) );
  BUFX2 U692 ( .A(n678), .Y(n688) );
  BUFX2 U693 ( .A(n678), .Y(n687) );
  BUFX2 U694 ( .A(n679), .Y(n689) );
  BUFX2 U695 ( .A(n679), .Y(n690) );
  INVX2 U696 ( .A(n665), .Y(n672) );
  INVX2 U697 ( .A(n666), .Y(n671) );
  BUFX2 U698 ( .A(n693), .Y(n696) );
  BUFX2 U699 ( .A(n693), .Y(n697) );
  BUFX2 U700 ( .A(n693), .Y(n698) );
  BUFX2 U701 ( .A(n694), .Y(n699) );
  BUFX2 U702 ( .A(n694), .Y(n700) );
  BUFX2 U703 ( .A(n694), .Y(n701) );
  BUFX2 U704 ( .A(n695), .Y(n702) );
  BUFX2 U705 ( .A(n695), .Y(n703) );
  BUFX2 U706 ( .A(n705), .Y(n709) );
  BUFX2 U707 ( .A(n705), .Y(n710) );
  BUFX2 U708 ( .A(n705), .Y(n711) );
  BUFX2 U709 ( .A(n706), .Y(n712) );
  BUFX2 U710 ( .A(n706), .Y(n713) );
  BUFX2 U711 ( .A(n706), .Y(n714) );
  BUFX2 U712 ( .A(n707), .Y(n715) );
  BUFX2 U713 ( .A(n707), .Y(n716) );
  BUFX2 U714 ( .A(n707), .Y(n717) );
  BUFX2 U715 ( .A(n695), .Y(n704) );
  OR2X1 U716 ( .A(n462), .B(n463), .Y(n665) );
  OR2X1 U717 ( .A(n465), .B(n462), .Y(n666) );
  INVX2 U718 ( .A(n692), .Y(n669) );
  INVX2 U719 ( .A(n667), .Y(n670) );
  BUFX2 U720 ( .A(n349), .Y(n677) );
  BUFX2 U721 ( .A(n349), .Y(n678) );
  BUFX2 U722 ( .A(n349), .Y(n679) );
  BUFX2 U723 ( .A(rand_setup[2]), .Y(n668) );
  OR2X1 U724 ( .A(n462), .B(diff_cell_val[0]), .Y(n667) );
  BUFX2 U725 ( .A(n708), .Y(n718) );
  BUFX2 U726 ( .A(clka), .Y(n708) );
  BUFX2 U727 ( .A(clka), .Y(n705) );
  BUFX2 U728 ( .A(clka), .Y(n706) );
  BUFX2 U729 ( .A(clka), .Y(n707) );
  BUFX2 U730 ( .A(clkb), .Y(n693) );
  BUFX2 U731 ( .A(clkb), .Y(n694) );
  BUFX2 U732 ( .A(clkb), .Y(n695) );
endmodule

