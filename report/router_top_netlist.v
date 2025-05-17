/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP4
// Date      : Sat May 17 22:19:02 2025
/////////////////////////////////////////////////////////////


module router_fifo_2 ( clock, resetn, write_enb, soft_reset, read_enb, data_in, 
        lfd_state, empty, data_out, full );
  input [7:0] data_in;
  output [7:0] data_out;
  input clock, resetn, write_enb, soft_reset, read_enb, lfd_state;
  output empty, full;
  wire   lfd_state_temp, N33, \fifo[15][8] , \fifo[14][8] , \fifo[14][1] ,
         \fifo[14][0] , \fifo[13][8] , \fifo[13][1] , \fifo[13][0] ,
         \fifo[12][8] , \fifo[12][1] , \fifo[12][0] , \fifo[11][8] ,
         \fifo[10][8] , \fifo[10][7] , \fifo[10][6] , \fifo[10][5] ,
         \fifo[10][4] , \fifo[10][3] , \fifo[10][2] , \fifo[10][1] ,
         \fifo[10][0] , \fifo[9][8] , \fifo[9][7] , \fifo[9][6] , \fifo[9][5] ,
         \fifo[9][4] , \fifo[9][3] , \fifo[9][2] , \fifo[9][1] , \fifo[9][0] ,
         \fifo[8][8] , \fifo[8][1] , \fifo[8][0] , \fifo[7][8] , \fifo[7][1] ,
         \fifo[7][0] , \fifo[6][8] , \fifo[5][8] , \fifo[5][1] , \fifo[5][0] ,
         \fifo[4][8] , \fifo[3][8] , \fifo[3][1] , \fifo[3][0] , \fifo[2][8] ,
         \fifo[2][7] , \fifo[2][6] , \fifo[2][5] , \fifo[2][4] , \fifo[2][3] ,
         \fifo[2][2] , \fifo[2][1] , \fifo[2][0] , \fifo[1][8] , \fifo[1][7] ,
         \fifo[1][6] , \fifo[1][5] , \fifo[1][4] , \fifo[1][3] , \fifo[1][2] ,
         \fifo[1][1] , \fifo[1][0] , \fifo[0][8] , \fifo[0][1] , \fifo[0][0] ,
         N228, N231, N234, N237, N240, N243, N246, N249, N250, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
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
         n491, n492, n493, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68,
         n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n293, n294, n295,
         n296, n297, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n494, n495, n496, n497, n498,
         n499, n500, n501, n502, n503, n504, n505, n506, n507, n508, n509,
         n510, n511;
  wire   [4:0] write_ptr;
  wire   [4:0] read_ptr;
  wire   [6:0] counter;
  tri   [7:0] data_out;

  FD1 lfd_state_temp_reg ( .D(N33), .CP(clock), .Q(lfd_state_temp) );
  FD1 \read_ptr_reg[0]  ( .D(n493), .CP(clock), .Q(read_ptr[0]), .QN(n301) );
  FD1 \read_ptr_reg[1]  ( .D(n492), .CP(clock), .Q(read_ptr[1]), .QN(n258) );
  FD1 \read_ptr_reg[2]  ( .D(n490), .CP(clock), .Q(read_ptr[2]), .QN(n255) );
  FD1 \read_ptr_reg[3]  ( .D(n489), .CP(clock), .Q(read_ptr[3]), .QN(n252) );
  FD1 \read_ptr_reg[4]  ( .D(n488), .CP(clock), .Q(read_ptr[4]) );
  FD1 \write_ptr_reg[0]  ( .D(n491), .CP(clock), .Q(write_ptr[0]), .QN(n256)
         );
  FD1 \write_ptr_reg[1]  ( .D(n487), .CP(clock), .Q(write_ptr[1]), .QN(n253)
         );
  FD1 \write_ptr_reg[2]  ( .D(n486), .CP(clock), .Q(write_ptr[2]), .QN(n251)
         );
  FD1 \write_ptr_reg[3]  ( .D(n485), .CP(clock), .Q(write_ptr[3]), .QN(n254)
         );
  FD1 \write_ptr_reg[4]  ( .D(n484), .CP(clock), .Q(write_ptr[4]), .QN(n257)
         );
  FD1 \fifo_reg[15][8]  ( .D(n483), .CP(clock), .Q(\fifo[15][8] ) );
  FD1 \fifo_reg[15][7]  ( .D(n482), .CP(clock), .QN(n261) );
  FD1 \fifo_reg[15][6]  ( .D(n481), .CP(clock), .QN(n267) );
  FD1 \fifo_reg[15][5]  ( .D(n480), .CP(clock), .QN(n273) );
  FD1 \fifo_reg[15][4]  ( .D(n479), .CP(clock), .QN(n279) );
  FD1 \fifo_reg[15][3]  ( .D(n478), .CP(clock), .QN(n285) );
  FD1 \fifo_reg[15][2]  ( .D(n477), .CP(clock), .QN(n291) );
  FD1 \fifo_reg[15][1]  ( .D(n476), .CP(clock), .QN(n295) );
  FD1 \fifo_reg[15][0]  ( .D(n475), .CP(clock), .QN(n297) );
  FD1 \fifo_reg[14][8]  ( .D(n474), .CP(clock), .Q(\fifo[14][8] ) );
  FD1 \fifo_reg[14][7]  ( .D(n473), .CP(clock), .QN(n303) );
  FD1 \fifo_reg[14][6]  ( .D(n472), .CP(clock), .QN(n309) );
  FD1 \fifo_reg[14][5]  ( .D(n471), .CP(clock), .QN(n315) );
  FD1 \fifo_reg[14][4]  ( .D(n470), .CP(clock), .QN(n321) );
  FD1 \fifo_reg[14][3]  ( .D(n469), .CP(clock), .QN(n497) );
  FD1 \fifo_reg[14][2]  ( .D(n468), .CP(clock), .QN(n503) );
  FD1 \fifo_reg[14][1]  ( .D(n467), .CP(clock), .Q(\fifo[14][1] ) );
  FD1 \fifo_reg[14][0]  ( .D(n466), .CP(clock), .Q(\fifo[14][0] ) );
  FD1 \fifo_reg[13][8]  ( .D(n465), .CP(clock), .Q(\fifo[13][8] ) );
  FD1 \fifo_reg[13][7]  ( .D(n464), .CP(clock), .QN(n260) );
  FD1 \fifo_reg[13][6]  ( .D(n463), .CP(clock), .QN(n266) );
  FD1 \fifo_reg[13][5]  ( .D(n462), .CP(clock), .QN(n272) );
  FD1 \fifo_reg[13][4]  ( .D(n461), .CP(clock), .QN(n278) );
  FD1 \fifo_reg[13][3]  ( .D(n460), .CP(clock), .QN(n284) );
  FD1 \fifo_reg[13][2]  ( .D(n459), .CP(clock), .QN(n290) );
  FD1 \fifo_reg[13][1]  ( .D(n458), .CP(clock), .Q(\fifo[13][1] ) );
  FD1 \fifo_reg[13][0]  ( .D(n457), .CP(clock), .Q(\fifo[13][0] ) );
  FD1 \fifo_reg[12][8]  ( .D(n456), .CP(clock), .Q(\fifo[12][8] ) );
  FD1 \fifo_reg[12][7]  ( .D(n455), .CP(clock), .QN(n259) );
  FD1 \fifo_reg[12][6]  ( .D(n454), .CP(clock), .QN(n265) );
  FD1 \fifo_reg[12][5]  ( .D(n453), .CP(clock), .QN(n271) );
  FD1 \fifo_reg[12][4]  ( .D(n452), .CP(clock), .QN(n277) );
  FD1 \fifo_reg[12][3]  ( .D(n451), .CP(clock), .QN(n283) );
  FD1 \fifo_reg[12][2]  ( .D(n450), .CP(clock), .QN(n289) );
  FD1 \fifo_reg[12][1]  ( .D(n449), .CP(clock), .Q(\fifo[12][1] ) );
  FD1 \fifo_reg[12][0]  ( .D(n448), .CP(clock), .Q(\fifo[12][0] ) );
  FD1 \fifo_reg[11][8]  ( .D(n447), .CP(clock), .Q(\fifo[11][8] ) );
  FD1 \fifo_reg[11][7]  ( .D(n446), .CP(clock), .QN(n302) );
  FD1 \fifo_reg[11][6]  ( .D(n445), .CP(clock), .QN(n308) );
  FD1 \fifo_reg[11][5]  ( .D(n444), .CP(clock), .QN(n314) );
  FD1 \fifo_reg[11][4]  ( .D(n443), .CP(clock), .QN(n320) );
  FD1 \fifo_reg[11][3]  ( .D(n442), .CP(clock), .QN(n496) );
  FD1 \fifo_reg[11][2]  ( .D(n441), .CP(clock), .QN(n502) );
  FD1 \fifo_reg[11][1]  ( .D(n440), .CP(clock), .QN(n508) );
  FD1 \fifo_reg[11][0]  ( .D(n439), .CP(clock), .QN(n510) );
  FD1 \fifo_reg[10][8]  ( .D(n438), .CP(clock), .Q(\fifo[10][8] ) );
  FD1 \fifo_reg[10][7]  ( .D(n437), .CP(clock), .Q(\fifo[10][7] ) );
  FD1 \fifo_reg[10][6]  ( .D(n436), .CP(clock), .Q(\fifo[10][6] ) );
  FD1 \fifo_reg[10][5]  ( .D(n435), .CP(clock), .Q(\fifo[10][5] ) );
  FD1 \fifo_reg[10][4]  ( .D(n434), .CP(clock), .Q(\fifo[10][4] ) );
  FD1 \fifo_reg[10][3]  ( .D(n433), .CP(clock), .Q(\fifo[10][3] ) );
  FD1 \fifo_reg[10][2]  ( .D(n432), .CP(clock), .Q(\fifo[10][2] ) );
  FD1 \fifo_reg[10][1]  ( .D(n431), .CP(clock), .Q(\fifo[10][1] ) );
  FD1 \fifo_reg[10][0]  ( .D(n430), .CP(clock), .Q(\fifo[10][0] ) );
  FD1 \fifo_reg[9][8]  ( .D(n429), .CP(clock), .Q(\fifo[9][8] ) );
  FD1 \fifo_reg[9][7]  ( .D(n428), .CP(clock), .Q(\fifo[9][7] ) );
  FD1 \fifo_reg[9][6]  ( .D(n427), .CP(clock), .Q(\fifo[9][6] ) );
  FD1 \fifo_reg[9][5]  ( .D(n426), .CP(clock), .Q(\fifo[9][5] ) );
  FD1 \fifo_reg[9][4]  ( .D(n425), .CP(clock), .Q(\fifo[9][4] ) );
  FD1 \fifo_reg[9][3]  ( .D(n424), .CP(clock), .Q(\fifo[9][3] ) );
  FD1 \fifo_reg[9][2]  ( .D(n423), .CP(clock), .Q(\fifo[9][2] ) );
  FD1 \fifo_reg[9][1]  ( .D(n422), .CP(clock), .Q(\fifo[9][1] ) );
  FD1 \fifo_reg[9][0]  ( .D(n421), .CP(clock), .Q(\fifo[9][0] ) );
  FD1 \fifo_reg[8][8]  ( .D(n420), .CP(clock), .Q(\fifo[8][8] ) );
  FD1 \fifo_reg[8][7]  ( .D(n419), .CP(clock), .QN(n304) );
  FD1 \fifo_reg[8][6]  ( .D(n418), .CP(clock), .QN(n310) );
  FD1 \fifo_reg[8][5]  ( .D(n417), .CP(clock), .QN(n316) );
  FD1 \fifo_reg[8][4]  ( .D(n416), .CP(clock), .QN(n322) );
  FD1 \fifo_reg[8][3]  ( .D(n415), .CP(clock), .QN(n498) );
  FD1 \fifo_reg[8][2]  ( .D(n414), .CP(clock), .QN(n504) );
  FD1 \fifo_reg[8][1]  ( .D(n413), .CP(clock), .Q(\fifo[8][1] ) );
  FD1 \fifo_reg[8][0]  ( .D(n412), .CP(clock), .Q(\fifo[8][0] ) );
  FD1 \fifo_reg[7][8]  ( .D(n411), .CP(clock), .Q(\fifo[7][8] ) );
  FD1 \fifo_reg[7][7]  ( .D(n410), .CP(clock), .QN(n307) );
  FD1 \fifo_reg[7][6]  ( .D(n409), .CP(clock), .QN(n313) );
  FD1 \fifo_reg[7][5]  ( .D(n408), .CP(clock), .QN(n319) );
  FD1 \fifo_reg[7][4]  ( .D(n407), .CP(clock), .QN(n282) );
  FD1 \fifo_reg[7][3]  ( .D(n406), .CP(clock), .QN(n288) );
  FD1 \fifo_reg[7][2]  ( .D(n405), .CP(clock), .QN(n294) );
  FD1 \fifo_reg[7][1]  ( .D(n404), .CP(clock), .Q(\fifo[7][1] ) );
  FD1 \fifo_reg[7][0]  ( .D(n403), .CP(clock), .Q(\fifo[7][0] ) );
  FD1 \fifo_reg[6][8]  ( .D(n402), .CP(clock), .Q(\fifo[6][8] ) );
  FD1 \fifo_reg[6][7]  ( .D(n401), .CP(clock), .QN(n306) );
  FD1 \fifo_reg[6][6]  ( .D(n400), .CP(clock), .QN(n312) );
  FD1 \fifo_reg[6][5]  ( .D(n399), .CP(clock), .QN(n318) );
  FD1 \fifo_reg[6][4]  ( .D(n398), .CP(clock), .QN(n494) );
  FD1 \fifo_reg[6][3]  ( .D(n397), .CP(clock), .QN(n500) );
  FD1 \fifo_reg[6][2]  ( .D(n396), .CP(clock), .QN(n506) );
  FD1 \fifo_reg[6][1]  ( .D(n395), .CP(clock), .QN(n296) );
  FD1 \fifo_reg[6][0]  ( .D(n394), .CP(clock), .QN(n298) );
  FD1 \fifo_reg[5][8]  ( .D(n393), .CP(clock), .Q(\fifo[5][8] ) );
  FD1 \fifo_reg[5][7]  ( .D(n392), .CP(clock), .QN(n263) );
  FD1 \fifo_reg[5][6]  ( .D(n391), .CP(clock), .QN(n269) );
  FD1 \fifo_reg[5][5]  ( .D(n390), .CP(clock), .QN(n275) );
  FD1 \fifo_reg[5][4]  ( .D(n389), .CP(clock), .QN(n281) );
  FD1 \fifo_reg[5][3]  ( .D(n388), .CP(clock), .QN(n287) );
  FD1 \fifo_reg[5][2]  ( .D(n387), .CP(clock), .QN(n293) );
  FD1 \fifo_reg[5][1]  ( .D(n386), .CP(clock), .Q(\fifo[5][1] ) );
  FD1 \fifo_reg[5][0]  ( .D(n385), .CP(clock), .Q(\fifo[5][0] ) );
  FD1 \fifo_reg[4][8]  ( .D(n384), .CP(clock), .Q(\fifo[4][8] ) );
  FD1 \fifo_reg[4][7]  ( .D(n383), .CP(clock), .QN(n262) );
  FD1 \fifo_reg[4][6]  ( .D(n382), .CP(clock), .QN(n268) );
  FD1 \fifo_reg[4][5]  ( .D(n381), .CP(clock), .QN(n274) );
  FD1 \fifo_reg[4][4]  ( .D(n380), .CP(clock), .QN(n280) );
  FD1 \fifo_reg[4][3]  ( .D(n379), .CP(clock), .QN(n286) );
  FD1 \fifo_reg[4][2]  ( .D(n378), .CP(clock), .QN(n292) );
  FD1 \fifo_reg[4][1]  ( .D(n377), .CP(clock), .QN(n509) );
  FD1 \fifo_reg[4][0]  ( .D(n376), .CP(clock), .QN(n511) );
  FD1 \fifo_reg[3][8]  ( .D(n375), .CP(clock), .Q(\fifo[3][8] ) );
  FD1 \fifo_reg[3][7]  ( .D(n374), .CP(clock), .QN(n305) );
  FD1 \fifo_reg[3][6]  ( .D(n373), .CP(clock), .QN(n311) );
  FD1 \fifo_reg[3][5]  ( .D(n372), .CP(clock), .QN(n317) );
  FD1 \fifo_reg[3][4]  ( .D(n371), .CP(clock), .QN(n323) );
  FD1 \fifo_reg[3][3]  ( .D(n370), .CP(clock), .QN(n499) );
  FD1 \fifo_reg[3][2]  ( .D(n369), .CP(clock), .QN(n505) );
  FD1 \fifo_reg[3][1]  ( .D(n368), .CP(clock), .Q(\fifo[3][1] ) );
  FD1 \fifo_reg[3][0]  ( .D(n367), .CP(clock), .Q(\fifo[3][0] ) );
  FD1 \fifo_reg[2][8]  ( .D(n366), .CP(clock), .Q(\fifo[2][8] ) );
  FD1 \fifo_reg[2][7]  ( .D(n365), .CP(clock), .Q(\fifo[2][7] ) );
  FD1 \fifo_reg[2][6]  ( .D(n364), .CP(clock), .Q(\fifo[2][6] ) );
  FD1 \fifo_reg[2][5]  ( .D(n363), .CP(clock), .Q(\fifo[2][5] ) );
  FD1 \fifo_reg[2][4]  ( .D(n362), .CP(clock), .Q(\fifo[2][4] ) );
  FD1 \fifo_reg[2][3]  ( .D(n361), .CP(clock), .Q(\fifo[2][3] ) );
  FD1 \fifo_reg[2][2]  ( .D(n360), .CP(clock), .Q(\fifo[2][2] ) );
  FD1 \fifo_reg[2][1]  ( .D(n359), .CP(clock), .Q(\fifo[2][1] ) );
  FD1 \fifo_reg[2][0]  ( .D(n358), .CP(clock), .Q(\fifo[2][0] ) );
  FD1 \fifo_reg[1][8]  ( .D(n357), .CP(clock), .Q(\fifo[1][8] ) );
  FD1 \fifo_reg[1][7]  ( .D(n356), .CP(clock), .Q(\fifo[1][7] ) );
  FD1 \fifo_reg[1][6]  ( .D(n355), .CP(clock), .Q(\fifo[1][6] ) );
  FD1 \fifo_reg[1][5]  ( .D(n354), .CP(clock), .Q(\fifo[1][5] ) );
  FD1 \fifo_reg[1][4]  ( .D(n353), .CP(clock), .Q(\fifo[1][4] ) );
  FD1 \fifo_reg[1][3]  ( .D(n352), .CP(clock), .Q(\fifo[1][3] ) );
  FD1 \fifo_reg[1][2]  ( .D(n351), .CP(clock), .Q(\fifo[1][2] ) );
  FD1 \fifo_reg[1][1]  ( .D(n350), .CP(clock), .Q(\fifo[1][1] ) );
  FD1 \fifo_reg[1][0]  ( .D(n349), .CP(clock), .Q(\fifo[1][0] ) );
  FD1 \fifo_reg[0][8]  ( .D(n348), .CP(clock), .Q(\fifo[0][8] ) );
  FD1 \counter_reg[6]  ( .D(n341), .CP(clock), .Q(counter[6]), .QN(n299) );
  FD1 \counter_reg[0]  ( .D(n340), .CP(clock), .Q(counter[0]) );
  FD1 \counter_reg[5]  ( .D(n339), .CP(clock), .Q(counter[5]) );
  FD1 \counter_reg[4]  ( .D(n338), .CP(clock), .Q(counter[4]) );
  FD1 \counter_reg[3]  ( .D(n337), .CP(clock), .Q(counter[3]) );
  FD1 \counter_reg[2]  ( .D(n336), .CP(clock), .Q(counter[2]) );
  FD1 \counter_reg[1]  ( .D(n335), .CP(clock), .Q(counter[1]) );
  FD1 \fifo_reg[0][7]  ( .D(n347), .CP(clock), .QN(n264) );
  FD1 \fifo_reg[0][6]  ( .D(n346), .CP(clock), .QN(n270) );
  FD1 \fifo_reg[0][5]  ( .D(n345), .CP(clock), .QN(n276) );
  FD1 \fifo_reg[0][4]  ( .D(n344), .CP(clock), .QN(n495) );
  FD1 \fifo_reg[0][3]  ( .D(n343), .CP(clock), .QN(n501) );
  FD1 \fifo_reg[0][2]  ( .D(n342), .CP(clock), .QN(n507) );
  FD1 \fifo_reg[0][1]  ( .D(n334), .CP(clock), .Q(\fifo[0][1] ) );
  FD1 \fifo_reg[0][0]  ( .D(n333), .CP(clock), .Q(\fifo[0][0] ) );
  FD1 \data_out_reg[7]  ( .D(n332), .CP(clock), .Q(N228) );
  FD1 \data_out_reg[6]  ( .D(n331), .CP(clock), .Q(N231) );
  FD1 \data_out_reg[5]  ( .D(n330), .CP(clock), .Q(N234) );
  FD1 \data_out_reg[4]  ( .D(n329), .CP(clock), .Q(N237) );
  FD1 \data_out_reg[3]  ( .D(n328), .CP(clock), .Q(N240) );
  FD1 \data_out_reg[2]  ( .D(n327), .CP(clock), .Q(N243) );
  FD1 \data_out_reg[1]  ( .D(n326), .CP(clock), .Q(N246) );
  FD1 \data_out_reg[0]  ( .D(n325), .CP(clock), .Q(N249) );
  FD1 \data_out_tri_enable_reg[0]  ( .D(n324), .CP(clock), .Q(N250), .QN(n300)
         );
  BTS4 \data_out_tri[0]  ( .A(N249), .E(n300), .Z(data_out[0]) );
  BTS4 \data_out_tri[1]  ( .A(N246), .E(n300), .Z(data_out[1]) );
  BTS4 \data_out_tri[2]  ( .A(N243), .E(n300), .Z(data_out[2]) );
  BTS4 \data_out_tri[3]  ( .A(N240), .E(n300), .Z(data_out[3]) );
  BTS4 \data_out_tri[4]  ( .A(N237), .E(n300), .Z(data_out[4]) );
  BTS4 \data_out_tri[5]  ( .A(N234), .E(n300), .Z(data_out[5]) );
  BTS4 \data_out_tri[6]  ( .A(N231), .E(n300), .Z(data_out[6]) );
  BTS4 \data_out_tri[7]  ( .A(N228), .E(n300), .Z(data_out[7]) );
  EON1 U3 ( .A(write_ptr[4]), .B(read_ptr[4]), .C(read_ptr[4]), .D(
        write_ptr[4]), .Z(n5) );
  AO2 U4 ( .A(read_ptr[3]), .B(n254), .C(write_ptr[3]), .D(n252), .Z(n4) );
  AO2 U5 ( .A(read_ptr[2]), .B(n251), .C(write_ptr[2]), .D(n255), .Z(n3) );
  AO2 U6 ( .A(read_ptr[0]), .B(n256), .C(write_ptr[0]), .D(n301), .Z(n2) );
  AO2 U7 ( .A(read_ptr[1]), .B(n253), .C(write_ptr[1]), .D(n258), .Z(n1) );
  ND4 U8 ( .A(n4), .B(n3), .C(n2), .D(n1), .Z(n6) );
  NR2 U9 ( .A(n5), .B(n6), .Z(full) );
  IVP U10 ( .A(n5), .Z(n7) );
  NR2 U11 ( .A(n7), .B(n6), .Z(empty) );
  ND2 U12 ( .A(n301), .B(n258), .Z(n8) );
  NR2 U13 ( .A(read_ptr[2]), .B(n8), .Z(n237) );
  ND2 U14 ( .A(read_ptr[0]), .B(read_ptr[1]), .Z(n140) );
  NR2 U15 ( .A(n255), .B(n140), .Z(n236) );
  AO2 U16 ( .A(n237), .B(\fifo[8][8] ), .C(n236), .D(\fifo[15][8] ), .Z(n11)
         );
  ND2 U17 ( .A(read_ptr[1]), .B(n301), .Z(n12) );
  NR2 U18 ( .A(n255), .B(n12), .Z(n225) );
  ND2 U19 ( .A(read_ptr[0]), .B(n258), .Z(n13) );
  NR2 U20 ( .A(n255), .B(n13), .Z(n232) );
  AO2 U21 ( .A(n225), .B(\fifo[14][8] ), .C(n232), .D(\fifo[13][8] ), .Z(n10)
         );
  NR2 U22 ( .A(read_ptr[2]), .B(n140), .Z(n234) );
  NR2 U23 ( .A(n255), .B(n8), .Z(n226) );
  AO2 U24 ( .A(n234), .B(\fifo[11][8] ), .C(n226), .D(\fifo[12][8] ), .Z(n9)
         );
  AN4P U25 ( .A(n11), .B(n10), .C(read_ptr[3]), .D(n9), .Z(n20) );
  NR2 U26 ( .A(read_ptr[2]), .B(n12), .Z(n233) );
  NR2 U27 ( .A(read_ptr[2]), .B(n13), .Z(n235) );
  AO2 U28 ( .A(n233), .B(\fifo[10][8] ), .C(n235), .D(\fifo[9][8] ), .Z(n19)
         );
  AO2 U29 ( .A(n237), .B(\fifo[0][8] ), .C(n236), .D(\fifo[7][8] ), .Z(n16) );
  AO2 U30 ( .A(n225), .B(\fifo[6][8] ), .C(n232), .D(\fifo[5][8] ), .Z(n15) );
  AO2 U31 ( .A(n234), .B(\fifo[3][8] ), .C(n226), .D(\fifo[4][8] ), .Z(n14) );
  AN4P U32 ( .A(n16), .B(n15), .C(n14), .D(n252), .Z(n18) );
  AO2 U33 ( .A(n233), .B(\fifo[2][8] ), .C(n235), .D(\fifo[1][8] ), .Z(n17) );
  AO2 U34 ( .A(n20), .B(n19), .C(n18), .D(n17), .Z(n91) );
  NR3 U35 ( .A(counter[6]), .B(counter[1]), .C(counter[2]), .Z(n22) );
  NR4 U36 ( .A(counter[3]), .B(counter[4]), .C(counter[5]), .D(counter[0]), 
        .Z(n21) );
  ND2 U37 ( .A(n22), .B(n21), .Z(n122) );
  IVP U38 ( .A(resetn), .Z(n160) );
  NR2 U39 ( .A(soft_reset), .B(n160), .Z(n159) );
  IVP U40 ( .A(empty), .Z(n23) );
  ND2 U41 ( .A(read_enb), .B(n23), .Z(n143) );
  ND2 U42 ( .A(n159), .B(n143), .Z(n249) );
  AO7 U43 ( .A(n91), .B(n122), .C(n249), .Z(n120) );
  IVP U44 ( .A(n159), .Z(n183) );
  NR2 U45 ( .A(n143), .B(n183), .Z(n134) );
  IVP U46 ( .A(n134), .Z(n247) );
  NR2 U47 ( .A(n247), .B(n120), .Z(n119) );
  IVP U48 ( .A(n91), .Z(n117) );
  IVP U49 ( .A(n225), .Z(n230) );
  IVP U50 ( .A(n232), .Z(n83) );
  AO4 U51 ( .A(n230), .B(n303), .C(n83), .D(n260), .Z(n26) );
  IVP U52 ( .A(n237), .Z(n82) );
  IVP U53 ( .A(n236), .Z(n223) );
  AO4 U54 ( .A(n82), .B(n304), .C(n223), .D(n261), .Z(n25) );
  IVP U55 ( .A(n234), .Z(n224) );
  IVP U56 ( .A(n226), .Z(n231) );
  AO4 U57 ( .A(n224), .B(n302), .C(n231), .D(n259), .Z(n24) );
  NR4 U58 ( .A(n26), .B(n25), .C(n24), .D(n252), .Z(n33) );
  AO2 U59 ( .A(n233), .B(\fifo[10][7] ), .C(n235), .D(\fifo[9][7] ), .Z(n32)
         );
  AO4 U60 ( .A(n82), .B(n264), .C(n223), .D(n307), .Z(n29) );
  AO4 U61 ( .A(n230), .B(n306), .C(n83), .D(n263), .Z(n28) );
  AO4 U62 ( .A(n224), .B(n305), .C(n231), .D(n262), .Z(n27) );
  NR4 U63 ( .A(read_ptr[3]), .B(n29), .C(n28), .D(n27), .Z(n31) );
  AO2 U64 ( .A(n233), .B(\fifo[2][7] ), .C(n235), .D(\fifo[1][7] ), .Z(n30) );
  AO2 U65 ( .A(n33), .B(n32), .C(n31), .D(n30), .Z(n123) );
  AO2 U66 ( .A(n91), .B(n123), .C(n117), .D(counter[5]), .Z(n34) );
  IVP U67 ( .A(n34), .Z(n100) );
  AO4 U68 ( .A(n230), .B(n309), .C(n83), .D(n266), .Z(n37) );
  AO4 U69 ( .A(n82), .B(n310), .C(n223), .D(n267), .Z(n36) );
  AO4 U70 ( .A(n224), .B(n308), .C(n231), .D(n265), .Z(n35) );
  NR4 U71 ( .A(n37), .B(n36), .C(n35), .D(n252), .Z(n44) );
  AO2 U72 ( .A(n233), .B(\fifo[10][6] ), .C(n235), .D(\fifo[9][6] ), .Z(n43)
         );
  AO4 U73 ( .A(n82), .B(n270), .C(n223), .D(n313), .Z(n40) );
  AO4 U74 ( .A(n230), .B(n312), .C(n83), .D(n269), .Z(n39) );
  AO4 U75 ( .A(n224), .B(n311), .C(n231), .D(n268), .Z(n38) );
  NR4 U76 ( .A(read_ptr[3]), .B(n40), .C(n39), .D(n38), .Z(n42) );
  AO2 U77 ( .A(n233), .B(\fifo[2][6] ), .C(n235), .D(\fifo[1][6] ), .Z(n41) );
  AO2 U78 ( .A(n44), .B(n43), .C(n42), .D(n41), .Z(n125) );
  AO2 U79 ( .A(n91), .B(n125), .C(n117), .D(counter[4]), .Z(n45) );
  IVP U80 ( .A(n45), .Z(n104) );
  AO4 U81 ( .A(n230), .B(n315), .C(n83), .D(n272), .Z(n48) );
  AO4 U82 ( .A(n82), .B(n316), .C(n223), .D(n273), .Z(n47) );
  AO4 U83 ( .A(n224), .B(n314), .C(n231), .D(n271), .Z(n46) );
  NR4 U84 ( .A(n48), .B(n47), .C(n46), .D(n252), .Z(n55) );
  AO2 U85 ( .A(n233), .B(\fifo[10][5] ), .C(n235), .D(\fifo[9][5] ), .Z(n54)
         );
  AO4 U86 ( .A(n82), .B(n276), .C(n223), .D(n319), .Z(n51) );
  AO4 U87 ( .A(n230), .B(n318), .C(n83), .D(n275), .Z(n50) );
  AO4 U88 ( .A(n224), .B(n317), .C(n231), .D(n274), .Z(n49) );
  NR4 U89 ( .A(read_ptr[3]), .B(n51), .C(n50), .D(n49), .Z(n53) );
  AO2 U90 ( .A(n233), .B(\fifo[2][5] ), .C(n235), .D(\fifo[1][5] ), .Z(n52) );
  AO2 U91 ( .A(n55), .B(n54), .C(n53), .D(n52), .Z(n127) );
  AO2 U92 ( .A(n91), .B(n127), .C(n117), .D(counter[3]), .Z(n56) );
  IVP U93 ( .A(n56), .Z(n108) );
  AO4 U94 ( .A(n230), .B(n321), .C(n83), .D(n278), .Z(n59) );
  AO4 U95 ( .A(n82), .B(n322), .C(n223), .D(n279), .Z(n58) );
  AO4 U96 ( .A(n224), .B(n320), .C(n231), .D(n277), .Z(n57) );
  NR4 U97 ( .A(n59), .B(n58), .C(n57), .D(n252), .Z(n66) );
  AO2 U98 ( .A(n233), .B(\fifo[10][4] ), .C(n235), .D(\fifo[9][4] ), .Z(n65)
         );
  AO4 U99 ( .A(n82), .B(n495), .C(n223), .D(n282), .Z(n62) );
  AO4 U100 ( .A(n230), .B(n494), .C(n83), .D(n281), .Z(n61) );
  AO4 U101 ( .A(n224), .B(n323), .C(n231), .D(n280), .Z(n60) );
  NR4 U102 ( .A(read_ptr[3]), .B(n62), .C(n61), .D(n60), .Z(n64) );
  AO2 U103 ( .A(n233), .B(\fifo[2][4] ), .C(n235), .D(\fifo[1][4] ), .Z(n63)
         );
  AO2 U104 ( .A(n66), .B(n65), .C(n64), .D(n63), .Z(n129) );
  AO2 U105 ( .A(n91), .B(n129), .C(n117), .D(counter[2]), .Z(n67) );
  IVP U106 ( .A(n67), .Z(n112) );
  AO4 U107 ( .A(n230), .B(n497), .C(n83), .D(n284), .Z(n70) );
  AO4 U108 ( .A(n82), .B(n498), .C(n223), .D(n285), .Z(n69) );
  AO4 U109 ( .A(n224), .B(n496), .C(n231), .D(n283), .Z(n68) );
  NR4 U110 ( .A(n70), .B(n69), .C(n68), .D(n252), .Z(n77) );
  AO2 U111 ( .A(n233), .B(\fifo[10][3] ), .C(n235), .D(\fifo[9][3] ), .Z(n76)
         );
  AO4 U112 ( .A(n82), .B(n501), .C(n223), .D(n288), .Z(n73) );
  AO4 U113 ( .A(n230), .B(n500), .C(n83), .D(n287), .Z(n72) );
  AO4 U114 ( .A(n224), .B(n499), .C(n231), .D(n286), .Z(n71) );
  NR4 U115 ( .A(read_ptr[3]), .B(n73), .C(n72), .D(n71), .Z(n75) );
  AO2 U116 ( .A(n233), .B(\fifo[2][3] ), .C(n235), .D(\fifo[1][3] ), .Z(n74)
         );
  AO2 U117 ( .A(n77), .B(n76), .C(n75), .D(n74), .Z(n131) );
  AO2 U118 ( .A(n91), .B(n131), .C(n117), .D(counter[1]), .Z(n78) );
  IVP U119 ( .A(n78), .Z(n116) );
  AO4 U120 ( .A(n230), .B(n503), .C(n83), .D(n290), .Z(n81) );
  AO4 U121 ( .A(n82), .B(n504), .C(n223), .D(n291), .Z(n80) );
  AO4 U122 ( .A(n224), .B(n502), .C(n231), .D(n289), .Z(n79) );
  NR4 U123 ( .A(n81), .B(n80), .C(n79), .D(n252), .Z(n90) );
  AO2 U124 ( .A(n233), .B(\fifo[10][2] ), .C(n235), .D(\fifo[9][2] ), .Z(n89)
         );
  AO4 U125 ( .A(n82), .B(n507), .C(n223), .D(n294), .Z(n86) );
  AO4 U126 ( .A(n230), .B(n506), .C(n83), .D(n293), .Z(n85) );
  AO4 U127 ( .A(n224), .B(n505), .C(n231), .D(n292), .Z(n84) );
  NR4 U128 ( .A(read_ptr[3]), .B(n86), .C(n85), .D(n84), .Z(n88) );
  AO2 U129 ( .A(n233), .B(\fifo[2][2] ), .C(n235), .D(\fifo[1][2] ), .Z(n87)
         );
  AO2 U130 ( .A(n90), .B(n89), .C(n88), .D(n87), .Z(n133) );
  AO2 U131 ( .A(n91), .B(n133), .C(n117), .D(counter[0]), .Z(n97) );
  IVP U132 ( .A(n97), .Z(n115) );
  NR2 U133 ( .A(n91), .B(n299), .Z(n92) );
  EO U134 ( .A(n117), .B(n92), .Z(n93) );
  EO U135 ( .A(n94), .B(n93), .Z(n95) );
  AO2 U136 ( .A(counter[6]), .B(n120), .C(n119), .D(n95), .Z(n96) );
  IVP U137 ( .A(n96), .Z(n341) );
  AO2 U138 ( .A(counter[0]), .B(n120), .C(n119), .D(n97), .Z(n98) );
  IVP U139 ( .A(n98), .Z(n340) );
  FA1A U140 ( .A(n117), .B(n100), .CI(n99), .CO(n94), .S(n101) );
  AO2 U141 ( .A(counter[5]), .B(n120), .C(n119), .D(n101), .Z(n102) );
  IVP U142 ( .A(n102), .Z(n339) );
  FA1A U143 ( .A(n117), .B(n104), .CI(n103), .CO(n99), .S(n105) );
  AO2 U144 ( .A(counter[4]), .B(n120), .C(n119), .D(n105), .Z(n106) );
  IVP U145 ( .A(n106), .Z(n338) );
  FA1A U146 ( .A(n117), .B(n108), .CI(n107), .CO(n103), .S(n109) );
  AO2 U147 ( .A(counter[3]), .B(n120), .C(n119), .D(n109), .Z(n110) );
  IVP U148 ( .A(n110), .Z(n337) );
  FA1A U149 ( .A(n117), .B(n112), .CI(n111), .CO(n107), .S(n113) );
  AO2 U150 ( .A(counter[2]), .B(n120), .C(n119), .D(n113), .Z(n114) );
  IVP U151 ( .A(n114), .Z(n336) );
  FA1A U152 ( .A(n117), .B(n116), .CI(n115), .CO(n111), .S(n118) );
  AO2 U153 ( .A(counter[1]), .B(n120), .C(n119), .D(n118), .Z(n121) );
  IVP U154 ( .A(n121), .Z(n335) );
  IVP U155 ( .A(n122), .Z(n248) );
  NR2 U156 ( .A(n249), .B(n248), .Z(n245) );
  AO2 U157 ( .A(n134), .B(n123), .C(n245), .D(N228), .Z(n124) );
  IVP U158 ( .A(n124), .Z(n332) );
  AO2 U159 ( .A(n134), .B(n125), .C(n245), .D(N231), .Z(n126) );
  IVP U160 ( .A(n126), .Z(n331) );
  AO2 U161 ( .A(n134), .B(n127), .C(n245), .D(N234), .Z(n128) );
  IVP U162 ( .A(n128), .Z(n330) );
  AO2 U163 ( .A(n134), .B(n129), .C(n245), .D(N237), .Z(n130) );
  IVP U164 ( .A(n130), .Z(n329) );
  AO2 U165 ( .A(n134), .B(n131), .C(n245), .D(N240), .Z(n132) );
  IVP U166 ( .A(n132), .Z(n328) );
  AO2 U167 ( .A(n134), .B(n133), .C(n245), .D(N243), .Z(n135) );
  IVP U168 ( .A(n135), .Z(n327) );
  AN2P U169 ( .A(n159), .B(lfd_state), .Z(N33) );
  AO2 U170 ( .A(read_ptr[0]), .B(n249), .C(n247), .D(n301), .Z(n493) );
  NR2 U171 ( .A(n143), .B(n301), .Z(n137) );
  NR2 U172 ( .A(read_ptr[1]), .B(n137), .Z(n136) );
  AO1P U173 ( .A(read_ptr[1]), .B(n137), .C(n183), .D(n136), .Z(n492) );
  IVP U174 ( .A(write_enb), .Z(n138) );
  NR2 U175 ( .A(full), .B(n138), .Z(n158) );
  NR2 U176 ( .A(write_ptr[0]), .B(n158), .Z(n139) );
  AO1P U177 ( .A(write_ptr[0]), .B(n158), .C(n183), .D(n139), .Z(n491) );
  NR2 U178 ( .A(n143), .B(n140), .Z(n142) );
  NR2 U179 ( .A(read_ptr[2]), .B(n142), .Z(n141) );
  AO1P U180 ( .A(read_ptr[2]), .B(n142), .C(n183), .D(n141), .Z(n490) );
  OR2P U181 ( .A(n143), .B(n223), .Z(n144) );
  NR2 U182 ( .A(n252), .B(n144), .Z(n146) );
  AO1P U183 ( .A(n252), .B(n144), .C(n146), .D(n183), .Z(n489) );
  NR2 U184 ( .A(read_ptr[4]), .B(n146), .Z(n145) );
  AO1P U185 ( .A(read_ptr[4]), .B(n146), .C(n183), .D(n145), .Z(n488) );
  AN2P U186 ( .A(write_ptr[0]), .B(n158), .Z(n148) );
  NR2 U187 ( .A(write_ptr[1]), .B(n148), .Z(n147) );
  AO1P U188 ( .A(write_ptr[1]), .B(n148), .C(n183), .D(n147), .Z(n487) );
  NR2 U189 ( .A(n251), .B(n253), .Z(n157) );
  AN2P U190 ( .A(write_ptr[0]), .B(n157), .Z(n152) );
  NR2 U191 ( .A(write_ptr[2]), .B(write_ptr[1]), .Z(n174) );
  AO1P U192 ( .A(n251), .B(n256), .C(n152), .D(n174), .Z(n149) );
  IVP U193 ( .A(n149), .Z(n151) );
  NR2 U194 ( .A(write_ptr[2]), .B(n158), .Z(n150) );
  AO1P U195 ( .A(n158), .B(n151), .C(n183), .D(n150), .Z(n486) );
  ND2 U196 ( .A(n158), .B(n152), .Z(n153) );
  NR2 U197 ( .A(n254), .B(n153), .Z(n154) );
  AO1P U198 ( .A(n254), .B(n153), .C(n154), .D(n183), .Z(n485) );
  IVP U199 ( .A(n154), .Z(n156) );
  NR2 U200 ( .A(n257), .B(n156), .Z(n155) );
  AO1P U201 ( .A(n257), .B(n156), .C(n183), .D(n155), .Z(n484) );
  NR2 U202 ( .A(n157), .B(n183), .Z(n185) );
  ND2 U203 ( .A(n159), .B(n158), .Z(n164) );
  NR2 U204 ( .A(n256), .B(n164), .Z(n180) );
  AO1P U205 ( .A(write_ptr[3]), .B(n180), .C(soft_reset), .D(n160), .Z(n175)
         );
  NR2 U206 ( .A(n185), .B(n175), .Z(n163) );
  IVP U207 ( .A(n164), .Z(n161) );
  ND2 U208 ( .A(n161), .B(lfd_state_temp), .Z(n201) );
  EO1 U209 ( .A(n163), .B(n201), .C(\fifo[15][8] ), .D(n163), .Z(n483) );
  ND2 U210 ( .A(n161), .B(data_in[7]), .Z(n202) );
  IVP U211 ( .A(n163), .Z(n162) );
  AO2 U212 ( .A(n163), .B(n202), .C(n261), .D(n162), .Z(n482) );
  ND2 U213 ( .A(n161), .B(data_in[6]), .Z(n203) );
  AO2 U214 ( .A(n163), .B(n203), .C(n267), .D(n162), .Z(n481) );
  ND2 U215 ( .A(n161), .B(data_in[5]), .Z(n204) );
  AO2 U216 ( .A(n163), .B(n204), .C(n273), .D(n162), .Z(n480) );
  ND2 U217 ( .A(n161), .B(data_in[4]), .Z(n205) );
  AO2 U218 ( .A(n163), .B(n205), .C(n279), .D(n162), .Z(n479) );
  ND2 U219 ( .A(n161), .B(data_in[3]), .Z(n206) );
  AO2 U220 ( .A(n163), .B(n206), .C(n285), .D(n162), .Z(n478) );
  ND2 U221 ( .A(n161), .B(data_in[2]), .Z(n208) );
  AO2 U222 ( .A(n163), .B(n208), .C(n291), .D(n162), .Z(n477) );
  ND2 U223 ( .A(n161), .B(data_in[1]), .Z(n209) );
  AO2 U224 ( .A(n163), .B(n209), .C(n295), .D(n162), .Z(n476) );
  ND2 U225 ( .A(n161), .B(data_in[0]), .Z(n210) );
  AO2 U226 ( .A(n163), .B(n210), .C(n297), .D(n162), .Z(n475) );
  NR2 U227 ( .A(write_ptr[0]), .B(n164), .Z(n184) );
  AO6 U228 ( .A(write_ptr[3]), .B(n184), .C(n183), .Z(n177) );
  NR2 U229 ( .A(n185), .B(n177), .Z(n166) );
  EO1 U230 ( .A(n166), .B(n201), .C(\fifo[14][8] ), .D(n166), .Z(n474) );
  IVP U231 ( .A(n166), .Z(n165) );
  AO2 U232 ( .A(n166), .B(n202), .C(n303), .D(n165), .Z(n473) );
  AO2 U233 ( .A(n166), .B(n203), .C(n309), .D(n165), .Z(n472) );
  AO2 U234 ( .A(n166), .B(n204), .C(n315), .D(n165), .Z(n471) );
  AO2 U235 ( .A(n166), .B(n205), .C(n321), .D(n165), .Z(n470) );
  AO2 U236 ( .A(n166), .B(n206), .C(n497), .D(n165), .Z(n469) );
  AO2 U237 ( .A(n166), .B(n208), .C(n503), .D(n165), .Z(n468) );
  EO1 U238 ( .A(n166), .B(n209), .C(\fifo[14][1] ), .D(n166), .Z(n467) );
  EO1 U239 ( .A(n166), .B(n210), .C(\fifo[14][0] ), .D(n166), .Z(n466) );
  AO6 U240 ( .A(write_ptr[2]), .B(n253), .C(n183), .Z(n190) );
  NR2 U241 ( .A(n175), .B(n190), .Z(n168) );
  EO1 U242 ( .A(n168), .B(n201), .C(\fifo[13][8] ), .D(n168), .Z(n465) );
  IVP U243 ( .A(n168), .Z(n167) );
  AO2 U244 ( .A(n168), .B(n202), .C(n260), .D(n167), .Z(n464) );
  AO2 U245 ( .A(n168), .B(n203), .C(n266), .D(n167), .Z(n463) );
  AO2 U246 ( .A(n168), .B(n204), .C(n272), .D(n167), .Z(n462) );
  AO2 U247 ( .A(n168), .B(n205), .C(n278), .D(n167), .Z(n461) );
  AO2 U248 ( .A(n168), .B(n206), .C(n284), .D(n167), .Z(n460) );
  AO2 U249 ( .A(n168), .B(n208), .C(n290), .D(n167), .Z(n459) );
  EO1 U250 ( .A(n168), .B(n209), .C(\fifo[13][1] ), .D(n168), .Z(n458) );
  EO1 U251 ( .A(n168), .B(n210), .C(\fifo[13][0] ), .D(n168), .Z(n457) );
  NR2 U252 ( .A(n177), .B(n190), .Z(n170) );
  EO1 U253 ( .A(n170), .B(n201), .C(\fifo[12][8] ), .D(n170), .Z(n456) );
  IVP U254 ( .A(n170), .Z(n169) );
  AO2 U255 ( .A(n170), .B(n202), .C(n259), .D(n169), .Z(n455) );
  AO2 U256 ( .A(n170), .B(n203), .C(n265), .D(n169), .Z(n454) );
  AO2 U257 ( .A(n170), .B(n204), .C(n271), .D(n169), .Z(n453) );
  AO2 U258 ( .A(n170), .B(n205), .C(n277), .D(n169), .Z(n452) );
  AO2 U259 ( .A(n170), .B(n206), .C(n283), .D(n169), .Z(n451) );
  AO2 U260 ( .A(n170), .B(n208), .C(n289), .D(n169), .Z(n450) );
  EO1 U261 ( .A(n170), .B(n209), .C(\fifo[12][1] ), .D(n170), .Z(n449) );
  EO1 U262 ( .A(n170), .B(n210), .C(\fifo[12][0] ), .D(n170), .Z(n448) );
  AO6 U263 ( .A(write_ptr[1]), .B(n251), .C(n183), .Z(n195) );
  NR2 U264 ( .A(n175), .B(n195), .Z(n172) );
  EO1 U265 ( .A(n172), .B(n201), .C(\fifo[11][8] ), .D(n172), .Z(n447) );
  IVP U266 ( .A(n172), .Z(n171) );
  AO2 U267 ( .A(n172), .B(n202), .C(n302), .D(n171), .Z(n446) );
  AO2 U268 ( .A(n172), .B(n203), .C(n308), .D(n171), .Z(n445) );
  AO2 U269 ( .A(n172), .B(n204), .C(n314), .D(n171), .Z(n444) );
  AO2 U270 ( .A(n172), .B(n205), .C(n320), .D(n171), .Z(n443) );
  AO2 U271 ( .A(n172), .B(n206), .C(n496), .D(n171), .Z(n442) );
  AO2 U272 ( .A(n172), .B(n208), .C(n502), .D(n171), .Z(n441) );
  AO2 U273 ( .A(n172), .B(n209), .C(n508), .D(n171), .Z(n440) );
  AO2 U274 ( .A(n172), .B(n210), .C(n510), .D(n171), .Z(n439) );
  NR2 U275 ( .A(n177), .B(n195), .Z(n173) );
  EO1 U276 ( .A(n173), .B(n201), .C(\fifo[10][8] ), .D(n173), .Z(n438) );
  EO1 U277 ( .A(n173), .B(n202), .C(\fifo[10][7] ), .D(n173), .Z(n437) );
  EO1 U278 ( .A(n173), .B(n203), .C(\fifo[10][6] ), .D(n173), .Z(n436) );
  EO1 U279 ( .A(n173), .B(n204), .C(\fifo[10][5] ), .D(n173), .Z(n435) );
  EO1 U280 ( .A(n173), .B(n205), .C(\fifo[10][4] ), .D(n173), .Z(n434) );
  EO1 U281 ( .A(n173), .B(n206), .C(\fifo[10][3] ), .D(n173), .Z(n433) );
  EO1 U282 ( .A(n173), .B(n208), .C(\fifo[10][2] ), .D(n173), .Z(n432) );
  EO1 U283 ( .A(n173), .B(n209), .C(\fifo[10][1] ), .D(n173), .Z(n431) );
  EO1 U284 ( .A(n173), .B(n210), .C(\fifo[10][0] ), .D(n173), .Z(n430) );
  NR2 U285 ( .A(n174), .B(n183), .Z(n200) );
  NR2 U286 ( .A(n175), .B(n200), .Z(n176) );
  EO1 U287 ( .A(n176), .B(n201), .C(\fifo[9][8] ), .D(n176), .Z(n429) );
  EO1 U288 ( .A(n176), .B(n202), .C(\fifo[9][7] ), .D(n176), .Z(n428) );
  EO1 U289 ( .A(n176), .B(n203), .C(\fifo[9][6] ), .D(n176), .Z(n427) );
  EO1 U290 ( .A(n176), .B(n204), .C(\fifo[9][5] ), .D(n176), .Z(n426) );
  EO1 U291 ( .A(n176), .B(n205), .C(\fifo[9][4] ), .D(n176), .Z(n425) );
  EO1 U292 ( .A(n176), .B(n206), .C(\fifo[9][3] ), .D(n176), .Z(n424) );
  EO1 U293 ( .A(n176), .B(n208), .C(\fifo[9][2] ), .D(n176), .Z(n423) );
  EO1 U294 ( .A(n176), .B(n209), .C(\fifo[9][1] ), .D(n176), .Z(n422) );
  EO1 U295 ( .A(n176), .B(n210), .C(\fifo[9][0] ), .D(n176), .Z(n421) );
  NR2 U296 ( .A(n177), .B(n200), .Z(n179) );
  EO1 U297 ( .A(n179), .B(n201), .C(\fifo[8][8] ), .D(n179), .Z(n420) );
  IVP U298 ( .A(n179), .Z(n178) );
  AO2 U299 ( .A(n179), .B(n202), .C(n304), .D(n178), .Z(n419) );
  AO2 U300 ( .A(n179), .B(n203), .C(n310), .D(n178), .Z(n418) );
  AO2 U301 ( .A(n179), .B(n204), .C(n316), .D(n178), .Z(n417) );
  AO2 U302 ( .A(n179), .B(n205), .C(n322), .D(n178), .Z(n416) );
  AO2 U303 ( .A(n179), .B(n206), .C(n498), .D(n178), .Z(n415) );
  AO2 U304 ( .A(n179), .B(n208), .C(n504), .D(n178), .Z(n414) );
  EO1 U305 ( .A(n179), .B(n209), .C(\fifo[8][1] ), .D(n179), .Z(n413) );
  EO1 U306 ( .A(n179), .B(n210), .C(\fifo[8][0] ), .D(n179), .Z(n412) );
  AO6 U307 ( .A(n180), .B(n254), .C(n183), .Z(n197) );
  NR2 U308 ( .A(n185), .B(n197), .Z(n182) );
  EO1 U309 ( .A(n182), .B(n201), .C(\fifo[7][8] ), .D(n182), .Z(n411) );
  IVP U310 ( .A(n182), .Z(n181) );
  AO2 U311 ( .A(n182), .B(n202), .C(n307), .D(n181), .Z(n410) );
  AO2 U312 ( .A(n182), .B(n203), .C(n313), .D(n181), .Z(n409) );
  AO2 U313 ( .A(n182), .B(n204), .C(n319), .D(n181), .Z(n408) );
  AO2 U314 ( .A(n182), .B(n205), .C(n282), .D(n181), .Z(n407) );
  AO2 U315 ( .A(n182), .B(n206), .C(n288), .D(n181), .Z(n406) );
  AO2 U316 ( .A(n182), .B(n208), .C(n294), .D(n181), .Z(n405) );
  EO1 U317 ( .A(n182), .B(n209), .C(\fifo[7][1] ), .D(n182), .Z(n404) );
  EO1 U318 ( .A(n182), .B(n210), .C(\fifo[7][0] ), .D(n182), .Z(n403) );
  AO6 U319 ( .A(n184), .B(n254), .C(n183), .Z(n199) );
  NR2 U320 ( .A(n185), .B(n199), .Z(n187) );
  EO1 U321 ( .A(n187), .B(n201), .C(\fifo[6][8] ), .D(n187), .Z(n402) );
  IVP U322 ( .A(n187), .Z(n186) );
  AO2 U323 ( .A(n187), .B(n202), .C(n306), .D(n186), .Z(n401) );
  AO2 U324 ( .A(n187), .B(n203), .C(n312), .D(n186), .Z(n400) );
  AO2 U325 ( .A(n187), .B(n204), .C(n318), .D(n186), .Z(n399) );
  AO2 U326 ( .A(n187), .B(n205), .C(n494), .D(n186), .Z(n398) );
  AO2 U327 ( .A(n187), .B(n206), .C(n500), .D(n186), .Z(n397) );
  AO2 U328 ( .A(n187), .B(n208), .C(n506), .D(n186), .Z(n396) );
  AO2 U329 ( .A(n187), .B(n209), .C(n296), .D(n186), .Z(n395) );
  AO2 U330 ( .A(n187), .B(n210), .C(n298), .D(n186), .Z(n394) );
  NR2 U331 ( .A(n190), .B(n197), .Z(n189) );
  EO1 U332 ( .A(n189), .B(n201), .C(\fifo[5][8] ), .D(n189), .Z(n393) );
  IVP U333 ( .A(n189), .Z(n188) );
  AO2 U334 ( .A(n189), .B(n202), .C(n263), .D(n188), .Z(n392) );
  AO2 U335 ( .A(n189), .B(n203), .C(n269), .D(n188), .Z(n391) );
  AO2 U336 ( .A(n189), .B(n204), .C(n275), .D(n188), .Z(n390) );
  AO2 U337 ( .A(n189), .B(n205), .C(n281), .D(n188), .Z(n389) );
  AO2 U338 ( .A(n189), .B(n206), .C(n287), .D(n188), .Z(n388) );
  AO2 U339 ( .A(n189), .B(n208), .C(n293), .D(n188), .Z(n387) );
  EO1 U340 ( .A(n189), .B(n209), .C(\fifo[5][1] ), .D(n189), .Z(n386) );
  EO1 U341 ( .A(n189), .B(n210), .C(\fifo[5][0] ), .D(n189), .Z(n385) );
  NR2 U342 ( .A(n190), .B(n199), .Z(n192) );
  EO1 U343 ( .A(n192), .B(n201), .C(\fifo[4][8] ), .D(n192), .Z(n384) );
  IVP U344 ( .A(n192), .Z(n191) );
  AO2 U345 ( .A(n192), .B(n202), .C(n262), .D(n191), .Z(n383) );
  AO2 U346 ( .A(n192), .B(n203), .C(n268), .D(n191), .Z(n382) );
  AO2 U347 ( .A(n192), .B(n204), .C(n274), .D(n191), .Z(n381) );
  AO2 U348 ( .A(n192), .B(n205), .C(n280), .D(n191), .Z(n380) );
  AO2 U349 ( .A(n192), .B(n206), .C(n286), .D(n191), .Z(n379) );
  AO2 U350 ( .A(n192), .B(n208), .C(n292), .D(n191), .Z(n378) );
  AO2 U351 ( .A(n192), .B(n209), .C(n509), .D(n191), .Z(n377) );
  AO2 U352 ( .A(n192), .B(n210), .C(n511), .D(n191), .Z(n376) );
  NR2 U353 ( .A(n195), .B(n197), .Z(n194) );
  EO1 U354 ( .A(n194), .B(n201), .C(\fifo[3][8] ), .D(n194), .Z(n375) );
  IVP U355 ( .A(n194), .Z(n193) );
  AO2 U356 ( .A(n194), .B(n202), .C(n305), .D(n193), .Z(n374) );
  AO2 U357 ( .A(n194), .B(n203), .C(n311), .D(n193), .Z(n373) );
  AO2 U358 ( .A(n194), .B(n204), .C(n317), .D(n193), .Z(n372) );
  AO2 U359 ( .A(n194), .B(n205), .C(n323), .D(n193), .Z(n371) );
  AO2 U360 ( .A(n194), .B(n206), .C(n499), .D(n193), .Z(n370) );
  AO2 U361 ( .A(n194), .B(n208), .C(n505), .D(n193), .Z(n369) );
  EO1 U362 ( .A(n194), .B(n209), .C(\fifo[3][1] ), .D(n194), .Z(n368) );
  EO1 U363 ( .A(n194), .B(n210), .C(\fifo[3][0] ), .D(n194), .Z(n367) );
  NR2 U364 ( .A(n195), .B(n199), .Z(n196) );
  EO1 U365 ( .A(n196), .B(n201), .C(\fifo[2][8] ), .D(n196), .Z(n366) );
  EO1 U366 ( .A(n196), .B(n202), .C(\fifo[2][7] ), .D(n196), .Z(n365) );
  EO1 U367 ( .A(n196), .B(n203), .C(\fifo[2][6] ), .D(n196), .Z(n364) );
  EO1 U368 ( .A(n196), .B(n204), .C(\fifo[2][5] ), .D(n196), .Z(n363) );
  EO1 U369 ( .A(n196), .B(n205), .C(\fifo[2][4] ), .D(n196), .Z(n362) );
  EO1 U370 ( .A(n196), .B(n206), .C(\fifo[2][3] ), .D(n196), .Z(n361) );
  EO1 U371 ( .A(n196), .B(n208), .C(\fifo[2][2] ), .D(n196), .Z(n360) );
  EO1 U372 ( .A(n196), .B(n209), .C(\fifo[2][1] ), .D(n196), .Z(n359) );
  EO1 U373 ( .A(n196), .B(n210), .C(\fifo[2][0] ), .D(n196), .Z(n358) );
  NR2 U374 ( .A(n200), .B(n197), .Z(n198) );
  EO1 U375 ( .A(n198), .B(n201), .C(\fifo[1][8] ), .D(n198), .Z(n357) );
  EO1 U376 ( .A(n198), .B(n202), .C(\fifo[1][7] ), .D(n198), .Z(n356) );
  EO1 U377 ( .A(n198), .B(n203), .C(\fifo[1][6] ), .D(n198), .Z(n355) );
  EO1 U378 ( .A(n198), .B(n204), .C(\fifo[1][5] ), .D(n198), .Z(n354) );
  EO1 U379 ( .A(n198), .B(n205), .C(\fifo[1][4] ), .D(n198), .Z(n353) );
  EO1 U380 ( .A(n198), .B(n206), .C(\fifo[1][3] ), .D(n198), .Z(n352) );
  EO1 U381 ( .A(n198), .B(n208), .C(\fifo[1][2] ), .D(n198), .Z(n351) );
  EO1 U382 ( .A(n198), .B(n209), .C(\fifo[1][1] ), .D(n198), .Z(n350) );
  EO1 U383 ( .A(n198), .B(n210), .C(\fifo[1][0] ), .D(n198), .Z(n349) );
  NR2 U384 ( .A(n200), .B(n199), .Z(n211) );
  EO1 U385 ( .A(n211), .B(n201), .C(\fifo[0][8] ), .D(n211), .Z(n348) );
  IVP U386 ( .A(n211), .Z(n207) );
  AO2 U387 ( .A(n211), .B(n202), .C(n264), .D(n207), .Z(n347) );
  AO2 U388 ( .A(n211), .B(n203), .C(n270), .D(n207), .Z(n346) );
  AO2 U389 ( .A(n211), .B(n204), .C(n276), .D(n207), .Z(n345) );
  AO2 U390 ( .A(n211), .B(n205), .C(n495), .D(n207), .Z(n344) );
  AO2 U391 ( .A(n211), .B(n206), .C(n501), .D(n207), .Z(n343) );
  AO2 U392 ( .A(n211), .B(n208), .C(n507), .D(n207), .Z(n342) );
  EO1 U393 ( .A(n211), .B(n209), .C(\fifo[0][1] ), .D(n211), .Z(n334) );
  EO1 U394 ( .A(n211), .B(n210), .C(\fifo[0][0] ), .D(n211), .Z(n333) );
  AO4 U395 ( .A(n224), .B(n508), .C(n223), .D(n295), .Z(n221) );
  AO2 U396 ( .A(n233), .B(\fifo[10][1] ), .C(n235), .D(\fifo[9][1] ), .Z(n214)
         );
  AO2 U397 ( .A(n226), .B(\fifo[12][1] ), .C(n225), .D(\fifo[14][1] ), .Z(n213) );
  AO2 U398 ( .A(n232), .B(\fifo[13][1] ), .C(n237), .D(\fifo[8][1] ), .Z(n212)
         );
  ND4 U399 ( .A(read_ptr[3]), .B(n214), .C(n213), .D(n212), .Z(n220) );
  AO4 U400 ( .A(n231), .B(n509), .C(n230), .D(n296), .Z(n219) );
  AO2 U401 ( .A(n233), .B(\fifo[2][1] ), .C(n232), .D(\fifo[5][1] ), .Z(n217)
         );
  AO2 U402 ( .A(n235), .B(\fifo[1][1] ), .C(n234), .D(\fifo[3][1] ), .Z(n216)
         );
  AO2 U403 ( .A(n237), .B(\fifo[0][1] ), .C(n236), .D(\fifo[7][1] ), .Z(n215)
         );
  ND4 U404 ( .A(n217), .B(n216), .C(n215), .D(n252), .Z(n218) );
  AO4 U405 ( .A(n221), .B(n220), .C(n219), .D(n218), .Z(n222) );
  EON1 U406 ( .A(n247), .B(n222), .C(n245), .D(N246), .Z(n326) );
  AO4 U407 ( .A(n224), .B(n510), .C(n223), .D(n297), .Z(n244) );
  AO2 U408 ( .A(n233), .B(\fifo[10][0] ), .C(n235), .D(\fifo[9][0] ), .Z(n229)
         );
  AO2 U409 ( .A(n226), .B(\fifo[12][0] ), .C(n225), .D(\fifo[14][0] ), .Z(n228) );
  AO2 U410 ( .A(n232), .B(\fifo[13][0] ), .C(n237), .D(\fifo[8][0] ), .Z(n227)
         );
  ND4 U411 ( .A(read_ptr[3]), .B(n229), .C(n228), .D(n227), .Z(n243) );
  AO4 U412 ( .A(n231), .B(n511), .C(n230), .D(n298), .Z(n242) );
  AO2 U413 ( .A(n233), .B(\fifo[2][0] ), .C(n232), .D(\fifo[5][0] ), .Z(n240)
         );
  AO2 U414 ( .A(n235), .B(\fifo[1][0] ), .C(n234), .D(\fifo[3][0] ), .Z(n239)
         );
  AO2 U415 ( .A(n237), .B(\fifo[0][0] ), .C(n236), .D(\fifo[7][0] ), .Z(n238)
         );
  ND4 U416 ( .A(n240), .B(n239), .C(n238), .D(n252), .Z(n241) );
  AO4 U417 ( .A(n244), .B(n243), .C(n242), .D(n241), .Z(n246) );
  EON1 U418 ( .A(n247), .B(n246), .C(n245), .D(N249), .Z(n325) );
  NR2 U419 ( .A(n248), .B(N250), .Z(n250) );
  EON1 U420 ( .A(n250), .B(n249), .C(soft_reset), .D(resetn), .Z(n324) );
