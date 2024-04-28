/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sun Apr 28 02:15:46 2024
/////////////////////////////////////////////////////////////


module main_FSM ( clka, clkb, restart, new_game, enter, solved, state, 
        gen_rand_flag, set_board_flag, set_diff_flag, row_flag, col_flag, 
        val_flag, check_flag );
  output [3:0] state;
  input clka, clkb, restart, new_game, enter, solved;
  output gen_rand_flag, set_board_flag, set_diff_flag, row_flag, col_flag,
         val_flag, check_flag;
  wire   N93, N94, N96, N151, N152, N153, N154, N155, N156, N157, n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51;
  wire   [3:0] next_state;

  DFFNEGX1 \state_reg[0]  ( .D(next_state[0]), .CLK(n51), .Q(state[0]) );
  DFFNEGX1 \next_state_reg[2]  ( .D(n4), .CLK(clka), .Q(next_state[2]) );
  DFFNEGX1 \state_reg[2]  ( .D(next_state[2]), .CLK(n51), .Q(state[2]) );
  DFFNEGX1 \next_state_reg[3]  ( .D(N96), .CLK(clka), .Q(next_state[3]) );
  DFFNEGX1 \state_reg[3]  ( .D(next_state[3]), .CLK(n51), .Q(state[3]) );
  DFFNEGX1 \next_state_reg[1]  ( .D(N94), .CLK(clka), .Q(next_state[1]) );
  DFFNEGX1 \state_reg[1]  ( .D(next_state[1]), .CLK(n51), .Q(state[1]) );
  DFFNEGX1 \next_state_reg[0]  ( .D(N93), .CLK(clka), .Q(next_state[0]) );
  DFFNEGX1 check_flag_reg ( .D(N157), .CLK(n51), .Q(check_flag) );
  DFFNEGX1 val_flag_reg ( .D(N156), .CLK(n51), .Q(val_flag) );
  DFFNEGX1 gen_rand_flag_reg ( .D(N151), .CLK(n51), .Q(gen_rand_flag) );
  DFFNEGX1 set_board_flag_reg ( .D(N152), .CLK(n51), .Q(set_board_flag) );
  DFFNEGX1 set_diff_flag_reg ( .D(N153), .CLK(n51), .Q(set_diff_flag) );
  DFFNEGX1 row_flag_reg ( .D(N154), .CLK(n51), .Q(row_flag) );
  DFFNEGX1 col_flag_reg ( .D(N155), .CLK(n51), .Q(col_flag) );
  AND2X2 U3 ( .A(n3), .B(N157), .Y(N156) );
  INVX2 U4 ( .A(next_state[3]), .Y(n1) );
  INVX2 U5 ( .A(next_state[1]), .Y(n2) );
  INVX2 U6 ( .A(next_state[0]), .Y(n3) );
  INVX2 U7 ( .A(n19), .Y(n4) );
  INVX2 U8 ( .A(n23), .Y(n5) );
  INVX2 U9 ( .A(n27), .Y(n6) );
  INVX2 U10 ( .A(state[3]), .Y(n7) );
  INVX2 U11 ( .A(state[2]), .Y(n8) );
  INVX2 U12 ( .A(state[1]), .Y(n9) );
  INVX2 U13 ( .A(state[0]), .Y(n10) );
  INVX2 U14 ( .A(new_game), .Y(n11) );
  INVX2 U15 ( .A(enter), .Y(n12) );
  INVX2 U16 ( .A(solved), .Y(n13) );
  AOI21X1 U17 ( .A(n14), .B(n11), .C(restart), .Y(N96) );
  NAND2X1 U18 ( .A(n15), .B(n16), .Y(n14) );
  OAI21X1 U19 ( .A(n7), .B(n17), .C(n18), .Y(n16) );
  NAND3X1 U20 ( .A(state[0]), .B(n7), .C(state[2]), .Y(n18) );
  OAI21X1 U21 ( .A(solved), .B(state[0]), .C(n8), .Y(n17) );
  XOR2X1 U22 ( .A(n9), .B(state[2]), .Y(n15) );
  OAI21X1 U23 ( .A(n20), .B(n21), .C(n22), .Y(n19) );
  NOR2X1 U24 ( .A(restart), .B(new_game), .Y(n22) );
  OAI22X1 U25 ( .A(n23), .B(n12), .C(n24), .D(n25), .Y(n21) );
  NAND2X1 U26 ( .A(state[3]), .B(n13), .Y(n25) );
  NAND3X1 U27 ( .A(n9), .B(n8), .C(n10), .Y(n24) );
  OAI21X1 U28 ( .A(n8), .B(n26), .C(n27), .Y(n20) );
  NOR2X1 U29 ( .A(restart), .B(n28), .Y(N94) );
  AOI21X1 U30 ( .A(n5), .B(n12), .C(n29), .Y(n28) );
  OAI21X1 U31 ( .A(state[3]), .B(n30), .C(n11), .Y(n29) );
  AOI22X1 U32 ( .A(n31), .B(enter), .C(state[1]), .D(n10), .Y(n30) );
  NOR2X1 U33 ( .A(state[1]), .B(n10), .Y(n31) );
  NOR2X1 U34 ( .A(n32), .B(n33), .Y(N93) );
  OR2X1 U35 ( .A(new_game), .B(restart), .Y(n33) );
  AOI21X1 U36 ( .A(n34), .B(n8), .C(n35), .Y(n32) );
  OAI21X1 U37 ( .A(n12), .B(n26), .C(n36), .Y(n35) );
  OAI21X1 U38 ( .A(n6), .B(n5), .C(n12), .Y(n36) );
  NAND3X1 U39 ( .A(state[1]), .B(state[0]), .C(n37), .Y(n23) );
  NOR2X1 U40 ( .A(state[3]), .B(state[2]), .Y(n37) );
  NAND3X1 U41 ( .A(state[2]), .B(state[0]), .C(n38), .Y(n27) );
  NOR2X1 U42 ( .A(state[3]), .B(state[1]), .Y(n38) );
  NAND2X1 U43 ( .A(n10), .B(n7), .Y(n26) );
  OAI21X1 U44 ( .A(state[1]), .B(n39), .C(n40), .Y(n34) );
  NAND3X1 U45 ( .A(n41), .B(n10), .C(state[1]), .Y(n40) );
  AOI21X1 U46 ( .A(state[0]), .B(state[3]), .C(n42), .Y(n39) );
  OAI21X1 U47 ( .A(state[0]), .B(n13), .C(n41), .Y(n42) );
  NAND2X1 U48 ( .A(n7), .B(n12), .Y(n41) );
  NOR2X1 U49 ( .A(n2), .B(n43), .Y(N157) );
  NOR2X1 U50 ( .A(n3), .B(n44), .Y(N155) );
  OR2X1 U51 ( .A(n43), .B(next_state[1]), .Y(n44) );
  NOR2X1 U52 ( .A(n43), .B(n45), .Y(N154) );
  NAND2X1 U53 ( .A(n3), .B(n2), .Y(n45) );
  NAND2X1 U54 ( .A(next_state[2]), .B(n1), .Y(n43) );
  NOR2X1 U55 ( .A(n46), .B(n47), .Y(N153) );
  NAND2X1 U56 ( .A(next_state[0]), .B(next_state[1]), .Y(n47) );
  NOR2X1 U57 ( .A(n46), .B(n48), .Y(N152) );
  NAND2X1 U58 ( .A(next_state[1]), .B(n3), .Y(n48) );
  NOR2X1 U59 ( .A(n46), .B(n49), .Y(N151) );
  NAND2X1 U60 ( .A(next_state[0]), .B(n2), .Y(n49) );
  OR2X1 U61 ( .A(next_state[2]), .B(next_state[3]), .Y(n46) );
  INVX1 U62 ( .A(clkb), .Y(n50) );
  INVX2 U63 ( .A(n50), .Y(n51) );
endmodule

