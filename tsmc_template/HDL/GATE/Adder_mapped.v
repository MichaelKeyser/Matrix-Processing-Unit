/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP5
// Date      : Tue Nov 29 17:01:12 2022
/////////////////////////////////////////////////////////////


module Adder_DW01_add_0 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_1 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_2 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_3 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_4 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_5 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_6 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_7 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_8 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_9 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_10 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_11 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_12 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_13 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_14 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_15 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_16 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_17 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_18 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_19 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_20 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_21 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_22 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_23 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_24 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_25 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_26 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_27 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_28 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_29 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_30 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_31 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_32 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_33 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_34 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_35 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_36 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_37 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_38 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_39 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_40 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_41 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_42 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_43 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_44 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_45 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_46 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_47 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_48 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_49 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_50 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_51 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_52 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_53 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_54 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_55 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_56 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_57 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_58 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_59 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_60 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_61 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_62 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder_DW01_add_63 ( A, B, CI, SUM, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36;

  INVX2 U1 ( .A(A[5]), .Z(n1) );
  INVX2 U2 ( .A(n15), .Z(n2) );
  INVX2 U3 ( .A(A[3]), .Z(n3) );
  INVX2 U4 ( .A(n25), .Z(n4) );
  XOR2X1 U5 ( .A(n5), .B(n6), .Z(SUM[7]) );
  XOR2X1 U6 ( .A(B[7]), .B(A[7]), .Z(n6) );
  NAND2X1 U7 ( .A(n7), .B(n8), .Z(n5) );
  NAND2X1 U8 ( .A(B[6]), .B(n9), .Z(n8) );
  OR2X1 U9 ( .A(n10), .B(A[6]), .Z(n9) );
  NAND2X1 U10 ( .A(A[6]), .B(n10), .Z(n7) );
  XOR2X1 U11 ( .A(n10), .B(n11), .Z(SUM[6]) );
  XOR2X1 U12 ( .A(B[6]), .B(A[6]), .Z(n11) );
  NAND2X1 U13 ( .A(n12), .B(n13), .Z(n10) );
  NAND2X1 U14 ( .A(B[5]), .B(n14), .Z(n13) );
  NAND2X1 U15 ( .A(n2), .B(n1), .Z(n14) );
  NAND2X1 U16 ( .A(A[5]), .B(n15), .Z(n12) );
  XOR2X1 U17 ( .A(n16), .B(n2), .Z(SUM[5]) );
  NAND2X1 U18 ( .A(n17), .B(n18), .Z(n15) );
  NAND2X1 U19 ( .A(B[4]), .B(n19), .Z(n18) );
  OR2X1 U20 ( .A(n20), .B(A[4]), .Z(n19) );
  NAND2X1 U21 ( .A(A[4]), .B(n20), .Z(n17) );
  XOR2X1 U22 ( .A(n1), .B(B[5]), .Z(n16) );
  XOR2X1 U23 ( .A(n20), .B(n21), .Z(SUM[4]) );
  XOR2X1 U24 ( .A(B[4]), .B(A[4]), .Z(n21) );
  NAND2X1 U25 ( .A(n22), .B(n23), .Z(n20) );
  NAND2X1 U26 ( .A(B[3]), .B(n24), .Z(n23) );
  NAND2X1 U27 ( .A(n4), .B(n3), .Z(n24) );
  NAND2X1 U28 ( .A(A[3]), .B(n25), .Z(n22) );
  XOR2X1 U29 ( .A(n26), .B(n4), .Z(SUM[3]) );
  NAND2X1 U30 ( .A(n27), .B(n28), .Z(n25) );
  NAND2X1 U31 ( .A(B[2]), .B(n29), .Z(n28) );
  OR2X1 U32 ( .A(n30), .B(A[2]), .Z(n29) );
  NAND2X1 U33 ( .A(A[2]), .B(n30), .Z(n27) );
  XOR2X1 U34 ( .A(n3), .B(B[3]), .Z(n26) );
  XOR2X1 U35 ( .A(n30), .B(n31), .Z(SUM[2]) );
  XOR2X1 U36 ( .A(B[2]), .B(A[2]), .Z(n31) );
  NAND2X1 U37 ( .A(n32), .B(n33), .Z(n30) );
  NAND2X1 U38 ( .A(B[1]), .B(n34), .Z(n33) );
  OR2X1 U39 ( .A(A[1]), .B(n35), .Z(n34) );
  NAND2X1 U40 ( .A(A[1]), .B(n35), .Z(n32) );
  XOR2X1 U41 ( .A(n35), .B(n36), .Z(SUM[1]) );
  XOR2X1 U42 ( .A(B[1]), .B(A[1]), .Z(n36) );
  AND2X1 U43 ( .A(B[0]), .B(A[0]), .Z(n35) );
  XOR2X1 U44 ( .A(B[0]), .B(A[0]), .Z(SUM[0]) );
endmodule


module Adder ( dd, aa, sum );
  input [511:0] dd;
  input [511:0] aa;
  output [511:0] sum;
  wire   n64;

  Adder_DW01_add_0 add_10_G64 ( .A(dd[511:504]), .B(aa[511:504]), .CI(n64), 
        .SUM(sum[511:504]) );
  Adder_DW01_add_1 add_10_G63 ( .A(dd[503:496]), .B(aa[503:496]), .CI(n64), 
        .SUM(sum[503:496]) );
  Adder_DW01_add_2 add_10_G62 ( .A(dd[495:488]), .B(aa[495:488]), .CI(n64), 
        .SUM(sum[495:488]) );
  Adder_DW01_add_3 add_10_G61 ( .A(dd[487:480]), .B(aa[487:480]), .CI(n64), 
        .SUM(sum[487:480]) );
  Adder_DW01_add_4 add_10_G60 ( .A(dd[479:472]), .B(aa[479:472]), .CI(n64), 
        .SUM(sum[479:472]) );
  Adder_DW01_add_5 add_10_G59 ( .A(dd[471:464]), .B(aa[471:464]), .CI(n64), 
        .SUM(sum[471:464]) );
  Adder_DW01_add_6 add_10_G58 ( .A(dd[463:456]), .B(aa[463:456]), .CI(n64), 
        .SUM(sum[463:456]) );
  Adder_DW01_add_7 add_10_G57 ( .A(dd[455:448]), .B(aa[455:448]), .CI(n64), 
        .SUM(sum[455:448]) );
  Adder_DW01_add_8 add_10_G56 ( .A(dd[447:440]), .B(aa[447:440]), .CI(n64), 
        .SUM(sum[447:440]) );
  Adder_DW01_add_9 add_10_G55 ( .A(dd[439:432]), .B(aa[439:432]), .CI(n64), 
        .SUM(sum[439:432]) );
  Adder_DW01_add_10 add_10_G54 ( .A(dd[431:424]), .B(aa[431:424]), .CI(n64), 
        .SUM(sum[431:424]) );
  Adder_DW01_add_11 add_10_G53 ( .A(dd[423:416]), .B(aa[423:416]), .CI(n64), 
        .SUM(sum[423:416]) );
  Adder_DW01_add_12 add_10_G52 ( .A(dd[415:408]), .B(aa[415:408]), .CI(n64), 
        .SUM(sum[415:408]) );
  Adder_DW01_add_13 add_10_G51 ( .A(dd[407:400]), .B(aa[407:400]), .CI(n64), 
        .SUM(sum[407:400]) );
  Adder_DW01_add_14 add_10_G50 ( .A(dd[399:392]), .B(aa[399:392]), .CI(n64), 
        .SUM(sum[399:392]) );
  Adder_DW01_add_15 add_10_G49 ( .A(dd[391:384]), .B(aa[391:384]), .CI(n64), 
        .SUM(sum[391:384]) );
  Adder_DW01_add_16 add_10_G48 ( .A(dd[383:376]), .B(aa[383:376]), .CI(n64), 
        .SUM(sum[383:376]) );
  Adder_DW01_add_17 add_10_G47 ( .A(dd[375:368]), .B(aa[375:368]), .CI(n64), 
        .SUM(sum[375:368]) );
  Adder_DW01_add_18 add_10_G46 ( .A(dd[367:360]), .B(aa[367:360]), .CI(n64), 
        .SUM(sum[367:360]) );
  Adder_DW01_add_19 add_10_G45 ( .A(dd[359:352]), .B(aa[359:352]), .CI(n64), 
        .SUM(sum[359:352]) );
  Adder_DW01_add_20 add_10_G44 ( .A(dd[351:344]), .B(aa[351:344]), .CI(n64), 
        .SUM(sum[351:344]) );
  Adder_DW01_add_21 add_10_G43 ( .A(dd[343:336]), .B(aa[343:336]), .CI(n64), 
        .SUM(sum[343:336]) );
  Adder_DW01_add_22 add_10_G42 ( .A(dd[335:328]), .B(aa[335:328]), .CI(n64), 
        .SUM(sum[335:328]) );
  Adder_DW01_add_23 add_10_G41 ( .A(dd[327:320]), .B(aa[327:320]), .CI(n64), 
        .SUM(sum[327:320]) );
  Adder_DW01_add_24 add_10_G40 ( .A(dd[319:312]), .B(aa[319:312]), .CI(n64), 
        .SUM(sum[319:312]) );
  Adder_DW01_add_25 add_10_G39 ( .A(dd[311:304]), .B(aa[311:304]), .CI(n64), 
        .SUM(sum[311:304]) );
  Adder_DW01_add_26 add_10_G38 ( .A(dd[303:296]), .B(aa[303:296]), .CI(n64), 
        .SUM(sum[303:296]) );
  Adder_DW01_add_27 add_10_G37 ( .A(dd[295:288]), .B(aa[295:288]), .CI(n64), 
        .SUM(sum[295:288]) );
  Adder_DW01_add_28 add_10_G36 ( .A(dd[287:280]), .B(aa[287:280]), .CI(n64), 
        .SUM(sum[287:280]) );
  Adder_DW01_add_29 add_10_G35 ( .A(dd[279:272]), .B(aa[279:272]), .CI(n64), 
        .SUM(sum[279:272]) );
  Adder_DW01_add_30 add_10_G34 ( .A(dd[271:264]), .B(aa[271:264]), .CI(n64), 
        .SUM(sum[271:264]) );
  Adder_DW01_add_31 add_10_G33 ( .A(dd[263:256]), .B(aa[263:256]), .CI(n64), 
        .SUM(sum[263:256]) );
  Adder_DW01_add_32 add_10_G32 ( .A(dd[255:248]), .B(aa[255:248]), .CI(n64), 
        .SUM(sum[255:248]) );
  Adder_DW01_add_33 add_10_G31 ( .A(dd[247:240]), .B(aa[247:240]), .CI(n64), 
        .SUM(sum[247:240]) );
  Adder_DW01_add_34 add_10_G30 ( .A(dd[239:232]), .B(aa[239:232]), .CI(n64), 
        .SUM(sum[239:232]) );
  Adder_DW01_add_35 add_10_G29 ( .A(dd[231:224]), .B(aa[231:224]), .CI(n64), 
        .SUM(sum[231:224]) );
  Adder_DW01_add_36 add_10_G28 ( .A(dd[223:216]), .B(aa[223:216]), .CI(n64), 
        .SUM(sum[223:216]) );
  Adder_DW01_add_37 add_10_G27 ( .A(dd[215:208]), .B(aa[215:208]), .CI(n64), 
        .SUM(sum[215:208]) );
  Adder_DW01_add_38 add_10_G26 ( .A(dd[207:200]), .B(aa[207:200]), .CI(n64), 
        .SUM(sum[207:200]) );
  Adder_DW01_add_39 add_10_G25 ( .A(dd[199:192]), .B(aa[199:192]), .CI(n64), 
        .SUM(sum[199:192]) );
  Adder_DW01_add_40 add_10_G24 ( .A(dd[191:184]), .B(aa[191:184]), .CI(n64), 
        .SUM(sum[191:184]) );
  Adder_DW01_add_41 add_10_G23 ( .A(dd[183:176]), .B(aa[183:176]), .CI(n64), 
        .SUM(sum[183:176]) );
  Adder_DW01_add_42 add_10_G22 ( .A(dd[175:168]), .B(aa[175:168]), .CI(n64), 
        .SUM(sum[175:168]) );
  Adder_DW01_add_43 add_10_G21 ( .A(dd[167:160]), .B(aa[167:160]), .CI(n64), 
        .SUM(sum[167:160]) );
  Adder_DW01_add_44 add_10_G20 ( .A(dd[159:152]), .B(aa[159:152]), .CI(n64), 
        .SUM(sum[159:152]) );
  Adder_DW01_add_45 add_10_G19 ( .A(dd[151:144]), .B(aa[151:144]), .CI(n64), 
        .SUM(sum[151:144]) );
  Adder_DW01_add_46 add_10_G18 ( .A(dd[143:136]), .B(aa[143:136]), .CI(n64), 
        .SUM(sum[143:136]) );
  Adder_DW01_add_47 add_10_G17 ( .A(dd[135:128]), .B(aa[135:128]), .CI(n64), 
        .SUM(sum[135:128]) );
  Adder_DW01_add_48 add_10_G16 ( .A(dd[127:120]), .B(aa[127:120]), .CI(n64), 
        .SUM(sum[127:120]) );
  Adder_DW01_add_49 add_10_G15 ( .A(dd[119:112]), .B(aa[119:112]), .CI(n64), 
        .SUM(sum[119:112]) );
  Adder_DW01_add_50 add_10_G14 ( .A(dd[111:104]), .B(aa[111:104]), .CI(n64), 
        .SUM(sum[111:104]) );
  Adder_DW01_add_51 add_10_G13 ( .A(dd[103:96]), .B(aa[103:96]), .CI(n64), 
        .SUM(sum[103:96]) );
  Adder_DW01_add_52 add_10_G12 ( .A(dd[95:88]), .B(aa[95:88]), .CI(n64), .SUM(
        sum[95:88]) );
  Adder_DW01_add_53 add_10_G11 ( .A(dd[87:80]), .B(aa[87:80]), .CI(n64), .SUM(
        sum[87:80]) );
  Adder_DW01_add_54 add_10_G10 ( .A(dd[79:72]), .B(aa[79:72]), .CI(n64), .SUM(
        sum[79:72]) );
  Adder_DW01_add_55 add_10_G9 ( .A(dd[71:64]), .B(aa[71:64]), .CI(n64), .SUM(
        sum[71:64]) );
  Adder_DW01_add_56 add_10_G8 ( .A(dd[63:56]), .B(aa[63:56]), .CI(n64), .SUM(
        sum[63:56]) );
  Adder_DW01_add_57 add_10_G7 ( .A(dd[55:48]), .B(aa[55:48]), .CI(n64), .SUM(
        sum[55:48]) );
  Adder_DW01_add_58 add_10_G6 ( .A(dd[47:40]), .B(aa[47:40]), .CI(n64), .SUM(
        sum[47:40]) );
  Adder_DW01_add_59 add_10_G5 ( .A(dd[39:32]), .B(aa[39:32]), .CI(n64), .SUM(
        sum[39:32]) );
  Adder_DW01_add_60 add_10_G4 ( .A(dd[31:24]), .B(aa[31:24]), .CI(n64), .SUM(
        sum[31:24]) );
  Adder_DW01_add_61 add_10_G3 ( .A(dd[23:16]), .B(aa[23:16]), .CI(n64), .SUM(
        sum[23:16]) );
  Adder_DW01_add_62 add_10_G2 ( .A(dd[15:8]), .B(aa[15:8]), .CI(n64), .SUM(
        sum[15:8]) );
  Adder_DW01_add_63 add_10 ( .A(dd[7:0]), .B(aa[7:0]), .CI(n64), .SUM(sum[7:0]) );
  TIE0 U129 ( .Z(n64) );
endmodule