endmodule


module router_register ( clock, resetn, pkt_valid, data_in, fifo_full, 
        rst_int_reg, detect_add, ld_state, laf_state, lfd_state, full_state, 
        parity_done, low_pkt_valid, err, dout );
  input [7:0] data_in;
  output [7:0] dout;
  input clock, resetn, pkt_valid, fifo_full, rst_int_reg, detect_add, ld_state,
         laf_state, lfd_state, full_state;
  output parity_done, low_pkt_valid, err;
  wire   N114, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59,
         n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125;
  wire   [7:0] header_byte;
  wire   [7:0] fifo_full_byte;
  wire   [7:0] internal_parity;
  wire   [7:0] packet_parity;

  FD1 \header_byte_reg[7]  ( .D(n167), .CP(clock), .Q(header_byte[7]), .QN(
        n107) );
  FD1 \header_byte_reg[6]  ( .D(n166), .CP(clock), .Q(header_byte[6]), .QN(
        n108) );
  FD1 \header_byte_reg[5]  ( .D(n165), .CP(clock), .Q(header_byte[5]), .QN(
        n109) );
  FD1 \header_byte_reg[4]  ( .D(n164), .CP(clock), .Q(header_byte[4]), .QN(
        n110) );
  FD1 \header_byte_reg[3]  ( .D(n163), .CP(clock), .Q(header_byte[3]), .QN(
        n111) );
  FD1 \header_byte_reg[2]  ( .D(n162), .CP(clock), .Q(header_byte[2]), .QN(
        n112) );
  FD1 \header_byte_reg[1]  ( .D(n161), .CP(clock), .Q(header_byte[1]), .QN(
        n113) );
  FD1 \header_byte_reg[0]  ( .D(n160), .CP(clock), .Q(header_byte[0]), .QN(
        n114) );
  FD1 \fifo_full_byte_reg[7]  ( .D(n159), .CP(clock), .Q(fifo_full_byte[7]), 
        .QN(n115) );
  FD1 \fifo_full_byte_reg[6]  ( .D(n158), .CP(clock), .Q(fifo_full_byte[6]), 
        .QN(n116) );
  FD1 \fifo_full_byte_reg[5]  ( .D(n157), .CP(clock), .Q(fifo_full_byte[5]), 
        .QN(n117) );
  FD1 \fifo_full_byte_reg[4]  ( .D(n156), .CP(clock), .Q(fifo_full_byte[4]), 
        .QN(n118) );
  FD1 \fifo_full_byte_reg[3]  ( .D(n155), .CP(clock), .Q(fifo_full_byte[3]), 
        .QN(n119) );
  FD1 \fifo_full_byte_reg[2]  ( .D(n154), .CP(clock), .Q(fifo_full_byte[2]), 
        .QN(n120) );
  FD1 \fifo_full_byte_reg[1]  ( .D(n153), .CP(clock), .Q(fifo_full_byte[1]), 
        .QN(n121) );
  FD1 \fifo_full_byte_reg[0]  ( .D(n152), .CP(clock), .Q(fifo_full_byte[0]), 
        .QN(n122) );
  FD1 \dout_reg[7]  ( .D(n151), .CP(clock), .Q(dout[7]) );
  FD1 \dout_reg[6]  ( .D(n150), .CP(clock), .Q(dout[6]) );
  FD1 \dout_reg[5]  ( .D(n149), .CP(clock), .Q(dout[5]) );
  FD1 \dout_reg[4]  ( .D(n148), .CP(clock), .Q(dout[4]) );
  FD1 \dout_reg[3]  ( .D(n147), .CP(clock), .Q(dout[3]) );
  FD1 \dout_reg[2]  ( .D(n146), .CP(clock), .Q(dout[2]) );
  FD1 \dout_reg[1]  ( .D(n145), .CP(clock), .Q(dout[1]) );
  FD1 \dout_reg[0]  ( .D(n144), .CP(clock), .Q(dout[0]) );
  FD1 \internal_parity_reg[7]  ( .D(n136), .CP(clock), .Q(internal_parity[7]), 
        .QN(n96) );
  FD1 \internal_parity_reg[6]  ( .D(n137), .CP(clock), .Q(internal_parity[6]), 
        .QN(n95) );
  FD1 \internal_parity_reg[5]  ( .D(n138), .CP(clock), .Q(internal_parity[5]), 
        .QN(n94) );
  FD1 \internal_parity_reg[4]  ( .D(n139), .CP(clock), .Q(internal_parity[4]), 
        .QN(n99) );
  FD1 \internal_parity_reg[3]  ( .D(n140), .CP(clock), .Q(internal_parity[3]), 
        .QN(n93) );
  FD1 \internal_parity_reg[2]  ( .D(n141), .CP(clock), .Q(internal_parity[2]), 
        .QN(n98) );
  FD1 \internal_parity_reg[1]  ( .D(n142), .CP(clock), .Q(internal_parity[1]), 
        .QN(n92) );
  FD1 \internal_parity_reg[0]  ( .D(n143), .CP(clock), .Q(internal_parity[0]), 
        .QN(n97) );
  FD1 \packet_parity_reg[7]  ( .D(n135), .CP(clock), .Q(packet_parity[7]), 
        .QN(n101) );
  FD1 \packet_parity_reg[6]  ( .D(n134), .CP(clock), .Q(packet_parity[6]), 
        .QN(n102) );
  FD1 \packet_parity_reg[5]  ( .D(n133), .CP(clock), .Q(packet_parity[5]), 
        .QN(n103) );
  FD1 \packet_parity_reg[4]  ( .D(n132), .CP(clock), .Q(packet_parity[4]), 
        .QN(n123) );
  FD1 \packet_parity_reg[3]  ( .D(n131), .CP(clock), .Q(packet_parity[3]), 
        .QN(n104) );
  FD1 \packet_parity_reg[2]  ( .D(n130), .CP(clock), .Q(packet_parity[2]), 
        .QN(n124) );
  FD1 \packet_parity_reg[1]  ( .D(n129), .CP(clock), .Q(packet_parity[1]), 
        .QN(n105) );
  FD1 \packet_parity_reg[0]  ( .D(n128), .CP(clock), .Q(packet_parity[0]), 
        .QN(n125) );
  FD1 low_pkt_valid_reg ( .D(n127), .CP(clock), .Q(low_pkt_valid), .QN(n106)
         );
  FD1 parity_done_reg ( .D(n126), .CP(clock), .Q(parity_done), .QN(n100) );
  FD1 err_reg ( .D(N114), .CP(clock), .Q(err) );
  AO2 U3 ( .A(internal_parity[1]), .B(packet_parity[1]), .C(n105), .D(n92), 
        .Z(n2) );
  NR2 U4 ( .A(packet_parity[0]), .B(n97), .Z(n1) );
  AO1P U5 ( .A(packet_parity[0]), .B(n97), .C(n2), .D(n1), .Z(n12) );
  AO2 U6 ( .A(internal_parity[7]), .B(packet_parity[7]), .C(n101), .D(n96), 
        .Z(n10) );
  AO2 U7 ( .A(internal_parity[6]), .B(packet_parity[6]), .C(n102), .D(n95), 
        .Z(n9) );
  ND2 U8 ( .A(packet_parity[4]), .B(n99), .Z(n4) );
  AO2 U9 ( .A(internal_parity[5]), .B(n103), .C(packet_parity[5]), .D(n94), 
        .Z(n3) );
  AO3 U10 ( .A(packet_parity[4]), .B(n99), .C(n4), .D(n3), .Z(n8) );
  AO2 U11 ( .A(internal_parity[3]), .B(n104), .C(packet_parity[3]), .D(n93), 
        .Z(n6) );
  ND2 U12 ( .A(packet_parity[2]), .B(n98), .Z(n5) );
  AO3 U13 ( .A(packet_parity[2]), .B(n98), .C(n6), .D(n5), .Z(n7) );
  NR4 U14 ( .A(n10), .B(n9), .C(n8), .D(n7), .Z(n11) );
  IVP U15 ( .A(resetn), .Z(n87) );
  AO1P U16 ( .A(n12), .B(n11), .C(n100), .D(n87), .Z(N114) );
  IVP U17 ( .A(data_in[0]), .Z(n86) );
  IVP U18 ( .A(data_in[1]), .Z(n84) );
  AO3 U19 ( .A(n86), .B(n84), .C(pkt_valid), .D(detect_add), .Z(n13) );
  ND2 U20 ( .A(resetn), .B(n13), .Z(n21) );
  IVP U21 ( .A(data_in[7]), .Z(n78) );
  OR2P U22 ( .A(n87), .B(n13), .Z(n14) );
  AO4 U23 ( .A(n107), .B(n21), .C(n78), .D(n14), .Z(n167) );
  IVP U24 ( .A(data_in[6]), .Z(n79) );
  AO4 U25 ( .A(n21), .B(n108), .C(n79), .D(n14), .Z(n166) );
  IVP U26 ( .A(data_in[5]), .Z(n80) );
  AO4 U27 ( .A(n21), .B(n109), .C(n80), .D(n14), .Z(n165) );
  IVP U28 ( .A(data_in[4]), .Z(n81) );
  AO4 U29 ( .A(n21), .B(n110), .C(n81), .D(n14), .Z(n164) );
  IVP U30 ( .A(data_in[3]), .Z(n82) );
  AO4 U31 ( .A(n21), .B(n111), .C(n82), .D(n14), .Z(n163) );
  IVP U32 ( .A(data_in[2]), .Z(n83) );
  AO4 U33 ( .A(n21), .B(n112), .C(n83), .D(n14), .Z(n162) );
  AO4 U34 ( .A(n84), .B(n14), .C(n21), .D(n113), .Z(n161) );
  AO4 U35 ( .A(n86), .B(n14), .C(n21), .D(n114), .Z(n160) );
  NR2 U36 ( .A(lfd_state), .B(n21), .Z(n19) );
  ND2 U37 ( .A(ld_state), .B(n19), .Z(n18) );
  IVP U38 ( .A(n18), .Z(n15) );
  ND2 U39 ( .A(fifo_full), .B(n15), .Z(n17) );
  ND2 U40 ( .A(resetn), .B(n17), .Z(n16) );
  AO4 U41 ( .A(n115), .B(n16), .C(n78), .D(n17), .Z(n159) );
  AO4 U42 ( .A(n116), .B(n16), .C(n79), .D(n17), .Z(n158) );
  AO4 U43 ( .A(n117), .B(n16), .C(n80), .D(n17), .Z(n157) );
  AO4 U44 ( .A(n118), .B(n16), .C(n81), .D(n17), .Z(n156) );
  AO4 U45 ( .A(n119), .B(n16), .C(n82), .D(n17), .Z(n155) );
  AO4 U46 ( .A(n120), .B(n16), .C(n83), .D(n17), .Z(n154) );
  AO4 U47 ( .A(n84), .B(n17), .C(n121), .D(n16), .Z(n153) );
  AO4 U48 ( .A(n86), .B(n17), .C(n122), .D(n16), .Z(n152) );
  NR2 U49 ( .A(fifo_full), .B(n18), .Z(n37) );
  ND2 U50 ( .A(laf_state), .B(n19), .Z(n20) );
  NR2 U51 ( .A(ld_state), .B(n20), .Z(n38) );
  IVP U52 ( .A(lfd_state), .Z(n43) );
  NR2 U53 ( .A(n43), .B(n21), .Z(n39) );
  NR4 U54 ( .A(n38), .B(n39), .C(n37), .D(n87), .Z(n36) );
  AO2 U55 ( .A(data_in[7]), .B(n37), .C(n36), .D(dout[7]), .Z(n23) );
  AO2 U56 ( .A(header_byte[7]), .B(n39), .C(n38), .D(fifo_full_byte[7]), .Z(
        n22) );
  ND2 U57 ( .A(n23), .B(n22), .Z(n151) );
  AO2 U58 ( .A(n37), .B(data_in[6]), .C(n36), .D(dout[6]), .Z(n25) );
  AO2 U59 ( .A(n39), .B(header_byte[6]), .C(n38), .D(fifo_full_byte[6]), .Z(
        n24) );
  ND2 U60 ( .A(n25), .B(n24), .Z(n150) );
  AO2 U61 ( .A(n37), .B(data_in[5]), .C(n36), .D(dout[5]), .Z(n27) );
  AO2 U62 ( .A(n39), .B(header_byte[5]), .C(n38), .D(fifo_full_byte[5]), .Z(
        n26) );
  ND2 U63 ( .A(n27), .B(n26), .Z(n149) );
  AO2 U64 ( .A(n37), .B(data_in[4]), .C(n36), .D(dout[4]), .Z(n29) );
  AO2 U65 ( .A(n39), .B(header_byte[4]), .C(n38), .D(fifo_full_byte[4]), .Z(
        n28) );
  ND2 U66 ( .A(n29), .B(n28), .Z(n148) );
  AO2 U67 ( .A(n37), .B(data_in[3]), .C(n36), .D(dout[3]), .Z(n31) );
  AO2 U68 ( .A(n39), .B(header_byte[3]), .C(n38), .D(fifo_full_byte[3]), .Z(
        n30) );
  ND2 U69 ( .A(n31), .B(n30), .Z(n147) );
  AO2 U70 ( .A(n37), .B(data_in[2]), .C(n36), .D(dout[2]), .Z(n33) );
  AO2 U71 ( .A(n39), .B(header_byte[2]), .C(n38), .D(fifo_full_byte[2]), .Z(
        n32) );
  ND2 U72 ( .A(n33), .B(n32), .Z(n146) );
  AO2 U73 ( .A(data_in[1]), .B(n37), .C(n36), .D(dout[1]), .Z(n35) );
  AO2 U74 ( .A(n39), .B(header_byte[1]), .C(n38), .D(fifo_full_byte[1]), .Z(
        n34) );
  ND2 U75 ( .A(n35), .B(n34), .Z(n145) );
  AO2 U76 ( .A(data_in[0]), .B(n37), .C(n36), .D(dout[0]), .Z(n41) );
  AO2 U77 ( .A(n39), .B(header_byte[0]), .C(n38), .D(fifo_full_byte[0]), .Z(
        n40) );
  ND2 U78 ( .A(n41), .B(n40), .Z(n144) );
  IVP U79 ( .A(full_state), .Z(n42) );
  ND2 U80 ( .A(ld_state), .B(n42), .Z(n46) );
  ND2 U81 ( .A(n43), .B(n46), .Z(n44) );
  AO1P U82 ( .A(pkt_valid), .B(n44), .C(detect_add), .D(n87), .Z(n71) );
  IVP U83 ( .A(pkt_valid), .Z(n76) );
  NR2 U84 ( .A(n87), .B(detect_add), .Z(n77) );
  IVP U85 ( .A(n77), .Z(n89) );
  NR2 U86 ( .A(n76), .B(n89), .Z(n45) );
  ND2 U87 ( .A(lfd_state), .B(n45), .Z(n68) );
  NR4 U88 ( .A(n76), .B(n89), .C(n46), .D(lfd_state), .Z(n72) );
  IVP U89 ( .A(n72), .Z(n69) );
  AO4 U90 ( .A(header_byte[0]), .B(n68), .C(data_in[0]), .D(n69), .Z(n47) );
  NR2 U91 ( .A(n71), .B(n47), .Z(n49) );
  IVP U92 ( .A(n68), .Z(n73) );
  AO2 U93 ( .A(data_in[0]), .B(n72), .C(header_byte[0]), .D(n73), .Z(n48) );
  AO2 U94 ( .A(internal_parity[0]), .B(n49), .C(n48), .D(n97), .Z(n143) );
  AO4 U95 ( .A(header_byte[1]), .B(n68), .C(data_in[1]), .D(n69), .Z(n50) );
  NR2 U96 ( .A(n71), .B(n50), .Z(n52) );
  AO2 U97 ( .A(data_in[1]), .B(n72), .C(header_byte[1]), .D(n73), .Z(n51) );
  AO2 U98 ( .A(internal_parity[1]), .B(n52), .C(n51), .D(n92), .Z(n142) );
  AO4 U99 ( .A(data_in[2]), .B(n69), .C(header_byte[2]), .D(n68), .Z(n53) );
  NR2 U100 ( .A(n71), .B(n53), .Z(n55) );
  AO2 U101 ( .A(header_byte[2]), .B(n73), .C(data_in[2]), .D(n72), .Z(n54) );
  AO2 U102 ( .A(internal_parity[2]), .B(n55), .C(n54), .D(n98), .Z(n141) );
  AO4 U103 ( .A(data_in[3]), .B(n69), .C(header_byte[3]), .D(n68), .Z(n56) );
  NR2 U104 ( .A(n71), .B(n56), .Z(n58) );
  AO2 U105 ( .A(header_byte[3]), .B(n73), .C(data_in[3]), .D(n72), .Z(n57) );
  AO2 U106 ( .A(internal_parity[3]), .B(n58), .C(n57), .D(n93), .Z(n140) );
  AO4 U107 ( .A(data_in[4]), .B(n69), .C(header_byte[4]), .D(n68), .Z(n59) );
  NR2 U108 ( .A(n71), .B(n59), .Z(n61) );
  AO2 U109 ( .A(header_byte[4]), .B(n73), .C(data_in[4]), .D(n72), .Z(n60) );
  AO2 U110 ( .A(internal_parity[4]), .B(n61), .C(n60), .D(n99), .Z(n139) );
  AO4 U111 ( .A(data_in[5]), .B(n69), .C(header_byte[5]), .D(n68), .Z(n62) );
  NR2 U112 ( .A(n71), .B(n62), .Z(n64) );
  AO2 U113 ( .A(header_byte[5]), .B(n73), .C(data_in[5]), .D(n72), .Z(n63) );
  AO2 U114 ( .A(internal_parity[5]), .B(n64), .C(n63), .D(n94), .Z(n138) );
  AO4 U115 ( .A(data_in[6]), .B(n69), .C(header_byte[6]), .D(n68), .Z(n65) );
  NR2 U116 ( .A(n71), .B(n65), .Z(n67) );
  AO2 U117 ( .A(header_byte[6]), .B(n73), .C(data_in[6]), .D(n72), .Z(n66) );
  AO2 U118 ( .A(internal_parity[6]), .B(n67), .C(n66), .D(n95), .Z(n137) );
  AO4 U119 ( .A(data_in[7]), .B(n69), .C(header_byte[7]), .D(n68), .Z(n70) );
  NR2 U120 ( .A(n71), .B(n70), .Z(n75) );
  AO2 U121 ( .A(header_byte[7]), .B(n73), .C(data_in[7]), .D(n72), .Z(n74) );
  AO2 U122 ( .A(internal_parity[7]), .B(n75), .C(n74), .D(n96), .Z(n136) );
  ND2 U123 ( .A(n76), .B(ld_state), .Z(n88) );
  OR2P U124 ( .A(n89), .B(n88), .Z(n91) );
  ND2 U125 ( .A(n77), .B(n88), .Z(n85) );
  AO4 U126 ( .A(n78), .B(n91), .C(n101), .D(n85), .Z(n135) );
  AO4 U127 ( .A(n79), .B(n91), .C(n102), .D(n85), .Z(n134) );
  AO4 U128 ( .A(n80), .B(n91), .C(n103), .D(n85), .Z(n133) );
  AO4 U129 ( .A(n81), .B(n91), .C(n123), .D(n85), .Z(n132) );
  AO4 U130 ( .A(n82), .B(n91), .C(n104), .D(n85), .Z(n131) );
  AO4 U131 ( .A(n83), .B(n91), .C(n124), .D(n85), .Z(n130) );
  AO4 U132 ( .A(n84), .B(n91), .C(n105), .D(n85), .Z(n129) );
  AO4 U133 ( .A(n86), .B(n91), .C(n125), .D(n85), .Z(n128) );
  AO1P U134 ( .A(n88), .B(n106), .C(rst_int_reg), .D(n87), .Z(n127) );
  AO6 U135 ( .A(laf_state), .B(low_pkt_valid), .C(parity_done), .Z(n90) );
  AO4 U136 ( .A(fifo_full), .B(n91), .C(n90), .D(n89), .Z(n126) );
