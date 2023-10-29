/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP1
// Date      : Mon Oct 16 00:00:36 2023
/////////////////////////////////////////////////////////////


module mmu ( clk, control, data_arr, wt_arr, acc_out );
  input [31:0] data_arr;
  input [31:0] wt_arr;
  output [127:0] acc_out;
  input clk, control;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128;
  tri   n_Logic0_;
  tri   clk;
  tri   control;
  tri   [31:0] data_arr;
  tri   [31:0] wt_arr;
  tri   [31:0] acc_out14;
  tri   [31:0] acc_out24;
  tri   [31:0] acc_out34;
  tri   [31:0] acc_out44;
  tri   [31:0] acc_out11;
  tri   [7:0] data_out11;
  tri   [7:0] wt_out11;
  tri   [31:0] acc_out21;
  tri   [7:0] data_out21;
  tri   [7:0] wt_out21;
  tri   [31:0] acc_out31;
  tri   [7:0] data_out31;
  tri   [7:0] wt_out31;
  tri   [31:0] acc_out41;
  tri   [7:0] wt_out41;
  tri   [31:0] acc_out12;
  tri   [7:0] data_out12;
  tri   [7:0] wt_out12;
  tri   [31:0] acc_out22;
  tri   [7:0] data_out22;
  tri   [7:0] wt_out22;
  tri   [31:0] acc_out32;
  tri   [7:0] data_out32;
  tri   [7:0] wt_out32;
  tri   [31:0] acc_out42;
  tri   [7:0] wt_out42;
  tri   [31:0] acc_out13;
  tri   [7:0] data_out13;
  tri   [7:0] wt_out13;
  tri   [31:0] acc_out23;
  tri   [7:0] data_out23;
  tri   [7:0] wt_out23;
  tri   [31:0] acc_out33;
  tri   [7:0] data_out33;
  tri   [7:0] wt_out33;
  tri   [31:0] acc_out43;
  tri   [7:0] wt_out43;
  tri   [7:0] data_out14;
  tri   [7:0] data_out24;
  tri   [7:0] data_out34;
  tri   net3;

  MAC m11 ( .clk(clk), .control(control), .data_in(data_arr[31:24]), .acc_in({
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .wt_path_in(
        wt_arr[31:24]), .acc_out(acc_out11), .data_out(data_out11), 
        .wt_path_out(wt_out11) );
  MAC m21 ( .clk(clk), .control(control), .data_in(data_out11), .acc_in({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .wt_path_in(wt_arr[23:16]), 
        .acc_out(acc_out21), .data_out(data_out21), .wt_path_out(wt_out21) );
  MAC m31 ( .clk(clk), .control(control), .data_in(data_out21), .acc_in({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .wt_path_in(wt_arr[15:8]), 
        .acc_out(acc_out31), .data_out(data_out31), .wt_path_out(wt_out31) );
  MAC m41 ( .clk(clk), .control(control), .data_in(data_out31), .acc_in({1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .wt_path_in(wt_arr[7:0]), 
        .acc_out(acc_out41), .wt_path_out(wt_out41) );
  MAC m12 ( .clk(clk), .control(control), .data_in(data_arr[23:16]), .acc_in(
        acc_out11), .wt_path_in(wt_out11), .acc_out(acc_out12), .data_out(
        data_out12), .wt_path_out(wt_out12) );
  MAC m22 ( .clk(clk), .control(control), .data_in(data_out12), .acc_in(
        acc_out21), .wt_path_in(wt_out21), .acc_out(acc_out22), .data_out(
        data_out22), .wt_path_out(wt_out22) );
  MAC m32 ( .clk(clk), .control(control), .data_in(data_out22), .acc_in(
        acc_out31), .wt_path_in(wt_out31), .acc_out(acc_out32), .data_out(
        data_out32), .wt_path_out(wt_out32) );
  MAC m42 ( .clk(clk), .control(control), .data_in(data_out32), .acc_in(
        acc_out41), .wt_path_in(wt_out41), .acc_out(acc_out42), .wt_path_out(
        wt_out42) );
  MAC m13 ( .clk(clk), .control(control), .data_in(data_arr[15:8]), .acc_in(
        acc_out12), .wt_path_in(wt_out12), .acc_out(acc_out13), .data_out(
        data_out13), .wt_path_out(wt_out13) );
  MAC m23 ( .clk(clk), .control(control), .data_in(data_out13), .acc_in(
        acc_out22), .wt_path_in(wt_out22), .acc_out(acc_out23), .data_out(
        data_out23), .wt_path_out(wt_out23) );
  MAC m33 ( .clk(clk), .control(control), .data_in(data_out23), .acc_in(
        acc_out32), .wt_path_in(wt_out32), .acc_out(acc_out33), .data_out(
        data_out33), .wt_path_out(wt_out33) );
  MAC m43 ( .clk(clk), .control(control), .data_in(data_out33), .acc_in(
        acc_out42), .wt_path_in(wt_out42), .acc_out(acc_out43), .wt_path_out(
        wt_out43) );
  MAC m14 ( .clk(clk), .control(control), .data_in(data_arr[7:0]), .acc_in(
        acc_out13), .wt_path_in(wt_out13), .acc_out(acc_out14), .data_out(
        data_out14) );
  MAC m24 ( .clk(clk), .control(control), .data_in(data_out14), .acc_in(
        acc_out23), .wt_path_in(wt_out23), .acc_out(acc_out24), .data_out(
        data_out24) );
  MAC m34 ( .clk(clk), .control(control), .data_in(data_out24), .acc_in(
        acc_out33), .wt_path_in(wt_out33), .acc_out(acc_out34), .data_out(
        data_out34) );
  MAC m44 ( .clk(clk), .control(control), .data_in(data_out34), .acc_in(
        acc_out43), .wt_path_in(wt_out43), .acc_out(acc_out44) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_127_ ( .D(n128), .CLK(clk), .QN(
        acc_out[127]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_126_ ( .D(n127), .CLK(clk), .QN(
        acc_out[126]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_125_ ( .D(n126), .CLK(clk), .QN(
        acc_out[125]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_124_ ( .D(n125), .CLK(clk), .QN(
        acc_out[124]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_123_ ( .D(n124), .CLK(clk), .QN(
        acc_out[123]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_122_ ( .D(n123), .CLK(clk), .QN(
        acc_out[122]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_121_ ( .D(n122), .CLK(clk), .QN(
        acc_out[121]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_120_ ( .D(n121), .CLK(clk), .QN(
        acc_out[120]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_119_ ( .D(n120), .CLK(clk), .QN(
        acc_out[119]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_118_ ( .D(n119), .CLK(clk), .QN(
        acc_out[118]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_117_ ( .D(n118), .CLK(clk), .QN(
        acc_out[117]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_116_ ( .D(n117), .CLK(clk), .QN(
        acc_out[116]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_115_ ( .D(n116), .CLK(clk), .QN(
        acc_out[115]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_114_ ( .D(n115), .CLK(clk), .QN(
        acc_out[114]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_113_ ( .D(n114), .CLK(clk), .QN(
        acc_out[113]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_112_ ( .D(n113), .CLK(clk), .QN(
        acc_out[112]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_111_ ( .D(n112), .CLK(clk), .QN(
        acc_out[111]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_110_ ( .D(n111), .CLK(clk), .QN(
        acc_out[110]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_109_ ( .D(n110), .CLK(clk), .QN(
        acc_out[109]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_108_ ( .D(n109), .CLK(clk), .QN(
        acc_out[108]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_107_ ( .D(n108), .CLK(clk), .QN(
        acc_out[107]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_106_ ( .D(n107), .CLK(clk), .QN(
        acc_out[106]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_105_ ( .D(n106), .CLK(clk), .QN(
        acc_out[105]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_104_ ( .D(n105), .CLK(clk), .QN(
        acc_out[104]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_103_ ( .D(n104), .CLK(clk), .QN(
        acc_out[103]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_102_ ( .D(n103), .CLK(clk), .QN(
        acc_out[102]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_101_ ( .D(n102), .CLK(clk), .QN(
        acc_out[101]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_100_ ( .D(n101), .CLK(clk), .QN(
        acc_out[100]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_99_ ( .D(n100), .CLK(clk), .QN(acc_out[99])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_98_ ( .D(n99), .CLK(clk), .QN(acc_out[98])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_97_ ( .D(n98), .CLK(clk), .QN(acc_out[97])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_96_ ( .D(n97), .CLK(clk), .QN(acc_out[96])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_95_ ( .D(n96), .CLK(clk), .QN(acc_out[95])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_94_ ( .D(n95), .CLK(clk), .QN(acc_out[94])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_93_ ( .D(n94), .CLK(clk), .QN(acc_out[93])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_92_ ( .D(n93), .CLK(clk), .QN(acc_out[92])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_91_ ( .D(n92), .CLK(clk), .QN(acc_out[91])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_90_ ( .D(n91), .CLK(clk), .QN(acc_out[90])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_89_ ( .D(n90), .CLK(clk), .QN(acc_out[89])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_88_ ( .D(n89), .CLK(clk), .QN(acc_out[88])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_87_ ( .D(n88), .CLK(clk), .QN(acc_out[87])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_86_ ( .D(n87), .CLK(clk), .QN(acc_out[86])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_85_ ( .D(n86), .CLK(clk), .QN(acc_out[85])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_84_ ( .D(n85), .CLK(clk), .QN(acc_out[84])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_83_ ( .D(n84), .CLK(clk), .QN(acc_out[83])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_82_ ( .D(n83), .CLK(clk), .QN(acc_out[82])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_81_ ( .D(n82), .CLK(clk), .QN(acc_out[81])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_80_ ( .D(n81), .CLK(clk), .QN(acc_out[80])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_79_ ( .D(n80), .CLK(clk), .QN(acc_out[79])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_78_ ( .D(n79), .CLK(clk), .QN(acc_out[78])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_77_ ( .D(n78), .CLK(clk), .QN(acc_out[77])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_76_ ( .D(n77), .CLK(clk), .QN(acc_out[76])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_75_ ( .D(n76), .CLK(clk), .QN(acc_out[75])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_74_ ( .D(n75), .CLK(clk), .QN(acc_out[74])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_73_ ( .D(n74), .CLK(clk), .QN(acc_out[73])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_72_ ( .D(n73), .CLK(clk), .QN(acc_out[72])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_71_ ( .D(n72), .CLK(clk), .QN(acc_out[71])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_70_ ( .D(n71), .CLK(clk), .QN(acc_out[70])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_69_ ( .D(n70), .CLK(clk), .QN(acc_out[69])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_68_ ( .D(n69), .CLK(clk), .QN(acc_out[68])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_67_ ( .D(n68), .CLK(clk), .QN(acc_out[67])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_66_ ( .D(n67), .CLK(clk), .QN(acc_out[66])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_65_ ( .D(n66), .CLK(clk), .QN(acc_out[65])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_64_ ( .D(n65), .CLK(clk), .QN(acc_out[64])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_63_ ( .D(n64), .CLK(clk), .QN(acc_out[63])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_62_ ( .D(n63), .CLK(clk), .QN(acc_out[62])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_61_ ( .D(n62), .CLK(clk), .QN(acc_out[61])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_60_ ( .D(n61), .CLK(clk), .QN(acc_out[60])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_59_ ( .D(n60), .CLK(clk), .QN(acc_out[59])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_58_ ( .D(n59), .CLK(clk), .QN(acc_out[58])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_57_ ( .D(n58), .CLK(clk), .QN(acc_out[57])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_56_ ( .D(n57), .CLK(clk), .QN(acc_out[56])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_55_ ( .D(n56), .CLK(clk), .QN(acc_out[55])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_54_ ( .D(n55), .CLK(clk), .QN(acc_out[54])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_53_ ( .D(n54), .CLK(clk), .QN(acc_out[53])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_52_ ( .D(n53), .CLK(clk), .QN(acc_out[52])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_51_ ( .D(n52), .CLK(clk), .QN(acc_out[51])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_50_ ( .D(n51), .CLK(clk), .QN(acc_out[50])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_49_ ( .D(n50), .CLK(clk), .QN(acc_out[49])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_48_ ( .D(n49), .CLK(clk), .QN(acc_out[48])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_47_ ( .D(n48), .CLK(clk), .QN(acc_out[47])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_46_ ( .D(n47), .CLK(clk), .QN(acc_out[46])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_45_ ( .D(n46), .CLK(clk), .QN(acc_out[45])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_44_ ( .D(n45), .CLK(clk), .QN(acc_out[44])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_43_ ( .D(n44), .CLK(clk), .QN(acc_out[43])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_42_ ( .D(n43), .CLK(clk), .QN(acc_out[42])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_41_ ( .D(n42), .CLK(clk), .QN(acc_out[41])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_40_ ( .D(n41), .CLK(clk), .QN(acc_out[40])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_39_ ( .D(n40), .CLK(clk), .QN(acc_out[39])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_38_ ( .D(n39), .CLK(clk), .QN(acc_out[38])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_37_ ( .D(n38), .CLK(clk), .QN(acc_out[37])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_36_ ( .D(n37), .CLK(clk), .QN(acc_out[36])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_35_ ( .D(n36), .CLK(clk), .QN(acc_out[35])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_34_ ( .D(n35), .CLK(clk), .QN(acc_out[34])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_33_ ( .D(n34), .CLK(clk), .QN(acc_out[33])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_32_ ( .D(n33), .CLK(clk), .QN(acc_out[32])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_31_ ( .D(n32), .CLK(clk), .QN(acc_out[31])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_30_ ( .D(n31), .CLK(clk), .QN(acc_out[30])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_29_ ( .D(n30), .CLK(clk), .QN(acc_out[29])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_28_ ( .D(n29), .CLK(clk), .QN(acc_out[28])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_27_ ( .D(n28), .CLK(clk), .QN(acc_out[27])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_26_ ( .D(n27), .CLK(clk), .QN(acc_out[26])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_25_ ( .D(n26), .CLK(clk), .QN(acc_out[25])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_24_ ( .D(n25), .CLK(clk), .QN(acc_out[24])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_23_ ( .D(n24), .CLK(clk), .QN(acc_out[23])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_22_ ( .D(n23), .CLK(clk), .QN(acc_out[22])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_21_ ( .D(n22), .CLK(clk), .QN(acc_out[21])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_20_ ( .D(n21), .CLK(clk), .QN(acc_out[20])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_19_ ( .D(n20), .CLK(clk), .QN(acc_out[19])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_18_ ( .D(n19), .CLK(clk), .QN(acc_out[18])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_17_ ( .D(n18), .CLK(clk), .QN(acc_out[17])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_16_ ( .D(n17), .CLK(clk), .QN(acc_out[16])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_15_ ( .D(n16), .CLK(clk), .QN(acc_out[15])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_14_ ( .D(n15), .CLK(clk), .QN(acc_out[14])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_13_ ( .D(n14), .CLK(clk), .QN(acc_out[13])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_12_ ( .D(n13), .CLK(clk), .QN(acc_out[12])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_11_ ( .D(n12), .CLK(clk), .QN(acc_out[11])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_10_ ( .D(n11), .CLK(clk), .QN(acc_out[10])
         );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_9_ ( .D(n10), .CLK(clk), .QN(acc_out[9]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_8_ ( .D(n9), .CLK(clk), .QN(acc_out[8]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_7_ ( .D(n8), .CLK(clk), .QN(acc_out[7]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_6_ ( .D(n7), .CLK(clk), .QN(acc_out[6]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_5_ ( .D(n6), .CLK(clk), .QN(acc_out[5]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_4_ ( .D(n5), .CLK(clk), .QN(acc_out[4]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_3_ ( .D(n4), .CLK(clk), .QN(acc_out[3]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_2_ ( .D(n3), .CLK(clk), .QN(acc_out[2]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_1_ ( .D(n2), .CLK(clk), .QN(acc_out[1]) );
  DFFHQNx1_ASAP7_75t_R acc_out_reg_0_ ( .D(n1), .CLK(clk), .QN(acc_out[0]) );
  INVxp33_ASAP7_75t_R U4 ( .A(acc_out44[1]), .Y(n2) );
  INVxp33_ASAP7_75t_R U5 ( .A(acc_out44[2]), .Y(n3) );
  INVxp33_ASAP7_75t_R U6 ( .A(acc_out44[3]), .Y(n4) );
  INVxp33_ASAP7_75t_R U7 ( .A(acc_out44[4]), .Y(n5) );
  INVxp33_ASAP7_75t_R U8 ( .A(acc_out44[5]), .Y(n6) );
  INVxp33_ASAP7_75t_R U9 ( .A(acc_out44[6]), .Y(n7) );
  INVxp33_ASAP7_75t_R U10 ( .A(acc_out44[7]), .Y(n8) );
  INVxp33_ASAP7_75t_R U11 ( .A(acc_out44[8]), .Y(n9) );
  INVxp33_ASAP7_75t_R U12 ( .A(acc_out44[9]), .Y(n10) );
  INVxp33_ASAP7_75t_R U13 ( .A(acc_out44[10]), .Y(n11) );
  INVxp33_ASAP7_75t_R U14 ( .A(acc_out44[11]), .Y(n12) );
  INVxp33_ASAP7_75t_R U15 ( .A(acc_out44[12]), .Y(n13) );
  INVxp33_ASAP7_75t_R U16 ( .A(acc_out44[13]), .Y(n14) );
  INVxp33_ASAP7_75t_R U17 ( .A(acc_out44[14]), .Y(n15) );
  INVxp33_ASAP7_75t_R U18 ( .A(acc_out44[15]), .Y(n16) );
  INVxp33_ASAP7_75t_R U19 ( .A(acc_out44[16]), .Y(n17) );
  INVxp33_ASAP7_75t_R U20 ( .A(acc_out44[17]), .Y(n18) );
  INVxp33_ASAP7_75t_R U21 ( .A(acc_out44[18]), .Y(n19) );
  INVxp33_ASAP7_75t_R U22 ( .A(acc_out44[19]), .Y(n20) );
  INVxp33_ASAP7_75t_R U23 ( .A(acc_out44[20]), .Y(n21) );
  INVxp33_ASAP7_75t_R U24 ( .A(acc_out44[21]), .Y(n22) );
  INVxp33_ASAP7_75t_R U25 ( .A(acc_out44[22]), .Y(n23) );
  INVxp33_ASAP7_75t_R U26 ( .A(acc_out44[23]), .Y(n24) );
  INVxp33_ASAP7_75t_R U27 ( .A(acc_out44[24]), .Y(n25) );
  INVxp33_ASAP7_75t_R U28 ( .A(acc_out44[25]), .Y(n26) );
  INVxp33_ASAP7_75t_R U29 ( .A(acc_out44[26]), .Y(n27) );
  INVxp33_ASAP7_75t_R U30 ( .A(acc_out44[27]), .Y(n28) );
  INVxp33_ASAP7_75t_R U31 ( .A(acc_out44[28]), .Y(n29) );
  INVxp33_ASAP7_75t_R U32 ( .A(acc_out44[29]), .Y(n30) );
  INVxp33_ASAP7_75t_R U33 ( .A(acc_out44[30]), .Y(n31) );
  INVxp33_ASAP7_75t_R U34 ( .A(acc_out44[31]), .Y(n32) );
  INVxp33_ASAP7_75t_R U35 ( .A(acc_out34[0]), .Y(n33) );
  INVxp33_ASAP7_75t_R U36 ( .A(acc_out34[1]), .Y(n34) );
  INVxp33_ASAP7_75t_R U37 ( .A(acc_out34[2]), .Y(n35) );
  INVxp33_ASAP7_75t_R U38 ( .A(acc_out34[3]), .Y(n36) );
  INVxp33_ASAP7_75t_R U39 ( .A(acc_out34[4]), .Y(n37) );
  INVxp33_ASAP7_75t_R U40 ( .A(acc_out34[5]), .Y(n38) );
  INVxp33_ASAP7_75t_R U41 ( .A(acc_out34[6]), .Y(n39) );
  INVxp33_ASAP7_75t_R U42 ( .A(acc_out34[7]), .Y(n40) );
  INVxp33_ASAP7_75t_R U43 ( .A(acc_out34[8]), .Y(n41) );
  INVxp33_ASAP7_75t_R U44 ( .A(acc_out34[9]), .Y(n42) );
  INVxp33_ASAP7_75t_R U45 ( .A(acc_out34[10]), .Y(n43) );
  INVxp33_ASAP7_75t_R U46 ( .A(acc_out34[11]), .Y(n44) );
  INVxp33_ASAP7_75t_R U47 ( .A(acc_out34[12]), .Y(n45) );
  INVxp33_ASAP7_75t_R U48 ( .A(acc_out34[13]), .Y(n46) );
  INVxp33_ASAP7_75t_R U49 ( .A(acc_out34[14]), .Y(n47) );
  INVxp33_ASAP7_75t_R U50 ( .A(acc_out34[15]), .Y(n48) );
  INVxp33_ASAP7_75t_R U51 ( .A(acc_out34[16]), .Y(n49) );
  INVxp33_ASAP7_75t_R U52 ( .A(acc_out34[17]), .Y(n50) );
  INVxp33_ASAP7_75t_R U53 ( .A(acc_out34[18]), .Y(n51) );
  INVxp33_ASAP7_75t_R U54 ( .A(acc_out34[19]), .Y(n52) );
  INVxp33_ASAP7_75t_R U55 ( .A(acc_out34[20]), .Y(n53) );
  INVxp33_ASAP7_75t_R U56 ( .A(acc_out34[21]), .Y(n54) );
  INVxp33_ASAP7_75t_R U57 ( .A(acc_out34[22]), .Y(n55) );
  INVxp33_ASAP7_75t_R U58 ( .A(acc_out34[23]), .Y(n56) );
  INVxp33_ASAP7_75t_R U59 ( .A(acc_out34[24]), .Y(n57) );
  INVxp33_ASAP7_75t_R U60 ( .A(acc_out34[25]), .Y(n58) );
  INVxp33_ASAP7_75t_R U61 ( .A(acc_out34[26]), .Y(n59) );
  INVxp33_ASAP7_75t_R U62 ( .A(acc_out34[27]), .Y(n60) );
  INVxp33_ASAP7_75t_R U63 ( .A(acc_out34[28]), .Y(n61) );
  INVxp33_ASAP7_75t_R U64 ( .A(acc_out34[29]), .Y(n62) );
  INVxp33_ASAP7_75t_R U65 ( .A(acc_out34[30]), .Y(n63) );
  INVxp33_ASAP7_75t_R U66 ( .A(acc_out34[31]), .Y(n64) );
  INVxp33_ASAP7_75t_R U130 ( .A(acc_out14[31]), .Y(n128) );
  INVxp33_ASAP7_75t_R U67 ( .A(acc_out24[0]), .Y(n65) );
  INVxp33_ASAP7_75t_R U68 ( .A(acc_out24[1]), .Y(n66) );
  INVxp33_ASAP7_75t_R U69 ( .A(acc_out24[2]), .Y(n67) );
  INVxp33_ASAP7_75t_R U70 ( .A(acc_out24[3]), .Y(n68) );
  INVxp33_ASAP7_75t_R U71 ( .A(acc_out24[4]), .Y(n69) );
  INVxp33_ASAP7_75t_R U72 ( .A(acc_out24[5]), .Y(n70) );
  INVxp33_ASAP7_75t_R U73 ( .A(acc_out24[6]), .Y(n71) );
  INVxp33_ASAP7_75t_R U74 ( .A(acc_out24[7]), .Y(n72) );
  INVxp33_ASAP7_75t_R U75 ( .A(acc_out24[8]), .Y(n73) );
  INVxp33_ASAP7_75t_R U76 ( .A(acc_out24[9]), .Y(n74) );
  INVxp33_ASAP7_75t_R U77 ( .A(acc_out24[10]), .Y(n75) );
  INVxp33_ASAP7_75t_R U78 ( .A(acc_out24[11]), .Y(n76) );
  INVxp33_ASAP7_75t_R U79 ( .A(acc_out24[12]), .Y(n77) );
  INVxp33_ASAP7_75t_R U80 ( .A(acc_out24[13]), .Y(n78) );
  INVxp33_ASAP7_75t_R U81 ( .A(acc_out24[14]), .Y(n79) );
  INVxp33_ASAP7_75t_R U82 ( .A(acc_out24[15]), .Y(n80) );
  INVxp33_ASAP7_75t_R U83 ( .A(acc_out24[16]), .Y(n81) );
  INVxp33_ASAP7_75t_R U84 ( .A(acc_out24[17]), .Y(n82) );
  INVxp33_ASAP7_75t_R U85 ( .A(acc_out24[18]), .Y(n83) );
  INVxp33_ASAP7_75t_R U86 ( .A(acc_out24[19]), .Y(n84) );
  INVxp33_ASAP7_75t_R U87 ( .A(acc_out24[20]), .Y(n85) );
  INVxp33_ASAP7_75t_R U88 ( .A(acc_out24[21]), .Y(n86) );
  INVxp33_ASAP7_75t_R U89 ( .A(acc_out24[22]), .Y(n87) );
  INVxp33_ASAP7_75t_R U90 ( .A(acc_out24[23]), .Y(n88) );
  INVxp33_ASAP7_75t_R U91 ( .A(acc_out24[24]), .Y(n89) );
  INVxp33_ASAP7_75t_R U92 ( .A(acc_out24[25]), .Y(n90) );
  INVxp33_ASAP7_75t_R U93 ( .A(acc_out24[26]), .Y(n91) );
  INVxp33_ASAP7_75t_R U94 ( .A(acc_out24[27]), .Y(n92) );
  INVxp33_ASAP7_75t_R U95 ( .A(acc_out24[28]), .Y(n93) );
  INVxp33_ASAP7_75t_R U96 ( .A(acc_out24[29]), .Y(n94) );
  INVxp33_ASAP7_75t_R U97 ( .A(acc_out24[30]), .Y(n95) );
  INVxp33_ASAP7_75t_R U98 ( .A(acc_out24[31]), .Y(n96) );
  INVxp33_ASAP7_75t_R U99 ( .A(acc_out14[0]), .Y(n97) );
  INVxp33_ASAP7_75t_R U100 ( .A(acc_out14[1]), .Y(n98) );
  INVxp33_ASAP7_75t_R U101 ( .A(acc_out14[2]), .Y(n99) );
  INVxp33_ASAP7_75t_R U102 ( .A(acc_out14[3]), .Y(n100) );
  INVxp33_ASAP7_75t_R U103 ( .A(acc_out14[4]), .Y(n101) );
  INVxp33_ASAP7_75t_R U104 ( .A(acc_out14[5]), .Y(n102) );
  INVxp33_ASAP7_75t_R U105 ( .A(acc_out14[6]), .Y(n103) );
  INVxp33_ASAP7_75t_R U106 ( .A(acc_out14[7]), .Y(n104) );
  INVxp33_ASAP7_75t_R U107 ( .A(acc_out14[8]), .Y(n105) );
  INVxp33_ASAP7_75t_R U108 ( .A(acc_out14[9]), .Y(n106) );
  INVxp33_ASAP7_75t_R U109 ( .A(acc_out14[10]), .Y(n107) );
  INVxp33_ASAP7_75t_R U110 ( .A(acc_out14[11]), .Y(n108) );
  INVxp33_ASAP7_75t_R U111 ( .A(acc_out14[12]), .Y(n109) );
  INVxp33_ASAP7_75t_R U112 ( .A(acc_out14[13]), .Y(n110) );
  INVxp33_ASAP7_75t_R U113 ( .A(acc_out14[14]), .Y(n111) );
  INVxp33_ASAP7_75t_R U114 ( .A(acc_out14[15]), .Y(n112) );
  INVxp33_ASAP7_75t_R U115 ( .A(acc_out14[16]), .Y(n113) );
  INVxp33_ASAP7_75t_R U116 ( .A(acc_out14[17]), .Y(n114) );
  INVxp33_ASAP7_75t_R U117 ( .A(acc_out14[18]), .Y(n115) );
  INVxp33_ASAP7_75t_R U118 ( .A(acc_out14[19]), .Y(n116) );
  INVxp33_ASAP7_75t_R U119 ( .A(acc_out14[20]), .Y(n117) );
  INVxp33_ASAP7_75t_R U120 ( .A(acc_out14[21]), .Y(n118) );
  INVxp33_ASAP7_75t_R U121 ( .A(acc_out14[22]), .Y(n119) );
  INVxp33_ASAP7_75t_R U122 ( .A(acc_out14[23]), .Y(n120) );
  INVxp33_ASAP7_75t_R U123 ( .A(acc_out14[24]), .Y(n121) );
  INVxp33_ASAP7_75t_R U124 ( .A(acc_out14[25]), .Y(n122) );
  INVxp33_ASAP7_75t_R U125 ( .A(acc_out14[26]), .Y(n123) );
  INVxp33_ASAP7_75t_R U126 ( .A(acc_out14[27]), .Y(n124) );
  INVxp33_ASAP7_75t_R U127 ( .A(acc_out14[28]), .Y(n125) );
  INVxp33_ASAP7_75t_R U128 ( .A(acc_out14[29]), .Y(n126) );
  INVxp33_ASAP7_75t_R U129 ( .A(acc_out14[30]), .Y(n127) );
  INVxp33_ASAP7_75t_R U3 ( .A(acc_out44[0]), .Y(n1) );
endmodule
