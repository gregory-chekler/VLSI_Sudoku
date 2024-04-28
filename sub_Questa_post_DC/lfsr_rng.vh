/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Sun Apr 28 02:16:38 2024
/////////////////////////////////////////////////////////////


module lfsr_rng ( clka, clkb, restart, new_game, gen_rand_flag, rand_setup, 
        rand_A, rand_B );
  output [3:0] rand_setup;
  output [3:0] rand_A;
  output [3:0] rand_B;
  input clka, clkb, restart, new_game, gen_rand_flag;
  wire   bit, N40, N41, N42, N43, N44, N45, N46, N47, N48, N49, N50, N51, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n27, n28, n29, n30, n31, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73;
  wire   [10:0] lfsr;
  wire   [3:0] temp_rand_setup;
  wire   [3:0] temp_rand_A;
  wire   [3:0] temp_rand_B;

  DFFNEGX1 bit_reg ( .D(n63), .CLK(n72), .Q(bit) );
  DFFNEGX1 \temp_rand_setup_reg[0]  ( .D(n43), .CLK(clka), .Q(
        temp_rand_setup[0]) );
  DFFNEGX1 \lfsr_reg[0]  ( .D(n62), .CLK(n72), .Q(lfsr[0]) );
  DFFNEGX1 \lfsr_reg[1]  ( .D(n61), .CLK(n72), .Q(lfsr[1]) );
  DFFNEGX1 \lfsr_reg[2]  ( .D(n60), .CLK(n72), .Q(lfsr[2]) );
  DFFNEGX1 \lfsr_reg[3]  ( .D(n59), .CLK(clka), .Q(lfsr[3]) );
  DFFNEGX1 \lfsr_reg[4]  ( .D(n58), .CLK(clka), .Q(lfsr[4]) );
  DFFNEGX1 \lfsr_reg[5]  ( .D(n57), .CLK(clka), .Q(lfsr[5]) );
  DFFNEGX1 \lfsr_reg[6]  ( .D(n56), .CLK(clka), .Q(lfsr[6]) );
  DFFNEGX1 \temp_rand_A_reg[3]  ( .D(n52), .CLK(clka), .Q(temp_rand_A[3]) );
  DFFNEGX1 \lfsr_reg[7]  ( .D(n51), .CLK(clka), .Q(lfsr[7]) );
  DFFNEGX1 \temp_rand_B_reg[0]  ( .D(n47), .CLK(n72), .Q(temp_rand_B[0]) );
  DFFNEGX1 \lfsr_reg[8]  ( .D(n50), .CLK(n72), .Q(lfsr[8]) );
  DFFNEGX1 \lfsr_reg[9]  ( .D(n49), .CLK(n72), .Q(lfsr[9]) );
  DFFNEGX1 \lfsr_reg[10]  ( .D(n48), .CLK(n72), .Q(lfsr[10]) );
  DFFNEGX1 \temp_rand_B_reg[3]  ( .D(n44), .CLK(n72), .Q(temp_rand_B[3]) );
  DFFNEGX1 \temp_rand_B_reg[2]  ( .D(n45), .CLK(n72), .Q(temp_rand_B[2]) );
  DFFNEGX1 \temp_rand_B_reg[1]  ( .D(n46), .CLK(n72), .Q(temp_rand_B[1]) );
  DFFNEGX1 \temp_rand_A_reg[2]  ( .D(n53), .CLK(n72), .Q(temp_rand_A[2]) );
  DFFNEGX1 \temp_rand_A_reg[1]  ( .D(n54), .CLK(n72), .Q(temp_rand_A[1]) );
  DFFNEGX1 \temp_rand_A_reg[0]  ( .D(n55), .CLK(n72), .Q(temp_rand_A[0]) );
  DFFNEGX1 \temp_rand_setup_reg[3]  ( .D(n40), .CLK(n72), .Q(
        temp_rand_setup[3]) );
  DFFNEGX1 \temp_rand_setup_reg[2]  ( .D(n41), .CLK(n72), .Q(
        temp_rand_setup[2]) );
  DFFNEGX1 \temp_rand_setup_reg[1]  ( .D(n42), .CLK(n72), .Q(
        temp_rand_setup[1]) );
  DFFNEGX1 \rand_A_reg[3]  ( .D(N47), .CLK(n66), .Q(rand_A[3]) );
  DFFNEGX1 \rand_A_reg[2]  ( .D(N46), .CLK(n66), .Q(rand_A[2]) );
  DFFNEGX1 \rand_A_reg[1]  ( .D(N45), .CLK(n66), .Q(rand_A[1]) );
  DFFNEGX1 \rand_A_reg[0]  ( .D(N44), .CLK(n66), .Q(rand_A[0]) );
  DFFNEGX1 \rand_B_reg[3]  ( .D(N51), .CLK(n66), .Q(rand_B[3]) );
  DFFNEGX1 \rand_B_reg[2]  ( .D(N50), .CLK(n66), .Q(rand_B[2]) );
  DFFNEGX1 \rand_B_reg[1]  ( .D(N49), .CLK(n66), .Q(rand_B[1]) );
  DFFNEGX1 \rand_B_reg[0]  ( .D(N48), .CLK(n66), .Q(rand_B[0]) );
  DFFNEGX1 \rand_setup_reg[3]  ( .D(N43), .CLK(n66), .Q(rand_setup[3]) );
  DFFNEGX1 \rand_setup_reg[2]  ( .D(N42), .CLK(n66), .Q(rand_setup[2]) );
  DFFNEGX1 \rand_setup_reg[1]  ( .D(N41), .CLK(n66), .Q(rand_setup[1]) );
  DFFNEGX1 \rand_setup_reg[0]  ( .D(N40), .CLK(n66), .Q(rand_setup[0]) );
  INVX2 U3 ( .A(temp_rand_setup[3]), .Y(n1) );
  INVX2 U4 ( .A(temp_rand_setup[2]), .Y(n2) );
  INVX2 U5 ( .A(temp_rand_setup[1]), .Y(n3) );
  INVX2 U6 ( .A(temp_rand_setup[0]), .Y(n4) );
  INVX2 U7 ( .A(temp_rand_A[3]), .Y(n5) );
  INVX2 U8 ( .A(temp_rand_A[2]), .Y(n6) );
  INVX2 U9 ( .A(temp_rand_A[1]), .Y(n7) );
  INVX2 U10 ( .A(temp_rand_A[0]), .Y(n8) );
  INVX2 U11 ( .A(temp_rand_B[3]), .Y(n9) );
  INVX2 U12 ( .A(temp_rand_B[2]), .Y(n10) );
  INVX2 U13 ( .A(temp_rand_B[1]), .Y(n11) );
  INVX2 U14 ( .A(temp_rand_B[0]), .Y(n12) );
  INVX2 U15 ( .A(lfsr[10]), .Y(n13) );
  INVX2 U16 ( .A(lfsr[9]), .Y(n14) );
  INVX2 U17 ( .A(lfsr[8]), .Y(n15) );
  INVX2 U18 ( .A(lfsr[7]), .Y(n16) );
  INVX2 U19 ( .A(lfsr[6]), .Y(n17) );
  INVX2 U20 ( .A(lfsr[5]), .Y(n18) );
  INVX2 U21 ( .A(lfsr[4]), .Y(n19) );
  INVX2 U22 ( .A(lfsr[3]), .Y(n20) );
  INVX2 U23 ( .A(lfsr[2]), .Y(n21) );
  INVX2 U24 ( .A(lfsr[1]), .Y(n22) );
  INVX2 U25 ( .A(lfsr[0]), .Y(n23) );
  INVX2 U26 ( .A(bit), .Y(n24) );
  INVX2 U29 ( .A(new_game), .Y(n27) );
  OAI21X1 U30 ( .A(n71), .B(n13), .C(n29), .Y(n48) );
  AOI21X1 U31 ( .A(lfsr[9]), .B(n69), .C(restart), .Y(n29) );
  OAI21X1 U32 ( .A(n14), .B(n71), .C(n30), .Y(n49) );
  AOI21X1 U33 ( .A(lfsr[8]), .B(n69), .C(restart), .Y(n30) );
  OAI22X1 U34 ( .A(n71), .B(n15), .C(n70), .D(n16), .Y(n50) );
  OAI22X1 U35 ( .A(n71), .B(n16), .C(n31), .D(n17), .Y(n51) );
  OAI22X1 U36 ( .A(n64), .B(n5), .C(n70), .D(n17), .Y(n52) );
  OAI22X1 U37 ( .A(n64), .B(n6), .C(n31), .D(n18), .Y(n53) );
  OAI22X1 U38 ( .A(n64), .B(n7), .C(n70), .D(n19), .Y(n54) );
  OAI22X1 U39 ( .A(n64), .B(n8), .C(n31), .D(n20), .Y(n55) );
  OAI22X1 U40 ( .A(n71), .B(n17), .C(n70), .D(n18), .Y(n56) );
  OAI22X1 U41 ( .A(n71), .B(n18), .C(n31), .D(n19), .Y(n57) );
  OAI21X1 U42 ( .A(n71), .B(n19), .C(n33), .Y(n58) );
  AOI21X1 U43 ( .A(lfsr[3]), .B(n69), .C(restart), .Y(n33) );
  OAI21X1 U44 ( .A(n71), .B(n20), .C(n34), .Y(n59) );
  AOI21X1 U45 ( .A(lfsr[2]), .B(n69), .C(restart), .Y(n34) );
  OAI21X1 U46 ( .A(n71), .B(n21), .C(n35), .Y(n60) );
  AOI21X1 U47 ( .A(lfsr[1]), .B(n69), .C(restart), .Y(n35) );
  OAI21X1 U48 ( .A(n71), .B(n22), .C(n36), .Y(n61) );
  AOI21X1 U49 ( .A(lfsr[0]), .B(n69), .C(restart), .Y(n36) );
  OAI22X1 U50 ( .A(n71), .B(n23), .C(n70), .D(n24), .Y(n62) );
  OAI22X1 U51 ( .A(n71), .B(n24), .C(n37), .D(n31), .Y(n63) );
  XOR2X1 U52 ( .A(n38), .B(n39), .Y(n37) );
  XNOR2X1 U53 ( .A(n17), .B(lfsr[1]), .Y(n39) );
  XNOR2X1 U54 ( .A(bit), .B(lfsr[0]), .Y(n38) );
  OAI22X1 U55 ( .A(n64), .B(n1), .C(n31), .D(n21), .Y(n40) );
  OAI22X1 U56 ( .A(n64), .B(n2), .C(n70), .D(n22), .Y(n41) );
  OAI22X1 U57 ( .A(n64), .B(n3), .C(n31), .D(n23), .Y(n42) );
  OAI22X1 U58 ( .A(n64), .B(n4), .C(n70), .D(n24), .Y(n43) );
  OAI22X1 U59 ( .A(n64), .B(n9), .C(n31), .D(n13), .Y(n44) );
  OAI22X1 U60 ( .A(n64), .B(n10), .C(n70), .D(n14), .Y(n45) );
  OAI22X1 U61 ( .A(n64), .B(n11), .C(n31), .D(n15), .Y(n46) );
  OAI22X1 U62 ( .A(n64), .B(n12), .C(n70), .D(n16), .Y(n47) );
  NAND2X1 U64 ( .A(n67), .B(n70), .Y(n28) );
  NAND3X1 U65 ( .A(n27), .B(n67), .C(gen_rand_flag), .Y(n31) );
  NOR2X1 U66 ( .A(restart), .B(n9), .Y(N51) );
  NOR2X1 U67 ( .A(restart), .B(n10), .Y(N50) );
  NOR2X1 U68 ( .A(n68), .B(n11), .Y(N49) );
  NOR2X1 U69 ( .A(n68), .B(n12), .Y(N48) );
  NOR2X1 U70 ( .A(n68), .B(n5), .Y(N47) );
  NOR2X1 U71 ( .A(n68), .B(n6), .Y(N46) );
  NOR2X1 U72 ( .A(n68), .B(n7), .Y(N45) );
  NOR2X1 U73 ( .A(n68), .B(n8), .Y(N44) );
  NOR2X1 U74 ( .A(n68), .B(n1), .Y(N43) );
  NOR2X1 U75 ( .A(n68), .B(n2), .Y(N42) );
  NOR2X1 U76 ( .A(n68), .B(n3), .Y(N41) );
  NOR2X1 U77 ( .A(n68), .B(n4), .Y(N40) );
  OR2X2 U78 ( .A(n71), .B(new_game), .Y(n64) );
  INVX1 U79 ( .A(clkb), .Y(n65) );
  INVX2 U80 ( .A(n65), .Y(n66) );
  BUFX2 U81 ( .A(n28), .Y(n71) );
  INVX2 U82 ( .A(n73), .Y(n72) );
  INVX2 U83 ( .A(n69), .Y(n70) );
  INVX2 U84 ( .A(n67), .Y(n68) );
  INVX2 U85 ( .A(n31), .Y(n69) );
  INVX2 U86 ( .A(restart), .Y(n67) );
  INVX2 U87 ( .A(clka), .Y(n73) );
endmodule