endmodule


module synchronizer ( detect_add, write_enb_reg, clock, resetn, read_enb_0, 
        read_enb_1, read_enb_2, empty_0, empty_1, empty_2, full_0, full_1, 
        full_2, data_in, vld_out_0, vld_out_1, vld_out_2, write_enb, fifo_full, 
        soft_reset_0, soft_reset_1, soft_reset_2 );
  input [1:0] data_in;
  output [2:0] write_enb;
  input detect_add, write_enb_reg, clock, resetn, read_enb_0, read_enb_1,
         read_enb_2, empty_0, empty_1, empty_2, full_0, full_1, full_2;
  output vld_out_0, vld_out_1, vld_out_2, fifo_full, soft_reset_0,
         soft_reset_1, soft_reset_2;
  wire   N69, N70, N71, N72, N73, N98, N99, N100, N101, N102, N127, N128, N129,
         N130, N131, n32, n33, n34, n35, n36, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55,
         n56, n57, n58, n59, n60, n61, n62, n63;
  wire   [1:0] temp_add;
  wire   [4:0] count0;
  wire   [4:0] count1;
  wire   [4:0] count2;

  FD1 \temp_add_reg[1]  ( .D(n36), .CP(clock), .Q(temp_add[1]), .QN(n50) );
  FD1 \temp_add_reg[0]  ( .D(n35), .CP(clock), .Q(temp_add[0]), .QN(n60) );
  FD1 \count0_reg[0]  ( .D(N69), .CP(clock), .Q(count0[0]), .QN(n47) );
  FD1 \count0_reg[1]  ( .D(N70), .CP(clock), .Q(count0[1]), .QN(n57) );
  FD1 \count0_reg[2]  ( .D(N71), .CP(clock), .Q(count0[2]), .QN(n51) );
  FD1 \count0_reg[3]  ( .D(N72), .CP(clock), .Q(count0[3]), .QN(n52) );
  FD1 \count0_reg[4]  ( .D(N73), .CP(clock), .Q(count0[4]) );
  FD1 soft_reset_0_reg ( .D(n34), .CP(clock), .Q(soft_reset_0), .QN(n61) );
  FD1 \count1_reg[0]  ( .D(N98), .CP(clock), .Q(count1[0]), .QN(n48) );
  FD1 \count1_reg[1]  ( .D(N99), .CP(clock), .Q(count1[1]), .QN(n58) );
  FD1 \count1_reg[2]  ( .D(N100), .CP(clock), .Q(count1[2]), .QN(n53) );
  FD1 \count1_reg[3]  ( .D(N101), .CP(clock), .Q(count1[3]), .QN(n54) );
  FD1 \count1_reg[4]  ( .D(N102), .CP(clock), .Q(count1[4]) );
  FD1 soft_reset_1_reg ( .D(n33), .CP(clock), .Q(soft_reset_1), .QN(n62) );
  FD1 \count2_reg[0]  ( .D(N127), .CP(clock), .Q(count2[0]), .QN(n49) );
  FD1 \count2_reg[1]  ( .D(N128), .CP(clock), .Q(count2[1]), .QN(n59) );
  FD1 \count2_reg[2]  ( .D(N129), .CP(clock), .Q(count2[2]), .QN(n55) );
  FD1 \count2_reg[3]  ( .D(N130), .CP(clock), .Q(count2[3]), .QN(n56) );
  FD1 \count2_reg[4]  ( .D(N131), .CP(clock), .Q(count2[4]) );
  FD1 soft_reset_2_reg ( .D(n32), .CP(clock), .Q(soft_reset_2), .QN(n63) );
  ND2 U3 ( .A(temp_add[0]), .B(full_1), .Z(n2) );
  AO2 U4 ( .A(temp_add[1]), .B(full_2), .C(full_0), .D(n50), .Z(n1) );
  AO4 U5 ( .A(temp_add[1]), .B(n2), .C(n1), .D(temp_add[0]), .Z(fifo_full) );
  ND2 U6 ( .A(write_enb_reg), .B(n60), .Z(n3) );
  NR2 U7 ( .A(temp_add[1]), .B(n3), .Z(write_enb[0]) );
  NR2 U8 ( .A(n50), .B(n3), .Z(write_enb[2]) );
  AN3 U9 ( .A(temp_add[0]), .B(write_enb_reg), .C(n50), .Z(write_enb[1]) );
  IVP U10 ( .A(empty_0), .Z(vld_out_0) );
  IVP U11 ( .A(empty_2), .Z(vld_out_2) );
  IVP U12 ( .A(empty_1), .Z(vld_out_1) );
  ND2 U13 ( .A(resetn), .B(vld_out_0), .Z(n4) );
  NR2 U14 ( .A(read_enb_0), .B(n4), .Z(n6) );
  IVP U15 ( .A(n6), .Z(n41) );
  NR2 U16 ( .A(count0[0]), .B(n41), .Z(N69) );
  ND2 U17 ( .A(count0[0]), .B(count0[1]), .Z(n8) );
  IVP U18 ( .A(n8), .Z(n7) );
  NR2 U19 ( .A(count0[1]), .B(n47), .Z(n5) );
  ND4 U20 ( .A(count0[4]), .B(count0[2]), .C(count0[3]), .D(n5), .Z(n42) );
  ND2 U21 ( .A(n6), .B(n42), .Z(n12) );
  AO1P U22 ( .A(n47), .B(n57), .C(n7), .D(n12), .Z(N70) );
  NR2 U23 ( .A(n51), .B(n8), .Z(n9) );
  AO1P U24 ( .A(n51), .B(n8), .C(n9), .D(n12), .Z(N71) );
  IVP U25 ( .A(n9), .Z(n10) );
  NR2 U26 ( .A(n52), .B(n10), .Z(n13) );
  AO1P U27 ( .A(n52), .B(n10), .C(n13), .D(n12), .Z(N72) );
  NR2 U28 ( .A(count0[4]), .B(n13), .Z(n11) );
  AO1P U29 ( .A(count0[4]), .B(n13), .C(n12), .D(n11), .Z(N73) );
  ND2 U30 ( .A(resetn), .B(vld_out_1), .Z(n14) );
  NR2 U31 ( .A(read_enb_1), .B(n14), .Z(n16) );
  IVP U32 ( .A(n16), .Z(n44) );
  NR2 U33 ( .A(count1[0]), .B(n44), .Z(N98) );
  ND2 U34 ( .A(count1[0]), .B(count1[1]), .Z(n18) );
  IVP U35 ( .A(n18), .Z(n17) );
  NR2 U36 ( .A(count1[1]), .B(n48), .Z(n15) );
  ND4 U37 ( .A(count1[4]), .B(count1[2]), .C(count1[3]), .D(n15), .Z(n43) );
  ND2 U38 ( .A(n16), .B(n43), .Z(n22) );
  AO1P U39 ( .A(n48), .B(n58), .C(n17), .D(n22), .Z(N99) );
  NR2 U40 ( .A(n53), .B(n18), .Z(n19) );
  AO1P U41 ( .A(n53), .B(n18), .C(n19), .D(n22), .Z(N100) );
  IVP U42 ( .A(n19), .Z(n20) );
  NR2 U43 ( .A(n54), .B(n20), .Z(n23) );
  AO1P U44 ( .A(n54), .B(n20), .C(n23), .D(n22), .Z(N101) );
  NR2 U45 ( .A(count1[4]), .B(n23), .Z(n21) );
  AO1P U46 ( .A(count1[4]), .B(n23), .C(n22), .D(n21), .Z(N102) );
  ND2 U47 ( .A(resetn), .B(vld_out_2), .Z(n24) );
  NR2 U48 ( .A(read_enb_2), .B(n24), .Z(n26) );
  IVP U49 ( .A(n26), .Z(n46) );
  NR2 U50 ( .A(count2[0]), .B(n46), .Z(N127) );
  ND2 U51 ( .A(count2[0]), .B(count2[1]), .Z(n28) );
  IVP U52 ( .A(n28), .Z(n27) );
  NR2 U53 ( .A(count2[1]), .B(n49), .Z(n25) );
  ND4 U54 ( .A(count2[4]), .B(count2[2]), .C(count2[3]), .D(n25), .Z(n45) );
  ND2 U55 ( .A(n26), .B(n45), .Z(n37) );
  AO1P U56 ( .A(n49), .B(n59), .C(n27), .D(n37), .Z(N128) );
  NR2 U57 ( .A(n55), .B(n28), .Z(n29) );
  AO1P U58 ( .A(n55), .B(n28), .C(n29), .D(n37), .Z(N129) );
  IVP U59 ( .A(n29), .Z(n30) );
  NR2 U60 ( .A(n56), .B(n30), .Z(n38) );
  AO1P U61 ( .A(n56), .B(n30), .C(n38), .D(n37), .Z(N130) );
  NR2 U62 ( .A(count2[4]), .B(n38), .Z(n31) );
  AO1P U63 ( .A(count2[4]), .B(n38), .C(n37), .D(n31), .Z(N131) );
  ND2 U64 ( .A(detect_add), .B(data_in[1]), .Z(n39) );
  AO3 U65 ( .A(n50), .B(detect_add), .C(resetn), .D(n39), .Z(n36) );
  ND2 U66 ( .A(detect_add), .B(data_in[0]), .Z(n40) );
  AO3 U67 ( .A(n60), .B(detect_add), .C(resetn), .D(n40), .Z(n35) );
  AO4 U68 ( .A(resetn), .B(n61), .C(n42), .D(n41), .Z(n34) );
  AO4 U69 ( .A(resetn), .B(n62), .C(n44), .D(n43), .Z(n33) );
  AO4 U70 ( .A(resetn), .B(n63), .C(n46), .D(n45), .Z(n32) );
endmodule


module router_fsm ( clock, resetn, parity_done, pkt_valid, soft_reset_0, 
        soft_reset_1, soft_reset_2, fifo_full, low_pkt_valid, fifo_empty_0, 
        fifo_empty_1, fifo_empty_2, data_in, detect_add, busy, ld_state, 
        laf_state, full_state, lfd_state, write_enb_reg, rst_int_reg );
  input [1:0] data_in;
  input clock, resetn, parity_done, pkt_valid, soft_reset_0, soft_reset_1,
         soft_reset_2, fifo_full, low_pkt_valid, fifo_empty_0, fifo_empty_1,
         fifo_empty_2;
  output detect_add, busy, ld_state, laf_state, full_state, lfd_state,
         write_enb_reg, rst_int_reg;
  wire   N74, n44, n45, n46, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43;
  wire   [2:0] present_state;
  assign write_enb_reg = N74;

  FD1 \present_state_reg[0]  ( .D(n46), .CP(clock), .Q(present_state[0]), .QN(
        n43) );
  FD1 \present_state_reg[2]  ( .D(n44), .CP(clock), .Q(present_state[2]) );
  FD1 \present_state_reg[1]  ( .D(n45), .CP(clock), .Q(present_state[1]), .QN(
        n42) );
  OR2P U3 ( .A(present_state[2]), .B(present_state[0]), .Z(busy) );
  NR2 U4 ( .A(present_state[1]), .B(busy), .Z(detect_add) );
  NR2 U5 ( .A(n42), .B(busy), .Z(ld_state) );
  IVP U6 ( .A(ld_state), .Z(n1) );
  ND2 U7 ( .A(present_state[2]), .B(n42), .Z(n36) );
  ND2 U8 ( .A(n1), .B(n36), .Z(N74) );
  NR2 U9 ( .A(present_state[0]), .B(n36), .Z(laf_state) );
  NR2 U10 ( .A(present_state[2]), .B(n43), .Z(n4) );
  AN2P U11 ( .A(n42), .B(n4), .Z(lfd_state) );
  NR2 U12 ( .A(present_state[0]), .B(n42), .Z(n16) );
  AN2P U13 ( .A(present_state[2]), .B(n16), .Z(rst_int_reg) );
  NR2 U14 ( .A(n42), .B(n43), .Z(n31) );
  NR3 U15 ( .A(soft_reset_0), .B(soft_reset_2), .C(soft_reset_1), .Z(n2) );
  ND2 U16 ( .A(resetn), .B(n2), .Z(n20) );
  NR2 U17 ( .A(fifo_full), .B(busy), .Z(n3) );
  AO2 U18 ( .A(n4), .B(fifo_full), .C(pkt_valid), .D(n3), .Z(n5) );
  NR2 U19 ( .A(n20), .B(n5), .Z(n6) );
  ND2 U20 ( .A(present_state[1]), .B(n6), .Z(n39) );
  IVP U21 ( .A(low_pkt_valid), .Z(n7) );
  NR2 U22 ( .A(parity_done), .B(n7), .Z(n29) );
  NR2 U23 ( .A(data_in[1]), .B(fifo_empty_1), .Z(n11) );
  IVP U24 ( .A(data_in[0]), .Z(n10) );
  IVP U25 ( .A(fifo_empty_0), .Z(n8) );
  EON1 U26 ( .A(n8), .B(data_in[1]), .C(data_in[1]), .D(fifo_empty_2), .Z(n9)
         );
  ND2 U27 ( .A(n10), .B(n9), .Z(n12) );
  AO3 U28 ( .A(n11), .B(n10), .C(pkt_valid), .D(n12), .Z(n30) );
  ND2 U29 ( .A(fifo_empty_1), .B(data_in[0]), .Z(n13) );
  AO7 U30 ( .A(data_in[1]), .B(n13), .C(n12), .Z(n32) );
  ND2 U31 ( .A(pkt_valid), .B(n32), .Z(n14) );
  AO6 U32 ( .A(n30), .B(n14), .C(busy), .Z(n15) );
  AO1P U33 ( .A(n29), .B(laf_state), .C(ld_state), .D(n15), .Z(n17) );
  ND2 U34 ( .A(fifo_full), .B(n16), .Z(n26) );
  ND2 U35 ( .A(n17), .B(n26), .Z(n18) );
  AO2 U36 ( .A(present_state[2]), .B(n31), .C(n39), .D(n18), .Z(n19) );
  AO4 U37 ( .A(n19), .B(n20), .C(n43), .D(n39), .Z(n46) );
  IVP U38 ( .A(n20), .Z(n40) );
  NR2 U39 ( .A(n43), .B(n32), .Z(n24) );
  NR2 U40 ( .A(parity_done), .B(low_pkt_valid), .Z(n21) );
  ND2 U41 ( .A(n21), .B(present_state[2]), .Z(n22) );
  AO3 U42 ( .A(present_state[2]), .B(n30), .C(n22), .D(n43), .Z(n23) );
  AO2 U43 ( .A(present_state[2]), .B(n24), .C(n42), .D(n23), .Z(n25) );
  ND2 U44 ( .A(n26), .B(n25), .Z(n27) );
  ND2 U45 ( .A(n40), .B(n27), .Z(n28) );
  ND2 U46 ( .A(n39), .B(n28), .Z(n45) );
  NR2 U47 ( .A(present_state[0]), .B(n29), .Z(n37) );
  IVP U48 ( .A(n30), .Z(n33) );
  IVP U49 ( .A(n31), .Z(n41) );
  EO1 U50 ( .A(n33), .B(detect_add), .C(n41), .D(n32), .Z(n35) );
  OR3 U51 ( .A(present_state[2]), .B(fifo_full), .C(n42), .Z(n34) );
  AO3 U52 ( .A(n37), .B(n36), .C(n35), .D(n34), .Z(n38) );
  AN3 U53 ( .A(n40), .B(n39), .C(n38), .Z(n44) );
  NR2 U54 ( .A(present_state[2]), .B(n41), .Z(full_state) );
endmodule


module router_fifo_0 ( clock, resetn, write_enb, soft_reset, read_enb, data_in, 
        lfd_state, empty, data_out, full );
  input [7:0] data_in;
  output [7:0] data_out;
  input clock, resetn, write_enb, soft_reset, read_enb, lfd_state;
  output empty, full;
  wire   lfd_state_temp, N33, \fifo[15][8] , \fifo[14][8] , \fifo[14][1] ,
         \fifo[14][0] , \fifo[13][8] , \fifo[13][1] , \fifo[13][0] ,
         \fifo[12][8] , \fifo[12][1] , \fifo[12][0] , \fifo[11][8] ,
         \fifo[10][8] , \fifo[10][7] , \fifo[10][6] , \fifo[10][5] ,
         \fifo[10][4] , \fifo[10][3] , \fifo[10][2] , \fifo[10][1] ,
         \fifo[10][0] , \fifo[9][8] , \fifo[9][7] , \fifo[9][6] , \fifo[9][5] ,
         \fifo[9][4] , \fifo[9][3] , \fifo[9][2] , \fifo[9][1] , \fifo[9][0] ,
         \fifo[8][8] , \fifo[8][1] , \fifo[8][0] , \fifo[7][8] , \fifo[7][1] ,
         \fifo[7][0] , \fifo[6][8] , \fifo[5][8] , \fifo[5][1] , \fifo[5][0] ,
         \fifo[4][8] , \fifo[3][8] , \fifo[3][1] , \fifo[3][0] , \fifo[2][8] ,
         \fifo[2][7] , \fifo[2][6] , \fifo[2][5] , \fifo[2][4] , \fifo[2][3] ,
         \fifo[2][2] , \fifo[2][1] , \fifo[2][0] , \fifo[1][8] , \fifo[1][7] ,
         \fifo[1][6] , \fifo[1][5] , \fifo[1][4] , \fifo[1][3] , \fifo[1][2] ,
         \fifo[1][1] , \fifo[1][0] , \fifo[0][8] , \fifo[0][1] , \fifo[0][0] ,
         N228, N231, N234, N237, N240, N243, N246, N249, N250, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591,
         n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635,
         n636, n637, n638, n639, n640, n641, n642, n643, n644, n645, n646,
         n647, n648, n649, n650, n651, n652, n653, n654, n655, n656, n657,
         n658, n659, n660, n661, n662, n663, n664, n665, n666, n667, n668,
         n669, n670, n671, n672, n673, n674, n675, n676, n677, n678, n679,
         n680, n681;
  wire   [4:0] write_ptr;
  wire   [4:0] read_ptr;
  wire   [6:0] counter;
  tri   [7:0] data_out;

  FD1 lfd_state_temp_reg ( .D(N33), .CP(clock), .Q(lfd_state_temp) );
  FD1 \read_ptr_reg[0]  ( .D(n512), .CP(clock), .Q(read_ptr[0]), .QN(n253) );
  FD1 \read_ptr_reg[1]  ( .D(n513), .CP(clock), .Q(read_ptr[1]), .QN(n259) );
  FD1 \read_ptr_reg[2]  ( .D(n515), .CP(clock), .Q(read_ptr[2]), .QN(n256) );
  FD1 \read_ptr_reg[3]  ( .D(n516), .CP(clock), .Q(read_ptr[3]), .QN(n252) );
  FD1 \read_ptr_reg[4]  ( .D(n517), .CP(clock), .Q(read_ptr[4]) );
  FD1 \write_ptr_reg[0]  ( .D(n514), .CP(clock), .Q(write_ptr[0]), .QN(n257)
         );
  FD1 \write_ptr_reg[1]  ( .D(n518), .CP(clock), .Q(write_ptr[1]), .QN(n254)
         );
  FD1 \write_ptr_reg[2]  ( .D(n519), .CP(clock), .Q(write_ptr[2]), .QN(n251)
         );
  FD1 \write_ptr_reg[3]  ( .D(n520), .CP(clock), .Q(write_ptr[3]), .QN(n255)
         );
  FD1 \write_ptr_reg[4]  ( .D(n521), .CP(clock), .Q(write_ptr[4]), .QN(n258)
         );
  FD1 \fifo_reg[15][8]  ( .D(n522), .CP(clock), .Q(\fifo[15][8] ) );
  FD1 \fifo_reg[15][7]  ( .D(n523), .CP(clock), .QN(n262) );
  FD1 \fifo_reg[15][6]  ( .D(n524), .CP(clock), .QN(n268) );
  FD1 \fifo_reg[15][5]  ( .D(n525), .CP(clock), .QN(n274) );
  FD1 \fifo_reg[15][4]  ( .D(n526), .CP(clock), .QN(n280) );
  FD1 \fifo_reg[15][3]  ( .D(n527), .CP(clock), .QN(n286) );
  FD1 \fifo_reg[15][2]  ( .D(n528), .CP(clock), .QN(n292) );
  FD1 \fifo_reg[15][1]  ( .D(n529), .CP(clock), .QN(n296) );
  FD1 \fifo_reg[15][0]  ( .D(n530), .CP(clock), .QN(n298) );
  FD1 \fifo_reg[14][8]  ( .D(n531), .CP(clock), .Q(\fifo[14][8] ) );
  FD1 \fifo_reg[14][7]  ( .D(n532), .CP(clock), .QN(n303) );
  FD1 \fifo_reg[14][6]  ( .D(n533), .CP(clock), .QN(n309) );
  FD1 \fifo_reg[14][5]  ( .D(n534), .CP(clock), .QN(n315) );
  FD1 \fifo_reg[14][4]  ( .D(n535), .CP(clock), .QN(n321) );
  FD1 \fifo_reg[14][3]  ( .D(n536), .CP(clock), .QN(n497) );
  FD1 \fifo_reg[14][2]  ( .D(n537), .CP(clock), .QN(n503) );
  FD1 \fifo_reg[14][1]  ( .D(n538), .CP(clock), .Q(\fifo[14][1] ) );
  FD1 \fifo_reg[14][0]  ( .D(n539), .CP(clock), .Q(\fifo[14][0] ) );
  FD1 \fifo_reg[13][8]  ( .D(n540), .CP(clock), .Q(\fifo[13][8] ) );
  FD1 \fifo_reg[13][7]  ( .D(n541), .CP(clock), .QN(n261) );
  FD1 \fifo_reg[13][6]  ( .D(n542), .CP(clock), .QN(n267) );
  FD1 \fifo_reg[13][5]  ( .D(n543), .CP(clock), .QN(n273) );
  FD1 \fifo_reg[13][4]  ( .D(n544), .CP(clock), .QN(n279) );
  FD1 \fifo_reg[13][3]  ( .D(n545), .CP(clock), .QN(n285) );
  FD1 \fifo_reg[13][2]  ( .D(n546), .CP(clock), .QN(n291) );
  FD1 \fifo_reg[13][1]  ( .D(n547), .CP(clock), .Q(\fifo[13][1] ) );
  FD1 \fifo_reg[13][0]  ( .D(n548), .CP(clock), .Q(\fifo[13][0] ) );
  FD1 \fifo_reg[12][8]  ( .D(n549), .CP(clock), .Q(\fifo[12][8] ) );
  FD1 \fifo_reg[12][7]  ( .D(n550), .CP(clock), .QN(n260) );
  FD1 \fifo_reg[12][6]  ( .D(n551), .CP(clock), .QN(n266) );
  FD1 \fifo_reg[12][5]  ( .D(n552), .CP(clock), .QN(n272) );
  FD1 \fifo_reg[12][4]  ( .D(n553), .CP(clock), .QN(n278) );
  FD1 \fifo_reg[12][3]  ( .D(n554), .CP(clock), .QN(n284) );
  FD1 \fifo_reg[12][2]  ( .D(n555), .CP(clock), .QN(n290) );
  FD1 \fifo_reg[12][1]  ( .D(n556), .CP(clock), .Q(\fifo[12][1] ) );
  FD1 \fifo_reg[12][0]  ( .D(n557), .CP(clock), .Q(\fifo[12][0] ) );
  FD1 \fifo_reg[11][8]  ( .D(n558), .CP(clock), .Q(\fifo[11][8] ) );
  FD1 \fifo_reg[11][7]  ( .D(n559), .CP(clock), .QN(n302) );
  FD1 \fifo_reg[11][6]  ( .D(n560), .CP(clock), .QN(n308) );
  FD1 \fifo_reg[11][5]  ( .D(n561), .CP(clock), .QN(n314) );
  FD1 \fifo_reg[11][4]  ( .D(n562), .CP(clock), .QN(n320) );
  FD1 \fifo_reg[11][3]  ( .D(n563), .CP(clock), .QN(n496) );
  FD1 \fifo_reg[11][2]  ( .D(n564), .CP(clock), .QN(n502) );
  FD1 \fifo_reg[11][1]  ( .D(n565), .CP(clock), .QN(n508) );
  FD1 \fifo_reg[11][0]  ( .D(n566), .CP(clock), .QN(n510) );
  FD1 \fifo_reg[10][8]  ( .D(n567), .CP(clock), .Q(\fifo[10][8] ) );
  FD1 \fifo_reg[10][7]  ( .D(n568), .CP(clock), .Q(\fifo[10][7] ) );
  FD1 \fifo_reg[10][6]  ( .D(n569), .CP(clock), .Q(\fifo[10][6] ) );
  FD1 \fifo_reg[10][5]  ( .D(n570), .CP(clock), .Q(\fifo[10][5] ) );
  FD1 \fifo_reg[10][4]  ( .D(n571), .CP(clock), .Q(\fifo[10][4] ) );
  FD1 \fifo_reg[10][3]  ( .D(n572), .CP(clock), .Q(\fifo[10][3] ) );
  FD1 \fifo_reg[10][2]  ( .D(n573), .CP(clock), .Q(\fifo[10][2] ) );
  FD1 \fifo_reg[10][1]  ( .D(n574), .CP(clock), .Q(\fifo[10][1] ) );
  FD1 \fifo_reg[10][0]  ( .D(n575), .CP(clock), .Q(\fifo[10][0] ) );
  FD1 \fifo_reg[9][8]  ( .D(n576), .CP(clock), .Q(\fifo[9][8] ) );
  FD1 \fifo_reg[9][7]  ( .D(n577), .CP(clock), .Q(\fifo[9][7] ) );
  FD1 \fifo_reg[9][6]  ( .D(n578), .CP(clock), .Q(\fifo[9][6] ) );
  FD1 \fifo_reg[9][5]  ( .D(n579), .CP(clock), .Q(\fifo[9][5] ) );
  FD1 \fifo_reg[9][4]  ( .D(n580), .CP(clock), .Q(\fifo[9][4] ) );
  FD1 \fifo_reg[9][3]  ( .D(n581), .CP(clock), .Q(\fifo[9][3] ) );
  FD1 \fifo_reg[9][2]  ( .D(n582), .CP(clock), .Q(\fifo[9][2] ) );
  FD1 \fifo_reg[9][1]  ( .D(n583), .CP(clock), .Q(\fifo[9][1] ) );
  FD1 \fifo_reg[9][0]  ( .D(n584), .CP(clock), .Q(\fifo[9][0] ) );
  FD1 \fifo_reg[8][8]  ( .D(n585), .CP(clock), .Q(\fifo[8][8] ) );
  FD1 \fifo_reg[8][7]  ( .D(n586), .CP(clock), .QN(n304) );
  FD1 \fifo_reg[8][6]  ( .D(n587), .CP(clock), .QN(n310) );
  FD1 \fifo_reg[8][5]  ( .D(n588), .CP(clock), .QN(n316) );
  FD1 \fifo_reg[8][4]  ( .D(n589), .CP(clock), .QN(n322) );
  FD1 \fifo_reg[8][3]  ( .D(n590), .CP(clock), .QN(n498) );
  FD1 \fifo_reg[8][2]  ( .D(n591), .CP(clock), .QN(n504) );
  FD1 \fifo_reg[8][1]  ( .D(n592), .CP(clock), .Q(\fifo[8][1] ) );
  FD1 \fifo_reg[8][0]  ( .D(n593), .CP(clock), .Q(\fifo[8][0] ) );
  FD1 \fifo_reg[7][8]  ( .D(n594), .CP(clock), .Q(\fifo[7][8] ) );
  FD1 \fifo_reg[7][7]  ( .D(n595), .CP(clock), .QN(n307) );
  FD1 \fifo_reg[7][6]  ( .D(n596), .CP(clock), .QN(n313) );
  FD1 \fifo_reg[7][5]  ( .D(n597), .CP(clock), .QN(n277) );
  FD1 \fifo_reg[7][4]  ( .D(n598), .CP(clock), .QN(n283) );
  FD1 \fifo_reg[7][3]  ( .D(n599), .CP(clock), .QN(n289) );
  FD1 \fifo_reg[7][2]  ( .D(n600), .CP(clock), .QN(n295) );
  FD1 \fifo_reg[7][1]  ( .D(n601), .CP(clock), .Q(\fifo[7][1] ) );
  FD1 \fifo_reg[7][0]  ( .D(n602), .CP(clock), .Q(\fifo[7][0] ) );
  FD1 \fifo_reg[6][8]  ( .D(n603), .CP(clock), .Q(\fifo[6][8] ) );
  FD1 \fifo_reg[6][7]  ( .D(n604), .CP(clock), .QN(n306) );
  FD1 \fifo_reg[6][6]  ( .D(n605), .CP(clock), .QN(n312) );
  FD1 \fifo_reg[6][5]  ( .D(n606), .CP(clock), .QN(n318) );
  FD1 \fifo_reg[6][4]  ( .D(n607), .CP(clock), .QN(n494) );
  FD1 \fifo_reg[6][3]  ( .D(n608), .CP(clock), .QN(n500) );
  FD1 \fifo_reg[6][2]  ( .D(n609), .CP(clock), .QN(n506) );
  FD1 \fifo_reg[6][1]  ( .D(n610), .CP(clock), .QN(n297) );
  FD1 \fifo_reg[6][0]  ( .D(n611), .CP(clock), .QN(n299) );
  FD1 \fifo_reg[5][8]  ( .D(n612), .CP(clock), .Q(\fifo[5][8] ) );
  FD1 \fifo_reg[5][7]  ( .D(n613), .CP(clock), .QN(n264) );
  FD1 \fifo_reg[5][6]  ( .D(n614), .CP(clock), .QN(n270) );
  FD1 \fifo_reg[5][5]  ( .D(n615), .CP(clock), .QN(n276) );
  FD1 \fifo_reg[5][4]  ( .D(n616), .CP(clock), .QN(n282) );
  FD1 \fifo_reg[5][3]  ( .D(n617), .CP(clock), .QN(n288) );
  FD1 \fifo_reg[5][2]  ( .D(n618), .CP(clock), .QN(n294) );
  FD1 \fifo_reg[5][1]  ( .D(n619), .CP(clock), .Q(\fifo[5][1] ) );
  FD1 \fifo_reg[5][0]  ( .D(n620), .CP(clock), .Q(\fifo[5][0] ) );
  FD1 \fifo_reg[4][8]  ( .D(n621), .CP(clock), .Q(\fifo[4][8] ) );
  FD1 \fifo_reg[4][7]  ( .D(n622), .CP(clock), .QN(n263) );
  FD1 \fifo_reg[4][6]  ( .D(n623), .CP(clock), .QN(n269) );
  FD1 \fifo_reg[4][5]  ( .D(n624), .CP(clock), .QN(n275) );
  FD1 \fifo_reg[4][4]  ( .D(n625), .CP(clock), .QN(n281) );
  FD1 \fifo_reg[4][3]  ( .D(n626), .CP(clock), .QN(n287) );
  FD1 \fifo_reg[4][2]  ( .D(n627), .CP(clock), .QN(n293) );
  FD1 \fifo_reg[4][1]  ( .D(n628), .CP(clock), .QN(n509) );
  FD1 \fifo_reg[4][0]  ( .D(n629), .CP(clock), .QN(n511) );
  FD1 \fifo_reg[3][8]  ( .D(n630), .CP(clock), .Q(\fifo[3][8] ) );
  FD1 \fifo_reg[3][7]  ( .D(n631), .CP(clock), .QN(n305) );
  FD1 \fifo_reg[3][6]  ( .D(n632), .CP(clock), .QN(n311) );
  FD1 \fifo_reg[3][5]  ( .D(n633), .CP(clock), .QN(n317) );
  FD1 \fifo_reg[3][4]  ( .D(n634), .CP(clock), .QN(n323) );
  FD1 \fifo_reg[3][3]  ( .D(n635), .CP(clock), .QN(n499) );
  FD1 \fifo_reg[3][2]  ( .D(n636), .CP(clock), .QN(n505) );
  FD1 \fifo_reg[3][1]  ( .D(n637), .CP(clock), .Q(\fifo[3][1] ) );
  FD1 \fifo_reg[3][0]  ( .D(n638), .CP(clock), .Q(\fifo[3][0] ) );
  FD1 \fifo_reg[2][8]  ( .D(n639), .CP(clock), .Q(\fifo[2][8] ) );
  FD1 \fifo_reg[2][7]  ( .D(n640), .CP(clock), .Q(\fifo[2][7] ) );
  FD1 \fifo_reg[2][6]  ( .D(n641), .CP(clock), .Q(\fifo[2][6] ) );
  FD1 \fifo_reg[2][5]  ( .D(n642), .CP(clock), .Q(\fifo[2][5] ) );
  FD1 \fifo_reg[2][4]  ( .D(n643), .CP(clock), .Q(\fifo[2][4] ) );
  FD1 \fifo_reg[2][3]  ( .D(n644), .CP(clock), .Q(\fifo[2][3] ) );
  FD1 \fifo_reg[2][2]  ( .D(n645), .CP(clock), .Q(\fifo[2][2] ) );
  FD1 \fifo_reg[2][1]  ( .D(n646), .CP(clock), .Q(\fifo[2][1] ) );
  FD1 \fifo_reg[2][0]  ( .D(n647), .CP(clock), .Q(\fifo[2][0] ) );
  FD1 \fifo_reg[1][8]  ( .D(n648), .CP(clock), .Q(\fifo[1][8] ) );
  FD1 \fifo_reg[1][7]  ( .D(n649), .CP(clock), .Q(\fifo[1][7] ) );
  FD1 \fifo_reg[1][6]  ( .D(n650), .CP(clock), .Q(\fifo[1][6] ) );
  FD1 \fifo_reg[1][5]  ( .D(n651), .CP(clock), .Q(\fifo[1][5] ) );
  FD1 \fifo_reg[1][4]  ( .D(n652), .CP(clock), .Q(\fifo[1][4] ) );
  FD1 \fifo_reg[1][3]  ( .D(n653), .CP(clock), .Q(\fifo[1][3] ) );
  FD1 \fifo_reg[1][2]  ( .D(n654), .CP(clock), .Q(\fifo[1][2] ) );
  FD1 \fifo_reg[1][1]  ( .D(n655), .CP(clock), .Q(\fifo[1][1] ) );
  FD1 \fifo_reg[1][0]  ( .D(n656), .CP(clock), .Q(\fifo[1][0] ) );
  FD1 \fifo_reg[0][8]  ( .D(n657), .CP(clock), .Q(\fifo[0][8] ) );
  FD1 \counter_reg[6]  ( .D(n664), .CP(clock), .Q(counter[6]), .QN(n300) );
  FD1 \counter_reg[0]  ( .D(n665), .CP(clock), .Q(counter[0]) );
  FD1 \counter_reg[5]  ( .D(n666), .CP(clock), .Q(counter[5]) );
  FD1 \counter_reg[4]  ( .D(n667), .CP(clock), .Q(counter[4]) );
  FD1 \counter_reg[3]  ( .D(n668), .CP(clock), .Q(counter[3]) );
  FD1 \counter_reg[2]  ( .D(n669), .CP(clock), .Q(counter[2]) );
  FD1 \counter_reg[1]  ( .D(n670), .CP(clock), .Q(counter[1]) );
  FD1 \fifo_reg[0][7]  ( .D(n658), .CP(clock), .QN(n265) );
  FD1 \fifo_reg[0][6]  ( .D(n659), .CP(clock), .QN(n271) );
  FD1 \fifo_reg[0][5]  ( .D(n660), .CP(clock), .QN(n319) );
  FD1 \fifo_reg[0][4]  ( .D(n661), .CP(clock), .QN(n495) );
  FD1 \fifo_reg[0][3]  ( .D(n662), .CP(clock), .QN(n501) );
  FD1 \fifo_reg[0][2]  ( .D(n663), .CP(clock), .QN(n507) );
  FD1 \fifo_reg[0][1]  ( .D(n671), .CP(clock), .Q(\fifo[0][1] ) );
  FD1 \fifo_reg[0][0]  ( .D(n672), .CP(clock), .Q(\fifo[0][0] ) );
  FD1 \data_out_reg[7]  ( .D(n673), .CP(clock), .Q(N228) );
  FD1 \data_out_reg[6]  ( .D(n674), .CP(clock), .Q(N231) );
  FD1 \data_out_reg[5]  ( .D(n675), .CP(clock), .Q(N234) );
  FD1 \data_out_reg[4]  ( .D(n676), .CP(clock), .Q(N237) );
  FD1 \data_out_reg[3]  ( .D(n677), .CP(clock), .Q(N240) );
  FD1 \data_out_reg[2]  ( .D(n678), .CP(clock), .Q(N243) );
  FD1 \data_out_reg[1]  ( .D(n679), .CP(clock), .Q(N246) );
  FD1 \data_out_reg[0]  ( .D(n680), .CP(clock), .Q(N249) );
  FD1 \data_out_tri_enable_reg[0]  ( .D(n681), .CP(clock), .Q(N250), .QN(n301)
         );
  BTS4 \data_out_tri[0]  ( .A(N249), .E(n301), .Z(data_out[0]) );
  BTS4 \data_out_tri[1]  ( .A(N246), .E(n301), .Z(data_out[1]) );
  BTS4 \data_out_tri[2]  ( .A(N243), .E(n301), .Z(data_out[2]) );
  BTS4 \data_out_tri[3]  ( .A(N240), .E(n301), .Z(data_out[3]) );
  BTS4 \data_out_tri[4]  ( .A(N237), .E(n301), .Z(data_out[4]) );
  BTS4 \data_out_tri[5]  ( .A(N234), .E(n301), .Z(data_out[5]) );
  BTS4 \data_out_tri[6]  ( .A(N231), .E(n301), .Z(data_out[6]) );
  BTS4 \data_out_tri[7]  ( .A(N228), .E(n301), .Z(data_out[7]) );
  EON1 U3 ( .A(write_ptr[4]), .B(read_ptr[4]), .C(read_ptr[4]), .D(
        write_ptr[4]), .Z(n5) );
  AO2 U4 ( .A(read_ptr[3]), .B(n255), .C(write_ptr[3]), .D(n252), .Z(n4) );
  AO2 U5 ( .A(read_ptr[2]), .B(n251), .C(write_ptr[2]), .D(n256), .Z(n3) );
  AO2 U6 ( .A(read_ptr[0]), .B(n257), .C(write_ptr[0]), .D(n253), .Z(n2) );
  AO2 U7 ( .A(read_ptr[1]), .B(n254), .C(write_ptr[1]), .D(n259), .Z(n1) );
  ND4 U8 ( .A(n4), .B(n3), .C(n2), .D(n1), .Z(n6) );
  NR2 U9 ( .A(n5), .B(n6), .Z(full) );
  IVP U10 ( .A(n5), .Z(n7) );
  NR2 U11 ( .A(n7), .B(n6), .Z(empty) );
  ND2 U12 ( .A(n253), .B(n259), .Z(n8) );
  NR2 U13 ( .A(read_ptr[2]), .B(n8), .Z(n237) );
  ND2 U14 ( .A(read_ptr[0]), .B(read_ptr[1]), .Z(n140) );
  NR2 U15 ( .A(n256), .B(n140), .Z(n236) );
  AO2 U16 ( .A(n237), .B(\fifo[8][8] ), .C(n236), .D(\fifo[15][8] ), .Z(n11)
         );
  ND2 U17 ( .A(read_ptr[1]), .B(n253), .Z(n12) );
  NR2 U18 ( .A(n256), .B(n12), .Z(n225) );
  ND2 U19 ( .A(read_ptr[0]), .B(n259), .Z(n13) );
  NR2 U20 ( .A(n256), .B(n13), .Z(n232) );
  AO2 U21 ( .A(n225), .B(\fifo[14][8] ), .C(n232), .D(\fifo[13][8] ), .Z(n10)
         );
  NR2 U22 ( .A(read_ptr[2]), .B(n140), .Z(n234) );
  NR2 U23 ( .A(n256), .B(n8), .Z(n226) );
  AO2 U24 ( .A(n234), .B(\fifo[11][8] ), .C(n226), .D(\fifo[12][8] ), .Z(n9)
         );
  AN4P U25 ( .A(n11), .B(n10), .C(read_ptr[3]), .D(n9), .Z(n20) );
  NR2 U26 ( .A(read_ptr[2]), .B(n12), .Z(n233) );
  NR2 U27 ( .A(read_ptr[2]), .B(n13), .Z(n235) );
  AO2 U28 ( .A(n233), .B(\fifo[10][8] ), .C(n235), .D(\fifo[9][8] ), .Z(n19)
         );
  AO2 U29 ( .A(n237), .B(\fifo[0][8] ), .C(n236), .D(\fifo[7][8] ), .Z(n16) );
  AO2 U30 ( .A(n225), .B(\fifo[6][8] ), .C(n232), .D(\fifo[5][8] ), .Z(n15) );
  AO2 U31 ( .A(n234), .B(\fifo[3][8] ), .C(n226), .D(\fifo[4][8] ), .Z(n14) );
  AN4P U32 ( .A(n16), .B(n15), .C(n14), .D(n252), .Z(n18) );
  AO2 U33 ( .A(n233), .B(\fifo[2][8] ), .C(n235), .D(\fifo[1][8] ), .Z(n17) );
  AO2 U34 ( .A(n20), .B(n19), .C(n18), .D(n17), .Z(n91) );
  NR3 U35 ( .A(counter[6]), .B(counter[1]), .C(counter[2]), .Z(n22) );
  NR4 U36 ( .A(counter[3]), .B(counter[4]), .C(counter[5]), .D(counter[0]), 
        .Z(n21) );
  ND2 U37 ( .A(n22), .B(n21), .Z(n122) );
  IVP U38 ( .A(resetn), .Z(n160) );
  NR2 U39 ( .A(soft_reset), .B(n160), .Z(n159) );
  IVP U40 ( .A(empty), .Z(n23) );
  ND2 U41 ( .A(read_enb), .B(n23), .Z(n143) );
  ND2 U42 ( .A(n159), .B(n143), .Z(n249) );
  AO7 U43 ( .A(n91), .B(n122), .C(n249), .Z(n120) );
  IVP U44 ( .A(n159), .Z(n183) );
  NR2 U45 ( .A(n143), .B(n183), .Z(n134) );
  IVP U46 ( .A(n134), .Z(n247) );
  NR2 U47 ( .A(n247), .B(n120), .Z(n119) );
  IVP U48 ( .A(n91), .Z(n117) );
  IVP U49 ( .A(n225), .Z(n230) );
  IVP U50 ( .A(n232), .Z(n83) );
  AO4 U51 ( .A(n230), .B(n303), .C(n83), .D(n261), .Z(n26) );
  IVP U52 ( .A(n237), .Z(n82) );
  IVP U53 ( .A(n236), .Z(n223) );
  AO4 U54 ( .A(n82), .B(n304), .C(n223), .D(n262), .Z(n25) );
  IVP U55 ( .A(n234), .Z(n224) );
  IVP U56 ( .A(n226), .Z(n231) );
  AO4 U57 ( .A(n224), .B(n302), .C(n231), .D(n260), .Z(n24) );
  NR4 U58 ( .A(n26), .B(n25), .C(n24), .D(n252), .Z(n33) );
  AO2 U59 ( .A(n233), .B(\fifo[10][7] ), .C(n235), .D(\fifo[9][7] ), .Z(n32)
         );
  AO4 U60 ( .A(n82), .B(n265), .C(n223), .D(n307), .Z(n29) );
  AO4 U61 ( .A(n230), .B(n306), .C(n83), .D(n264), .Z(n28) );
  AO4 U62 ( .A(n224), .B(n305), .C(n231), .D(n263), .Z(n27) );
  NR4 U63 ( .A(read_ptr[3]), .B(n29), .C(n28), .D(n27), .Z(n31) );
  AO2 U64 ( .A(n233), .B(\fifo[2][7] ), .C(n235), .D(\fifo[1][7] ), .Z(n30) );
  AO2 U65 ( .A(n33), .B(n32), .C(n31), .D(n30), .Z(n127) );
  AO2 U66 ( .A(n91), .B(n127), .C(n117), .D(counter[5]), .Z(n34) );
  IVP U67 ( .A(n34), .Z(n100) );
  AO4 U68 ( .A(n230), .B(n309), .C(n83), .D(n267), .Z(n37) );
  AO4 U69 ( .A(n82), .B(n310), .C(n223), .D(n268), .Z(n36) );
  AO4 U70 ( .A(n224), .B(n308), .C(n231), .D(n266), .Z(n35) );
  NR4 U71 ( .A(n37), .B(n36), .C(n35), .D(n252), .Z(n44) );
  AO2 U72 ( .A(n233), .B(\fifo[10][6] ), .C(n235), .D(\fifo[9][6] ), .Z(n43)
         );
  AO4 U73 ( .A(n82), .B(n271), .C(n223), .D(n313), .Z(n40) );
  AO4 U74 ( .A(n230), .B(n312), .C(n83), .D(n270), .Z(n39) );
  AO4 U75 ( .A(n224), .B(n311), .C(n231), .D(n269), .Z(n38) );
  NR4 U76 ( .A(read_ptr[3]), .B(n40), .C(n39), .D(n38), .Z(n42) );
  AO2 U77 ( .A(n233), .B(\fifo[2][6] ), .C(n235), .D(\fifo[1][6] ), .Z(n41) );
  AO2 U78 ( .A(n44), .B(n43), .C(n42), .D(n41), .Z(n131) );
  AO2 U79 ( .A(n91), .B(n131), .C(n117), .D(counter[4]), .Z(n45) );
  IVP U80 ( .A(n45), .Z(n104) );
  AO4 U81 ( .A(n230), .B(n315), .C(n83), .D(n273), .Z(n48) );
  AO4 U82 ( .A(n82), .B(n316), .C(n223), .D(n274), .Z(n47) );
  AO4 U83 ( .A(n224), .B(n314), .C(n231), .D(n272), .Z(n46) );
  NR4 U84 ( .A(n48), .B(n47), .C(n46), .D(n252), .Z(n55) );
  AO2 U85 ( .A(n233), .B(\fifo[10][5] ), .C(n235), .D(\fifo[9][5] ), .Z(n54)
         );
  AO4 U86 ( .A(n82), .B(n319), .C(n223), .D(n277), .Z(n51) );
  AO4 U87 ( .A(n230), .B(n318), .C(n83), .D(n276), .Z(n50) );
  AO4 U88 ( .A(n224), .B(n317), .C(n231), .D(n275), .Z(n49) );
  NR4 U89 ( .A(read_ptr[3]), .B(n51), .C(n50), .D(n49), .Z(n53) );
  AO2 U90 ( .A(n233), .B(\fifo[2][5] ), .C(n235), .D(\fifo[1][5] ), .Z(n52) );
  AO2 U91 ( .A(n55), .B(n54), .C(n53), .D(n52), .Z(n123) );
  AO2 U92 ( .A(n91), .B(n123), .C(n117), .D(counter[3]), .Z(n56) );
  IVP U93 ( .A(n56), .Z(n108) );
  AO4 U94 ( .A(n230), .B(n321), .C(n83), .D(n279), .Z(n59) );
  AO4 U95 ( .A(n82), .B(n322), .C(n223), .D(n280), .Z(n58) );
  AO4 U96 ( .A(n224), .B(n320), .C(n231), .D(n278), .Z(n57) );
  NR4 U97 ( .A(n59), .B(n58), .C(n57), .D(n252), .Z(n66) );
  AO2 U98 ( .A(n233), .B(\fifo[10][4] ), .C(n235), .D(\fifo[9][4] ), .Z(n65)
         );
  AO4 U99 ( .A(n82), .B(n495), .C(n223), .D(n283), .Z(n62) );
  AO4 U100 ( .A(n230), .B(n494), .C(n83), .D(n282), .Z(n61) );
  AO4 U101 ( .A(n224), .B(n323), .C(n231), .D(n281), .Z(n60) );
  NR4 U102 ( .A(read_ptr[3]), .B(n62), .C(n61), .D(n60), .Z(n64) );
  AO2 U103 ( .A(n233), .B(\fifo[2][4] ), .C(n235), .D(\fifo[1][4] ), .Z(n63)
         );
  AO2 U104 ( .A(n66), .B(n65), .C(n64), .D(n63), .Z(n125) );
  AO2 U105 ( .A(n91), .B(n125), .C(n117), .D(counter[2]), .Z(n67) );
  IVP U106 ( .A(n67), .Z(n112) );
  AO4 U107 ( .A(n230), .B(n497), .C(n83), .D(n285), .Z(n70) );
  AO4 U108 ( .A(n82), .B(n498), .C(n223), .D(n286), .Z(n69) );
  AO4 U109 ( .A(n224), .B(n496), .C(n231), .D(n284), .Z(n68) );
  NR4 U110 ( .A(n70), .B(n69), .C(n68), .D(n252), .Z(n77) );
  AO2 U111 ( .A(n233), .B(\fifo[10][3] ), .C(n235), .D(\fifo[9][3] ), .Z(n76)
         );
  AO4 U112 ( .A(n82), .B(n501), .C(n223), .D(n289), .Z(n73) );
  AO4 U113 ( .A(n230), .B(n500), .C(n83), .D(n288), .Z(n72) );
  AO4 U114 ( .A(n224), .B(n499), .C(n231), .D(n287), .Z(n71) );
  NR4 U115 ( .A(read_ptr[3]), .B(n73), .C(n72), .D(n71), .Z(n75) );
  AO2 U116 ( .A(n233), .B(\fifo[2][3] ), .C(n235), .D(\fifo[1][3] ), .Z(n74)
         );
  AO2 U117 ( .A(n77), .B(n76), .C(n75), .D(n74), .Z(n133) );
  AO2 U118 ( .A(n91), .B(n133), .C(n117), .D(counter[1]), .Z(n78) );
  IVP U119 ( .A(n78), .Z(n116) );
  AO4 U120 ( .A(n230), .B(n503), .C(n83), .D(n291), .Z(n81) );
  AO4 U121 ( .A(n82), .B(n504), .C(n223), .D(n292), .Z(n80) );
  AO4 U122 ( .A(n224), .B(n502), .C(n231), .D(n290), .Z(n79) );
  NR4 U123 ( .A(n81), .B(n80), .C(n79), .D(n252), .Z(n90) );
  AO2 U124 ( .A(n233), .B(\fifo[10][2] ), .C(n235), .D(\fifo[9][2] ), .Z(n89)
         );
  AO4 U125 ( .A(n82), .B(n507), .C(n223), .D(n295), .Z(n86) );
  AO4 U126 ( .A(n230), .B(n506), .C(n83), .D(n294), .Z(n85) );
  AO4 U127 ( .A(n224), .B(n505), .C(n231), .D(n293), .Z(n84) );
  NR4 U128 ( .A(read_ptr[3]), .B(n86), .C(n85), .D(n84), .Z(n88) );
  AO2 U129 ( .A(n233), .B(\fifo[2][2] ), .C(n235), .D(\fifo[1][2] ), .Z(n87)
         );
  AO2 U130 ( .A(n90), .B(n89), .C(n88), .D(n87), .Z(n129) );
  AO2 U131 ( .A(n91), .B(n129), .C(n117), .D(counter[0]), .Z(n97) );
  IVP U132 ( .A(n97), .Z(n115) );
  NR2 U133 ( .A(n91), .B(n300), .Z(n92) );
  EO U134 ( .A(n117), .B(n92), .Z(n93) );
  EO U135 ( .A(n94), .B(n93), .Z(n95) );
  AO2 U136 ( .A(counter[6]), .B(n120), .C(n119), .D(n95), .Z(n96) );
  IVP U137 ( .A(n96), .Z(n664) );
  AO2 U138 ( .A(counter[0]), .B(n120), .C(n119), .D(n97), .Z(n98) );
  IVP U139 ( .A(n98), .Z(n665) );
  FA1A U140 ( .A(n117), .B(n100), .CI(n99), .CO(n94), .S(n101) );
  AO2 U141 ( .A(counter[5]), .B(n120), .C(n119), .D(n101), .Z(n102) );
  IVP U142 ( .A(n102), .Z(n666) );
  FA1A U143 ( .A(n117), .B(n104), .CI(n103), .CO(n99), .S(n105) );
  AO2 U144 ( .A(counter[4]), .B(n120), .C(n119), .D(n105), .Z(n106) );
  IVP U145 ( .A(n106), .Z(n667) );
  FA1A U146 ( .A(n117), .B(n108), .CI(n107), .CO(n103), .S(n109) );
  AO2 U147 ( .A(counter[3]), .B(n120), .C(n119), .D(n109), .Z(n110) );
  IVP U148 ( .A(n110), .Z(n668) );
  FA1A U149 ( .A(n117), .B(n112), .CI(n111), .CO(n107), .S(n113) );
  AO2 U150 ( .A(counter[2]), .B(n120), .C(n119), .D(n113), .Z(n114) );
  IVP U151 ( .A(n114), .Z(n669) );
  FA1A U152 ( .A(n117), .B(n116), .CI(n115), .CO(n111), .S(n118) );
  AO2 U153 ( .A(counter[1]), .B(n120), .C(n119), .D(n118), .Z(n121) );
  IVP U154 ( .A(n121), .Z(n670) );
  IVP U155 ( .A(n122), .Z(n248) );
  NR2 U156 ( .A(n249), .B(n248), .Z(n245) );
  AO2 U157 ( .A(n134), .B(n123), .C(n245), .D(N234), .Z(n124) );
  IVP U158 ( .A(n124), .Z(n675) );
  AO2 U159 ( .A(n134), .B(n125), .C(n245), .D(N237), .Z(n126) );
  IVP U160 ( .A(n126), .Z(n676) );
  AO2 U161 ( .A(n134), .B(n127), .C(n245), .D(N228), .Z(n128) );
  IVP U162 ( .A(n128), .Z(n673) );
  AO2 U163 ( .A(n134), .B(n129), .C(n245), .D(N243), .Z(n130) );
  IVP U164 ( .A(n130), .Z(n678) );
  AO2 U165 ( .A(n134), .B(n131), .C(n245), .D(N231), .Z(n132) );
  IVP U166 ( .A(n132), .Z(n674) );
  AO2 U167 ( .A(n134), .B(n133), .C(n245), .D(N240), .Z(n135) );
  IVP U168 ( .A(n135), .Z(n677) );
  AN2P U169 ( .A(n159), .B(lfd_state), .Z(N33) );
  AO2 U170 ( .A(read_ptr[0]), .B(n249), .C(n247), .D(n253), .Z(n512) );
  NR2 U171 ( .A(n143), .B(n253), .Z(n137) );
  NR2 U172 ( .A(read_ptr[1]), .B(n137), .Z(n136) );
  AO1P U173 ( .A(read_ptr[1]), .B(n137), .C(n183), .D(n136), .Z(n513) );
  IVP U174 ( .A(write_enb), .Z(n138) );
  NR2 U175 ( .A(full), .B(n138), .Z(n158) );
  NR2 U176 ( .A(write_ptr[0]), .B(n158), .Z(n139) );
  AO1P U177 ( .A(write_ptr[0]), .B(n158), .C(n183), .D(n139), .Z(n514) );
  NR2 U178 ( .A(n143), .B(n140), .Z(n142) );
  NR2 U179 ( .A(read_ptr[2]), .B(n142), .Z(n141) );
  AO1P U180 ( .A(read_ptr[2]), .B(n142), .C(n183), .D(n141), .Z(n515) );
  OR2P U181 ( .A(n143), .B(n223), .Z(n144) );
  NR2 U182 ( .A(n252), .B(n144), .Z(n146) );
  AO1P U183 ( .A(n252), .B(n144), .C(n146), .D(n183), .Z(n516) );
  NR2 U184 ( .A(read_ptr[4]), .B(n146), .Z(n145) );
  AO1P U185 ( .A(read_ptr[4]), .B(n146), .C(n183), .D(n145), .Z(n517) );
  AN2P U186 ( .A(write_ptr[0]), .B(n158), .Z(n148) );
  NR2 U187 ( .A(write_ptr[1]), .B(n148), .Z(n147) );
  AO1P U188 ( .A(write_ptr[1]), .B(n148), .C(n183), .D(n147), .Z(n518) );
  NR2 U189 ( .A(n251), .B(n254), .Z(n157) );
  AN2P U190 ( .A(write_ptr[0]), .B(n157), .Z(n152) );
  NR2 U191 ( .A(write_ptr[2]), .B(write_ptr[1]), .Z(n174) );
  AO1P U192 ( .A(n251), .B(n257), .C(n152), .D(n174), .Z(n149) );
  IVP U193 ( .A(n149), .Z(n151) );
  NR2 U194 ( .A(write_ptr[2]), .B(n158), .Z(n150) );
  AO1P U195 ( .A(n158), .B(n151), .C(n183), .D(n150), .Z(n519) );
  ND2 U196 ( .A(n158), .B(n152), .Z(n153) );
  NR2 U197 ( .A(n255), .B(n153), .Z(n154) );
  AO1P U198 ( .A(n255), .B(n153), .C(n154), .D(n183), .Z(n520) );
  IVP U199 ( .A(n154), .Z(n156) );
  NR2 U200 ( .A(n258), .B(n156), .Z(n155) );
  AO1P U201 ( .A(n258), .B(n156), .C(n183), .D(n155), .Z(n521) );
  NR2 U202 ( .A(n157), .B(n183), .Z(n185) );
  ND2 U203 ( .A(n159), .B(n158), .Z(n164) );
  NR2 U204 ( .A(n257), .B(n164), .Z(n180) );
  AO1P U205 ( .A(write_ptr[3]), .B(n180), .C(soft_reset), .D(n160), .Z(n175)
         );
  NR2 U206 ( .A(n185), .B(n175), .Z(n163) );
  IVP U207 ( .A(n164), .Z(n161) );
  ND2 U208 ( .A(n161), .B(lfd_state_temp), .Z(n201) );
  EO1 U209 ( .A(n163), .B(n201), .C(\fifo[15][8] ), .D(n163), .Z(n522) );
  ND2 U210 ( .A(n161), .B(data_in[7]), .Z(n202) );
  IVP U211 ( .A(n163), .Z(n162) );
  AO2 U212 ( .A(n163), .B(n202), .C(n262), .D(n162), .Z(n523) );
  ND2 U213 ( .A(n161), .B(data_in[6]), .Z(n203) );
  AO2 U214 ( .A(n163), .B(n203), .C(n268), .D(n162), .Z(n524) );
  ND2 U215 ( .A(n161), .B(data_in[5]), .Z(n204) );
  AO2 U216 ( .A(n163), .B(n204), .C(n274), .D(n162), .Z(n525) );
  ND2 U217 ( .A(n161), .B(data_in[4]), .Z(n205) );
  AO2 U218 ( .A(n163), .B(n205), .C(n280), .D(n162), .Z(n526) );
  ND2 U219 ( .A(n161), .B(data_in[3]), .Z(n206) );
  AO2 U220 ( .A(n163), .B(n206), .C(n286), .D(n162), .Z(n527) );
  ND2 U221 ( .A(n161), .B(data_in[2]), .Z(n208) );
  AO2 U222 ( .A(n163), .B(n208), .C(n292), .D(n162), .Z(n528) );
  ND2 U223 ( .A(n161), .B(data_in[1]), .Z(n209) );
  AO2 U224 ( .A(n163), .B(n209), .C(n296), .D(n162), .Z(n529) );
  ND2 U225 ( .A(n161), .B(data_in[0]), .Z(n210) );
  AO2 U226 ( .A(n163), .B(n210), .C(n298), .D(n162), .Z(n530) );
  NR2 U227 ( .A(write_ptr[0]), .B(n164), .Z(n184) );
  AO6 U228 ( .A(write_ptr[3]), .B(n184), .C(n183), .Z(n177) );
  NR2 U229 ( .A(n185), .B(n177), .Z(n166) );
  EO1 U230 ( .A(n166), .B(n201), .C(\fifo[14][8] ), .D(n166), .Z(n531) );
  IVP U231 ( .A(n166), .Z(n165) );
  AO2 U232 ( .A(n166), .B(n202), .C(n303), .D(n165), .Z(n532) );
  AO2 U233 ( .A(n166), .B(n203), .C(n309), .D(n165), .Z(n533) );
  AO2 U234 ( .A(n166), .B(n204), .C(n315), .D(n165), .Z(n534) );
  AO2 U235 ( .A(n166), .B(n205), .C(n321), .D(n165), .Z(n535) );
  AO2 U236 ( .A(n166), .B(n206), .C(n497), .D(n165), .Z(n536) );
  AO2 U237 ( .A(n166), .B(n208), .C(n503), .D(n165), .Z(n537) );
  EO1 U238 ( .A(n166), .B(n209), .C(\fifo[14][1] ), .D(n166), .Z(n538) );
  EO1 U239 ( .A(n166), .B(n210), .C(\fifo[14][0] ), .D(n166), .Z(n539) );
  AO6 U240 ( .A(write_ptr[2]), .B(n254), .C(n183), .Z(n190) );
  NR2 U241 ( .A(n175), .B(n190), .Z(n168) );
  EO1 U242 ( .A(n168), .B(n201), .C(\fifo[13][8] ), .D(n168), .Z(n540) );
  IVP U243 ( .A(n168), .Z(n167) );
  AO2 U244 ( .A(n168), .B(n202), .C(n261), .D(n167), .Z(n541) );
  AO2 U245 ( .A(n168), .B(n203), .C(n267), .D(n167), .Z(n542) );
  AO2 U246 ( .A(n168), .B(n204), .C(n273), .D(n167), .Z(n543) );
  AO2 U247 ( .A(n168), .B(n205), .C(n279), .D(n167), .Z(n544) );
  AO2 U248 ( .A(n168), .B(n206), .C(n285), .D(n167), .Z(n545) );
  AO2 U249 ( .A(n168), .B(n208), .C(n291), .D(n167), .Z(n546) );
  EO1 U250 ( .A(n168), .B(n209), .C(\fifo[13][1] ), .D(n168), .Z(n547) );
  EO1 U251 ( .A(n168), .B(n210), .C(\fifo[13][0] ), .D(n168), .Z(n548) );
  NR2 U252 ( .A(n177), .B(n190), .Z(n170) );
  EO1 U253 ( .A(n170), .B(n201), .C(\fifo[12][8] ), .D(n170), .Z(n549) );
  IVP U254 ( .A(n170), .Z(n169) );
  AO2 U255 ( .A(n170), .B(n202), .C(n260), .D(n169), .Z(n550) );
  AO2 U256 ( .A(n170), .B(n203), .C(n266), .D(n169), .Z(n551) );
  AO2 U257 ( .A(n170), .B(n204), .C(n272), .D(n169), .Z(n552) );
  AO2 U258 ( .A(n170), .B(n205), .C(n278), .D(n169), .Z(n553) );
  AO2 U259 ( .A(n170), .B(n206), .C(n284), .D(n169), .Z(n554) );
  AO2 U260 ( .A(n170), .B(n208), .C(n290), .D(n169), .Z(n555) );
  EO1 U261 ( .A(n170), .B(n209), .C(\fifo[12][1] ), .D(n170), .Z(n556) );
  EO1 U262 ( .A(n170), .B(n210), .C(\fifo[12][0] ), .D(n170), .Z(n557) );
  AO6 U263 ( .A(write_ptr[1]), .B(n251), .C(n183), .Z(n195) );
  NR2 U264 ( .A(n175), .B(n195), .Z(n172) );
  EO1 U265 ( .A(n172), .B(n201), .C(\fifo[11][8] ), .D(n172), .Z(n558) );
  IVP U266 ( .A(n172), .Z(n171) );
  AO2 U267 ( .A(n172), .B(n202), .C(n302), .D(n171), .Z(n559) );
  AO2 U268 ( .A(n172), .B(n203), .C(n308), .D(n171), .Z(n560) );
  AO2 U269 ( .A(n172), .B(n204), .C(n314), .D(n171), .Z(n561) );
  AO2 U270 ( .A(n172), .B(n205), .C(n320), .D(n171), .Z(n562) );
  AO2 U271 ( .A(n172), .B(n206), .C(n496), .D(n171), .Z(n563) );
  AO2 U272 ( .A(n172), .B(n208), .C(n502), .D(n171), .Z(n564) );
  AO2 U273 ( .A(n172), .B(n209), .C(n508), .D(n171), .Z(n565) );
  AO2 U274 ( .A(n172), .B(n210), .C(n510), .D(n171), .Z(n566) );
  NR2 U275 ( .A(n177), .B(n195), .Z(n173) );
  EO1 U276 ( .A(n173), .B(n201), .C(\fifo[10][8] ), .D(n173), .Z(n567) );
  EO1 U277 ( .A(n173), .B(n202), .C(\fifo[10][7] ), .D(n173), .Z(n568) );
  EO1 U278 ( .A(n173), .B(n203), .C(\fifo[10][6] ), .D(n173), .Z(n569) );
  EO1 U279 ( .A(n173), .B(n204), .C(\fifo[10][5] ), .D(n173), .Z(n570) );
  EO1 U280 ( .A(n173), .B(n205), .C(\fifo[10][4] ), .D(n173), .Z(n571) );
  EO1 U281 ( .A(n173), .B(n206), .C(\fifo[10][3] ), .D(n173), .Z(n572) );
  EO1 U282 ( .A(n173), .B(n208), .C(\fifo[10][2] ), .D(n173), .Z(n573) );
  EO1 U283 ( .A(n173), .B(n209), .C(\fifo[10][1] ), .D(n173), .Z(n574) );
  EO1 U284 ( .A(n173), .B(n210), .C(\fifo[10][0] ), .D(n173), .Z(n575) );
  NR2 U285 ( .A(n174), .B(n183), .Z(n200) );
  NR2 U286 ( .A(n175), .B(n200), .Z(n176) );
  EO1 U287 ( .A(n176), .B(n201), .C(\fifo[9][8] ), .D(n176), .Z(n576) );
  EO1 U288 ( .A(n176), .B(n202), .C(\fifo[9][7] ), .D(n176), .Z(n577) );
  EO1 U289 ( .A(n176), .B(n203), .C(\fifo[9][6] ), .D(n176), .Z(n578) );
  EO1 U290 ( .A(n176), .B(n204), .C(\fifo[9][5] ), .D(n176), .Z(n579) );
  EO1 U291 ( .A(n176), .B(n205), .C(\fifo[9][4] ), .D(n176), .Z(n580) );
  EO1 U292 ( .A(n176), .B(n206), .C(\fifo[9][3] ), .D(n176), .Z(n581) );
  EO1 U293 ( .A(n176), .B(n208), .C(\fifo[9][2] ), .D(n176), .Z(n582) );
  EO1 U294 ( .A(n176), .B(n209), .C(\fifo[9][1] ), .D(n176), .Z(n583) );
  EO1 U295 ( .A(n176), .B(n210), .C(\fifo[9][0] ), .D(n176), .Z(n584) );
  NR2 U296 ( .A(n177), .B(n200), .Z(n179) );
  EO1 U297 ( .A(n179), .B(n201), .C(\fifo[8][8] ), .D(n179), .Z(n585) );
  IVP U298 ( .A(n179), .Z(n178) );
  AO2 U299 ( .A(n179), .B(n202), .C(n304), .D(n178), .Z(n586) );
  AO2 U300 ( .A(n179), .B(n203), .C(n310), .D(n178), .Z(n587) );
  AO2 U301 ( .A(n179), .B(n204), .C(n316), .D(n178), .Z(n588) );
  AO2 U302 ( .A(n179), .B(n205), .C(n322), .D(n178), .Z(n589) );
  AO2 U303 ( .A(n179), .B(n206), .C(n498), .D(n178), .Z(n590) );
  AO2 U304 ( .A(n179), .B(n208), .C(n504), .D(n178), .Z(n591) );
  EO1 U305 ( .A(n179), .B(n209), .C(\fifo[8][1] ), .D(n179), .Z(n592) );
  EO1 U306 ( .A(n179), .B(n210), .C(\fifo[8][0] ), .D(n179), .Z(n593) );
  AO6 U307 ( .A(n180), .B(n255), .C(n183), .Z(n197) );
  NR2 U308 ( .A(n185), .B(n197), .Z(n182) );
  EO1 U309 ( .A(n182), .B(n201), .C(\fifo[7][8] ), .D(n182), .Z(n594) );
  IVP U310 ( .A(n182), .Z(n181) );
  AO2 U311 ( .A(n182), .B(n202), .C(n307), .D(n181), .Z(n595) );
  AO2 U312 ( .A(n182), .B(n203), .C(n313), .D(n181), .Z(n596) );
  AO2 U313 ( .A(n182), .B(n204), .C(n277), .D(n181), .Z(n597) );
  AO2 U314 ( .A(n182), .B(n205), .C(n283), .D(n181), .Z(n598) );
  AO2 U315 ( .A(n182), .B(n206), .C(n289), .D(n181), .Z(n599) );
  AO2 U316 ( .A(n182), .B(n208), .C(n295), .D(n181), .Z(n600) );
  EO1 U317 ( .A(n182), .B(n209), .C(\fifo[7][1] ), .D(n182), .Z(n601) );
  EO1 U318 ( .A(n182), .B(n210), .C(\fifo[7][0] ), .D(n182), .Z(n602) );
  AO6 U319 ( .A(n184), .B(n255), .C(n183), .Z(n199) );
  NR2 U320 ( .A(n185), .B(n199), .Z(n187) );
  EO1 U321 ( .A(n187), .B(n201), .C(\fifo[6][8] ), .D(n187), .Z(n603) );
  IVP U322 ( .A(n187), .Z(n186) );
  AO2 U323 ( .A(n187), .B(n202), .C(n306), .D(n186), .Z(n604) );
  AO2 U324 ( .A(n187), .B(n203), .C(n312), .D(n186), .Z(n605) );
  AO2 U325 ( .A(n187), .B(n204), .C(n318), .D(n186), .Z(n606) );
  AO2 U326 ( .A(n187), .B(n205), .C(n494), .D(n186), .Z(n607) );
  AO2 U327 ( .A(n187), .B(n206), .C(n500), .D(n186), .Z(n608) );
  AO2 U328 ( .A(n187), .B(n208), .C(n506), .D(n186), .Z(n609) );
  AO2 U329 ( .A(n187), .B(n209), .C(n297), .D(n186), .Z(n610) );
  AO2 U330 ( .A(n187), .B(n210), .C(n299), .D(n186), .Z(n611) );
  NR2 U331 ( .A(n190), .B(n197), .Z(n189) );
  EO1 U332 ( .A(n189), .B(n201), .C(\fifo[5][8] ), .D(n189), .Z(n612) );
  IVP U333 ( .A(n189), .Z(n188) );
  AO2 U334 ( .A(n189), .B(n202), .C(n264), .D(n188), .Z(n613) );
  AO2 U335 ( .A(n189), .B(n203), .C(n270), .D(n188), .Z(n614) );
  AO2 U336 ( .A(n189), .B(n204), .C(n276), .D(n188), .Z(n615) );
  AO2 U337 ( .A(n189), .B(n205), .C(n282), .D(n188), .Z(n616) );
  AO2 U338 ( .A(n189), .B(n206), .C(n288), .D(n188), .Z(n617) );
  AO2 U339 ( .A(n189), .B(n208), .C(n294), .D(n188), .Z(n618) );
  EO1 U340 ( .A(n189), .B(n209), .C(\fifo[5][1] ), .D(n189), .Z(n619) );
  EO1 U341 ( .A(n189), .B(n210), .C(\fifo[5][0] ), .D(n189), .Z(n620) );
  NR2 U342 ( .A(n190), .B(n199), .Z(n192) );
  EO1 U343 ( .A(n192), .B(n201), .C(\fifo[4][8] ), .D(n192), .Z(n621) );
  IVP U344 ( .A(n192), .Z(n191) );
  AO2 U345 ( .A(n192), .B(n202), .C(n263), .D(n191), .Z(n622) );
  AO2 U346 ( .A(n192), .B(n203), .C(n269), .D(n191), .Z(n623) );
  AO2 U347 ( .A(n192), .B(n204), .C(n275), .D(n191), .Z(n624) );
  AO2 U348 ( .A(n192), .B(n205), .C(n281), .D(n191), .Z(n625) );
  AO2 U349 ( .A(n192), .B(n206), .C(n287), .D(n191), .Z(n626) );
  AO2 U350 ( .A(n192), .B(n208), .C(n293), .D(n191), .Z(n627) );
  AO2 U351 ( .A(n192), .B(n209), .C(n509), .D(n191), .Z(n628) );
  AO2 U352 ( .A(n192), .B(n210), .C(n511), .D(n191), .Z(n629) );
  NR2 U353 ( .A(n195), .B(n197), .Z(n194) );
  EO1 U354 ( .A(n194), .B(n201), .C(\fifo[3][8] ), .D(n194), .Z(n630) );
  IVP U355 ( .A(n194), .Z(n193) );
  AO2 U356 ( .A(n194), .B(n202), .C(n305), .D(n193), .Z(n631) );
  AO2 U357 ( .A(n194), .B(n203), .C(n311), .D(n193), .Z(n632) );
  AO2 U358 ( .A(n194), .B(n204), .C(n317), .D(n193), .Z(n633) );
  AO2 U359 ( .A(n194), .B(n205), .C(n323), .D(n193), .Z(n634) );
  AO2 U360 ( .A(n194), .B(n206), .C(n499), .D(n193), .Z(n635) );
  AO2 U361 ( .A(n194), .B(n208), .C(n505), .D(n193), .Z(n636) );
  EO1 U362 ( .A(n194), .B(n209), .C(\fifo[3][1] ), .D(n194), .Z(n637) );
  EO1 U363 ( .A(n194), .B(n210), .C(\fifo[3][0] ), .D(n194), .Z(n638) );
  NR2 U364 ( .A(n195), .B(n199), .Z(n196) );
  EO1 U365 ( .A(n196), .B(n201), .C(\fifo[2][8] ), .D(n196), .Z(n639) );
  EO1 U366 ( .A(n196), .B(n202), .C(\fifo[2][7] ), .D(n196), .Z(n640) );
  EO1 U367 ( .A(n196), .B(n203), .C(\fifo[2][6] ), .D(n196), .Z(n641) );
  EO1 U368 ( .A(n196), .B(n204), .C(\fifo[2][5] ), .D(n196), .Z(n642) );
  EO1 U369 ( .A(n196), .B(n205), .C(\fifo[2][4] ), .D(n196), .Z(n643) );
  EO1 U370 ( .A(n196), .B(n206), .C(\fifo[2][3] ), .D(n196), .Z(n644) );
  EO1 U371 ( .A(n196), .B(n208), .C(\fifo[2][2] ), .D(n196), .Z(n645) );
  EO1 U372 ( .A(n196), .B(n209), .C(\fifo[2][1] ), .D(n196), .Z(n646) );
  EO1 U373 ( .A(n196), .B(n210), .C(\fifo[2][0] ), .D(n196), .Z(n647) );
  NR2 U374 ( .A(n200), .B(n197), .Z(n198) );
  EO1 U375 ( .A(n198), .B(n201), .C(\fifo[1][8] ), .D(n198), .Z(n648) );
  EO1 U376 ( .A(n198), .B(n202), .C(\fifo[1][7] ), .D(n198), .Z(n649) );
  EO1 U377 ( .A(n198), .B(n203), .C(\fifo[1][6] ), .D(n198), .Z(n650) );
  EO1 U378 ( .A(n198), .B(n204), .C(\fifo[1][5] ), .D(n198), .Z(n651) );
  EO1 U379 ( .A(n198), .B(n205), .C(\fifo[1][4] ), .D(n198), .Z(n652) );
  EO1 U380 ( .A(n198), .B(n206), .C(\fifo[1][3] ), .D(n198), .Z(n653) );
  EO1 U381 ( .A(n198), .B(n208), .C(\fifo[1][2] ), .D(n198), .Z(n654) );
  EO1 U382 ( .A(n198), .B(n209), .C(\fifo[1][1] ), .D(n198), .Z(n655) );
  EO1 U383 ( .A(n198), .B(n210), .C(\fifo[1][0] ), .D(n198), .Z(n656) );
  NR2 U384 ( .A(n200), .B(n199), .Z(n211) );
  EO1 U385 ( .A(n211), .B(n201), .C(\fifo[0][8] ), .D(n211), .Z(n657) );
  IVP U386 ( .A(n211), .Z(n207) );
  AO2 U387 ( .A(n211), .B(n202), .C(n265), .D(n207), .Z(n658) );
  AO2 U388 ( .A(n211), .B(n203), .C(n271), .D(n207), .Z(n659) );
  AO2 U389 ( .A(n211), .B(n204), .C(n319), .D(n207), .Z(n660) );
  AO2 U390 ( .A(n211), .B(n205), .C(n495), .D(n207), .Z(n661) );
  AO2 U391 ( .A(n211), .B(n206), .C(n501), .D(n207), .Z(n662) );
  AO2 U392 ( .A(n211), .B(n208), .C(n507), .D(n207), .Z(n663) );
  EO1 U393 ( .A(n211), .B(n209), .C(\fifo[0][1] ), .D(n211), .Z(n671) );
  EO1 U394 ( .A(n211), .B(n210), .C(\fifo[0][0] ), .D(n211), .Z(n672) );
  AO4 U395 ( .A(n224), .B(n508), .C(n223), .D(n296), .Z(n221) );
  AO2 U396 ( .A(n233), .B(\fifo[10][1] ), .C(n235), .D(\fifo[9][1] ), .Z(n214)
         );
  AO2 U397 ( .A(n226), .B(\fifo[12][1] ), .C(n225), .D(\fifo[14][1] ), .Z(n213) );
  AO2 U398 ( .A(n232), .B(\fifo[13][1] ), .C(n237), .D(\fifo[8][1] ), .Z(n212)
         );
  ND4 U399 ( .A(read_ptr[3]), .B(n214), .C(n213), .D(n212), .Z(n220) );
  AO4 U400 ( .A(n231), .B(n509), .C(n230), .D(n297), .Z(n219) );
  AO2 U401 ( .A(n233), .B(\fifo[2][1] ), .C(n232), .D(\fifo[5][1] ), .Z(n217)
         );
  AO2 U402 ( .A(n235), .B(\fifo[1][1] ), .C(n234), .D(\fifo[3][1] ), .Z(n216)
         );
  AO2 U403 ( .A(n237), .B(\fifo[0][1] ), .C(n236), .D(\fifo[7][1] ), .Z(n215)
         );
  ND4 U404 ( .A(n217), .B(n216), .C(n215), .D(n252), .Z(n218) );
  AO4 U405 ( .A(n221), .B(n220), .C(n219), .D(n218), .Z(n222) );
  EON1 U406 ( .A(n247), .B(n222), .C(n245), .D(N246), .Z(n679) );
  AO4 U407 ( .A(n224), .B(n510), .C(n223), .D(n298), .Z(n244) );
  AO2 U408 ( .A(n233), .B(\fifo[10][0] ), .C(n235), .D(\fifo[9][0] ), .Z(n229)
         );
  AO2 U409 ( .A(n226), .B(\fifo[12][0] ), .C(n225), .D(\fifo[14][0] ), .Z(n228) );
  AO2 U410 ( .A(n232), .B(\fifo[13][0] ), .C(n237), .D(\fifo[8][0] ), .Z(n227)
         );
  ND4 U411 ( .A(read_ptr[3]), .B(n229), .C(n228), .D(n227), .Z(n243) );
  AO4 U412 ( .A(n231), .B(n511), .C(n230), .D(n299), .Z(n242) );
  AO2 U413 ( .A(n233), .B(\fifo[2][0] ), .C(n232), .D(\fifo[5][0] ), .Z(n240)
         );
  AO2 U414 ( .A(n235), .B(\fifo[1][0] ), .C(n234), .D(\fifo[3][0] ), .Z(n239)
         );
  AO2 U415 ( .A(n237), .B(\fifo[0][0] ), .C(n236), .D(\fifo[7][0] ), .Z(n238)
         );
  ND4 U416 ( .A(n240), .B(n239), .C(n238), .D(n252), .Z(n241) );
  AO4 U417 ( .A(n244), .B(n243), .C(n242), .D(n241), .Z(n246) );
  EON1 U418 ( .A(n247), .B(n246), .C(n245), .D(N249), .Z(n680) );
  NR2 U419 ( .A(n248), .B(N250), .Z(n250) );
  EON1 U420 ( .A(n250), .B(n249), .C(soft_reset), .D(resetn), .Z(n681) );
endmodule


module router_fifo_1 ( clock, resetn, write_enb, soft_reset, read_enb, data_in, 
        lfd_state, empty, data_out, full );
  input [7:0] data_in;
  output [7:0] data_out;
  input clock, resetn, write_enb, soft_reset, read_enb, lfd_state;
  output empty, full;
  wire   lfd_state_temp, N33, \fifo[15][8] , \fifo[14][8] , \fifo[14][1] ,
         \fifo[14][0] , \fifo[13][8] , \fifo[13][1] , \fifo[13][0] ,
         \fifo[12][8] , \fifo[12][1] , \fifo[12][0] , \fifo[11][8] ,
         \fifo[10][8] , \fifo[10][7] , \fifo[10][6] , \fifo[10][5] ,
         \fifo[10][4] , \fifo[10][3] , \fifo[10][2] , \fifo[10][1] ,
         \fifo[10][0] , \fifo[9][8] , \fifo[9][7] , \fifo[9][6] , \fifo[9][5] ,
         \fifo[9][4] , \fifo[9][3] , \fifo[9][2] , \fifo[9][1] , \fifo[9][0] ,
         \fifo[8][8] , \fifo[8][1] , \fifo[8][0] , \fifo[7][8] , \fifo[7][1] ,
         \fifo[7][0] , \fifo[6][8] , \fifo[5][8] , \fifo[5][1] , \fifo[5][0] ,
         \fifo[4][8] , \fifo[3][8] , \fifo[3][1] , \fifo[3][0] , \fifo[2][8] ,
         \fifo[2][7] , \fifo[2][6] , \fifo[2][5] , \fifo[2][4] , \fifo[2][3] ,
         \fifo[2][2] , \fifo[2][1] , \fifo[2][0] , \fifo[1][8] , \fifo[1][7] ,
         \fifo[1][6] , \fifo[1][5] , \fifo[1][4] , \fifo[1][3] , \fifo[1][2] ,
         \fifo[1][1] , \fifo[1][0] , \fifo[0][8] , \fifo[0][1] , \fifo[0][0] ,
         N228, N231, N234, N237, N240, N243, N246, N249, N250, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233, n234,
         n235, n236, n237, n238, n239, n240, n241, n242, n243, n244, n245,
         n246, n247, n248, n249, n250, n251, n252, n253, n254, n255, n256,
         n257, n258, n259, n260, n261, n262, n263, n264, n265, n266, n267,
         n268, n269, n270, n271, n272, n273, n274, n275, n276, n277, n278,
         n279, n280, n281, n282, n283, n284, n285, n286, n287, n288, n289,
         n290, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n494, n495, n496, n497, n498, n499, n500, n501, n502, n503,
         n504, n505, n506, n507, n508, n509, n510, n511, n512, n513, n514,
         n515, n516, n517, n518, n519, n520, n521, n522, n523, n524, n525,
         n526, n527, n528, n529, n530, n531, n532, n533, n534, n535, n536,
         n537, n538, n539, n540, n541, n542, n543, n544, n545, n546, n547,
         n548, n549, n550, n551, n552, n553, n554, n555, n556, n557, n558,
         n559, n560, n561, n562, n563, n564, n565, n566, n567, n568, n569,
         n570, n571, n572, n573, n574, n575, n576, n577, n578, n579, n580,
         n581, n582, n583, n584, n585, n586, n587, n588, n589, n590, n591,
         n592, n593, n594, n595, n596, n597, n598, n599, n600, n601, n602,
         n603, n604, n605, n606, n607, n608, n609, n610, n611, n612, n613,
         n614, n615, n616, n617, n618, n619, n620, n621, n622, n623, n624,
         n625, n626, n627, n628, n629, n630, n631, n632, n633, n634, n635,
         n636, n637, n638, n639, n640, n641, n642, n643, n644, n645, n646,
         n647, n648, n649, n650, n651, n652, n653, n654, n655, n656, n657,
         n658, n659, n660, n661, n662, n663, n664, n665, n666, n667, n668,
         n669, n670, n671, n672, n673, n674, n675, n676, n677, n678, n679,
         n680, n681;
  wire   [4:0] write_ptr;
  wire   [4:0] read_ptr;
  wire   [6:0] counter;
  tri   [7:0] data_out;

  FD1 lfd_state_temp_reg ( .D(N33), .CP(clock), .Q(lfd_state_temp) );
  FD1 \read_ptr_reg[0]  ( .D(n512), .CP(clock), .Q(read_ptr[0]), .QN(n253) );
  FD1 \read_ptr_reg[1]  ( .D(n513), .CP(clock), .Q(read_ptr[1]), .QN(n259) );
  FD1 \read_ptr_reg[2]  ( .D(n515), .CP(clock), .Q(read_ptr[2]), .QN(n256) );
  FD1 \read_ptr_reg[3]  ( .D(n516), .CP(clock), .Q(read_ptr[3]), .QN(n252) );
  FD1 \read_ptr_reg[4]  ( .D(n517), .CP(clock), .Q(read_ptr[4]) );
  FD1 \write_ptr_reg[0]  ( .D(n514), .CP(clock), .Q(write_ptr[0]), .QN(n257)
         );
  FD1 \write_ptr_reg[1]  ( .D(n518), .CP(clock), .Q(write_ptr[1]), .QN(n254)
         );
  FD1 \write_ptr_reg[2]  ( .D(n519), .CP(clock), .Q(write_ptr[2]), .QN(n251)
         );
  FD1 \write_ptr_reg[3]  ( .D(n520), .CP(clock), .Q(write_ptr[3]), .QN(n255)
         );
  FD1 \write_ptr_reg[4]  ( .D(n521), .CP(clock), .Q(write_ptr[4]), .QN(n258)
         );
  FD1 \fifo_reg[15][8]  ( .D(n522), .CP(clock), .Q(\fifo[15][8] ) );
  FD1 \fifo_reg[15][7]  ( .D(n523), .CP(clock), .QN(n262) );
  FD1 \fifo_reg[15][6]  ( .D(n524), .CP(clock), .QN(n268) );
  FD1 \fifo_reg[15][5]  ( .D(n525), .CP(clock), .QN(n274) );
  FD1 \fifo_reg[15][4]  ( .D(n526), .CP(clock), .QN(n280) );
  FD1 \fifo_reg[15][3]  ( .D(n527), .CP(clock), .QN(n286) );
  FD1 \fifo_reg[15][2]  ( .D(n528), .CP(clock), .QN(n292) );
  FD1 \fifo_reg[15][1]  ( .D(n529), .CP(clock), .QN(n296) );
  FD1 \fifo_reg[15][0]  ( .D(n530), .CP(clock), .QN(n298) );
  FD1 \fifo_reg[14][8]  ( .D(n531), .CP(clock), .Q(\fifo[14][8] ) );
  FD1 \fifo_reg[14][7]  ( .D(n532), .CP(clock), .QN(n303) );
  FD1 \fifo_reg[14][6]  ( .D(n533), .CP(clock), .QN(n309) );
  FD1 \fifo_reg[14][5]  ( .D(n534), .CP(clock), .QN(n315) );
  FD1 \fifo_reg[14][4]  ( .D(n535), .CP(clock), .QN(n321) );
  FD1 \fifo_reg[14][3]  ( .D(n536), .CP(clock), .QN(n497) );
  FD1 \fifo_reg[14][2]  ( .D(n537), .CP(clock), .QN(n503) );
  FD1 \fifo_reg[14][1]  ( .D(n538), .CP(clock), .Q(\fifo[14][1] ) );
  FD1 \fifo_reg[14][0]  ( .D(n539), .CP(clock), .Q(\fifo[14][0] ) );
  FD1 \fifo_reg[13][8]  ( .D(n540), .CP(clock), .Q(\fifo[13][8] ) );
  FD1 \fifo_reg[13][7]  ( .D(n541), .CP(clock), .QN(n261) );
  FD1 \fifo_reg[13][6]  ( .D(n542), .CP(clock), .QN(n267) );
  FD1 \fifo_reg[13][5]  ( .D(n543), .CP(clock), .QN(n273) );
  FD1 \fifo_reg[13][4]  ( .D(n544), .CP(clock), .QN(n279) );
  FD1 \fifo_reg[13][3]  ( .D(n545), .CP(clock), .QN(n285) );
  FD1 \fifo_reg[13][2]  ( .D(n546), .CP(clock), .QN(n291) );
  FD1 \fifo_reg[13][1]  ( .D(n547), .CP(clock), .Q(\fifo[13][1] ) );
  FD1 \fifo_reg[13][0]  ( .D(n548), .CP(clock), .Q(\fifo[13][0] ) );
  FD1 \fifo_reg[12][8]  ( .D(n549), .CP(clock), .Q(\fifo[12][8] ) );
  FD1 \fifo_reg[12][7]  ( .D(n550), .CP(clock), .QN(n260) );
  FD1 \fifo_reg[12][6]  ( .D(n551), .CP(clock), .QN(n266) );
  FD1 \fifo_reg[12][5]  ( .D(n552), .CP(clock), .QN(n272) );
  FD1 \fifo_reg[12][4]  ( .D(n553), .CP(clock), .QN(n278) );
  FD1 \fifo_reg[12][3]  ( .D(n554), .CP(clock), .QN(n284) );
  FD1 \fifo_reg[12][2]  ( .D(n555), .CP(clock), .QN(n290) );
  FD1 \fifo_reg[12][1]  ( .D(n556), .CP(clock), .Q(\fifo[12][1] ) );
  FD1 \fifo_reg[12][0]  ( .D(n557), .CP(clock), .Q(\fifo[12][0] ) );
  FD1 \fifo_reg[11][8]  ( .D(n558), .CP(clock), .Q(\fifo[11][8] ) );
  FD1 \fifo_reg[11][7]  ( .D(n559), .CP(clock), .QN(n302) );
  FD1 \fifo_reg[11][6]  ( .D(n560), .CP(clock), .QN(n308) );
  FD1 \fifo_reg[11][5]  ( .D(n561), .CP(clock), .QN(n314) );
  FD1 \fifo_reg[11][4]  ( .D(n562), .CP(clock), .QN(n320) );
  FD1 \fifo_reg[11][3]  ( .D(n563), .CP(clock), .QN(n496) );
  FD1 \fifo_reg[11][2]  ( .D(n564), .CP(clock), .QN(n502) );
  FD1 \fifo_reg[11][1]  ( .D(n565), .CP(clock), .QN(n508) );
  FD1 \fifo_reg[11][0]  ( .D(n566), .CP(clock), .QN(n510) );
  FD1 \fifo_reg[10][8]  ( .D(n567), .CP(clock), .Q(\fifo[10][8] ) );
  FD1 \fifo_reg[10][7]  ( .D(n568), .CP(clock), .Q(\fifo[10][7] ) );
  FD1 \fifo_reg[10][6]  ( .D(n569), .CP(clock), .Q(\fifo[10][6] ) );
  FD1 \fifo_reg[10][5]  ( .D(n570), .CP(clock), .Q(\fifo[10][5] ) );
  FD1 \fifo_reg[10][4]  ( .D(n571), .CP(clock), .Q(\fifo[10][4] ) );
  FD1 \fifo_reg[10][3]  ( .D(n572), .CP(clock), .Q(\fifo[10][3] ) );
  FD1 \fifo_reg[10][2]  ( .D(n573), .CP(clock), .Q(\fifo[10][2] ) );
  FD1 \fifo_reg[10][1]  ( .D(n574), .CP(clock), .Q(\fifo[10][1] ) );
  FD1 \fifo_reg[10][0]  ( .D(n575), .CP(clock), .Q(\fifo[10][0] ) );
  FD1 \fifo_reg[9][8]  ( .D(n576), .CP(clock), .Q(\fifo[9][8] ) );
  FD1 \fifo_reg[9][7]  ( .D(n577), .CP(clock), .Q(\fifo[9][7] ) );
  FD1 \fifo_reg[9][6]  ( .D(n578), .CP(clock), .Q(\fifo[9][6] ) );
  FD1 \fifo_reg[9][5]  ( .D(n579), .CP(clock), .Q(\fifo[9][5] ) );
  FD1 \fifo_reg[9][4]  ( .D(n580), .CP(clock), .Q(\fifo[9][4] ) );
  FD1 \fifo_reg[9][3]  ( .D(n581), .CP(clock), .Q(\fifo[9][3] ) );
  FD1 \fifo_reg[9][2]  ( .D(n582), .CP(clock), .Q(\fifo[9][2] ) );
  FD1 \fifo_reg[9][1]  ( .D(n583), .CP(clock), .Q(\fifo[9][1] ) );
  FD1 \fifo_reg[9][0]  ( .D(n584), .CP(clock), .Q(\fifo[9][0] ) );
  FD1 \fifo_reg[8][8]  ( .D(n585), .CP(clock), .Q(\fifo[8][8] ) );
  FD1 \fifo_reg[8][7]  ( .D(n586), .CP(clock), .QN(n304) );
  FD1 \fifo_reg[8][6]  ( .D(n587), .CP(clock), .QN(n310) );
  FD1 \fifo_reg[8][5]  ( .D(n588), .CP(clock), .QN(n316) );
  FD1 \fifo_reg[8][4]  ( .D(n589), .CP(clock), .QN(n322) );
  FD1 \fifo_reg[8][3]  ( .D(n590), .CP(clock), .QN(n498) );
  FD1 \fifo_reg[8][2]  ( .D(n591), .CP(clock), .QN(n504) );
  FD1 \fifo_reg[8][1]  ( .D(n592), .CP(clock), .Q(\fifo[8][1] ) );
  FD1 \fifo_reg[8][0]  ( .D(n593), .CP(clock), .Q(\fifo[8][0] ) );
  FD1 \fifo_reg[7][8]  ( .D(n594), .CP(clock), .Q(\fifo[7][8] ) );
  FD1 \fifo_reg[7][7]  ( .D(n595), .CP(clock), .QN(n307) );
  FD1 \fifo_reg[7][6]  ( .D(n596), .CP(clock), .QN(n313) );
  FD1 \fifo_reg[7][5]  ( .D(n597), .CP(clock), .QN(n277) );
  FD1 \fifo_reg[7][4]  ( .D(n598), .CP(clock), .QN(n283) );
  FD1 \fifo_reg[7][3]  ( .D(n599), .CP(clock), .QN(n289) );
  FD1 \fifo_reg[7][2]  ( .D(n600), .CP(clock), .QN(n295) );
  FD1 \fifo_reg[7][1]  ( .D(n601), .CP(clock), .Q(\fifo[7][1] ) );
  FD1 \fifo_reg[7][0]  ( .D(n602), .CP(clock), .Q(\fifo[7][0] ) );
  FD1 \fifo_reg[6][8]  ( .D(n603), .CP(clock), .Q(\fifo[6][8] ) );
  FD1 \fifo_reg[6][7]  ( .D(n604), .CP(clock), .QN(n306) );
  FD1 \fifo_reg[6][6]  ( .D(n605), .CP(clock), .QN(n312) );
  FD1 \fifo_reg[6][5]  ( .D(n606), .CP(clock), .QN(n318) );
  FD1 \fifo_reg[6][4]  ( .D(n607), .CP(clock), .QN(n494) );
  FD1 \fifo_reg[6][3]  ( .D(n608), .CP(clock), .QN(n500) );
  FD1 \fifo_reg[6][2]  ( .D(n609), .CP(clock), .QN(n506) );
  FD1 \fifo_reg[6][1]  ( .D(n610), .CP(clock), .QN(n297) );
  FD1 \fifo_reg[6][0]  ( .D(n611), .CP(clock), .QN(n299) );
  FD1 \fifo_reg[5][8]  ( .D(n612), .CP(clock), .Q(\fifo[5][8] ) );
  FD1 \fifo_reg[5][7]  ( .D(n613), .CP(clock), .QN(n264) );
  FD1 \fifo_reg[5][6]  ( .D(n614), .CP(clock), .QN(n270) );
  FD1 \fifo_reg[5][5]  ( .D(n615), .CP(clock), .QN(n276) );
  FD1 \fifo_reg[5][4]  ( .D(n616), .CP(clock), .QN(n282) );
  FD1 \fifo_reg[5][3]  ( .D(n617), .CP(clock), .QN(n288) );
  FD1 \fifo_reg[5][2]  ( .D(n618), .CP(clock), .QN(n294) );
  FD1 \fifo_reg[5][1]  ( .D(n619), .CP(clock), .Q(\fifo[5][1] ) );
  FD1 \fifo_reg[5][0]  ( .D(n620), .CP(clock), .Q(\fifo[5][0] ) );
  FD1 \fifo_reg[4][8]  ( .D(n621), .CP(clock), .Q(\fifo[4][8] ) );
  FD1 \fifo_reg[4][7]  ( .D(n622), .CP(clock), .QN(n263) );
  FD1 \fifo_reg[4][6]  ( .D(n623), .CP(clock), .QN(n269) );
  FD1 \fifo_reg[4][5]  ( .D(n624), .CP(clock), .QN(n275) );
  FD1 \fifo_reg[4][4]  ( .D(n625), .CP(clock), .QN(n281) );
  FD1 \fifo_reg[4][3]  ( .D(n626), .CP(clock), .QN(n287) );
  FD1 \fifo_reg[4][2]  ( .D(n627), .CP(clock), .QN(n293) );
  FD1 \fifo_reg[4][1]  ( .D(n628), .CP(clock), .QN(n509) );
  FD1 \fifo_reg[4][0]  ( .D(n629), .CP(clock), .QN(n511) );
  FD1 \fifo_reg[3][8]  ( .D(n630), .CP(clock), .Q(\fifo[3][8] ) );
  FD1 \fifo_reg[3][7]  ( .D(n631), .CP(clock), .QN(n305) );
  FD1 \fifo_reg[3][6]  ( .D(n632), .CP(clock), .QN(n311) );
  FD1 \fifo_reg[3][5]  ( .D(n633), .CP(clock), .QN(n317) );
  FD1 \fifo_reg[3][4]  ( .D(n634), .CP(clock), .QN(n323) );
  FD1 \fifo_reg[3][3]  ( .D(n635), .CP(clock), .QN(n499) );
  FD1 \fifo_reg[3][2]  ( .D(n636), .CP(clock), .QN(n505) );
  FD1 \fifo_reg[3][1]  ( .D(n637), .CP(clock), .Q(\fifo[3][1] ) );
  FD1 \fifo_reg[3][0]  ( .D(n638), .CP(clock), .Q(\fifo[3][0] ) );
  FD1 \fifo_reg[2][8]  ( .D(n639), .CP(clock), .Q(\fifo[2][8] ) );
  FD1 \fifo_reg[2][7]  ( .D(n640), .CP(clock), .Q(\fifo[2][7] ) );
  FD1 \fifo_reg[2][6]  ( .D(n641), .CP(clock), .Q(\fifo[2][6] ) );
  FD1 \fifo_reg[2][5]  ( .D(n642), .CP(clock), .Q(\fifo[2][5] ) );
  FD1 \fifo_reg[2][4]  ( .D(n643), .CP(clock), .Q(\fifo[2][4] ) );
  FD1 \fifo_reg[2][3]  ( .D(n644), .CP(clock), .Q(\fifo[2][3] ) );
  FD1 \fifo_reg[2][2]  ( .D(n645), .CP(clock), .Q(\fifo[2][2] ) );
  FD1 \fifo_reg[2][1]  ( .D(n646), .CP(clock), .Q(\fifo[2][1] ) );
  FD1 \fifo_reg[2][0]  ( .D(n647), .CP(clock), .Q(\fifo[2][0] ) );
  FD1 \fifo_reg[1][8]  ( .D(n648), .CP(clock), .Q(\fifo[1][8] ) );
  FD1 \fifo_reg[1][7]  ( .D(n649), .CP(clock), .Q(\fifo[1][7] ) );
  FD1 \fifo_reg[1][6]  ( .D(n650), .CP(clock), .Q(\fifo[1][6] ) );
  FD1 \fifo_reg[1][5]  ( .D(n651), .CP(clock), .Q(\fifo[1][5] ) );
  FD1 \fifo_reg[1][4]  ( .D(n652), .CP(clock), .Q(\fifo[1][4] ) );
  FD1 \fifo_reg[1][3]  ( .D(n653), .CP(clock), .Q(\fifo[1][3] ) );
  FD1 \fifo_reg[1][2]  ( .D(n654), .CP(clock), .Q(\fifo[1][2] ) );
  FD1 \fifo_reg[1][1]  ( .D(n655), .CP(clock), .Q(\fifo[1][1] ) );
  FD1 \fifo_reg[1][0]  ( .D(n656), .CP(clock), .Q(\fifo[1][0] ) );
  FD1 \fifo_reg[0][8]  ( .D(n657), .CP(clock), .Q(\fifo[0][8] ) );
  FD1 \counter_reg[6]  ( .D(n664), .CP(clock), .Q(counter[6]), .QN(n300) );
  FD1 \counter_reg[0]  ( .D(n665), .CP(clock), .Q(counter[0]) );
  FD1 \counter_reg[5]  ( .D(n666), .CP(clock), .Q(counter[5]) );
  FD1 \counter_reg[4]  ( .D(n667), .CP(clock), .Q(counter[4]) );
  FD1 \counter_reg[3]  ( .D(n668), .CP(clock), .Q(counter[3]) );
  FD1 \counter_reg[2]  ( .D(n669), .CP(clock), .Q(counter[2]) );
  FD1 \counter_reg[1]  ( .D(n670), .CP(clock), .Q(counter[1]) );
  FD1 \fifo_reg[0][7]  ( .D(n658), .CP(clock), .QN(n265) );
  FD1 \fifo_reg[0][6]  ( .D(n659), .CP(clock), .QN(n271) );
  FD1 \fifo_reg[0][5]  ( .D(n660), .CP(clock), .QN(n319) );
  FD1 \fifo_reg[0][4]  ( .D(n661), .CP(clock), .QN(n495) );
  FD1 \fifo_reg[0][3]  ( .D(n662), .CP(clock), .QN(n501) );
  FD1 \fifo_reg[0][2]  ( .D(n663), .CP(clock), .QN(n507) );
  FD1 \fifo_reg[0][1]  ( .D(n671), .CP(clock), .Q(\fifo[0][1] ) );
  FD1 \fifo_reg[0][0]  ( .D(n672), .CP(clock), .Q(\fifo[0][0] ) );
  FD1 \data_out_reg[7]  ( .D(n673), .CP(clock), .Q(N228) );
  FD1 \data_out_reg[6]  ( .D(n674), .CP(clock), .Q(N231) );
  FD1 \data_out_reg[5]  ( .D(n675), .CP(clock), .Q(N234) );
  FD1 \data_out_reg[4]  ( .D(n676), .CP(clock), .Q(N237) );
  FD1 \data_out_reg[3]  ( .D(n677), .CP(clock), .Q(N240) );
  FD1 \data_out_reg[2]  ( .D(n678), .CP(clock), .Q(N243) );
  FD1 \data_out_reg[1]  ( .D(n679), .CP(clock), .Q(N246) );
  FD1 \data_out_reg[0]  ( .D(n680), .CP(clock), .Q(N249) );
  FD1 \data_out_tri_enable_reg[0]  ( .D(n681), .CP(clock), .Q(N250), .QN(n301)
         );
  BTS4 \data_out_tri[0]  ( .A(N249), .E(n301), .Z(data_out[0]) );
  BTS4 \data_out_tri[1]  ( .A(N246), .E(n301), .Z(data_out[1]) );
  BTS4 \data_out_tri[2]  ( .A(N243), .E(n301), .Z(data_out[2]) );
  BTS4 \data_out_tri[3]  ( .A(N240), .E(n301), .Z(data_out[3]) );
  BTS4 \data_out_tri[4]  ( .A(N237), .E(n301), .Z(data_out[4]) );
  BTS4 \data_out_tri[5]  ( .A(N234), .E(n301), .Z(data_out[5]) );
  BTS4 \data_out_tri[6]  ( .A(N231), .E(n301), .Z(data_out[6]) );
  BTS4 \data_out_tri[7]  ( .A(N228), .E(n301), .Z(data_out[7]) );
  EON1 U3 ( .A(write_ptr[4]), .B(read_ptr[4]), .C(read_ptr[4]), .D(
        write_ptr[4]), .Z(n5) );
  AO2 U4 ( .A(read_ptr[3]), .B(n255), .C(write_ptr[3]), .D(n252), .Z(n4) );
  AO2 U5 ( .A(read_ptr[2]), .B(n251), .C(write_ptr[2]), .D(n256), .Z(n3) );
  AO2 U6 ( .A(read_ptr[0]), .B(n257), .C(write_ptr[0]), .D(n253), .Z(n2) );
  AO2 U7 ( .A(read_ptr[1]), .B(n254), .C(write_ptr[1]), .D(n259), .Z(n1) );
  ND4 U8 ( .A(n4), .B(n3), .C(n2), .D(n1), .Z(n6) );
  NR2 U9 ( .A(n5), .B(n6), .Z(full) );
  IVP U10 ( .A(n5), .Z(n7) );
  NR2 U11 ( .A(n7), .B(n6), .Z(empty) );
  ND2 U12 ( .A(n253), .B(n259), .Z(n8) );
  NR2 U13 ( .A(read_ptr[2]), .B(n8), .Z(n237) );
  ND2 U14 ( .A(read_ptr[0]), .B(read_ptr[1]), .Z(n140) );
  NR2 U15 ( .A(n256), .B(n140), .Z(n236) );
  AO2 U16 ( .A(n237), .B(\fifo[8][8] ), .C(n236), .D(\fifo[15][8] ), .Z(n11)
         );
  ND2 U17 ( .A(read_ptr[1]), .B(n253), .Z(n12) );
  NR2 U18 ( .A(n256), .B(n12), .Z(n225) );
  ND2 U19 ( .A(read_ptr[0]), .B(n259), .Z(n13) );
  NR2 U20 ( .A(n256), .B(n13), .Z(n232) );
  AO2 U21 ( .A(n225), .B(\fifo[14][8] ), .C(n232), .D(\fifo[13][8] ), .Z(n10)
         );
  NR2 U22 ( .A(read_ptr[2]), .B(n140), .Z(n234) );
  NR2 U23 ( .A(n256), .B(n8), .Z(n226) );
  AO2 U24 ( .A(n234), .B(\fifo[11][8] ), .C(n226), .D(\fifo[12][8] ), .Z(n9)
         );
  AN4P U25 ( .A(n11), .B(n10), .C(read_ptr[3]), .D(n9), .Z(n20) );
  NR2 U26 ( .A(read_ptr[2]), .B(n12), .Z(n233) );
  NR2 U27 ( .A(read_ptr[2]), .B(n13), .Z(n235) );
  AO2 U28 ( .A(n233), .B(\fifo[10][8] ), .C(n235), .D(\fifo[9][8] ), .Z(n19)
         );
  AO2 U29 ( .A(n237), .B(\fifo[0][8] ), .C(n236), .D(\fifo[7][8] ), .Z(n16) );
  AO2 U30 ( .A(n225), .B(\fifo[6][8] ), .C(n232), .D(\fifo[5][8] ), .Z(n15) );
  AO2 U31 ( .A(n234), .B(\fifo[3][8] ), .C(n226), .D(\fifo[4][8] ), .Z(n14) );
  AN4P U32 ( .A(n16), .B(n15), .C(n14), .D(n252), .Z(n18) );
  AO2 U33 ( .A(n233), .B(\fifo[2][8] ), .C(n235), .D(\fifo[1][8] ), .Z(n17) );
  AO2 U34 ( .A(n20), .B(n19), .C(n18), .D(n17), .Z(n91) );
  NR3 U35 ( .A(counter[6]), .B(counter[1]), .C(counter[2]), .Z(n22) );
  NR4 U36 ( .A(counter[3]), .B(counter[4]), .C(counter[5]), .D(counter[0]), 
        .Z(n21) );
  ND2 U37 ( .A(n22), .B(n21), .Z(n122) );
  IVP U38 ( .A(resetn), .Z(n160) );
  NR2 U39 ( .A(soft_reset), .B(n160), .Z(n159) );
  IVP U40 ( .A(empty), .Z(n23) );
  ND2 U41 ( .A(read_enb), .B(n23), .Z(n143) );
  ND2 U42 ( .A(n159), .B(n143), .Z(n249) );
  AO7 U43 ( .A(n91), .B(n122), .C(n249), .Z(n120) );
  IVP U44 ( .A(n159), .Z(n183) );
  NR2 U45 ( .A(n143), .B(n183), .Z(n134) );
  IVP U46 ( .A(n134), .Z(n247) );
  NR2 U47 ( .A(n247), .B(n120), .Z(n119) );
  IVP U48 ( .A(n91), .Z(n117) );
  IVP U49 ( .A(n225), .Z(n230) );
  IVP U50 ( .A(n232), .Z(n83) );
  AO4 U51 ( .A(n230), .B(n303), .C(n83), .D(n261), .Z(n26) );
  IVP U52 ( .A(n237), .Z(n82) );
  IVP U53 ( .A(n236), .Z(n223) );
  AO4 U54 ( .A(n82), .B(n304), .C(n223), .D(n262), .Z(n25) );
  IVP U55 ( .A(n234), .Z(n224) );
  IVP U56 ( .A(n226), .Z(n231) );
  AO4 U57 ( .A(n224), .B(n302), .C(n231), .D(n260), .Z(n24) );
  NR4 U58 ( .A(n26), .B(n25), .C(n24), .D(n252), .Z(n33) );
  AO2 U59 ( .A(n233), .B(\fifo[10][7] ), .C(n235), .D(\fifo[9][7] ), .Z(n32)
         );
  AO4 U60 ( .A(n82), .B(n265), .C(n223), .D(n307), .Z(n29) );
  AO4 U61 ( .A(n230), .B(n306), .C(n83), .D(n264), .Z(n28) );
  AO4 U62 ( .A(n224), .B(n305), .C(n231), .D(n263), .Z(n27) );
  NR4 U63 ( .A(read_ptr[3]), .B(n29), .C(n28), .D(n27), .Z(n31) );
  AO2 U64 ( .A(n233), .B(\fifo[2][7] ), .C(n235), .D(\fifo[1][7] ), .Z(n30) );
  AO2 U65 ( .A(n33), .B(n32), .C(n31), .D(n30), .Z(n123) );
  AO2 U66 ( .A(n91), .B(n123), .C(n117), .D(counter[5]), .Z(n34) );
  IVP U67 ( .A(n34), .Z(n100) );
  AO4 U68 ( .A(n230), .B(n309), .C(n83), .D(n267), .Z(n37) );
  AO4 U69 ( .A(n82), .B(n310), .C(n223), .D(n268), .Z(n36) );
  AO4 U70 ( .A(n224), .B(n308), .C(n231), .D(n266), .Z(n35) );
  NR4 U71 ( .A(n37), .B(n36), .C(n35), .D(n252), .Z(n44) );
  AO2 U72 ( .A(n233), .B(\fifo[10][6] ), .C(n235), .D(\fifo[9][6] ), .Z(n43)
         );
  AO4 U73 ( .A(n82), .B(n271), .C(n223), .D(n313), .Z(n40) );
  AO4 U74 ( .A(n230), .B(n312), .C(n83), .D(n270), .Z(n39) );
  AO4 U75 ( .A(n224), .B(n311), .C(n231), .D(n269), .Z(n38) );
  NR4 U76 ( .A(read_ptr[3]), .B(n40), .C(n39), .D(n38), .Z(n42) );
  AO2 U77 ( .A(n233), .B(\fifo[2][6] ), .C(n235), .D(\fifo[1][6] ), .Z(n41) );
  AO2 U78 ( .A(n44), .B(n43), .C(n42), .D(n41), .Z(n125) );
  AO2 U79 ( .A(n91), .B(n125), .C(n117), .D(counter[4]), .Z(n45) );
  IVP U80 ( .A(n45), .Z(n104) );
  AO4 U81 ( .A(n230), .B(n315), .C(n83), .D(n273), .Z(n48) );
  AO4 U82 ( .A(n82), .B(n316), .C(n223), .D(n274), .Z(n47) );
  AO4 U83 ( .A(n224), .B(n314), .C(n231), .D(n272), .Z(n46) );
  NR4 U84 ( .A(n48), .B(n47), .C(n46), .D(n252), .Z(n55) );
  AO2 U85 ( .A(n233), .B(\fifo[10][5] ), .C(n235), .D(\fifo[9][5] ), .Z(n54)
         );
  AO4 U86 ( .A(n82), .B(n319), .C(n223), .D(n277), .Z(n51) );
  AO4 U87 ( .A(n230), .B(n318), .C(n83), .D(n276), .Z(n50) );
  AO4 U88 ( .A(n224), .B(n317), .C(n231), .D(n275), .Z(n49) );
  NR4 U89 ( .A(read_ptr[3]), .B(n51), .C(n50), .D(n49), .Z(n53) );
  AO2 U90 ( .A(n233), .B(\fifo[2][5] ), .C(n235), .D(\fifo[1][5] ), .Z(n52) );
  AO2 U91 ( .A(n55), .B(n54), .C(n53), .D(n52), .Z(n127) );
  AO2 U92 ( .A(n91), .B(n127), .C(n117), .D(counter[3]), .Z(n56) );
  IVP U93 ( .A(n56), .Z(n108) );
  AO4 U94 ( .A(n230), .B(n321), .C(n83), .D(n279), .Z(n59) );
  AO4 U95 ( .A(n82), .B(n322), .C(n223), .D(n280), .Z(n58) );
  AO4 U96 ( .A(n224), .B(n320), .C(n231), .D(n278), .Z(n57) );
  NR4 U97 ( .A(n59), .B(n58), .C(n57), .D(n252), .Z(n66) );
  AO2 U98 ( .A(n233), .B(\fifo[10][4] ), .C(n235), .D(\fifo[9][4] ), .Z(n65)
         );
  AO4 U99 ( .A(n82), .B(n495), .C(n223), .D(n283), .Z(n62) );
  AO4 U100 ( .A(n230), .B(n494), .C(n83), .D(n282), .Z(n61) );
  AO4 U101 ( .A(n224), .B(n323), .C(n231), .D(n281), .Z(n60) );
  NR4 U102 ( .A(read_ptr[3]), .B(n62), .C(n61), .D(n60), .Z(n64) );
  AO2 U103 ( .A(n233), .B(\fifo[2][4] ), .C(n235), .D(\fifo[1][4] ), .Z(n63)
         );
  AO2 U104 ( .A(n66), .B(n65), .C(n64), .D(n63), .Z(n129) );
  AO2 U105 ( .A(n91), .B(n129), .C(n117), .D(counter[2]), .Z(n67) );
  IVP U106 ( .A(n67), .Z(n112) );
  AO4 U107 ( .A(n230), .B(n497), .C(n83), .D(n285), .Z(n70) );
  AO4 U108 ( .A(n82), .B(n498), .C(n223), .D(n286), .Z(n69) );
  AO4 U109 ( .A(n224), .B(n496), .C(n231), .D(n284), .Z(n68) );
  NR4 U110 ( .A(n70), .B(n69), .C(n68), .D(n252), .Z(n77) );
  AO2 U111 ( .A(n233), .B(\fifo[10][3] ), .C(n235), .D(\fifo[9][3] ), .Z(n76)
         );
  AO4 U112 ( .A(n82), .B(n501), .C(n223), .D(n289), .Z(n73) );
  AO4 U113 ( .A(n230), .B(n500), .C(n83), .D(n288), .Z(n72) );
  AO4 U114 ( .A(n224), .B(n499), .C(n231), .D(n287), .Z(n71) );
  NR4 U115 ( .A(read_ptr[3]), .B(n73), .C(n72), .D(n71), .Z(n75) );
  AO2 U116 ( .A(n233), .B(\fifo[2][3] ), .C(n235), .D(\fifo[1][3] ), .Z(n74)
         );
  AO2 U117 ( .A(n77), .B(n76), .C(n75), .D(n74), .Z(n131) );
  AO2 U118 ( .A(n91), .B(n131), .C(n117), .D(counter[1]), .Z(n78) );
  IVP U119 ( .A(n78), .Z(n116) );
  AO4 U120 ( .A(n230), .B(n503), .C(n83), .D(n291), .Z(n81) );
  AO4 U121 ( .A(n82), .B(n504), .C(n223), .D(n292), .Z(n80) );
  AO4 U122 ( .A(n224), .B(n502), .C(n231), .D(n290), .Z(n79) );
  NR4 U123 ( .A(n81), .B(n80), .C(n79), .D(n252), .Z(n90) );
  AO2 U124 ( .A(n233), .B(\fifo[10][2] ), .C(n235), .D(\fifo[9][2] ), .Z(n89)
         );
  AO4 U125 ( .A(n82), .B(n507), .C(n223), .D(n295), .Z(n86) );
  AO4 U126 ( .A(n230), .B(n506), .C(n83), .D(n294), .Z(n85) );
  AO4 U127 ( .A(n224), .B(n505), .C(n231), .D(n293), .Z(n84) );
  NR4 U128 ( .A(read_ptr[3]), .B(n86), .C(n85), .D(n84), .Z(n88) );
  AO2 U129 ( .A(n233), .B(\fifo[2][2] ), .C(n235), .D(\fifo[1][2] ), .Z(n87)
         );
  AO2 U130 ( .A(n90), .B(n89), .C(n88), .D(n87), .Z(n133) );
  AO2 U131 ( .A(n91), .B(n133), .C(n117), .D(counter[0]), .Z(n97) );
  IVP U132 ( .A(n97), .Z(n115) );
  NR2 U133 ( .A(n91), .B(n300), .Z(n92) );
  EO U134 ( .A(n117), .B(n92), .Z(n93) );
  EO U135 ( .A(n94), .B(n93), .Z(n95) );
  AO2 U136 ( .A(counter[6]), .B(n120), .C(n119), .D(n95), .Z(n96) );
  IVP U137 ( .A(n96), .Z(n664) );
  AO2 U138 ( .A(counter[0]), .B(n120), .C(n119), .D(n97), .Z(n98) );
  IVP U139 ( .A(n98), .Z(n665) );
  FA1A U140 ( .A(n117), .B(n100), .CI(n99), .CO(n94), .S(n101) );
  AO2 U141 ( .A(counter[5]), .B(n120), .C(n119), .D(n101), .Z(n102) );
  IVP U142 ( .A(n102), .Z(n666) );
  FA1A U143 ( .A(n117), .B(n104), .CI(n103), .CO(n99), .S(n105) );
  AO2 U144 ( .A(counter[4]), .B(n120), .C(n119), .D(n105), .Z(n106) );
  IVP U145 ( .A(n106), .Z(n667) );
  FA1A U146 ( .A(n117), .B(n108), .CI(n107), .CO(n103), .S(n109) );
  AO2 U147 ( .A(counter[3]), .B(n120), .C(n119), .D(n109), .Z(n110) );
  IVP U148 ( .A(n110), .Z(n668) );
  FA1A U149 ( .A(n117), .B(n112), .CI(n111), .CO(n107), .S(n113) );
  AO2 U150 ( .A(counter[2]), .B(n120), .C(n119), .D(n113), .Z(n114) );
  IVP U151 ( .A(n114), .Z(n669) );
  FA1A U152 ( .A(n117), .B(n116), .CI(n115), .CO(n111), .S(n118) );
  AO2 U153 ( .A(counter[1]), .B(n120), .C(n119), .D(n118), .Z(n121) );
  IVP U154 ( .A(n121), .Z(n670) );
  IVP U155 ( .A(n122), .Z(n248) );
  NR2 U156 ( .A(n249), .B(n248), .Z(n245) );
  AO2 U157 ( .A(n134), .B(n123), .C(n245), .D(N228), .Z(n124) );
  IVP U158 ( .A(n124), .Z(n673) );
  AO2 U159 ( .A(n134), .B(n125), .C(n245), .D(N231), .Z(n126) );
  IVP U160 ( .A(n126), .Z(n674) );
  AO2 U161 ( .A(n134), .B(n127), .C(n245), .D(N234), .Z(n128) );
  IVP U162 ( .A(n128), .Z(n675) );
  AO2 U163 ( .A(n134), .B(n129), .C(n245), .D(N237), .Z(n130) );
  IVP U164 ( .A(n130), .Z(n676) );
  AO2 U165 ( .A(n134), .B(n131), .C(n245), .D(N240), .Z(n132) );
  IVP U166 ( .A(n132), .Z(n677) );
  AO2 U167 ( .A(n134), .B(n133), .C(n245), .D(N243), .Z(n135) );
  IVP U168 ( .A(n135), .Z(n678) );
  AN2P U169 ( .A(n159), .B(lfd_state), .Z(N33) );
  AO2 U170 ( .A(read_ptr[0]), .B(n249), .C(n247), .D(n253), .Z(n512) );
  NR2 U171 ( .A(n143), .B(n253), .Z(n137) );
  NR2 U172 ( .A(read_ptr[1]), .B(n137), .Z(n136) );
  AO1P U173 ( .A(read_ptr[1]), .B(n137), .C(n183), .D(n136), .Z(n513) );
  IVP U174 ( .A(write_enb), .Z(n138) );
  NR2 U175 ( .A(full), .B(n138), .Z(n158) );
  NR2 U176 ( .A(write_ptr[0]), .B(n158), .Z(n139) );
  AO1P U177 ( .A(write_ptr[0]), .B(n158), .C(n183), .D(n139), .Z(n514) );
  NR2 U178 ( .A(n143), .B(n140), .Z(n142) );
  NR2 U179 ( .A(read_ptr[2]), .B(n142), .Z(n141) );
  AO1P U180 ( .A(read_ptr[2]), .B(n142), .C(n183), .D(n141), .Z(n515) );
  OR2P U181 ( .A(n143), .B(n223), .Z(n144) );
  NR2 U182 ( .A(n252), .B(n144), .Z(n146) );
  AO1P U183 ( .A(n252), .B(n144), .C(n146), .D(n183), .Z(n516) );
  NR2 U184 ( .A(read_ptr[4]), .B(n146), .Z(n145) );
  AO1P U185 ( .A(read_ptr[4]), .B(n146), .C(n183), .D(n145), .Z(n517) );
  AN2P U186 ( .A(write_ptr[0]), .B(n158), .Z(n148) );
  NR2 U187 ( .A(write_ptr[1]), .B(n148), .Z(n147) );
  AO1P U188 ( .A(write_ptr[1]), .B(n148), .C(n183), .D(n147), .Z(n518) );
  NR2 U189 ( .A(n251), .B(n254), .Z(n157) );
  AN2P U190 ( .A(write_ptr[0]), .B(n157), .Z(n152) );
  NR2 U191 ( .A(write_ptr[2]), .B(write_ptr[1]), .Z(n174) );
  AO1P U192 ( .A(n251), .B(n257), .C(n152), .D(n174), .Z(n149) );
  IVP U193 ( .A(n149), .Z(n151) );
  NR2 U194 ( .A(write_ptr[2]), .B(n158), .Z(n150) );
  AO1P U195 ( .A(n158), .B(n151), .C(n183), .D(n150), .Z(n519) );
  ND2 U196 ( .A(n158), .B(n152), .Z(n153) );
  NR2 U197 ( .A(n255), .B(n153), .Z(n154) );
  AO1P U198 ( .A(n255), .B(n153), .C(n154), .D(n183), .Z(n520) );
  IVP U199 ( .A(n154), .Z(n156) );
  NR2 U200 ( .A(n258), .B(n156), .Z(n155) );
  AO1P U201 ( .A(n258), .B(n156), .C(n183), .D(n155), .Z(n521) );
  NR2 U202 ( .A(n157), .B(n183), .Z(n185) );
  ND2 U203 ( .A(n159), .B(n158), .Z(n164) );
  NR2 U204 ( .A(n257), .B(n164), .Z(n180) );
  AO1P U205 ( .A(write_ptr[3]), .B(n180), .C(soft_reset), .D(n160), .Z(n175)
         );
  NR2 U206 ( .A(n185), .B(n175), .Z(n163) );
  IVP U207 ( .A(n164), .Z(n161) );
  ND2 U208 ( .A(n161), .B(lfd_state_temp), .Z(n201) );
  EO1 U209 ( .A(n163), .B(n201), .C(\fifo[15][8] ), .D(n163), .Z(n522) );
  ND2 U210 ( .A(n161), .B(data_in[7]), .Z(n202) );
  IVP U211 ( .A(n163), .Z(n162) );
  AO2 U212 ( .A(n163), .B(n202), .C(n262), .D(n162), .Z(n523) );
  ND2 U213 ( .A(n161), .B(data_in[6]), .Z(n203) );
  AO2 U214 ( .A(n163), .B(n203), .C(n268), .D(n162), .Z(n524) );
  ND2 U215 ( .A(n161), .B(data_in[5]), .Z(n204) );
  AO2 U216 ( .A(n163), .B(n204), .C(n274), .D(n162), .Z(n525) );
  ND2 U217 ( .A(n161), .B(data_in[4]), .Z(n205) );
  AO2 U218 ( .A(n163), .B(n205), .C(n280), .D(n162), .Z(n526) );
  ND2 U219 ( .A(n161), .B(data_in[3]), .Z(n206) );
  AO2 U220 ( .A(n163), .B(n206), .C(n286), .D(n162), .Z(n527) );
  ND2 U221 ( .A(n161), .B(data_in[2]), .Z(n208) );
  AO2 U222 ( .A(n163), .B(n208), .C(n292), .D(n162), .Z(n528) );
  ND2 U223 ( .A(n161), .B(data_in[1]), .Z(n209) );
  AO2 U224 ( .A(n163), .B(n209), .C(n296), .D(n162), .Z(n529) );
  ND2 U225 ( .A(n161), .B(data_in[0]), .Z(n210) );
  AO2 U226 ( .A(n163), .B(n210), .C(n298), .D(n162), .Z(n530) );
  NR2 U227 ( .A(write_ptr[0]), .B(n164), .Z(n184) );
  AO6 U228 ( .A(write_ptr[3]), .B(n184), .C(n183), .Z(n177) );
  NR2 U229 ( .A(n185), .B(n177), .Z(n166) );
  EO1 U230 ( .A(n166), .B(n201), .C(\fifo[14][8] ), .D(n166), .Z(n531) );
  IVP U231 ( .A(n166), .Z(n165) );
  AO2 U232 ( .A(n166), .B(n202), .C(n303), .D(n165), .Z(n532) );
  AO2 U233 ( .A(n166), .B(n203), .C(n309), .D(n165), .Z(n533) );
  AO2 U234 ( .A(n166), .B(n204), .C(n315), .D(n165), .Z(n534) );
  AO2 U235 ( .A(n166), .B(n205), .C(n321), .D(n165), .Z(n535) );
  AO2 U236 ( .A(n166), .B(n206), .C(n497), .D(n165), .Z(n536) );
  AO2 U237 ( .A(n166), .B(n208), .C(n503), .D(n165), .Z(n537) );
  EO1 U238 ( .A(n166), .B(n209), .C(\fifo[14][1] ), .D(n166), .Z(n538) );
  EO1 U239 ( .A(n166), .B(n210), .C(\fifo[14][0] ), .D(n166), .Z(n539) );
  AO6 U240 ( .A(write_ptr[2]), .B(n254), .C(n183), .Z(n190) );
  NR2 U241 ( .A(n175), .B(n190), .Z(n168) );
  EO1 U242 ( .A(n168), .B(n201), .C(\fifo[13][8] ), .D(n168), .Z(n540) );
  IVP U243 ( .A(n168), .Z(n167) );
  AO2 U244 ( .A(n168), .B(n202), .C(n261), .D(n167), .Z(n541) );
  AO2 U245 ( .A(n168), .B(n203), .C(n267), .D(n167), .Z(n542) );
  AO2 U246 ( .A(n168), .B(n204), .C(n273), .D(n167), .Z(n543) );
  AO2 U247 ( .A(n168), .B(n205), .C(n279), .D(n167), .Z(n544) );
  AO2 U248 ( .A(n168), .B(n206), .C(n285), .D(n167), .Z(n545) );
  AO2 U249 ( .A(n168), .B(n208), .C(n291), .D(n167), .Z(n546) );
  EO1 U250 ( .A(n168), .B(n209), .C(\fifo[13][1] ), .D(n168), .Z(n547) );
  EO1 U251 ( .A(n168), .B(n210), .C(\fifo[13][0] ), .D(n168), .Z(n548) );
  NR2 U252 ( .A(n177), .B(n190), .Z(n170) );
  EO1 U253 ( .A(n170), .B(n201), .C(\fifo[12][8] ), .D(n170), .Z(n549) );
  IVP U254 ( .A(n170), .Z(n169) );
  AO2 U255 ( .A(n170), .B(n202), .C(n260), .D(n169), .Z(n550) );
  AO2 U256 ( .A(n170), .B(n203), .C(n266), .D(n169), .Z(n551) );
  AO2 U257 ( .A(n170), .B(n204), .C(n272), .D(n169), .Z(n552) );
  AO2 U258 ( .A(n170), .B(n205), .C(n278), .D(n169), .Z(n553) );
  AO2 U259 ( .A(n170), .B(n206), .C(n284), .D(n169), .Z(n554) );
  AO2 U260 ( .A(n170), .B(n208), .C(n290), .D(n169), .Z(n555) );
  EO1 U261 ( .A(n170), .B(n209), .C(\fifo[12][1] ), .D(n170), .Z(n556) );
  EO1 U262 ( .A(n170), .B(n210), .C(\fifo[12][0] ), .D(n170), .Z(n557) );
  AO6 U263 ( .A(write_ptr[1]), .B(n251), .C(n183), .Z(n195) );
  NR2 U264 ( .A(n175), .B(n195), .Z(n172) );
  EO1 U265 ( .A(n172), .B(n201), .C(\fifo[11][8] ), .D(n172), .Z(n558) );
  IVP U266 ( .A(n172), .Z(n171) );
  AO2 U267 ( .A(n172), .B(n202), .C(n302), .D(n171), .Z(n559) );
  AO2 U268 ( .A(n172), .B(n203), .C(n308), .D(n171), .Z(n560) );
  AO2 U269 ( .A(n172), .B(n204), .C(n314), .D(n171), .Z(n561) );
  AO2 U270 ( .A(n172), .B(n205), .C(n320), .D(n171), .Z(n562) );
  AO2 U271 ( .A(n172), .B(n206), .C(n496), .D(n171), .Z(n563) );
  AO2 U272 ( .A(n172), .B(n208), .C(n502), .D(n171), .Z(n564) );
  AO2 U273 ( .A(n172), .B(n209), .C(n508), .D(n171), .Z(n565) );
  AO2 U274 ( .A(n172), .B(n210), .C(n510), .D(n171), .Z(n566) );
  NR2 U275 ( .A(n177), .B(n195), .Z(n173) );
  EO1 U276 ( .A(n173), .B(n201), .C(\fifo[10][8] ), .D(n173), .Z(n567) );
  EO1 U277 ( .A(n173), .B(n202), .C(\fifo[10][7] ), .D(n173), .Z(n568) );
  EO1 U278 ( .A(n173), .B(n203), .C(\fifo[10][6] ), .D(n173), .Z(n569) );
  EO1 U279 ( .A(n173), .B(n204), .C(\fifo[10][5] ), .D(n173), .Z(n570) );
  EO1 U280 ( .A(n173), .B(n205), .C(\fifo[10][4] ), .D(n173), .Z(n571) );
  EO1 U281 ( .A(n173), .B(n206), .C(\fifo[10][3] ), .D(n173), .Z(n572) );
  EO1 U282 ( .A(n173), .B(n208), .C(\fifo[10][2] ), .D(n173), .Z(n573) );
  EO1 U283 ( .A(n173), .B(n209), .C(\fifo[10][1] ), .D(n173), .Z(n574) );
  EO1 U284 ( .A(n173), .B(n210), .C(\fifo[10][0] ), .D(n173), .Z(n575) );
  NR2 U285 ( .A(n174), .B(n183), .Z(n200) );
  NR2 U286 ( .A(n175), .B(n200), .Z(n176) );
  EO1 U287 ( .A(n176), .B(n201), .C(\fifo[9][8] ), .D(n176), .Z(n576) );
  EO1 U288 ( .A(n176), .B(n202), .C(\fifo[9][7] ), .D(n176), .Z(n577) );
  EO1 U289 ( .A(n176), .B(n203), .C(\fifo[9][6] ), .D(n176), .Z(n578) );
  EO1 U290 ( .A(n176), .B(n204), .C(\fifo[9][5] ), .D(n176), .Z(n579) );
  EO1 U291 ( .A(n176), .B(n205), .C(\fifo[9][4] ), .D(n176), .Z(n580) );
  EO1 U292 ( .A(n176), .B(n206), .C(\fifo[9][3] ), .D(n176), .Z(n581) );
  EO1 U293 ( .A(n176), .B(n208), .C(\fifo[9][2] ), .D(n176), .Z(n582) );
  EO1 U294 ( .A(n176), .B(n209), .C(\fifo[9][1] ), .D(n176), .Z(n583) );
  EO1 U295 ( .A(n176), .B(n210), .C(\fifo[9][0] ), .D(n176), .Z(n584) );
  NR2 U296 ( .A(n177), .B(n200), .Z(n179) );
  EO1 U297 ( .A(n179), .B(n201), .C(\fifo[8][8] ), .D(n179), .Z(n585) );
  IVP U298 ( .A(n179), .Z(n178) );
  AO2 U299 ( .A(n179), .B(n202), .C(n304), .D(n178), .Z(n586) );
  AO2 U300 ( .A(n179), .B(n203), .C(n310), .D(n178), .Z(n587) );
  AO2 U301 ( .A(n179), .B(n204), .C(n316), .D(n178), .Z(n588) );
  AO2 U302 ( .A(n179), .B(n205), .C(n322), .D(n178), .Z(n589) );
  AO2 U303 ( .A(n179), .B(n206), .C(n498), .D(n178), .Z(n590) );
  AO2 U304 ( .A(n179), .B(n208), .C(n504), .D(n178), .Z(n591) );
  EO1 U305 ( .A(n179), .B(n209), .C(\fifo[8][1] ), .D(n179), .Z(n592) );
  EO1 U306 ( .A(n179), .B(n210), .C(\fifo[8][0] ), .D(n179), .Z(n593) );
  AO6 U307 ( .A(n180), .B(n255), .C(n183), .Z(n197) );
  NR2 U308 ( .A(n185), .B(n197), .Z(n182) );
  EO1 U309 ( .A(n182), .B(n201), .C(\fifo[7][8] ), .D(n182), .Z(n594) );
  IVP U310 ( .A(n182), .Z(n181) );
  AO2 U311 ( .A(n182), .B(n202), .C(n307), .D(n181), .Z(n595) );
  AO2 U312 ( .A(n182), .B(n203), .C(n313), .D(n181), .Z(n596) );
  AO2 U313 ( .A(n182), .B(n204), .C(n277), .D(n181), .Z(n597) );
  AO2 U314 ( .A(n182), .B(n205), .C(n283), .D(n181), .Z(n598) );
  AO2 U315 ( .A(n182), .B(n206), .C(n289), .D(n181), .Z(n599) );
  AO2 U316 ( .A(n182), .B(n208), .C(n295), .D(n181), .Z(n600) );
  EO1 U317 ( .A(n182), .B(n209), .C(\fifo[7][1] ), .D(n182), .Z(n601) );
  EO1 U318 ( .A(n182), .B(n210), .C(\fifo[7][0] ), .D(n182), .Z(n602) );
  AO6 U319 ( .A(n184), .B(n255), .C(n183), .Z(n199) );
  NR2 U320 ( .A(n185), .B(n199), .Z(n187) );
  EO1 U321 ( .A(n187), .B(n201), .C(\fifo[6][8] ), .D(n187), .Z(n603) );
  IVP U322 ( .A(n187), .Z(n186) );
  AO2 U323 ( .A(n187), .B(n202), .C(n306), .D(n186), .Z(n604) );
  AO2 U324 ( .A(n187), .B(n203), .C(n312), .D(n186), .Z(n605) );
  AO2 U325 ( .A(n187), .B(n204), .C(n318), .D(n186), .Z(n606) );
  AO2 U326 ( .A(n187), .B(n205), .C(n494), .D(n186), .Z(n607) );
  AO2 U327 ( .A(n187), .B(n206), .C(n500), .D(n186), .Z(n608) );
  AO2 U328 ( .A(n187), .B(n208), .C(n506), .D(n186), .Z(n609) );
  AO2 U329 ( .A(n187), .B(n209), .C(n297), .D(n186), .Z(n610) );
  AO2 U330 ( .A(n187), .B(n210), .C(n299), .D(n186), .Z(n611) );
  NR2 U331 ( .A(n190), .B(n197), .Z(n189) );
  EO1 U332 ( .A(n189), .B(n201), .C(\fifo[5][8] ), .D(n189), .Z(n612) );
  IVP U333 ( .A(n189), .Z(n188) );
  AO2 U334 ( .A(n189), .B(n202), .C(n264), .D(n188), .Z(n613) );
  AO2 U335 ( .A(n189), .B(n203), .C(n270), .D(n188), .Z(n614) );
  AO2 U336 ( .A(n189), .B(n204), .C(n276), .D(n188), .Z(n615) );
  AO2 U337 ( .A(n189), .B(n205), .C(n282), .D(n188), .Z(n616) );
  AO2 U338 ( .A(n189), .B(n206), .C(n288), .D(n188), .Z(n617) );
  AO2 U339 ( .A(n189), .B(n208), .C(n294), .D(n188), .Z(n618) );
  EO1 U340 ( .A(n189), .B(n209), .C(\fifo[5][1] ), .D(n189), .Z(n619) );
  EO1 U341 ( .A(n189), .B(n210), .C(\fifo[5][0] ), .D(n189), .Z(n620) );
  NR2 U342 ( .A(n190), .B(n199), .Z(n192) );
  EO1 U343 ( .A(n192), .B(n201), .C(\fifo[4][8] ), .D(n192), .Z(n621) );
  IVP U344 ( .A(n192), .Z(n191) );
  AO2 U345 ( .A(n192), .B(n202), .C(n263), .D(n191), .Z(n622) );
  AO2 U346 ( .A(n192), .B(n203), .C(n269), .D(n191), .Z(n623) );
  AO2 U347 ( .A(n192), .B(n204), .C(n275), .D(n191), .Z(n624) );
  AO2 U348 ( .A(n192), .B(n205), .C(n281), .D(n191), .Z(n625) );
  AO2 U349 ( .A(n192), .B(n206), .C(n287), .D(n191), .Z(n626) );
  AO2 U350 ( .A(n192), .B(n208), .C(n293), .D(n191), .Z(n627) );
  AO2 U351 ( .A(n192), .B(n209), .C(n509), .D(n191), .Z(n628) );
  AO2 U352 ( .A(n192), .B(n210), .C(n511), .D(n191), .Z(n629) );
  NR2 U353 ( .A(n195), .B(n197), .Z(n194) );
  EO1 U354 ( .A(n194), .B(n201), .C(\fifo[3][8] ), .D(n194), .Z(n630) );
  IVP U355 ( .A(n194), .Z(n193) );
  AO2 U356 ( .A(n194), .B(n202), .C(n305), .D(n193), .Z(n631) );
  AO2 U357 ( .A(n194), .B(n203), .C(n311), .D(n193), .Z(n632) );
  AO2 U358 ( .A(n194), .B(n204), .C(n317), .D(n193), .Z(n633) );
  AO2 U359 ( .A(n194), .B(n205), .C(n323), .D(n193), .Z(n634) );
  AO2 U360 ( .A(n194), .B(n206), .C(n499), .D(n193), .Z(n635) );
  AO2 U361 ( .A(n194), .B(n208), .C(n505), .D(n193), .Z(n636) );
  EO1 U362 ( .A(n194), .B(n209), .C(\fifo[3][1] ), .D(n194), .Z(n637) );
  EO1 U363 ( .A(n194), .B(n210), .C(\fifo[3][0] ), .D(n194), .Z(n638) );
  NR2 U364 ( .A(n195), .B(n199), .Z(n196) );
  EO1 U365 ( .A(n196), .B(n201), .C(\fifo[2][8] ), .D(n196), .Z(n639) );
  EO1 U366 ( .A(n196), .B(n202), .C(\fifo[2][7] ), .D(n196), .Z(n640) );
  EO1 U367 ( .A(n196), .B(n203), .C(\fifo[2][6] ), .D(n196), .Z(n641) );
  EO1 U368 ( .A(n196), .B(n204), .C(\fifo[2][5] ), .D(n196), .Z(n642) );
  EO1 U369 ( .A(n196), .B(n205), .C(\fifo[2][4] ), .D(n196), .Z(n643) );
  EO1 U370 ( .A(n196), .B(n206), .C(\fifo[2][3] ), .D(n196), .Z(n644) );
  EO1 U371 ( .A(n196), .B(n208), .C(\fifo[2][2] ), .D(n196), .Z(n645) );
  EO1 U372 ( .A(n196), .B(n209), .C(\fifo[2][1] ), .D(n196), .Z(n646) );
  EO1 U373 ( .A(n196), .B(n210), .C(\fifo[2][0] ), .D(n196), .Z(n647) );
  NR2 U374 ( .A(n200), .B(n197), .Z(n198) );
  EO1 U375 ( .A(n198), .B(n201), .C(\fifo[1][8] ), .D(n198), .Z(n648) );
  EO1 U376 ( .A(n198), .B(n202), .C(\fifo[1][7] ), .D(n198), .Z(n649) );
  EO1 U377 ( .A(n198), .B(n203), .C(\fifo[1][6] ), .D(n198), .Z(n650) );
  EO1 U378 ( .A(n198), .B(n204), .C(\fifo[1][5] ), .D(n198), .Z(n651) );
  EO1 U379 ( .A(n198), .B(n205), .C(\fifo[1][4] ), .D(n198), .Z(n652) );
  EO1 U380 ( .A(n198), .B(n206), .C(\fifo[1][3] ), .D(n198), .Z(n653) );
  EO1 U381 ( .A(n198), .B(n208), .C(\fifo[1][2] ), .D(n198), .Z(n654) );
  EO1 U382 ( .A(n198), .B(n209), .C(\fifo[1][1] ), .D(n198), .Z(n655) );
  EO1 U383 ( .A(n198), .B(n210), .C(\fifo[1][0] ), .D(n198), .Z(n656) );
  NR2 U384 ( .A(n200), .B(n199), .Z(n211) );
  EO1 U385 ( .A(n211), .B(n201), .C(\fifo[0][8] ), .D(n211), .Z(n657) );
  IVP U386 ( .A(n211), .Z(n207) );
  AO2 U387 ( .A(n211), .B(n202), .C(n265), .D(n207), .Z(n658) );
  AO2 U388 ( .A(n211), .B(n203), .C(n271), .D(n207), .Z(n659) );
  AO2 U389 ( .A(n211), .B(n204), .C(n319), .D(n207), .Z(n660) );
  AO2 U390 ( .A(n211), .B(n205), .C(n495), .D(n207), .Z(n661) );
  AO2 U391 ( .A(n211), .B(n206), .C(n501), .D(n207), .Z(n662) );
  AO2 U392 ( .A(n211), .B(n208), .C(n507), .D(n207), .Z(n663) );
  EO1 U393 ( .A(n211), .B(n209), .C(\fifo[0][1] ), .D(n211), .Z(n671) );
  EO1 U394 ( .A(n211), .B(n210), .C(\fifo[0][0] ), .D(n211), .Z(n672) );
  AO4 U395 ( .A(n224), .B(n508), .C(n223), .D(n296), .Z(n221) );
  AO2 U396 ( .A(n233), .B(\fifo[10][1] ), .C(n235), .D(\fifo[9][1] ), .Z(n214)
         );
  AO2 U397 ( .A(n226), .B(\fifo[12][1] ), .C(n225), .D(\fifo[14][1] ), .Z(n213) );
  AO2 U398 ( .A(n232), .B(\fifo[13][1] ), .C(n237), .D(\fifo[8][1] ), .Z(n212)
         );
  ND4 U399 ( .A(read_ptr[3]), .B(n214), .C(n213), .D(n212), .Z(n220) );
  AO4 U400 ( .A(n231), .B(n509), .C(n230), .D(n297), .Z(n219) );
  AO2 U401 ( .A(n233), .B(\fifo[2][1] ), .C(n232), .D(\fifo[5][1] ), .Z(n217)
         );
  AO2 U402 ( .A(n235), .B(\fifo[1][1] ), .C(n234), .D(\fifo[3][1] ), .Z(n216)
         );
  AO2 U403 ( .A(n237), .B(\fifo[0][1] ), .C(n236), .D(\fifo[7][1] ), .Z(n215)
         );
  ND4 U404 ( .A(n217), .B(n216), .C(n215), .D(n252), .Z(n218) );
  AO4 U405 ( .A(n221), .B(n220), .C(n219), .D(n218), .Z(n222) );
  EON1 U406 ( .A(n247), .B(n222), .C(n245), .D(N246), .Z(n679) );
  AO4 U407 ( .A(n224), .B(n510), .C(n223), .D(n298), .Z(n244) );
  AO2 U408 ( .A(n233), .B(\fifo[10][0] ), .C(n235), .D(\fifo[9][0] ), .Z(n229)
         );
  AO2 U409 ( .A(n226), .B(\fifo[12][0] ), .C(n225), .D(\fifo[14][0] ), .Z(n228) );
  AO2 U410 ( .A(n232), .B(\fifo[13][0] ), .C(n237), .D(\fifo[8][0] ), .Z(n227)
         );
  ND4 U411 ( .A(read_ptr[3]), .B(n229), .C(n228), .D(n227), .Z(n243) );
  AO4 U412 ( .A(n231), .B(n511), .C(n230), .D(n299), .Z(n242) );
  AO2 U413 ( .A(n233), .B(\fifo[2][0] ), .C(n232), .D(\fifo[5][0] ), .Z(n240)
         );
  AO2 U414 ( .A(n235), .B(\fifo[1][0] ), .C(n234), .D(\fifo[3][0] ), .Z(n239)
         );
  AO2 U415 ( .A(n237), .B(\fifo[0][0] ), .C(n236), .D(\fifo[7][0] ), .Z(n238)
         );
  ND4 U416 ( .A(n240), .B(n239), .C(n238), .D(n252), .Z(n241) );
  AO4 U417 ( .A(n244), .B(n243), .C(n242), .D(n241), .Z(n246) );
  EON1 U418 ( .A(n247), .B(n246), .C(n245), .D(N249), .Z(n680) );
  NR2 U419 ( .A(n248), .B(N250), .Z(n250) );
  EON1 U420 ( .A(n250), .B(n249), .C(soft_reset), .D(resetn), .Z(n681) );
endmodule


module router_top ( clock, resetn, pkt_valid, read_enb_0, read_enb_1, 
        read_enb_2, data_in, valid_out_0, valid_out_1, valid_out_2, err, busy, 
        data_out_0, data_out_1, data_out_2 );
  input [7:0] data_in;
  output [7:0] data_out_0;
  output [7:0] data_out_1;
  output [7:0] data_out_2;
  input clock, resetn, pkt_valid, read_enb_0, read_enb_1, read_enb_2;
  output valid_out_0, valid_out_1, valid_out_2, err, busy;
  wire   lfd_state_w, fifo_full, rst_int_reg, detect_add, ld_state, laf_state,
         full_state, parity_done, low_pkt_valid, write_enb_reg;
  wire   [2:0] w_enb;
  wire   [2:0] soft_reset;
  wire   [7:0] dout;
  wire   [2:0] empty;
  wire   [2:0] full;
  tri   [7:0] data_out_0;
  tri   [7:0] data_out_1;
  tri   [7:0] data_out_2;

  router_fifo_2 \fifo[0].f1  ( .clock(clock), .resetn(resetn), .write_enb(
        w_enb[0]), .soft_reset(soft_reset[0]), .read_enb(read_enb_0), 
        .data_in(dout), .lfd_state(lfd_state_w), .empty(empty[0]), .data_out(
        data_out_0), .full(full[0]) );
  router_fifo_1 \fifo[1].f1  ( .clock(clock), .resetn(resetn), .write_enb(
        w_enb[1]), .soft_reset(soft_reset[1]), .read_enb(read_enb_1), 
        .data_in(dout), .lfd_state(lfd_state_w), .empty(empty[1]), .data_out(
        data_out_1), .full(full[1]) );
  router_fifo_0 \fifo[2].f1  ( .clock(clock), .resetn(resetn), .write_enb(
        w_enb[2]), .soft_reset(soft_reset[2]), .read_enb(read_enb_2), 
        .data_in(dout), .lfd_state(lfd_state_w), .empty(empty[2]), .data_out(
        data_out_2), .full(full[2]) );
  router_register r1 ( .clock(clock), .resetn(resetn), .pkt_valid(pkt_valid), 
        .data_in(data_in), .fifo_full(fifo_full), .rst_int_reg(rst_int_reg), 
        .detect_add(detect_add), .ld_state(ld_state), .laf_state(laf_state), 
        .lfd_state(lfd_state_w), .full_state(full_state), .parity_done(
        parity_done), .low_pkt_valid(low_pkt_valid), .err(err), .dout(dout) );
  synchronizer sy ( .detect_add(detect_add), .write_enb_reg(write_enb_reg), 
        .clock(clock), .resetn(resetn), .read_enb_0(read_enb_0), .read_enb_1(
        read_enb_1), .read_enb_2(read_enb_2), .empty_0(empty[0]), .empty_1(
        empty[1]), .empty_2(empty[2]), .full_0(full[0]), .full_1(full[1]), 
        .full_2(full[2]), .data_in(data_in[1:0]), .vld_out_0(valid_out_0), 
        .vld_out_1(valid_out_1), .vld_out_2(valid_out_2), .write_enb(w_enb), 
        .fifo_full(fifo_full), .soft_reset_0(soft_reset[0]), .soft_reset_1(
        soft_reset[1]), .soft_reset_2(soft_reset[2]) );
  router_fsm fsm ( .clock(clock), .resetn(resetn), .parity_done(parity_done), 
        .pkt_valid(pkt_valid), .soft_reset_0(soft_reset[0]), .soft_reset_1(
        soft_reset[1]), .soft_reset_2(soft_reset[2]), .fifo_full(fifo_full), 
        .low_pkt_valid(low_pkt_valid), .fifo_empty_0(empty[0]), .fifo_empty_1(
        empty[1]), .fifo_empty_2(empty[2]), .data_in(data_in[1:0]), 
        .detect_add(detect_add), .busy(busy), .ld_state(ld_state), .laf_state(
        laf_state), .full_state(full_state), .lfd_state(lfd_state_w), 
        .write_enb_reg(write_enb_reg), .rst_int_reg(rst_int_reg) );
endmodule

