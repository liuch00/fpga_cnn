// Generator : SpinalHDL v1.4.3    git head : adf552d8f500e7419fff395b7049228e4bc5de26
// Component : ClassificationNet
// Git hash  : 765f7b01f5158925609e7f59704b0db33cde3fc8



module ClassificationNet (
  input               io_input_valid,
  input      [7:0]    io_input_payload_0,
  input      [7:0]    io_input_payload_1,
  input      [7:0]    io_input_payload_2,
  input      [7:0]    io_input_payload_3,
  input      [7:0]    io_input_payload_4,
  input      [7:0]    io_input_payload_5,
  input      [7:0]    io_input_payload_6,
  input      [7:0]    io_input_payload_7,
  output              io_layer1_rgb_valid,
  output     [7:0]    io_layer1_rgb_payload_0,
  output     [7:0]    io_layer1_rgb_payload_1,
  output     [7:0]    io_layer1_rgb_payload_2,
  output     [7:0]    io_layer1_rgb_payload_3,
  output     [7:0]    io_layer1_rgb_payload_4,
  output     [7:0]    io_layer1_rgb_payload_5,
  output     [7:0]    io_layer1_rgb_payload_6,
  output     [7:0]    io_layer1_rgb_payload_7,
  output     [7:0]    io_layer1_rgb_payload_8,
  output     [7:0]    io_layer1_rgb_payload_9,
  output     [7:0]    io_layer1_rgb_payload_10,
  output     [7:0]    io_layer1_rgb_payload_11,
  output     [7:0]    io_layer1_rgb_payload_12,
  output     [7:0]    io_layer1_rgb_payload_13,
  output              io_ans_valid,
  output     [3:0]    io_ans_payload,
  output     [8:0]    io_cnt_in,
  input               clk,
  input               reset
);
  wire                convolutionBlock_2_io_output_valid;
  wire       [31:0]   convolutionBlock_2_io_output_payload_0;
  wire       [31:0]   convolutionBlock_2_io_output_payload_1;
  wire       [31:0]   convolutionBlock_2_io_output_payload_2;
  wire       [31:0]   convolutionBlock_2_io_output_payload_3;
  wire       [31:0]   convolutionBlock_2_io_output_payload_4;
  wire       [31:0]   convolutionBlock_2_io_output_payload_5;
  wire       [31:0]   convolutionBlock_2_io_output_payload_6;
  wire       [31:0]   convolutionBlock_2_io_output_payload_7;
  wire       [31:0]   convolutionBlock_2_io_output_payload_8;
  wire       [31:0]   convolutionBlock_2_io_output_payload_9;
  wire       [31:0]   convolutionBlock_2_io_output_payload_10;
  wire       [31:0]   convolutionBlock_2_io_output_payload_11;
  wire       [31:0]   convolutionBlock_2_io_output_payload_12;
  wire       [31:0]   convolutionBlock_2_io_output_payload_13;
  wire                relu_1_io_output_valid;
  wire       [31:0]   relu_1_io_output_payload_0;
  wire       [31:0]   relu_1_io_output_payload_1;
  wire       [31:0]   relu_1_io_output_payload_2;
  wire       [31:0]   relu_1_io_output_payload_3;
  wire       [31:0]   relu_1_io_output_payload_4;
  wire       [31:0]   relu_1_io_output_payload_5;
  wire       [31:0]   relu_1_io_output_payload_6;
  wire       [31:0]   relu_1_io_output_payload_7;
  wire       [31:0]   relu_1_io_output_payload_8;
  wire       [31:0]   relu_1_io_output_payload_9;
  wire       [31:0]   relu_1_io_output_payload_10;
  wire       [31:0]   relu_1_io_output_payload_11;
  wire       [31:0]   relu_1_io_output_payload_12;
  wire       [31:0]   relu_1_io_output_payload_13;
  wire                avgPoolBlock_1_io_output_valid;
  wire       [31:0]   avgPoolBlock_1_io_output_payload_0;
  wire                convolutionBlock_3_io_output_valid;
  wire       [31:0]   convolutionBlock_3_io_output_payload_0;
  wire       [30:0]   _zz_20;
  wire       [30:0]   _zz_21;
  wire       [8:0]    _zz_22;
  wire       [8:0]    _zz_23;
  wire       [8:0]    _zz_24;
  wire       [8:0]    _zz_25;
  wire       [8:0]    _zz_26;
  wire       [21:0]   _zz_27;
  wire       [8:0]    _zz_28;
  wire       [30:0]   _zz_29;
  wire       [30:0]   _zz_30;
  wire       [8:0]    _zz_31;
  wire       [8:0]    _zz_32;
  wire       [8:0]    _zz_33;
  wire       [8:0]    _zz_34;
  wire       [8:0]    _zz_35;
  wire       [21:0]   _zz_36;
  wire       [8:0]    _zz_37;
  wire       [30:0]   _zz_38;
  wire       [30:0]   _zz_39;
  wire       [8:0]    _zz_40;
  wire       [8:0]    _zz_41;
  wire       [8:0]    _zz_42;
  wire       [8:0]    _zz_43;
  wire       [8:0]    _zz_44;
  wire       [21:0]   _zz_45;
  wire       [8:0]    _zz_46;
  wire       [30:0]   _zz_47;
  wire       [30:0]   _zz_48;
  wire       [8:0]    _zz_49;
  wire       [8:0]    _zz_50;
  wire       [8:0]    _zz_51;
  wire       [8:0]    _zz_52;
  wire       [8:0]    _zz_53;
  wire       [21:0]   _zz_54;
  wire       [8:0]    _zz_55;
  wire       [30:0]   _zz_56;
  wire       [30:0]   _zz_57;
  wire       [8:0]    _zz_58;
  wire       [8:0]    _zz_59;
  wire       [8:0]    _zz_60;
  wire       [8:0]    _zz_61;
  wire       [8:0]    _zz_62;
  wire       [21:0]   _zz_63;
  wire       [8:0]    _zz_64;
  wire       [30:0]   _zz_65;
  wire       [30:0]   _zz_66;
  wire       [8:0]    _zz_67;
  wire       [8:0]    _zz_68;
  wire       [8:0]    _zz_69;
  wire       [8:0]    _zz_70;
  wire       [8:0]    _zz_71;
  wire       [21:0]   _zz_72;
  wire       [8:0]    _zz_73;
  wire       [30:0]   _zz_74;
  wire       [30:0]   _zz_75;
  wire       [8:0]    _zz_76;
  wire       [8:0]    _zz_77;
  wire       [8:0]    _zz_78;
  wire       [8:0]    _zz_79;
  wire       [8:0]    _zz_80;
  wire       [21:0]   _zz_81;
  wire       [8:0]    _zz_82;
  wire       [30:0]   _zz_83;
  wire       [30:0]   _zz_84;
  wire       [8:0]    _zz_85;
  wire       [8:0]    _zz_86;
  wire       [8:0]    _zz_87;
  wire       [8:0]    _zz_88;
  wire       [8:0]    _zz_89;
  wire       [21:0]   _zz_90;
  wire       [8:0]    _zz_91;
  wire       [38:0]   _zz_92;
  wire       [38:0]   _zz_93;
  wire       [31:0]   _zz_94;
  wire       [6:0]    _zz_95;
  wire       [21:0]   _zz_96;
  wire       [31:0]   _zz_97;
  wire       [38:0]   _zz_98;
  wire       [38:0]   _zz_99;
  wire       [31:0]   _zz_100;
  wire       [6:0]    _zz_101;
  wire       [21:0]   _zz_102;
  wire       [31:0]   _zz_103;
  wire       [38:0]   _zz_104;
  wire       [38:0]   _zz_105;
  wire       [31:0]   _zz_106;
  wire       [6:0]    _zz_107;
  wire       [21:0]   _zz_108;
  wire       [31:0]   _zz_109;
  wire       [38:0]   _zz_110;
  wire       [38:0]   _zz_111;
  wire       [31:0]   _zz_112;
  wire       [6:0]    _zz_113;
  wire       [21:0]   _zz_114;
  wire       [31:0]   _zz_115;
  wire       [38:0]   _zz_116;
  wire       [38:0]   _zz_117;
  wire       [31:0]   _zz_118;
  wire       [6:0]    _zz_119;
  wire       [21:0]   _zz_120;
  wire       [31:0]   _zz_121;
  wire       [38:0]   _zz_122;
  wire       [38:0]   _zz_123;
  wire       [31:0]   _zz_124;
  wire       [6:0]    _zz_125;
  wire       [21:0]   _zz_126;
  wire       [31:0]   _zz_127;
  wire       [38:0]   _zz_128;
  wire       [38:0]   _zz_129;
  wire       [31:0]   _zz_130;
  wire       [6:0]    _zz_131;
  wire       [21:0]   _zz_132;
  wire       [31:0]   _zz_133;
  wire       [38:0]   _zz_134;
  wire       [38:0]   _zz_135;
  wire       [31:0]   _zz_136;
  wire       [6:0]    _zz_137;
  wire       [21:0]   _zz_138;
  wire       [31:0]   _zz_139;
  wire       [38:0]   _zz_140;
  wire       [38:0]   _zz_141;
  wire       [31:0]   _zz_142;
  wire       [6:0]    _zz_143;
  wire       [21:0]   _zz_144;
  wire       [31:0]   _zz_145;
  wire       [38:0]   _zz_146;
  wire       [38:0]   _zz_147;
  wire       [31:0]   _zz_148;
  wire       [6:0]    _zz_149;
  wire       [21:0]   _zz_150;
  wire       [31:0]   _zz_151;
  wire       [38:0]   _zz_152;
  wire       [38:0]   _zz_153;
  wire       [31:0]   _zz_154;
  wire       [6:0]    _zz_155;
  wire       [21:0]   _zz_156;
  wire       [31:0]   _zz_157;
  wire       [38:0]   _zz_158;
  wire       [38:0]   _zz_159;
  wire       [31:0]   _zz_160;
  wire       [6:0]    _zz_161;
  wire       [21:0]   _zz_162;
  wire       [31:0]   _zz_163;
  wire       [38:0]   _zz_164;
  wire       [38:0]   _zz_165;
  wire       [31:0]   _zz_166;
  wire       [6:0]    _zz_167;
  wire       [21:0]   _zz_168;
  wire       [31:0]   _zz_169;
  wire       [38:0]   _zz_170;
  wire       [38:0]   _zz_171;
  wire       [31:0]   _zz_172;
  wire       [6:0]    _zz_173;
  wire       [21:0]   _zz_174;
  wire       [31:0]   _zz_175;
  reg        [31:0]   layer1_in_0;
  reg        [31:0]   layer1_in_1;
  reg        [31:0]   layer1_in_2;
  reg        [31:0]   layer1_in_3;
  reg        [31:0]   layer1_in_4;
  reg        [31:0]   layer1_in_5;
  reg        [31:0]   layer1_in_6;
  reg        [31:0]   layer1_in_7;
  reg        [31:0]   layer1_in_8;
  reg        [31:0]   layer1_in_9;
  reg        [31:0]   layer1_in_10;
  reg        [31:0]   layer1_in_11;
  reg        [31:0]   layer1_in_12;
  reg        [31:0]   layer1_in_13;
  reg        [31:0]   layer1_in_14;
  reg        [31:0]   layer1_in_15;
  reg        [31:0]   layer1_in_16;
  reg        [31:0]   layer1_in_17;
  reg        [31:0]   layer1_in_18;
  reg        [31:0]   layer1_in_19;
  reg        [31:0]   layer1_in_20;
  reg        [31:0]   layer1_in_21;
  reg        [31:0]   layer1_in_22;
  reg        [31:0]   layer1_in_23;
  reg        [31:0]   layer1_in_24;
  reg        [31:0]   layer1_in_25;
  reg        [31:0]   layer1_in_26;
  reg        [31:0]   layer1_in_27;
  reg        [31:0]   layer1_in_28;
  reg        [31:0]   layer1_in_29;
  reg        [31:0]   layer1_in_30;
  reg        [31:0]   layer1_in_31;
  reg        [8:0]    cnt_in;
  reg        [1:0]    cnt;
  wire                inp_points_valid;
  wire       [31:0]   inp_points_payload_0;
  wire       [31:0]   inp_points_payload_1;
  wire       [31:0]   inp_points_payload_2;
  wire       [31:0]   inp_points_payload_3;
  wire       [31:0]   inp_points_payload_4;
  wire       [31:0]   inp_points_payload_5;
  wire       [31:0]   inp_points_payload_6;
  wire       [31:0]   inp_points_payload_7;
  wire       [31:0]   inp_points_payload_8;
  wire       [31:0]   inp_points_payload_9;
  wire       [31:0]   inp_points_payload_10;
  wire       [31:0]   inp_points_payload_11;
  wire       [31:0]   inp_points_payload_12;
  wire       [31:0]   inp_points_payload_13;
  wire       [31:0]   inp_points_payload_14;
  wire       [31:0]   inp_points_payload_15;
  wire       [31:0]   inp_points_payload_16;
  wire       [31:0]   inp_points_payload_17;
  wire       [31:0]   inp_points_payload_18;
  wire       [31:0]   inp_points_payload_19;
  wire       [31:0]   inp_points_payload_20;
  wire       [31:0]   inp_points_payload_21;
  wire       [31:0]   inp_points_payload_22;
  wire       [31:0]   inp_points_payload_23;
  wire       [31:0]   inp_points_payload_24;
  wire       [31:0]   inp_points_payload_25;
  wire       [31:0]   inp_points_payload_26;
  wire       [31:0]   inp_points_payload_27;
  wire       [31:0]   inp_points_payload_28;
  wire       [31:0]   inp_points_payload_29;
  wire       [31:0]   inp_points_payload_30;
  wire       [31:0]   inp_points_payload_31;
  reg                 _zz_1;
  wire                l1_points_valid;
  wire       [31:0]   l1_points_payload_0;
  wire       [31:0]   l1_points_payload_1;
  wire       [31:0]   l1_points_payload_2;
  wire       [31:0]   l1_points_payload_3;
  wire       [31:0]   l1_points_payload_4;
  wire       [31:0]   l1_points_payload_5;
  wire       [31:0]   l1_points_payload_6;
  wire       [31:0]   l1_points_payload_7;
  wire       [31:0]   l1_points_payload_8;
  wire       [31:0]   l1_points_payload_9;
  wire       [31:0]   l1_points_payload_10;
  wire       [31:0]   l1_points_payload_11;
  wire       [31:0]   l1_points_payload_12;
  wire       [31:0]   l1_points_payload_13;
  wire                l2_points_valid;
  wire       [31:0]   l2_points_payload_0;
  wire       [31:0]   l2_points_payload_1;
  wire       [31:0]   l2_points_payload_2;
  wire       [31:0]   l2_points_payload_3;
  wire       [31:0]   l2_points_payload_4;
  wire       [31:0]   l2_points_payload_5;
  wire       [31:0]   l2_points_payload_6;
  wire       [31:0]   l2_points_payload_7;
  wire       [31:0]   l2_points_payload_8;
  wire       [31:0]   l2_points_payload_9;
  wire       [31:0]   l2_points_payload_10;
  wire       [31:0]   l2_points_payload_11;
  wire       [31:0]   l2_points_payload_12;
  wire       [31:0]   l2_points_payload_13;
  wire                l3_points_valid;
  wire       [31:0]   l3_points_payload_0;
  wire                l4_points_valid;
  wire       [31:0]   l4_points_payload_0;
  reg        [31:0]   sig;
  reg        [3:0]    sig2;
  wire       [31:0]   plot_sig;
  reg        [3:0]    _zz_2;
  reg        [31:0]   _zz_3;
  reg        [3:0]    _zz_4;
  reg        [3:0]    _zz_5;
  reg                 ans_valid;
  wire       [3:0]    ans_payload;
  wire       [31:0]   plot1_0;
  wire       [31:0]   plot1_1;
  wire       [31:0]   plot1_2;
  wire       [31:0]   plot1_3;
  wire       [31:0]   plot1_4;
  wire       [31:0]   plot1_5;
  wire       [31:0]   plot1_6;
  wire       [31:0]   plot1_7;
  wire       [31:0]   plot1_8;
  wire       [31:0]   plot1_9;
  wire       [31:0]   plot1_10;
  wire       [31:0]   plot1_11;
  wire       [31:0]   plot1_12;
  wire       [31:0]   plot1_13;
  wire       [31:0]   plot1_14;
  wire       [31:0]   plot1_15;
  wire       [31:0]   plot1_16;
  wire       [31:0]   plot1_17;
  wire       [31:0]   plot1_18;
  wire       [31:0]   plot1_19;
  wire       [31:0]   plot1_20;
  wire       [31:0]   plot1_21;
  wire       [31:0]   plot1_22;
  wire       [31:0]   plot1_23;
  wire       [31:0]   plot1_24;
  wire       [31:0]   plot1_25;
  wire       [31:0]   plot1_26;
  wire       [31:0]   plot1_27;
  wire       [31:0]   plot1_28;
  wire       [31:0]   plot1_29;
  wire       [31:0]   plot1_30;
  wire       [31:0]   plot1_31;
  wire       [31:0]   plot2_0;
  wire       [31:0]   plot2_1;
  wire       [31:0]   plot2_2;
  wire       [31:0]   plot2_3;
  wire       [31:0]   plot2_4;
  wire       [31:0]   plot2_5;
  wire       [31:0]   plot2_6;
  wire       [31:0]   plot2_7;
  wire       [31:0]   plot2_8;
  wire       [31:0]   plot2_9;
  wire       [31:0]   plot2_10;
  wire       [31:0]   plot2_11;
  wire       [31:0]   plot2_12;
  wire       [31:0]   plot2_13;
  wire       [31:0]   plot3_0;
  reg        [38:0]   _zz_6;
  reg        [38:0]   _zz_7;
  reg        [38:0]   _zz_8;
  reg        [38:0]   _zz_9;
  reg        [38:0]   _zz_10;
  reg        [38:0]   _zz_11;
  reg        [38:0]   _zz_12;
  reg        [38:0]   _zz_13;
  reg        [38:0]   _zz_14;
  reg        [38:0]   _zz_15;
  reg        [38:0]   _zz_16;
  reg        [38:0]   _zz_17;
  reg        [38:0]   _zz_18;
  reg        [38:0]   _zz_19;

  assign _zz_20 = ($signed(_zz_21) / $signed(_zz_28));
  assign _zz_21 = ($signed(_zz_22) * $signed(_zz_27));
  assign _zz_22 = ($signed(_zz_23) + $signed(_zz_26));
  assign _zz_23 = ($signed(_zz_24) - $signed(_zz_25));
  assign _zz_24 = {1'b0,io_input_payload_0};
  assign _zz_25 = 9'h0ff;
  assign _zz_26 = {1'b0,io_input_payload_0};
  assign _zz_27 = 22'h100000;
  assign _zz_28 = 9'h0ff;
  assign _zz_29 = ($signed(_zz_30) / $signed(_zz_37));
  assign _zz_30 = ($signed(_zz_31) * $signed(_zz_36));
  assign _zz_31 = ($signed(_zz_32) + $signed(_zz_35));
  assign _zz_32 = ($signed(_zz_33) - $signed(_zz_34));
  assign _zz_33 = {1'b0,io_input_payload_1};
  assign _zz_34 = 9'h0ff;
  assign _zz_35 = {1'b0,io_input_payload_1};
  assign _zz_36 = 22'h100000;
  assign _zz_37 = 9'h0ff;
  assign _zz_38 = ($signed(_zz_39) / $signed(_zz_46));
  assign _zz_39 = ($signed(_zz_40) * $signed(_zz_45));
  assign _zz_40 = ($signed(_zz_41) + $signed(_zz_44));
  assign _zz_41 = ($signed(_zz_42) - $signed(_zz_43));
  assign _zz_42 = {1'b0,io_input_payload_2};
  assign _zz_43 = 9'h0ff;
  assign _zz_44 = {1'b0,io_input_payload_2};
  assign _zz_45 = 22'h100000;
  assign _zz_46 = 9'h0ff;
  assign _zz_47 = ($signed(_zz_48) / $signed(_zz_55));
  assign _zz_48 = ($signed(_zz_49) * $signed(_zz_54));
  assign _zz_49 = ($signed(_zz_50) + $signed(_zz_53));
  assign _zz_50 = ($signed(_zz_51) - $signed(_zz_52));
  assign _zz_51 = {1'b0,io_input_payload_3};
  assign _zz_52 = 9'h0ff;
  assign _zz_53 = {1'b0,io_input_payload_3};
  assign _zz_54 = 22'h100000;
  assign _zz_55 = 9'h0ff;
  assign _zz_56 = ($signed(_zz_57) / $signed(_zz_64));
  assign _zz_57 = ($signed(_zz_58) * $signed(_zz_63));
  assign _zz_58 = ($signed(_zz_59) + $signed(_zz_62));
  assign _zz_59 = ($signed(_zz_60) - $signed(_zz_61));
  assign _zz_60 = {1'b0,io_input_payload_4};
  assign _zz_61 = 9'h0ff;
  assign _zz_62 = {1'b0,io_input_payload_4};
  assign _zz_63 = 22'h100000;
  assign _zz_64 = 9'h0ff;
  assign _zz_65 = ($signed(_zz_66) / $signed(_zz_73));
  assign _zz_66 = ($signed(_zz_67) * $signed(_zz_72));
  assign _zz_67 = ($signed(_zz_68) + $signed(_zz_71));
  assign _zz_68 = ($signed(_zz_69) - $signed(_zz_70));
  assign _zz_69 = {1'b0,io_input_payload_5};
  assign _zz_70 = 9'h0ff;
  assign _zz_71 = {1'b0,io_input_payload_5};
  assign _zz_72 = 22'h100000;
  assign _zz_73 = 9'h0ff;
  assign _zz_74 = ($signed(_zz_75) / $signed(_zz_82));
  assign _zz_75 = ($signed(_zz_76) * $signed(_zz_81));
  assign _zz_76 = ($signed(_zz_77) + $signed(_zz_80));
  assign _zz_77 = ($signed(_zz_78) - $signed(_zz_79));
  assign _zz_78 = {1'b0,io_input_payload_6};
  assign _zz_79 = 9'h0ff;
  assign _zz_80 = {1'b0,io_input_payload_6};
  assign _zz_81 = 22'h100000;
  assign _zz_82 = 9'h0ff;
  assign _zz_83 = ($signed(_zz_84) / $signed(_zz_91));
  assign _zz_84 = ($signed(_zz_85) * $signed(_zz_90));
  assign _zz_85 = ($signed(_zz_86) + $signed(_zz_89));
  assign _zz_86 = ($signed(_zz_87) - $signed(_zz_88));
  assign _zz_87 = {1'b0,io_input_payload_7};
  assign _zz_88 = 9'h0ff;
  assign _zz_89 = {1'b0,io_input_payload_7};
  assign _zz_90 = 22'h100000;
  assign _zz_91 = 9'h0ff;
  assign _zz_92 = ($signed(_zz_93) / $signed(_zz_96));
  assign _zz_93 = ($signed(_zz_94) * $signed(_zz_95));
  assign _zz_94 = l2_points_payload_0;
  assign _zz_95 = 7'h33;
  assign _zz_96 = 22'h100000;
  assign _zz_97 = 32'h00500000;
  assign _zz_98 = ($signed(_zz_99) / $signed(_zz_102));
  assign _zz_99 = ($signed(_zz_100) * $signed(_zz_101));
  assign _zz_100 = l2_points_payload_1;
  assign _zz_101 = 7'h33;
  assign _zz_102 = 22'h100000;
  assign _zz_103 = 32'h00500000;
  assign _zz_104 = ($signed(_zz_105) / $signed(_zz_108));
  assign _zz_105 = ($signed(_zz_106) * $signed(_zz_107));
  assign _zz_106 = l2_points_payload_2;
  assign _zz_107 = 7'h33;
  assign _zz_108 = 22'h100000;
  assign _zz_109 = 32'h00500000;
  assign _zz_110 = ($signed(_zz_111) / $signed(_zz_114));
  assign _zz_111 = ($signed(_zz_112) * $signed(_zz_113));
  assign _zz_112 = l2_points_payload_3;
  assign _zz_113 = 7'h33;
  assign _zz_114 = 22'h100000;
  assign _zz_115 = 32'h00500000;
  assign _zz_116 = ($signed(_zz_117) / $signed(_zz_120));
  assign _zz_117 = ($signed(_zz_118) * $signed(_zz_119));
  assign _zz_118 = l2_points_payload_4;
  assign _zz_119 = 7'h33;
  assign _zz_120 = 22'h100000;
  assign _zz_121 = 32'h00500000;
  assign _zz_122 = ($signed(_zz_123) / $signed(_zz_126));
  assign _zz_123 = ($signed(_zz_124) * $signed(_zz_125));
  assign _zz_124 = l2_points_payload_5;
  assign _zz_125 = 7'h33;
  assign _zz_126 = 22'h100000;
  assign _zz_127 = 32'h00500000;
  assign _zz_128 = ($signed(_zz_129) / $signed(_zz_132));
  assign _zz_129 = ($signed(_zz_130) * $signed(_zz_131));
  assign _zz_130 = l2_points_payload_6;
  assign _zz_131 = 7'h33;
  assign _zz_132 = 22'h100000;
  assign _zz_133 = 32'h00500000;
  assign _zz_134 = ($signed(_zz_135) / $signed(_zz_138));
  assign _zz_135 = ($signed(_zz_136) * $signed(_zz_137));
  assign _zz_136 = l2_points_payload_7;
  assign _zz_137 = 7'h33;
  assign _zz_138 = 22'h100000;
  assign _zz_139 = 32'h00500000;
  assign _zz_140 = ($signed(_zz_141) / $signed(_zz_144));
  assign _zz_141 = ($signed(_zz_142) * $signed(_zz_143));
  assign _zz_142 = l2_points_payload_8;
  assign _zz_143 = 7'h33;
  assign _zz_144 = 22'h100000;
  assign _zz_145 = 32'h00500000;
  assign _zz_146 = ($signed(_zz_147) / $signed(_zz_150));
  assign _zz_147 = ($signed(_zz_148) * $signed(_zz_149));
  assign _zz_148 = l2_points_payload_9;
  assign _zz_149 = 7'h33;
  assign _zz_150 = 22'h100000;
  assign _zz_151 = 32'h00500000;
  assign _zz_152 = ($signed(_zz_153) / $signed(_zz_156));
  assign _zz_153 = ($signed(_zz_154) * $signed(_zz_155));
  assign _zz_154 = l2_points_payload_10;
  assign _zz_155 = 7'h33;
  assign _zz_156 = 22'h100000;
  assign _zz_157 = 32'h00500000;
  assign _zz_158 = ($signed(_zz_159) / $signed(_zz_162));
  assign _zz_159 = ($signed(_zz_160) * $signed(_zz_161));
  assign _zz_160 = l2_points_payload_11;
  assign _zz_161 = 7'h33;
  assign _zz_162 = 22'h100000;
  assign _zz_163 = 32'h00500000;
  assign _zz_164 = ($signed(_zz_165) / $signed(_zz_168));
  assign _zz_165 = ($signed(_zz_166) * $signed(_zz_167));
  assign _zz_166 = l2_points_payload_12;
  assign _zz_167 = 7'h33;
  assign _zz_168 = 22'h100000;
  assign _zz_169 = 32'h00500000;
  assign _zz_170 = ($signed(_zz_171) / $signed(_zz_174));
  assign _zz_171 = ($signed(_zz_172) * $signed(_zz_173));
  assign _zz_172 = l2_points_payload_13;
  assign _zz_173 = 7'h33;
  assign _zz_174 = 22'h100000;
  assign _zz_175 = 32'h00500000;
  ConvolutionBlock convolutionBlock_2 (
    .io_input_valid          (inp_points_valid                               ), //i
    .io_input_payload_0      (inp_points_payload_0[31:0]                     ), //i
    .io_input_payload_1      (inp_points_payload_1[31:0]                     ), //i
    .io_input_payload_2      (inp_points_payload_2[31:0]                     ), //i
    .io_input_payload_3      (inp_points_payload_3[31:0]                     ), //i
    .io_input_payload_4      (inp_points_payload_4[31:0]                     ), //i
    .io_input_payload_5      (inp_points_payload_5[31:0]                     ), //i
    .io_input_payload_6      (inp_points_payload_6[31:0]                     ), //i
    .io_input_payload_7      (inp_points_payload_7[31:0]                     ), //i
    .io_input_payload_8      (inp_points_payload_8[31:0]                     ), //i
    .io_input_payload_9      (inp_points_payload_9[31:0]                     ), //i
    .io_input_payload_10     (inp_points_payload_10[31:0]                    ), //i
    .io_input_payload_11     (inp_points_payload_11[31:0]                    ), //i
    .io_input_payload_12     (inp_points_payload_12[31:0]                    ), //i
    .io_input_payload_13     (inp_points_payload_13[31:0]                    ), //i
    .io_input_payload_14     (inp_points_payload_14[31:0]                    ), //i
    .io_input_payload_15     (inp_points_payload_15[31:0]                    ), //i
    .io_input_payload_16     (inp_points_payload_16[31:0]                    ), //i
    .io_input_payload_17     (inp_points_payload_17[31:0]                    ), //i
    .io_input_payload_18     (inp_points_payload_18[31:0]                    ), //i
    .io_input_payload_19     (inp_points_payload_19[31:0]                    ), //i
    .io_input_payload_20     (inp_points_payload_20[31:0]                    ), //i
    .io_input_payload_21     (inp_points_payload_21[31:0]                    ), //i
    .io_input_payload_22     (inp_points_payload_22[31:0]                    ), //i
    .io_input_payload_23     (inp_points_payload_23[31:0]                    ), //i
    .io_input_payload_24     (inp_points_payload_24[31:0]                    ), //i
    .io_input_payload_25     (inp_points_payload_25[31:0]                    ), //i
    .io_input_payload_26     (inp_points_payload_26[31:0]                    ), //i
    .io_input_payload_27     (inp_points_payload_27[31:0]                    ), //i
    .io_input_payload_28     (inp_points_payload_28[31:0]                    ), //i
    .io_input_payload_29     (inp_points_payload_29[31:0]                    ), //i
    .io_input_payload_30     (inp_points_payload_30[31:0]                    ), //i
    .io_input_payload_31     (inp_points_payload_31[31:0]                    ), //i
    .io_output_valid         (convolutionBlock_2_io_output_valid             ), //o
    .io_output_payload_0     (convolutionBlock_2_io_output_payload_0[31:0]   ), //o
    .io_output_payload_1     (convolutionBlock_2_io_output_payload_1[31:0]   ), //o
    .io_output_payload_2     (convolutionBlock_2_io_output_payload_2[31:0]   ), //o
    .io_output_payload_3     (convolutionBlock_2_io_output_payload_3[31:0]   ), //o
    .io_output_payload_4     (convolutionBlock_2_io_output_payload_4[31:0]   ), //o
    .io_output_payload_5     (convolutionBlock_2_io_output_payload_5[31:0]   ), //o
    .io_output_payload_6     (convolutionBlock_2_io_output_payload_6[31:0]   ), //o
    .io_output_payload_7     (convolutionBlock_2_io_output_payload_7[31:0]   ), //o
    .io_output_payload_8     (convolutionBlock_2_io_output_payload_8[31:0]   ), //o
    .io_output_payload_9     (convolutionBlock_2_io_output_payload_9[31:0]   ), //o
    .io_output_payload_10    (convolutionBlock_2_io_output_payload_10[31:0]  ), //o
    .io_output_payload_11    (convolutionBlock_2_io_output_payload_11[31:0]  ), //o
    .io_output_payload_12    (convolutionBlock_2_io_output_payload_12[31:0]  ), //o
    .io_output_payload_13    (convolutionBlock_2_io_output_payload_13[31:0]  ), //o
    .clk                     (clk                                            ), //i
    .reset                   (reset                                          )  //i
  );
  Relu relu_1 (
    .io_input_valid          (l1_points_valid                    ), //i
    .io_input_payload_0      (l1_points_payload_0[31:0]          ), //i
    .io_input_payload_1      (l1_points_payload_1[31:0]          ), //i
    .io_input_payload_2      (l1_points_payload_2[31:0]          ), //i
    .io_input_payload_3      (l1_points_payload_3[31:0]          ), //i
    .io_input_payload_4      (l1_points_payload_4[31:0]          ), //i
    .io_input_payload_5      (l1_points_payload_5[31:0]          ), //i
    .io_input_payload_6      (l1_points_payload_6[31:0]          ), //i
    .io_input_payload_7      (l1_points_payload_7[31:0]          ), //i
    .io_input_payload_8      (l1_points_payload_8[31:0]          ), //i
    .io_input_payload_9      (l1_points_payload_9[31:0]          ), //i
    .io_input_payload_10     (l1_points_payload_10[31:0]         ), //i
    .io_input_payload_11     (l1_points_payload_11[31:0]         ), //i
    .io_input_payload_12     (l1_points_payload_12[31:0]         ), //i
    .io_input_payload_13     (l1_points_payload_13[31:0]         ), //i
    .io_output_valid         (relu_1_io_output_valid             ), //o
    .io_output_payload_0     (relu_1_io_output_payload_0[31:0]   ), //o
    .io_output_payload_1     (relu_1_io_output_payload_1[31:0]   ), //o
    .io_output_payload_2     (relu_1_io_output_payload_2[31:0]   ), //o
    .io_output_payload_3     (relu_1_io_output_payload_3[31:0]   ), //o
    .io_output_payload_4     (relu_1_io_output_payload_4[31:0]   ), //o
    .io_output_payload_5     (relu_1_io_output_payload_5[31:0]   ), //o
    .io_output_payload_6     (relu_1_io_output_payload_6[31:0]   ), //o
    .io_output_payload_7     (relu_1_io_output_payload_7[31:0]   ), //o
    .io_output_payload_8     (relu_1_io_output_payload_8[31:0]   ), //o
    .io_output_payload_9     (relu_1_io_output_payload_9[31:0]   ), //o
    .io_output_payload_10    (relu_1_io_output_payload_10[31:0]  ), //o
    .io_output_payload_11    (relu_1_io_output_payload_11[31:0]  ), //o
    .io_output_payload_12    (relu_1_io_output_payload_12[31:0]  ), //o
    .io_output_payload_13    (relu_1_io_output_payload_13[31:0]  ), //o
    .clk                     (clk                                ), //i
    .reset                   (reset                              )  //i
  );
  AvgPoolBlock avgPoolBlock_1 (
    .io_input_valid         (l2_points_valid                           ), //i
    .io_input_payload_0     (l2_points_payload_0[31:0]                 ), //i
    .io_input_payload_1     (l2_points_payload_1[31:0]                 ), //i
    .io_input_payload_2     (l2_points_payload_2[31:0]                 ), //i
    .io_input_payload_3     (l2_points_payload_3[31:0]                 ), //i
    .io_input_payload_4     (l2_points_payload_4[31:0]                 ), //i
    .io_input_payload_5     (l2_points_payload_5[31:0]                 ), //i
    .io_input_payload_6     (l2_points_payload_6[31:0]                 ), //i
    .io_input_payload_7     (l2_points_payload_7[31:0]                 ), //i
    .io_input_payload_8     (l2_points_payload_8[31:0]                 ), //i
    .io_input_payload_9     (l2_points_payload_9[31:0]                 ), //i
    .io_input_payload_10    (l2_points_payload_10[31:0]                ), //i
    .io_input_payload_11    (l2_points_payload_11[31:0]                ), //i
    .io_input_payload_12    (l2_points_payload_12[31:0]                ), //i
    .io_input_payload_13    (l2_points_payload_13[31:0]                ), //i
    .io_output_valid        (avgPoolBlock_1_io_output_valid            ), //o
    .io_output_payload_0    (avgPoolBlock_1_io_output_payload_0[31:0]  ), //o
    .clk                    (clk                                       ), //i
    .reset                  (reset                                     )  //i
  );
  ConvolutionBlock_1 convolutionBlock_3 (
    .io_input_valid         (l3_points_valid                               ), //i
    .io_input_payload_0     (l3_points_payload_0[31:0]                     ), //i
    .io_output_valid        (convolutionBlock_3_io_output_valid            ), //o
    .io_output_payload_0    (convolutionBlock_3_io_output_payload_0[31:0]  ), //o
    .clk                    (clk                                           ), //i
    .reset                  (reset                                         )  //i
  );
  assign io_cnt_in = cnt_in;
  assign inp_points_valid = _zz_1;
  assign inp_points_payload_0 = layer1_in_0;
  assign inp_points_payload_1 = layer1_in_1;
  assign inp_points_payload_2 = layer1_in_2;
  assign inp_points_payload_3 = layer1_in_3;
  assign inp_points_payload_4 = layer1_in_4;
  assign inp_points_payload_5 = layer1_in_5;
  assign inp_points_payload_6 = layer1_in_6;
  assign inp_points_payload_7 = layer1_in_7;
  assign inp_points_payload_8 = layer1_in_8;
  assign inp_points_payload_9 = layer1_in_9;
  assign inp_points_payload_10 = layer1_in_10;
  assign inp_points_payload_11 = layer1_in_11;
  assign inp_points_payload_12 = layer1_in_12;
  assign inp_points_payload_13 = layer1_in_13;
  assign inp_points_payload_14 = layer1_in_14;
  assign inp_points_payload_15 = layer1_in_15;
  assign inp_points_payload_16 = layer1_in_16;
  assign inp_points_payload_17 = layer1_in_17;
  assign inp_points_payload_18 = layer1_in_18;
  assign inp_points_payload_19 = layer1_in_19;
  assign inp_points_payload_20 = layer1_in_20;
  assign inp_points_payload_21 = layer1_in_21;
  assign inp_points_payload_22 = layer1_in_22;
  assign inp_points_payload_23 = layer1_in_23;
  assign inp_points_payload_24 = layer1_in_24;
  assign inp_points_payload_25 = layer1_in_25;
  assign inp_points_payload_26 = layer1_in_26;
  assign inp_points_payload_27 = layer1_in_27;
  assign inp_points_payload_28 = layer1_in_28;
  assign inp_points_payload_29 = layer1_in_29;
  assign inp_points_payload_30 = layer1_in_30;
  assign inp_points_payload_31 = layer1_in_31;
  assign l1_points_valid = convolutionBlock_2_io_output_valid;
  assign l1_points_payload_0 = convolutionBlock_2_io_output_payload_0;
  assign l1_points_payload_1 = convolutionBlock_2_io_output_payload_1;
  assign l1_points_payload_2 = convolutionBlock_2_io_output_payload_2;
  assign l1_points_payload_3 = convolutionBlock_2_io_output_payload_3;
  assign l1_points_payload_4 = convolutionBlock_2_io_output_payload_4;
  assign l1_points_payload_5 = convolutionBlock_2_io_output_payload_5;
  assign l1_points_payload_6 = convolutionBlock_2_io_output_payload_6;
  assign l1_points_payload_7 = convolutionBlock_2_io_output_payload_7;
  assign l1_points_payload_8 = convolutionBlock_2_io_output_payload_8;
  assign l1_points_payload_9 = convolutionBlock_2_io_output_payload_9;
  assign l1_points_payload_10 = convolutionBlock_2_io_output_payload_10;
  assign l1_points_payload_11 = convolutionBlock_2_io_output_payload_11;
  assign l1_points_payload_12 = convolutionBlock_2_io_output_payload_12;
  assign l1_points_payload_13 = convolutionBlock_2_io_output_payload_13;
  assign l2_points_valid = relu_1_io_output_valid;
  assign l2_points_payload_0 = relu_1_io_output_payload_0;
  assign l2_points_payload_1 = relu_1_io_output_payload_1;
  assign l2_points_payload_2 = relu_1_io_output_payload_2;
  assign l2_points_payload_3 = relu_1_io_output_payload_3;
  assign l2_points_payload_4 = relu_1_io_output_payload_4;
  assign l2_points_payload_5 = relu_1_io_output_payload_5;
  assign l2_points_payload_6 = relu_1_io_output_payload_6;
  assign l2_points_payload_7 = relu_1_io_output_payload_7;
  assign l2_points_payload_8 = relu_1_io_output_payload_8;
  assign l2_points_payload_9 = relu_1_io_output_payload_9;
  assign l2_points_payload_10 = relu_1_io_output_payload_10;
  assign l2_points_payload_11 = relu_1_io_output_payload_11;
  assign l2_points_payload_12 = relu_1_io_output_payload_12;
  assign l2_points_payload_13 = relu_1_io_output_payload_13;
  assign l3_points_valid = avgPoolBlock_1_io_output_valid;
  assign l3_points_payload_0 = avgPoolBlock_1_io_output_payload_0;
  assign l4_points_valid = convolutionBlock_3_io_output_valid;
  assign l4_points_payload_0 = convolutionBlock_3_io_output_payload_0;
  assign plot_sig = sig;
  assign ans_payload = _zz_2;
  always @ (*) begin
    if(((_zz_5 == 4'b1000) && (_zz_4 == 4'b1001)))begin
      ans_valid = 1'b1;
    end else begin
      ans_valid = 1'b0;
    end
  end

  assign plot1_0 = inp_points_payload_0;
  assign plot1_1 = inp_points_payload_1;
  assign plot1_2 = inp_points_payload_2;
  assign plot1_3 = inp_points_payload_3;
  assign plot1_4 = inp_points_payload_4;
  assign plot1_5 = inp_points_payload_5;
  assign plot1_6 = inp_points_payload_6;
  assign plot1_7 = inp_points_payload_7;
  assign plot1_8 = inp_points_payload_8;
  assign plot1_9 = inp_points_payload_9;
  assign plot1_10 = inp_points_payload_10;
  assign plot1_11 = inp_points_payload_11;
  assign plot1_12 = inp_points_payload_12;
  assign plot1_13 = inp_points_payload_13;
  assign plot1_14 = inp_points_payload_14;
  assign plot1_15 = inp_points_payload_15;
  assign plot1_16 = inp_points_payload_16;
  assign plot1_17 = inp_points_payload_17;
  assign plot1_18 = inp_points_payload_18;
  assign plot1_19 = inp_points_payload_19;
  assign plot1_20 = inp_points_payload_20;
  assign plot1_21 = inp_points_payload_21;
  assign plot1_22 = inp_points_payload_22;
  assign plot1_23 = inp_points_payload_23;
  assign plot1_24 = inp_points_payload_24;
  assign plot1_25 = inp_points_payload_25;
  assign plot1_26 = inp_points_payload_26;
  assign plot1_27 = inp_points_payload_27;
  assign plot1_28 = inp_points_payload_28;
  assign plot1_29 = inp_points_payload_29;
  assign plot1_30 = inp_points_payload_30;
  assign plot1_31 = inp_points_payload_31;
  assign plot2_0 = l2_points_payload_0;
  assign plot2_1 = l2_points_payload_1;
  assign plot2_2 = l2_points_payload_2;
  assign plot2_3 = l2_points_payload_3;
  assign plot2_4 = l2_points_payload_4;
  assign plot2_5 = l2_points_payload_5;
  assign plot2_6 = l2_points_payload_6;
  assign plot2_7 = l2_points_payload_7;
  assign plot2_8 = l2_points_payload_8;
  assign plot2_9 = l2_points_payload_9;
  assign plot2_10 = l2_points_payload_10;
  assign plot2_11 = l2_points_payload_11;
  assign plot2_12 = l2_points_payload_12;
  assign plot2_13 = l2_points_payload_13;
  assign plot3_0 = l3_points_payload_0;
  always @ (*) begin
    _zz_6 = _zz_92;
    if(($signed(_zz_97) < $signed(l2_points_payload_0)))begin
      _zz_6 = 39'h00000000ff;
    end
  end

  always @ (*) begin
    _zz_7 = _zz_98;
    if(($signed(_zz_103) < $signed(l2_points_payload_1)))begin
      _zz_7 = 39'h00000000ff;
    end
  end

  always @ (*) begin
    _zz_8 = _zz_104;
    if(($signed(_zz_109) < $signed(l2_points_payload_2)))begin
      _zz_8 = 39'h00000000ff;
    end
  end

  always @ (*) begin
    _zz_9 = _zz_110;
    if(($signed(_zz_115) < $signed(l2_points_payload_3)))begin
      _zz_9 = 39'h00000000ff;
    end
  end

  always @ (*) begin
    _zz_10 = _zz_116;
    if(($signed(_zz_121) < $signed(l2_points_payload_4)))begin
      _zz_10 = 39'h00000000ff;
    end
  end

  always @ (*) begin
    _zz_11 = _zz_122;
    if(($signed(_zz_127) < $signed(l2_points_payload_5)))begin
      _zz_11 = 39'h00000000ff;
    end
  end

  always @ (*) begin
    _zz_12 = _zz_128;
    if(($signed(_zz_133) < $signed(l2_points_payload_6)))begin
      _zz_12 = 39'h00000000ff;
    end
  end

  always @ (*) begin
    _zz_13 = _zz_134;
    if(($signed(_zz_139) < $signed(l2_points_payload_7)))begin
      _zz_13 = 39'h00000000ff;
    end
  end

  always @ (*) begin
    _zz_14 = _zz_140;
    if(($signed(_zz_145) < $signed(l2_points_payload_8)))begin
      _zz_14 = 39'h00000000ff;
    end
  end

  always @ (*) begin
    _zz_15 = _zz_146;
    if(($signed(_zz_151) < $signed(l2_points_payload_9)))begin
      _zz_15 = 39'h00000000ff;
    end
  end

  always @ (*) begin
    _zz_16 = _zz_152;
    if(($signed(_zz_157) < $signed(l2_points_payload_10)))begin
      _zz_16 = 39'h00000000ff;
    end
  end

  always @ (*) begin
    _zz_17 = _zz_158;
    if(($signed(_zz_163) < $signed(l2_points_payload_11)))begin
      _zz_17 = 39'h00000000ff;
    end
  end

  always @ (*) begin
    _zz_18 = _zz_164;
    if(($signed(_zz_169) < $signed(l2_points_payload_12)))begin
      _zz_18 = 39'h00000000ff;
    end
  end

  always @ (*) begin
    _zz_19 = _zz_170;
    if(($signed(_zz_175) < $signed(l2_points_payload_13)))begin
      _zz_19 = 39'h00000000ff;
    end
  end

  assign io_layer1_rgb_payload_0 = _zz_6[7 : 0];
  assign io_layer1_rgb_payload_1 = _zz_7[7 : 0];
  assign io_layer1_rgb_payload_2 = _zz_8[7 : 0];
  assign io_layer1_rgb_payload_3 = _zz_9[7 : 0];
  assign io_layer1_rgb_payload_4 = _zz_10[7 : 0];
  assign io_layer1_rgb_payload_5 = _zz_11[7 : 0];
  assign io_layer1_rgb_payload_6 = _zz_12[7 : 0];
  assign io_layer1_rgb_payload_7 = _zz_13[7 : 0];
  assign io_layer1_rgb_payload_8 = _zz_14[7 : 0];
  assign io_layer1_rgb_payload_9 = _zz_15[7 : 0];
  assign io_layer1_rgb_payload_10 = _zz_16[7 : 0];
  assign io_layer1_rgb_payload_11 = _zz_17[7 : 0];
  assign io_layer1_rgb_payload_12 = _zz_18[7 : 0];
  assign io_layer1_rgb_payload_13 = _zz_19[7 : 0];
  assign io_layer1_rgb_valid = l2_points_valid;
  assign io_ans_valid = ans_valid;
  assign io_ans_payload = ans_payload;
  always @ (posedge clk) begin
    if(reset) begin
      layer1_in_0 <= 32'h0;
      layer1_in_1 <= 32'h0;
      layer1_in_2 <= 32'h0;
      layer1_in_3 <= 32'h0;
      layer1_in_4 <= 32'h0;
      layer1_in_5 <= 32'h0;
      layer1_in_6 <= 32'h0;
      layer1_in_7 <= 32'h0;
      layer1_in_8 <= 32'h0;
      layer1_in_9 <= 32'h0;
      layer1_in_10 <= 32'h0;
      layer1_in_11 <= 32'h0;
      layer1_in_12 <= 32'h0;
      layer1_in_13 <= 32'h0;
      layer1_in_14 <= 32'h0;
      layer1_in_15 <= 32'h0;
      layer1_in_16 <= 32'h0;
      layer1_in_17 <= 32'h0;
      layer1_in_18 <= 32'h0;
      layer1_in_19 <= 32'h0;
      layer1_in_20 <= 32'h0;
      layer1_in_21 <= 32'h0;
      layer1_in_22 <= 32'h0;
      layer1_in_23 <= 32'h0;
      layer1_in_24 <= 32'h0;
      layer1_in_25 <= 32'h0;
      layer1_in_26 <= 32'h0;
      layer1_in_27 <= 32'h0;
      layer1_in_28 <= 32'h0;
      layer1_in_29 <= 32'h0;
      layer1_in_30 <= 32'h0;
      layer1_in_31 <= 32'h0;
      cnt_in <= 9'h0;
      cnt <= 2'b00;
      _zz_1 <= 1'b0;
      _zz_2 <= 4'b0000;
      _zz_3 <= 32'hfff00000;
      _zz_4 <= 4'b1001;
      _zz_5 <= 4'b1001;
      _zz_3 <= 32'h80000000;
    end else begin
      if(io_input_valid)begin
        layer1_in_24 <= {{1{_zz_20[30]}}, _zz_20};
        layer1_in_25 <= {{1{_zz_29[30]}}, _zz_29};
        layer1_in_26 <= {{1{_zz_38[30]}}, _zz_38};
        layer1_in_27 <= {{1{_zz_47[30]}}, _zz_47};
        layer1_in_28 <= {{1{_zz_56[30]}}, _zz_56};
        layer1_in_29 <= {{1{_zz_65[30]}}, _zz_65};
        layer1_in_30 <= {{1{_zz_74[30]}}, _zz_74};
        layer1_in_31 <= {{1{_zz_83[30]}}, _zz_83};
        layer1_in_0 <= layer1_in_8;
        layer1_in_1 <= layer1_in_9;
        layer1_in_2 <= layer1_in_10;
        layer1_in_3 <= layer1_in_11;
        layer1_in_4 <= layer1_in_12;
        layer1_in_5 <= layer1_in_13;
        layer1_in_6 <= layer1_in_14;
        layer1_in_7 <= layer1_in_15;
        layer1_in_8 <= layer1_in_16;
        layer1_in_9 <= layer1_in_17;
        layer1_in_10 <= layer1_in_18;
        layer1_in_11 <= layer1_in_19;
        layer1_in_12 <= layer1_in_20;
        layer1_in_13 <= layer1_in_21;
        layer1_in_14 <= layer1_in_22;
        layer1_in_15 <= layer1_in_23;
        layer1_in_16 <= layer1_in_24;
        layer1_in_17 <= layer1_in_25;
        layer1_in_18 <= layer1_in_26;
        layer1_in_19 <= layer1_in_27;
        layer1_in_20 <= layer1_in_28;
        layer1_in_21 <= layer1_in_29;
        layer1_in_22 <= layer1_in_30;
        layer1_in_23 <= layer1_in_31;
        cnt_in <= (cnt_in + 9'h001);
      end
      if(io_input_valid)begin
        if((cnt < 2'b11))begin
          cnt <= (cnt + 2'b01);
        end else begin
          cnt <= 2'b00;
        end
      end else begin
        cnt <= 2'b00;
      end
      _zz_1 <= (cnt == 2'b11);
      _zz_5 <= _zz_4;
      if(l4_points_valid)begin
        if((_zz_4 == 4'b1001))begin
          _zz_3 <= l4_points_payload_0;
          _zz_2 <= 4'b0000;
          _zz_4 <= 4'b0000;
        end else begin
          if(($signed(_zz_3) < $signed(l4_points_payload_0)))begin
            _zz_3 <= l4_points_payload_0;
            _zz_2 <= (_zz_4 + 4'b0001);
          end
          _zz_4 <= (_zz_4 + 4'b0001);
        end
      end
    end
  end

  always @ (posedge clk) begin
    sig <= _zz_3;
    sig2 <= (_zz_4 - _zz_5);
  end


endmodule

module ConvolutionBlock_1 (
  input               io_input_valid,
  input      [31:0]   io_input_payload_0,
  output              io_output_valid,
  output     [31:0]   io_output_payload_0,
  input               clk,
  input               reset
);
  wire                core_io_valid_out;
  wire       [31:0]   core_io_data_out_0_0;
  wire       [31:0]   core_io_data_out_1_0;
  wire       [31:0]   core_io_data_out_2_0;
  wire       [31:0]   core_io_data_out_3_0;
  wire       [31:0]   core_io_data_out_4_0;
  wire       [31:0]   core_io_data_out_5_0;
  wire       [31:0]   core_io_data_out_6_0;
  wire       [31:0]   core_io_data_out_7_0;
  wire       [31:0]   core_io_data_out_8_0;
  wire       [31:0]   core_io_data_out_9_0;
  wire                output_valid;
  wire       [31:0]   output_payload_0;
  reg        [31:0]   output_matrix_0_0;
  reg        [31:0]   output_matrix_1_0;
  reg        [31:0]   output_matrix_2_0;
  reg        [31:0]   output_matrix_3_0;
  reg        [31:0]   output_matrix_4_0;
  reg        [31:0]   output_matrix_5_0;
  reg        [31:0]   output_matrix_6_0;
  reg        [31:0]   output_matrix_7_0;
  reg        [31:0]   output_matrix_8_0;
  reg        [31:0]   output_matrix_9_0;
  reg                 output_valid_1;
  reg                 core_io_valid_out_delay_1;
  reg                 core_io_valid_out_delay_2;
  reg                 core_io_valid_out_delay_3;
  reg                 core_io_valid_out_delay_4;
  reg                 core_io_valid_out_delay_5;
  reg                 core_io_valid_out_delay_6;
  reg                 core_io_valid_out_delay_7;
  reg                 core_io_valid_out_delay_8;
  reg                 core_io_valid_out_delay_9;
  reg                 core_io_valid_out_delay_10;

  ConvolutionCore_1 core (
    .io_valid_in        (io_input_valid              ), //i
    .io_valid_out       (core_io_valid_out           ), //o
    .io_data_in_0       (io_input_payload_0[31:0]    ), //i
    .io_data_out_0_0    (core_io_data_out_0_0[31:0]  ), //o
    .io_data_out_1_0    (core_io_data_out_1_0[31:0]  ), //o
    .io_data_out_2_0    (core_io_data_out_2_0[31:0]  ), //o
    .io_data_out_3_0    (core_io_data_out_3_0[31:0]  ), //o
    .io_data_out_4_0    (core_io_data_out_4_0[31:0]  ), //o
    .io_data_out_5_0    (core_io_data_out_5_0[31:0]  ), //o
    .io_data_out_6_0    (core_io_data_out_6_0[31:0]  ), //o
    .io_data_out_7_0    (core_io_data_out_7_0[31:0]  ), //o
    .io_data_out_8_0    (core_io_data_out_8_0[31:0]  ), //o
    .io_data_out_9_0    (core_io_data_out_9_0[31:0]  ), //o
    .clk                (clk                         ), //i
    .reset              (reset                       )  //i
  );
  assign output_valid = output_valid_1;
  assign output_payload_0 = output_matrix_0_0;
  assign io_output_valid = output_valid;
  assign io_output_payload_0 = output_payload_0;
  always @ (posedge clk) begin
    if(reset) begin
      output_matrix_0_0 <= 32'h0;
      output_matrix_1_0 <= 32'h0;
      output_matrix_2_0 <= 32'h0;
      output_matrix_3_0 <= 32'h0;
      output_matrix_4_0 <= 32'h0;
      output_matrix_5_0 <= 32'h0;
      output_matrix_6_0 <= 32'h0;
      output_matrix_7_0 <= 32'h0;
      output_matrix_8_0 <= 32'h0;
      output_matrix_9_0 <= 32'h0;
      output_valid_1 <= 1'b0;
    end else begin
      if(core_io_valid_out)begin
        output_matrix_0_0 <= core_io_data_out_0_0;
        output_matrix_1_0 <= core_io_data_out_1_0;
        output_matrix_2_0 <= core_io_data_out_2_0;
        output_matrix_3_0 <= core_io_data_out_3_0;
        output_matrix_4_0 <= core_io_data_out_4_0;
        output_matrix_5_0 <= core_io_data_out_5_0;
        output_matrix_6_0 <= core_io_data_out_6_0;
        output_matrix_7_0 <= core_io_data_out_7_0;
        output_matrix_8_0 <= core_io_data_out_8_0;
        output_matrix_9_0 <= core_io_data_out_9_0;
      end else begin
        output_matrix_0_0 <= output_matrix_1_0;
        output_matrix_1_0 <= output_matrix_2_0;
        output_matrix_2_0 <= output_matrix_3_0;
        output_matrix_3_0 <= output_matrix_4_0;
        output_matrix_4_0 <= output_matrix_5_0;
        output_matrix_5_0 <= output_matrix_6_0;
        output_matrix_6_0 <= output_matrix_7_0;
        output_matrix_7_0 <= output_matrix_8_0;
        output_matrix_8_0 <= output_matrix_9_0;
      end
      if(core_io_valid_out)begin
        output_valid_1 <= 1'b1;
      end else begin
        if(core_io_valid_out_delay_10)begin
          output_valid_1 <= 1'b0;
        end
      end
    end
  end

  always @ (posedge clk) begin
    core_io_valid_out_delay_1 <= core_io_valid_out;
    core_io_valid_out_delay_2 <= core_io_valid_out_delay_1;
    core_io_valid_out_delay_3 <= core_io_valid_out_delay_2;
    core_io_valid_out_delay_4 <= core_io_valid_out_delay_3;
    core_io_valid_out_delay_5 <= core_io_valid_out_delay_4;
    core_io_valid_out_delay_6 <= core_io_valid_out_delay_5;
    core_io_valid_out_delay_7 <= core_io_valid_out_delay_6;
    core_io_valid_out_delay_8 <= core_io_valid_out_delay_7;
    core_io_valid_out_delay_9 <= core_io_valid_out_delay_8;
    core_io_valid_out_delay_10 <= core_io_valid_out_delay_9;
  end


endmodule

module AvgPoolBlock (
  input               io_input_valid,
  input      [31:0]   io_input_payload_0,
  input      [31:0]   io_input_payload_1,
  input      [31:0]   io_input_payload_2,
  input      [31:0]   io_input_payload_3,
  input      [31:0]   io_input_payload_4,
  input      [31:0]   io_input_payload_5,
  input      [31:0]   io_input_payload_6,
  input      [31:0]   io_input_payload_7,
  input      [31:0]   io_input_payload_8,
  input      [31:0]   io_input_payload_9,
  input      [31:0]   io_input_payload_10,
  input      [31:0]   io_input_payload_11,
  input      [31:0]   io_input_payload_12,
  input      [31:0]   io_input_payload_13,
  output              io_output_valid,
  output     [31:0]   io_output_payload_0,
  input               clk,
  input               reset
);
  wire                core_io_valid_out;
  wire       [31:0]   core_io_data_out_0_0;
  wire       [7:0]    _zz_1;
  wire                output_valid;
  wire       [31:0]   output_payload_0;
  reg        [31:0]   output_matrix_0_0;
  reg                 output_valid_1;
  reg                 core_io_valid_out_delay_1;

  assign _zz_1 = 8'h64;
  AvgPoolCore core (
    .io_valid_in        (io_input_valid              ), //i
    .io_valid_out       (core_io_valid_out           ), //o
    .io_data_in_0       (io_input_payload_0[31:0]    ), //i
    .io_data_in_1       (io_input_payload_1[31:0]    ), //i
    .io_data_in_2       (io_input_payload_2[31:0]    ), //i
    .io_data_in_3       (io_input_payload_3[31:0]    ), //i
    .io_data_in_4       (io_input_payload_4[31:0]    ), //i
    .io_data_in_5       (io_input_payload_5[31:0]    ), //i
    .io_data_in_6       (io_input_payload_6[31:0]    ), //i
    .io_data_in_7       (io_input_payload_7[31:0]    ), //i
    .io_data_in_8       (io_input_payload_8[31:0]    ), //i
    .io_data_in_9       (io_input_payload_9[31:0]    ), //i
    .io_data_in_10      (io_input_payload_10[31:0]   ), //i
    .io_data_in_11      (io_input_payload_11[31:0]   ), //i
    .io_data_in_12      (io_input_payload_12[31:0]   ), //i
    .io_data_in_13      (io_input_payload_13[31:0]   ), //i
    .io_data_out_0_0    (core_io_data_out_0_0[31:0]  ), //o
    .clk                (clk                         ), //i
    .reset              (reset                       )  //i
  );
  assign output_valid = output_valid_1;
  assign output_payload_0 = ($signed(output_matrix_0_0) / $signed(_zz_1));
  assign io_output_valid = output_valid;
  assign io_output_payload_0 = output_payload_0;
  always @ (posedge clk) begin
    if(reset) begin
      output_matrix_0_0 <= 32'h0;
      output_valid_1 <= 1'b0;
    end else begin
      if(core_io_valid_out)begin
        output_matrix_0_0 <= core_io_data_out_0_0;
      end
      if(core_io_valid_out)begin
        output_valid_1 <= 1'b1;
      end else begin
        if(core_io_valid_out_delay_1)begin
          output_valid_1 <= 1'b0;
        end
      end
    end
  end

  always @ (posedge clk) begin
    core_io_valid_out_delay_1 <= core_io_valid_out;
  end


endmodule

module Relu (
  input               io_input_valid,
  input      [31:0]   io_input_payload_0,
  input      [31:0]   io_input_payload_1,
  input      [31:0]   io_input_payload_2,
  input      [31:0]   io_input_payload_3,
  input      [31:0]   io_input_payload_4,
  input      [31:0]   io_input_payload_5,
  input      [31:0]   io_input_payload_6,
  input      [31:0]   io_input_payload_7,
  input      [31:0]   io_input_payload_8,
  input      [31:0]   io_input_payload_9,
  input      [31:0]   io_input_payload_10,
  input      [31:0]   io_input_payload_11,
  input      [31:0]   io_input_payload_12,
  input      [31:0]   io_input_payload_13,
  output              io_output_valid,
  output     [31:0]   io_output_payload_0,
  output     [31:0]   io_output_payload_1,
  output     [31:0]   io_output_payload_2,
  output     [31:0]   io_output_payload_3,
  output     [31:0]   io_output_payload_4,
  output     [31:0]   io_output_payload_5,
  output     [31:0]   io_output_payload_6,
  output     [31:0]   io_output_payload_7,
  output     [31:0]   io_output_payload_8,
  output     [31:0]   io_output_payload_9,
  output     [31:0]   io_output_payload_10,
  output     [31:0]   io_output_payload_11,
  output     [31:0]   io_output_payload_12,
  output     [31:0]   io_output_payload_13,
  input               clk,
  input               reset
);
  wire       [31:0]   _zz_1;
  wire       [31:0]   _zz_2;
  wire       [31:0]   _zz_3;
  wire       [31:0]   _zz_4;
  wire       [31:0]   _zz_5;
  wire       [31:0]   _zz_6;
  wire       [31:0]   _zz_7;
  wire       [31:0]   _zz_8;
  wire       [31:0]   _zz_9;
  wire       [31:0]   _zz_10;
  wire       [31:0]   _zz_11;
  wire       [31:0]   _zz_12;
  wire       [31:0]   _zz_13;
  wire       [31:0]   _zz_14;
  reg                 res_valid;
  reg        [31:0]   res_payload_0;
  reg        [31:0]   res_payload_1;
  reg        [31:0]   res_payload_2;
  reg        [31:0]   res_payload_3;
  reg        [31:0]   res_payload_4;
  reg        [31:0]   res_payload_5;
  reg        [31:0]   res_payload_6;
  reg        [31:0]   res_payload_7;
  reg        [31:0]   res_payload_8;
  reg        [31:0]   res_payload_9;
  reg        [31:0]   res_payload_10;
  reg        [31:0]   res_payload_11;
  reg        [31:0]   res_payload_12;
  reg        [31:0]   res_payload_13;

  assign _zz_1 = 32'h0;
  assign _zz_2 = 32'h0;
  assign _zz_3 = 32'h0;
  assign _zz_4 = 32'h0;
  assign _zz_5 = 32'h0;
  assign _zz_6 = 32'h0;
  assign _zz_7 = 32'h0;
  assign _zz_8 = 32'h0;
  assign _zz_9 = 32'h0;
  assign _zz_10 = 32'h0;
  assign _zz_11 = 32'h0;
  assign _zz_12 = 32'h0;
  assign _zz_13 = 32'h0;
  assign _zz_14 = 32'h0;
  assign io_output_valid = res_valid;
  assign io_output_payload_0 = res_payload_0;
  assign io_output_payload_1 = res_payload_1;
  assign io_output_payload_2 = res_payload_2;
  assign io_output_payload_3 = res_payload_3;
  assign io_output_payload_4 = res_payload_4;
  assign io_output_payload_5 = res_payload_5;
  assign io_output_payload_6 = res_payload_6;
  assign io_output_payload_7 = res_payload_7;
  assign io_output_payload_8 = res_payload_8;
  assign io_output_payload_9 = res_payload_9;
  assign io_output_payload_10 = res_payload_10;
  assign io_output_payload_11 = res_payload_11;
  assign io_output_payload_12 = res_payload_12;
  assign io_output_payload_13 = res_payload_13;
  always @ (posedge clk) begin
    if(reset) begin
      res_valid <= 1'b0;
    end else begin
      res_valid <= io_input_valid;
    end
  end

  always @ (posedge clk) begin
    if(($signed(_zz_1) <= $signed(io_input_payload_0)))begin
      res_payload_0 <= io_input_payload_0;
    end else begin
      res_payload_0 <= 32'h0;
    end
    if(($signed(_zz_2) <= $signed(io_input_payload_1)))begin
      res_payload_1 <= io_input_payload_1;
    end else begin
      res_payload_1 <= 32'h0;
    end
    if(($signed(_zz_3) <= $signed(io_input_payload_2)))begin
      res_payload_2 <= io_input_payload_2;
    end else begin
      res_payload_2 <= 32'h0;
    end
    if(($signed(_zz_4) <= $signed(io_input_payload_3)))begin
      res_payload_3 <= io_input_payload_3;
    end else begin
      res_payload_3 <= 32'h0;
    end
    if(($signed(_zz_5) <= $signed(io_input_payload_4)))begin
      res_payload_4 <= io_input_payload_4;
    end else begin
      res_payload_4 <= 32'h0;
    end
    if(($signed(_zz_6) <= $signed(io_input_payload_5)))begin
      res_payload_5 <= io_input_payload_5;
    end else begin
      res_payload_5 <= 32'h0;
    end
    if(($signed(_zz_7) <= $signed(io_input_payload_6)))begin
      res_payload_6 <= io_input_payload_6;
    end else begin
      res_payload_6 <= 32'h0;
    end
    if(($signed(_zz_8) <= $signed(io_input_payload_7)))begin
      res_payload_7 <= io_input_payload_7;
    end else begin
      res_payload_7 <= 32'h0;
    end
    if(($signed(_zz_9) <= $signed(io_input_payload_8)))begin
      res_payload_8 <= io_input_payload_8;
    end else begin
      res_payload_8 <= 32'h0;
    end
    if(($signed(_zz_10) <= $signed(io_input_payload_9)))begin
      res_payload_9 <= io_input_payload_9;
    end else begin
      res_payload_9 <= 32'h0;
    end
    if(($signed(_zz_11) <= $signed(io_input_payload_10)))begin
      res_payload_10 <= io_input_payload_10;
    end else begin
      res_payload_10 <= 32'h0;
    end
    if(($signed(_zz_12) <= $signed(io_input_payload_11)))begin
      res_payload_11 <= io_input_payload_11;
    end else begin
      res_payload_11 <= 32'h0;
    end
    if(($signed(_zz_13) <= $signed(io_input_payload_12)))begin
      res_payload_12 <= io_input_payload_12;
    end else begin
      res_payload_12 <= 32'h0;
    end
    if(($signed(_zz_14) <= $signed(io_input_payload_13)))begin
      res_payload_13 <= io_input_payload_13;
    end else begin
      res_payload_13 <= 32'h0;
    end
  end


endmodule

module ConvolutionBlock (
  input               io_input_valid,
  input      [31:0]   io_input_payload_0,
  input      [31:0]   io_input_payload_1,
  input      [31:0]   io_input_payload_2,
  input      [31:0]   io_input_payload_3,
  input      [31:0]   io_input_payload_4,
  input      [31:0]   io_input_payload_5,
  input      [31:0]   io_input_payload_6,
  input      [31:0]   io_input_payload_7,
  input      [31:0]   io_input_payload_8,
  input      [31:0]   io_input_payload_9,
  input      [31:0]   io_input_payload_10,
  input      [31:0]   io_input_payload_11,
  input      [31:0]   io_input_payload_12,
  input      [31:0]   io_input_payload_13,
  input      [31:0]   io_input_payload_14,
  input      [31:0]   io_input_payload_15,
  input      [31:0]   io_input_payload_16,
  input      [31:0]   io_input_payload_17,
  input      [31:0]   io_input_payload_18,
  input      [31:0]   io_input_payload_19,
  input      [31:0]   io_input_payload_20,
  input      [31:0]   io_input_payload_21,
  input      [31:0]   io_input_payload_22,
  input      [31:0]   io_input_payload_23,
  input      [31:0]   io_input_payload_24,
  input      [31:0]   io_input_payload_25,
  input      [31:0]   io_input_payload_26,
  input      [31:0]   io_input_payload_27,
  input      [31:0]   io_input_payload_28,
  input      [31:0]   io_input_payload_29,
  input      [31:0]   io_input_payload_30,
  input      [31:0]   io_input_payload_31,
  output              io_output_valid,
  output     [31:0]   io_output_payload_0,
  output     [31:0]   io_output_payload_1,
  output     [31:0]   io_output_payload_2,
  output     [31:0]   io_output_payload_3,
  output     [31:0]   io_output_payload_4,
  output     [31:0]   io_output_payload_5,
  output     [31:0]   io_output_payload_6,
  output     [31:0]   io_output_payload_7,
  output     [31:0]   io_output_payload_8,
  output     [31:0]   io_output_payload_9,
  output     [31:0]   io_output_payload_10,
  output     [31:0]   io_output_payload_11,
  output     [31:0]   io_output_payload_12,
  output     [31:0]   io_output_payload_13,
  input               clk,
  input               reset
);
  wire                core_io_valid_out;
  wire       [31:0]   core_io_data_out_0_0;
  wire       [31:0]   core_io_data_out_0_1;
  wire       [31:0]   core_io_data_out_0_2;
  wire       [31:0]   core_io_data_out_0_3;
  wire       [31:0]   core_io_data_out_0_4;
  wire       [31:0]   core_io_data_out_0_5;
  wire       [31:0]   core_io_data_out_0_6;
  wire       [31:0]   core_io_data_out_0_7;
  wire       [31:0]   core_io_data_out_0_8;
  wire       [31:0]   core_io_data_out_0_9;
  wire       [31:0]   core_io_data_out_0_10;
  wire       [31:0]   core_io_data_out_0_11;
  wire       [31:0]   core_io_data_out_0_12;
  wire       [31:0]   core_io_data_out_0_13;
  wire       [31:0]   core_io_data_out_1_0;
  wire       [31:0]   core_io_data_out_1_1;
  wire       [31:0]   core_io_data_out_1_2;
  wire       [31:0]   core_io_data_out_1_3;
  wire       [31:0]   core_io_data_out_1_4;
  wire       [31:0]   core_io_data_out_1_5;
  wire       [31:0]   core_io_data_out_1_6;
  wire       [31:0]   core_io_data_out_1_7;
  wire       [31:0]   core_io_data_out_1_8;
  wire       [31:0]   core_io_data_out_1_9;
  wire       [31:0]   core_io_data_out_1_10;
  wire       [31:0]   core_io_data_out_1_11;
  wire       [31:0]   core_io_data_out_1_12;
  wire       [31:0]   core_io_data_out_1_13;
  wire       [31:0]   core_io_data_out_2_0;
  wire       [31:0]   core_io_data_out_2_1;
  wire       [31:0]   core_io_data_out_2_2;
  wire       [31:0]   core_io_data_out_2_3;
  wire       [31:0]   core_io_data_out_2_4;
  wire       [31:0]   core_io_data_out_2_5;
  wire       [31:0]   core_io_data_out_2_6;
  wire       [31:0]   core_io_data_out_2_7;
  wire       [31:0]   core_io_data_out_2_8;
  wire       [31:0]   core_io_data_out_2_9;
  wire       [31:0]   core_io_data_out_2_10;
  wire       [31:0]   core_io_data_out_2_11;
  wire       [31:0]   core_io_data_out_2_12;
  wire       [31:0]   core_io_data_out_2_13;
  wire       [31:0]   core_io_data_out_3_0;
  wire       [31:0]   core_io_data_out_3_1;
  wire       [31:0]   core_io_data_out_3_2;
  wire       [31:0]   core_io_data_out_3_3;
  wire       [31:0]   core_io_data_out_3_4;
  wire       [31:0]   core_io_data_out_3_5;
  wire       [31:0]   core_io_data_out_3_6;
  wire       [31:0]   core_io_data_out_3_7;
  wire       [31:0]   core_io_data_out_3_8;
  wire       [31:0]   core_io_data_out_3_9;
  wire       [31:0]   core_io_data_out_3_10;
  wire       [31:0]   core_io_data_out_3_11;
  wire       [31:0]   core_io_data_out_3_12;
  wire       [31:0]   core_io_data_out_3_13;
  wire                output_valid;
  wire       [31:0]   output_payload_0;
  wire       [31:0]   output_payload_1;
  wire       [31:0]   output_payload_2;
  wire       [31:0]   output_payload_3;
  wire       [31:0]   output_payload_4;
  wire       [31:0]   output_payload_5;
  wire       [31:0]   output_payload_6;
  wire       [31:0]   output_payload_7;
  wire       [31:0]   output_payload_8;
  wire       [31:0]   output_payload_9;
  wire       [31:0]   output_payload_10;
  wire       [31:0]   output_payload_11;
  wire       [31:0]   output_payload_12;
  wire       [31:0]   output_payload_13;
  reg        [31:0]   output_matrix_0_0;
  reg        [31:0]   output_matrix_0_1;
  reg        [31:0]   output_matrix_0_2;
  reg        [31:0]   output_matrix_0_3;
  reg        [31:0]   output_matrix_0_4;
  reg        [31:0]   output_matrix_0_5;
  reg        [31:0]   output_matrix_0_6;
  reg        [31:0]   output_matrix_0_7;
  reg        [31:0]   output_matrix_0_8;
  reg        [31:0]   output_matrix_0_9;
  reg        [31:0]   output_matrix_0_10;
  reg        [31:0]   output_matrix_0_11;
  reg        [31:0]   output_matrix_0_12;
  reg        [31:0]   output_matrix_0_13;
  reg        [31:0]   output_matrix_1_0;
  reg        [31:0]   output_matrix_1_1;
  reg        [31:0]   output_matrix_1_2;
  reg        [31:0]   output_matrix_1_3;
  reg        [31:0]   output_matrix_1_4;
  reg        [31:0]   output_matrix_1_5;
  reg        [31:0]   output_matrix_1_6;
  reg        [31:0]   output_matrix_1_7;
  reg        [31:0]   output_matrix_1_8;
  reg        [31:0]   output_matrix_1_9;
  reg        [31:0]   output_matrix_1_10;
  reg        [31:0]   output_matrix_1_11;
  reg        [31:0]   output_matrix_1_12;
  reg        [31:0]   output_matrix_1_13;
  reg        [31:0]   output_matrix_2_0;
  reg        [31:0]   output_matrix_2_1;
  reg        [31:0]   output_matrix_2_2;
  reg        [31:0]   output_matrix_2_3;
  reg        [31:0]   output_matrix_2_4;
  reg        [31:0]   output_matrix_2_5;
  reg        [31:0]   output_matrix_2_6;
  reg        [31:0]   output_matrix_2_7;
  reg        [31:0]   output_matrix_2_8;
  reg        [31:0]   output_matrix_2_9;
  reg        [31:0]   output_matrix_2_10;
  reg        [31:0]   output_matrix_2_11;
  reg        [31:0]   output_matrix_2_12;
  reg        [31:0]   output_matrix_2_13;
  reg        [31:0]   output_matrix_3_0;
  reg        [31:0]   output_matrix_3_1;
  reg        [31:0]   output_matrix_3_2;
  reg        [31:0]   output_matrix_3_3;
  reg        [31:0]   output_matrix_3_4;
  reg        [31:0]   output_matrix_3_5;
  reg        [31:0]   output_matrix_3_6;
  reg        [31:0]   output_matrix_3_7;
  reg        [31:0]   output_matrix_3_8;
  reg        [31:0]   output_matrix_3_9;
  reg        [31:0]   output_matrix_3_10;
  reg        [31:0]   output_matrix_3_11;
  reg        [31:0]   output_matrix_3_12;
  reg        [31:0]   output_matrix_3_13;
  reg                 output_valid_1;
  reg                 core_io_valid_out_delay_1;
  reg                 core_io_valid_out_delay_2;
  reg                 core_io_valid_out_delay_3;
  reg                 core_io_valid_out_delay_4;

  ConvolutionCore core (
    .io_valid_in         (io_input_valid               ), //i
    .io_valid_out        (core_io_valid_out            ), //o
    .io_data_in_0        (io_input_payload_0[31:0]     ), //i
    .io_data_in_1        (io_input_payload_1[31:0]     ), //i
    .io_data_in_2        (io_input_payload_2[31:0]     ), //i
    .io_data_in_3        (io_input_payload_3[31:0]     ), //i
    .io_data_in_4        (io_input_payload_4[31:0]     ), //i
    .io_data_in_5        (io_input_payload_5[31:0]     ), //i
    .io_data_in_6        (io_input_payload_6[31:0]     ), //i
    .io_data_in_7        (io_input_payload_7[31:0]     ), //i
    .io_data_in_8        (io_input_payload_8[31:0]     ), //i
    .io_data_in_9        (io_input_payload_9[31:0]     ), //i
    .io_data_in_10       (io_input_payload_10[31:0]    ), //i
    .io_data_in_11       (io_input_payload_11[31:0]    ), //i
    .io_data_in_12       (io_input_payload_12[31:0]    ), //i
    .io_data_in_13       (io_input_payload_13[31:0]    ), //i
    .io_data_in_14       (io_input_payload_14[31:0]    ), //i
    .io_data_in_15       (io_input_payload_15[31:0]    ), //i
    .io_data_in_16       (io_input_payload_16[31:0]    ), //i
    .io_data_in_17       (io_input_payload_17[31:0]    ), //i
    .io_data_in_18       (io_input_payload_18[31:0]    ), //i
    .io_data_in_19       (io_input_payload_19[31:0]    ), //i
    .io_data_in_20       (io_input_payload_20[31:0]    ), //i
    .io_data_in_21       (io_input_payload_21[31:0]    ), //i
    .io_data_in_22       (io_input_payload_22[31:0]    ), //i
    .io_data_in_23       (io_input_payload_23[31:0]    ), //i
    .io_data_in_24       (io_input_payload_24[31:0]    ), //i
    .io_data_in_25       (io_input_payload_25[31:0]    ), //i
    .io_data_in_26       (io_input_payload_26[31:0]    ), //i
    .io_data_in_27       (io_input_payload_27[31:0]    ), //i
    .io_data_in_28       (io_input_payload_28[31:0]    ), //i
    .io_data_in_29       (io_input_payload_29[31:0]    ), //i
    .io_data_in_30       (io_input_payload_30[31:0]    ), //i
    .io_data_in_31       (io_input_payload_31[31:0]    ), //i
    .io_data_out_0_0     (core_io_data_out_0_0[31:0]   ), //o
    .io_data_out_0_1     (core_io_data_out_0_1[31:0]   ), //o
    .io_data_out_0_2     (core_io_data_out_0_2[31:0]   ), //o
    .io_data_out_0_3     (core_io_data_out_0_3[31:0]   ), //o
    .io_data_out_0_4     (core_io_data_out_0_4[31:0]   ), //o
    .io_data_out_0_5     (core_io_data_out_0_5[31:0]   ), //o
    .io_data_out_0_6     (core_io_data_out_0_6[31:0]   ), //o
    .io_data_out_0_7     (core_io_data_out_0_7[31:0]   ), //o
    .io_data_out_0_8     (core_io_data_out_0_8[31:0]   ), //o
    .io_data_out_0_9     (core_io_data_out_0_9[31:0]   ), //o
    .io_data_out_0_10    (core_io_data_out_0_10[31:0]  ), //o
    .io_data_out_0_11    (core_io_data_out_0_11[31:0]  ), //o
    .io_data_out_0_12    (core_io_data_out_0_12[31:0]  ), //o
    .io_data_out_0_13    (core_io_data_out_0_13[31:0]  ), //o
    .io_data_out_1_0     (core_io_data_out_1_0[31:0]   ), //o
    .io_data_out_1_1     (core_io_data_out_1_1[31:0]   ), //o
    .io_data_out_1_2     (core_io_data_out_1_2[31:0]   ), //o
    .io_data_out_1_3     (core_io_data_out_1_3[31:0]   ), //o
    .io_data_out_1_4     (core_io_data_out_1_4[31:0]   ), //o
    .io_data_out_1_5     (core_io_data_out_1_5[31:0]   ), //o
    .io_data_out_1_6     (core_io_data_out_1_6[31:0]   ), //o
    .io_data_out_1_7     (core_io_data_out_1_7[31:0]   ), //o
    .io_data_out_1_8     (core_io_data_out_1_8[31:0]   ), //o
    .io_data_out_1_9     (core_io_data_out_1_9[31:0]   ), //o
    .io_data_out_1_10    (core_io_data_out_1_10[31:0]  ), //o
    .io_data_out_1_11    (core_io_data_out_1_11[31:0]  ), //o
    .io_data_out_1_12    (core_io_data_out_1_12[31:0]  ), //o
    .io_data_out_1_13    (core_io_data_out_1_13[31:0]  ), //o
    .io_data_out_2_0     (core_io_data_out_2_0[31:0]   ), //o
    .io_data_out_2_1     (core_io_data_out_2_1[31:0]   ), //o
    .io_data_out_2_2     (core_io_data_out_2_2[31:0]   ), //o
    .io_data_out_2_3     (core_io_data_out_2_3[31:0]   ), //o
    .io_data_out_2_4     (core_io_data_out_2_4[31:0]   ), //o
    .io_data_out_2_5     (core_io_data_out_2_5[31:0]   ), //o
    .io_data_out_2_6     (core_io_data_out_2_6[31:0]   ), //o
    .io_data_out_2_7     (core_io_data_out_2_7[31:0]   ), //o
    .io_data_out_2_8     (core_io_data_out_2_8[31:0]   ), //o
    .io_data_out_2_9     (core_io_data_out_2_9[31:0]   ), //o
    .io_data_out_2_10    (core_io_data_out_2_10[31:0]  ), //o
    .io_data_out_2_11    (core_io_data_out_2_11[31:0]  ), //o
    .io_data_out_2_12    (core_io_data_out_2_12[31:0]  ), //o
    .io_data_out_2_13    (core_io_data_out_2_13[31:0]  ), //o
    .io_data_out_3_0     (core_io_data_out_3_0[31:0]   ), //o
    .io_data_out_3_1     (core_io_data_out_3_1[31:0]   ), //o
    .io_data_out_3_2     (core_io_data_out_3_2[31:0]   ), //o
    .io_data_out_3_3     (core_io_data_out_3_3[31:0]   ), //o
    .io_data_out_3_4     (core_io_data_out_3_4[31:0]   ), //o
    .io_data_out_3_5     (core_io_data_out_3_5[31:0]   ), //o
    .io_data_out_3_6     (core_io_data_out_3_6[31:0]   ), //o
    .io_data_out_3_7     (core_io_data_out_3_7[31:0]   ), //o
    .io_data_out_3_8     (core_io_data_out_3_8[31:0]   ), //o
    .io_data_out_3_9     (core_io_data_out_3_9[31:0]   ), //o
    .io_data_out_3_10    (core_io_data_out_3_10[31:0]  ), //o
    .io_data_out_3_11    (core_io_data_out_3_11[31:0]  ), //o
    .io_data_out_3_12    (core_io_data_out_3_12[31:0]  ), //o
    .io_data_out_3_13    (core_io_data_out_3_13[31:0]  ), //o
    .clk                 (clk                          ), //i
    .reset               (reset                        )  //i
  );
  assign output_valid = output_valid_1;
  assign output_payload_0 = output_matrix_0_0;
  assign output_payload_1 = output_matrix_0_1;
  assign output_payload_2 = output_matrix_0_2;
  assign output_payload_3 = output_matrix_0_3;
  assign output_payload_4 = output_matrix_0_4;
  assign output_payload_5 = output_matrix_0_5;
  assign output_payload_6 = output_matrix_0_6;
  assign output_payload_7 = output_matrix_0_7;
  assign output_payload_8 = output_matrix_0_8;
  assign output_payload_9 = output_matrix_0_9;
  assign output_payload_10 = output_matrix_0_10;
  assign output_payload_11 = output_matrix_0_11;
  assign output_payload_12 = output_matrix_0_12;
  assign output_payload_13 = output_matrix_0_13;
  assign io_output_valid = output_valid;
  assign io_output_payload_0 = output_payload_0;
  assign io_output_payload_1 = output_payload_1;
  assign io_output_payload_2 = output_payload_2;
  assign io_output_payload_3 = output_payload_3;
  assign io_output_payload_4 = output_payload_4;
  assign io_output_payload_5 = output_payload_5;
  assign io_output_payload_6 = output_payload_6;
  assign io_output_payload_7 = output_payload_7;
  assign io_output_payload_8 = output_payload_8;
  assign io_output_payload_9 = output_payload_9;
  assign io_output_payload_10 = output_payload_10;
  assign io_output_payload_11 = output_payload_11;
  assign io_output_payload_12 = output_payload_12;
  assign io_output_payload_13 = output_payload_13;
  always @ (posedge clk) begin
    if(reset) begin
      output_matrix_0_0 <= 32'h0;
      output_matrix_0_1 <= 32'h0;
      output_matrix_0_2 <= 32'h0;
      output_matrix_0_3 <= 32'h0;
      output_matrix_0_4 <= 32'h0;
      output_matrix_0_5 <= 32'h0;
      output_matrix_0_6 <= 32'h0;
      output_matrix_0_7 <= 32'h0;
      output_matrix_0_8 <= 32'h0;
      output_matrix_0_9 <= 32'h0;
      output_matrix_0_10 <= 32'h0;
      output_matrix_0_11 <= 32'h0;
      output_matrix_0_12 <= 32'h0;
      output_matrix_0_13 <= 32'h0;
      output_matrix_1_0 <= 32'h0;
      output_matrix_1_1 <= 32'h0;
      output_matrix_1_2 <= 32'h0;
      output_matrix_1_3 <= 32'h0;
      output_matrix_1_4 <= 32'h0;
      output_matrix_1_5 <= 32'h0;
      output_matrix_1_6 <= 32'h0;
      output_matrix_1_7 <= 32'h0;
      output_matrix_1_8 <= 32'h0;
      output_matrix_1_9 <= 32'h0;
      output_matrix_1_10 <= 32'h0;
      output_matrix_1_11 <= 32'h0;
      output_matrix_1_12 <= 32'h0;
      output_matrix_1_13 <= 32'h0;
      output_matrix_2_0 <= 32'h0;
      output_matrix_2_1 <= 32'h0;
      output_matrix_2_2 <= 32'h0;
      output_matrix_2_3 <= 32'h0;
      output_matrix_2_4 <= 32'h0;
      output_matrix_2_5 <= 32'h0;
      output_matrix_2_6 <= 32'h0;
      output_matrix_2_7 <= 32'h0;
      output_matrix_2_8 <= 32'h0;
      output_matrix_2_9 <= 32'h0;
      output_matrix_2_10 <= 32'h0;
      output_matrix_2_11 <= 32'h0;
      output_matrix_2_12 <= 32'h0;
      output_matrix_2_13 <= 32'h0;
      output_matrix_3_0 <= 32'h0;
      output_matrix_3_1 <= 32'h0;
      output_matrix_3_2 <= 32'h0;
      output_matrix_3_3 <= 32'h0;
      output_matrix_3_4 <= 32'h0;
      output_matrix_3_5 <= 32'h0;
      output_matrix_3_6 <= 32'h0;
      output_matrix_3_7 <= 32'h0;
      output_matrix_3_8 <= 32'h0;
      output_matrix_3_9 <= 32'h0;
      output_matrix_3_10 <= 32'h0;
      output_matrix_3_11 <= 32'h0;
      output_matrix_3_12 <= 32'h0;
      output_matrix_3_13 <= 32'h0;
      output_valid_1 <= 1'b0;
    end else begin
      if(core_io_valid_out)begin
        output_matrix_0_0 <= core_io_data_out_0_0;
        output_matrix_0_1 <= core_io_data_out_0_1;
        output_matrix_0_2 <= core_io_data_out_0_2;
        output_matrix_0_3 <= core_io_data_out_0_3;
        output_matrix_0_4 <= core_io_data_out_0_4;
        output_matrix_0_5 <= core_io_data_out_0_5;
        output_matrix_0_6 <= core_io_data_out_0_6;
        output_matrix_0_7 <= core_io_data_out_0_7;
        output_matrix_0_8 <= core_io_data_out_0_8;
        output_matrix_0_9 <= core_io_data_out_0_9;
        output_matrix_0_10 <= core_io_data_out_0_10;
        output_matrix_0_11 <= core_io_data_out_0_11;
        output_matrix_0_12 <= core_io_data_out_0_12;
        output_matrix_0_13 <= core_io_data_out_0_13;
        output_matrix_1_0 <= core_io_data_out_1_0;
        output_matrix_1_1 <= core_io_data_out_1_1;
        output_matrix_1_2 <= core_io_data_out_1_2;
        output_matrix_1_3 <= core_io_data_out_1_3;
        output_matrix_1_4 <= core_io_data_out_1_4;
        output_matrix_1_5 <= core_io_data_out_1_5;
        output_matrix_1_6 <= core_io_data_out_1_6;
        output_matrix_1_7 <= core_io_data_out_1_7;
        output_matrix_1_8 <= core_io_data_out_1_8;
        output_matrix_1_9 <= core_io_data_out_1_9;
        output_matrix_1_10 <= core_io_data_out_1_10;
        output_matrix_1_11 <= core_io_data_out_1_11;
        output_matrix_1_12 <= core_io_data_out_1_12;
        output_matrix_1_13 <= core_io_data_out_1_13;
        output_matrix_2_0 <= core_io_data_out_2_0;
        output_matrix_2_1 <= core_io_data_out_2_1;
        output_matrix_2_2 <= core_io_data_out_2_2;
        output_matrix_2_3 <= core_io_data_out_2_3;
        output_matrix_2_4 <= core_io_data_out_2_4;
        output_matrix_2_5 <= core_io_data_out_2_5;
        output_matrix_2_6 <= core_io_data_out_2_6;
        output_matrix_2_7 <= core_io_data_out_2_7;
        output_matrix_2_8 <= core_io_data_out_2_8;
        output_matrix_2_9 <= core_io_data_out_2_9;
        output_matrix_2_10 <= core_io_data_out_2_10;
        output_matrix_2_11 <= core_io_data_out_2_11;
        output_matrix_2_12 <= core_io_data_out_2_12;
        output_matrix_2_13 <= core_io_data_out_2_13;
        output_matrix_3_0 <= core_io_data_out_3_0;
        output_matrix_3_1 <= core_io_data_out_3_1;
        output_matrix_3_2 <= core_io_data_out_3_2;
        output_matrix_3_3 <= core_io_data_out_3_3;
        output_matrix_3_4 <= core_io_data_out_3_4;
        output_matrix_3_5 <= core_io_data_out_3_5;
        output_matrix_3_6 <= core_io_data_out_3_6;
        output_matrix_3_7 <= core_io_data_out_3_7;
        output_matrix_3_8 <= core_io_data_out_3_8;
        output_matrix_3_9 <= core_io_data_out_3_9;
        output_matrix_3_10 <= core_io_data_out_3_10;
        output_matrix_3_11 <= core_io_data_out_3_11;
        output_matrix_3_12 <= core_io_data_out_3_12;
        output_matrix_3_13 <= core_io_data_out_3_13;
      end else begin
        output_matrix_0_0 <= output_matrix_1_0;
        output_matrix_0_1 <= output_matrix_1_1;
        output_matrix_0_2 <= output_matrix_1_2;
        output_matrix_0_3 <= output_matrix_1_3;
        output_matrix_0_4 <= output_matrix_1_4;
        output_matrix_0_5 <= output_matrix_1_5;
        output_matrix_0_6 <= output_matrix_1_6;
        output_matrix_0_7 <= output_matrix_1_7;
        output_matrix_0_8 <= output_matrix_1_8;
        output_matrix_0_9 <= output_matrix_1_9;
        output_matrix_0_10 <= output_matrix_1_10;
        output_matrix_0_11 <= output_matrix_1_11;
        output_matrix_0_12 <= output_matrix_1_12;
        output_matrix_0_13 <= output_matrix_1_13;
        output_matrix_1_0 <= output_matrix_2_0;
        output_matrix_1_1 <= output_matrix_2_1;
        output_matrix_1_2 <= output_matrix_2_2;
        output_matrix_1_3 <= output_matrix_2_3;
        output_matrix_1_4 <= output_matrix_2_4;
        output_matrix_1_5 <= output_matrix_2_5;
        output_matrix_1_6 <= output_matrix_2_6;
        output_matrix_1_7 <= output_matrix_2_7;
        output_matrix_1_8 <= output_matrix_2_8;
        output_matrix_1_9 <= output_matrix_2_9;
        output_matrix_1_10 <= output_matrix_2_10;
        output_matrix_1_11 <= output_matrix_2_11;
        output_matrix_1_12 <= output_matrix_2_12;
        output_matrix_1_13 <= output_matrix_2_13;
        output_matrix_2_0 <= output_matrix_3_0;
        output_matrix_2_1 <= output_matrix_3_1;
        output_matrix_2_2 <= output_matrix_3_2;
        output_matrix_2_3 <= output_matrix_3_3;
        output_matrix_2_4 <= output_matrix_3_4;
        output_matrix_2_5 <= output_matrix_3_5;
        output_matrix_2_6 <= output_matrix_3_6;
        output_matrix_2_7 <= output_matrix_3_7;
        output_matrix_2_8 <= output_matrix_3_8;
        output_matrix_2_9 <= output_matrix_3_9;
        output_matrix_2_10 <= output_matrix_3_10;
        output_matrix_2_11 <= output_matrix_3_11;
        output_matrix_2_12 <= output_matrix_3_12;
        output_matrix_2_13 <= output_matrix_3_13;
      end
      if(core_io_valid_out)begin
        output_valid_1 <= 1'b1;
      end else begin
        if(core_io_valid_out_delay_4)begin
          output_valid_1 <= 1'b0;
        end
      end
    end
  end

  always @ (posedge clk) begin
    core_io_valid_out_delay_1 <= core_io_valid_out;
    core_io_valid_out_delay_2 <= core_io_valid_out_delay_1;
    core_io_valid_out_delay_3 <= core_io_valid_out_delay_2;
    core_io_valid_out_delay_4 <= core_io_valid_out_delay_3;
  end


endmodule

module ConvolutionCore_1 (
  input               io_valid_in,
  output              io_valid_out,
  input      [31:0]   io_data_in_0,
  output     [31:0]   io_data_out_0_0,
  output     [31:0]   io_data_out_1_0,
  output     [31:0]   io_data_out_2_0,
  output     [31:0]   io_data_out_3_0,
  output     [31:0]   io_data_out_4_0,
  output     [31:0]   io_data_out_5_0,
  output     [31:0]   io_data_out_6_0,
  output     [31:0]   io_data_out_7_0,
  output     [31:0]   io_data_out_8_0,
  output     [31:0]   io_data_out_9_0,
  input               clk,
  input               reset
);
  reg        [31:0]   _zz_2;
  wire                conv_ctrl_io_clear;
  wire                conv_ctrl_io_shift;
  wire                conv_ctrl_io_valid;
  wire       [1:0]    conv_ctrl_io_fm_addr;
  wire       [1:0]    conv_ctrl_io_weight_addr;
  wire       [31:0]   conv_layer_io_output_0_0;
  wire       [31:0]   conv_layer_io_output_1_0;
  wire       [31:0]   conv_layer_io_output_2_0;
  wire       [31:0]   conv_layer_io_output_3_0;
  wire       [31:0]   conv_layer_io_output_4_0;
  wire       [31:0]   conv_layer_io_output_5_0;
  wire       [31:0]   conv_layer_io_output_6_0;
  wire       [31:0]   conv_layer_io_output_7_0;
  wire       [31:0]   conv_layer_io_output_8_0;
  wire       [31:0]   conv_layer_io_output_9_0;
  wire       [31:0]   layer_rom_io_weights_out_0;
  wire       [31:0]   layer_rom_io_weights_out_1;
  wire       [31:0]   layer_rom_io_weights_out_2;
  wire       [31:0]   layer_rom_io_weights_out_3;
  wire       [31:0]   layer_rom_io_weights_out_4;
  wire       [31:0]   layer_rom_io_weights_out_5;
  wire       [31:0]   layer_rom_io_weights_out_6;
  wire       [31:0]   layer_rom_io_weights_out_7;
  wire       [31:0]   layer_rom_io_weights_out_8;
  wire       [31:0]   layer_rom_io_weights_out_9;
  wire       [31:0]   _zz_3;
  wire       [2:0]    _zz_4;
  wire       [31:0]   _zz_5;
  wire                _zz_6;
  reg                 write_signal;
  reg                 read_signal;
  reg        [1:0]    fm_addr;
  reg                 start;
  wire       [31:0]   content_0;
  wire       [2:0]    _zz_1;
  reg        [31:0]   raw_fm_0;
  reg                 conv_ctrl_io_shift_delay_1;
  reg        [1:0]    conv_ctrl_io_weight_addr_delay_1;
  reg                 conv_ctrl_io_valid_delay_1;
  reg                 conv_ctrl_io_valid_delay_2;
  reg                 conv_ctrl_io_valid_delay_3;
  reg                 conv_ctrl_io_valid_delay_4;
  reg [31:0] fmRAM [0:7];

  assign _zz_3 = _zz_2[31 : 0];
  assign _zz_4 = {fm_addr,write_signal};
  assign _zz_5 = io_data_in_0;
  assign _zz_6 = 1'b1;
  initial begin
    $readmemb("ClassificationNet.v_toplevel_convolutionBlock_3_core_fmRAM.bin",fmRAM);
  end
  always @ (posedge clk) begin
    if(io_valid_in) begin
      fmRAM[_zz_4] <= _zz_5;
    end
  end

  always @ (posedge clk) begin
    if(_zz_6) begin
      _zz_2 <= fmRAM[_zz_1];
    end
  end

  LayerCtrl_2 conv_ctrl (
    .io_start          (start                          ), //i
    .io_clear          (conv_ctrl_io_clear             ), //o
    .io_shift          (conv_ctrl_io_shift             ), //o
    .io_valid          (conv_ctrl_io_valid             ), //o
    .io_fm_addr        (conv_ctrl_io_fm_addr[1:0]      ), //o
    .io_weight_addr    (conv_ctrl_io_weight_addr[1:0]  ), //o
    .clk               (clk                            ), //i
    .reset             (reset                          )  //i
  );
  ConvolutionLayer_1 conv_layer (
    .io_clear         (conv_ctrl_io_clear                ), //i
    .io_weight_0      (layer_rom_io_weights_out_0[31:0]  ), //i
    .io_weight_1      (layer_rom_io_weights_out_1[31:0]  ), //i
    .io_weight_2      (layer_rom_io_weights_out_2[31:0]  ), //i
    .io_weight_3      (layer_rom_io_weights_out_3[31:0]  ), //i
    .io_weight_4      (layer_rom_io_weights_out_4[31:0]  ), //i
    .io_weight_5      (layer_rom_io_weights_out_5[31:0]  ), //i
    .io_weight_6      (layer_rom_io_weights_out_6[31:0]  ), //i
    .io_weight_7      (layer_rom_io_weights_out_7[31:0]  ), //i
    .io_weight_8      (layer_rom_io_weights_out_8[31:0]  ), //i
    .io_weight_9      (layer_rom_io_weights_out_9[31:0]  ), //i
    .io_map_0         (raw_fm_0[31:0]                    ), //i
    .io_output_0_0    (conv_layer_io_output_0_0[31:0]    ), //o
    .io_output_1_0    (conv_layer_io_output_1_0[31:0]    ), //o
    .io_output_2_0    (conv_layer_io_output_2_0[31:0]    ), //o
    .io_output_3_0    (conv_layer_io_output_3_0[31:0]    ), //o
    .io_output_4_0    (conv_layer_io_output_4_0[31:0]    ), //o
    .io_output_5_0    (conv_layer_io_output_5_0[31:0]    ), //o
    .io_output_6_0    (conv_layer_io_output_6_0[31:0]    ), //o
    .io_output_7_0    (conv_layer_io_output_7_0[31:0]    ), //o
    .io_output_8_0    (conv_layer_io_output_8_0[31:0]    ), //o
    .io_output_9_0    (conv_layer_io_output_9_0[31:0]    ), //o
    .clk              (clk                               ), //i
    .reset            (reset                             )  //i
  );
  WeightMem_1 layer_rom (
    .io_address          (conv_ctrl_io_weight_addr_delay_1[1:0]  ), //i
    .io_weights_out_0    (layer_rom_io_weights_out_0[31:0]       ), //o
    .io_weights_out_1    (layer_rom_io_weights_out_1[31:0]       ), //o
    .io_weights_out_2    (layer_rom_io_weights_out_2[31:0]       ), //o
    .io_weights_out_3    (layer_rom_io_weights_out_3[31:0]       ), //o
    .io_weights_out_4    (layer_rom_io_weights_out_4[31:0]       ), //o
    .io_weights_out_5    (layer_rom_io_weights_out_5[31:0]       ), //o
    .io_weights_out_6    (layer_rom_io_weights_out_6[31:0]       ), //o
    .io_weights_out_7    (layer_rom_io_weights_out_7[31:0]       ), //o
    .io_weights_out_8    (layer_rom_io_weights_out_8[31:0]       ), //o
    .io_weights_out_9    (layer_rom_io_weights_out_9[31:0]       ), //o
    .clk                 (clk                                    ), //i
    .reset               (reset                                  )  //i
  );
  assign _zz_1 = {conv_ctrl_io_fm_addr,read_signal};
  assign content_0 = _zz_3[31 : 0];
  assign io_valid_out = conv_ctrl_io_valid_delay_4;
  assign io_data_out_0_0 = conv_layer_io_output_0_0;
  assign io_data_out_1_0 = conv_layer_io_output_1_0;
  assign io_data_out_2_0 = conv_layer_io_output_2_0;
  assign io_data_out_3_0 = conv_layer_io_output_3_0;
  assign io_data_out_4_0 = conv_layer_io_output_4_0;
  assign io_data_out_5_0 = conv_layer_io_output_5_0;
  assign io_data_out_6_0 = conv_layer_io_output_6_0;
  assign io_data_out_7_0 = conv_layer_io_output_7_0;
  assign io_data_out_8_0 = conv_layer_io_output_8_0;
  assign io_data_out_9_0 = conv_layer_io_output_9_0;
  always @ (posedge clk) begin
    if(reset) begin
      write_signal <= 1'b0;
      read_signal <= 1'b1;
      fm_addr <= 2'b00;
      start <= 1'b0;
      raw_fm_0 <= 32'h0;
      conv_ctrl_io_valid_delay_1 <= 1'b0;
      conv_ctrl_io_valid_delay_2 <= 1'b0;
      conv_ctrl_io_valid_delay_3 <= 1'b0;
      conv_ctrl_io_valid_delay_4 <= 1'b0;
    end else begin
      if(io_valid_in)begin
        if((fm_addr < 2'b11))begin
          fm_addr <= (fm_addr + 2'b01);
        end else begin
          fm_addr <= 2'b00;
        end
      end
      if((io_valid_in && (fm_addr == 2'b11)))begin
        start <= 1'b1;
        read_signal <= (! read_signal);
        write_signal <= (! write_signal);
      end else begin
        start <= 1'b0;
      end
      if(! conv_ctrl_io_shift_delay_1) begin
        raw_fm_0 <= content_0;
      end
      conv_ctrl_io_valid_delay_1 <= conv_ctrl_io_valid;
      conv_ctrl_io_valid_delay_2 <= conv_ctrl_io_valid_delay_1;
      conv_ctrl_io_valid_delay_3 <= conv_ctrl_io_valid_delay_2;
      conv_ctrl_io_valid_delay_4 <= conv_ctrl_io_valid_delay_3;
    end
  end

  always @ (posedge clk) begin
    conv_ctrl_io_shift_delay_1 <= conv_ctrl_io_shift;
    conv_ctrl_io_weight_addr_delay_1 <= conv_ctrl_io_weight_addr;
  end


endmodule

module AvgPoolCore (
  input               io_valid_in,
  output              io_valid_out,
  input      [31:0]   io_data_in_0,
  input      [31:0]   io_data_in_1,
  input      [31:0]   io_data_in_2,
  input      [31:0]   io_data_in_3,
  input      [31:0]   io_data_in_4,
  input      [31:0]   io_data_in_5,
  input      [31:0]   io_data_in_6,
  input      [31:0]   io_data_in_7,
  input      [31:0]   io_data_in_8,
  input      [31:0]   io_data_in_9,
  input      [31:0]   io_data_in_10,
  input      [31:0]   io_data_in_11,
  input      [31:0]   io_data_in_12,
  input      [31:0]   io_data_in_13,
  output     [31:0]   io_data_out_0_0,
  input               clk,
  input               reset
);
  reg        [447:0]  _zz_3;
  wire                avgpool_ctrl_io_clear;
  wire                avgpool_ctrl_io_shift;
  wire                avgpool_ctrl_io_valid;
  wire       [5:0]    avgpool_ctrl_io_fm_addr;
  wire       [8:0]    avgpool_ctrl_io_weight_addr;
  wire       [31:0]   avgpool_layer_io_output_0_0;
  wire       [31:0]   _zz_4;
  wire       [31:0]   _zz_5;
  wire       [31:0]   _zz_6;
  wire       [31:0]   _zz_7;
  wire       [31:0]   _zz_8;
  wire       [31:0]   _zz_9;
  wire       [31:0]   _zz_10;
  wire       [31:0]   _zz_11;
  wire       [31:0]   _zz_12;
  wire       [31:0]   _zz_13;
  wire       [31:0]   _zz_14;
  wire       [31:0]   _zz_15;
  wire       [31:0]   _zz_16;
  wire       [31:0]   _zz_17;
  wire       [6:0]    _zz_18;
  wire       [447:0]  _zz_19;
  wire                _zz_20;
  reg                 write_signal;
  reg                 read_signal;
  reg        [5:0]    fm_addr;
  reg                 start;
  wire       [31:0]   content_0;
  wire       [31:0]   content_1;
  wire       [31:0]   content_2;
  wire       [31:0]   content_3;
  wire       [31:0]   content_4;
  wire       [31:0]   content_5;
  wire       [31:0]   content_6;
  wire       [31:0]   content_7;
  wire       [31:0]   content_8;
  wire       [31:0]   content_9;
  wire       [31:0]   content_10;
  wire       [31:0]   content_11;
  wire       [31:0]   content_12;
  wire       [31:0]   content_13;
  wire       [6:0]    _zz_1;
  wire       [447:0]  _zz_2;
  reg        [31:0]   raw_fm_0;
  reg        [31:0]   raw_fm_1;
  reg        [31:0]   raw_fm_2;
  reg        [31:0]   raw_fm_3;
  reg        [31:0]   raw_fm_4;
  reg        [31:0]   raw_fm_5;
  reg        [31:0]   raw_fm_6;
  reg        [31:0]   raw_fm_7;
  reg        [31:0]   raw_fm_8;
  reg        [31:0]   raw_fm_9;
  reg        [31:0]   raw_fm_10;
  reg        [31:0]   raw_fm_11;
  reg        [31:0]   raw_fm_12;
  reg        [31:0]   raw_fm_13;
  reg                 avgpool_ctrl_io_shift_delay_1;
  reg                 avgpool_ctrl_io_valid_delay_1;
  reg                 avgpool_ctrl_io_valid_delay_2;
  reg                 avgpool_ctrl_io_valid_delay_3;
  reg                 avgpool_ctrl_io_valid_delay_4;
  reg [447:0] fmRAM [0:111];

  assign _zz_4 = _zz_2[31 : 0];
  assign _zz_5 = _zz_2[63 : 32];
  assign _zz_6 = _zz_2[95 : 64];
  assign _zz_7 = _zz_2[127 : 96];
  assign _zz_8 = _zz_2[159 : 128];
  assign _zz_9 = _zz_2[191 : 160];
  assign _zz_10 = _zz_2[223 : 192];
  assign _zz_11 = _zz_2[255 : 224];
  assign _zz_12 = _zz_2[287 : 256];
  assign _zz_13 = _zz_2[319 : 288];
  assign _zz_14 = _zz_2[351 : 320];
  assign _zz_15 = _zz_2[383 : 352];
  assign _zz_16 = _zz_2[415 : 384];
  assign _zz_17 = _zz_2[447 : 416];
  assign _zz_18 = {fm_addr,write_signal};
  assign _zz_19 = {io_data_in_13,{io_data_in_12,{io_data_in_11,{io_data_in_10,{io_data_in_9,{io_data_in_8,{io_data_in_7,{io_data_in_6,{io_data_in_5,{io_data_in_4,{io_data_in_3,{io_data_in_2,{io_data_in_1,io_data_in_0}}}}}}}}}}}}};
  assign _zz_20 = 1'b1;
  initial begin
    $readmemb("ClassificationNet.v_toplevel_avgPoolBlock_1_core_fmRAM.bin",fmRAM);
  end
  always @ (posedge clk) begin
    if(io_valid_in) begin
      fmRAM[_zz_18] <= _zz_19;
    end
  end

  always @ (posedge clk) begin
    if(_zz_20) begin
      _zz_3 <= fmRAM[_zz_1];
    end
  end

  LayerCtrl_1 avgpool_ctrl (
    .io_start          (start                             ), //i
    .io_clear          (avgpool_ctrl_io_clear             ), //o
    .io_shift          (avgpool_ctrl_io_shift             ), //o
    .io_valid          (avgpool_ctrl_io_valid             ), //o
    .io_fm_addr        (avgpool_ctrl_io_fm_addr[5:0]      ), //o
    .io_weight_addr    (avgpool_ctrl_io_weight_addr[8:0]  ), //o
    .clk               (clk                               ), //i
    .reset             (reset                             )  //i
  );
  AvgPoolLayer avgpool_layer (
    .io_clear         (avgpool_ctrl_io_clear              ), //i
    .io_map_0         (raw_fm_0[31:0]                     ), //i
    .io_output_0_0    (avgpool_layer_io_output_0_0[31:0]  ), //o
    .clk              (clk                                ), //i
    .reset            (reset                              )  //i
  );
  assign _zz_1 = {avgpool_ctrl_io_fm_addr,read_signal};
  assign _zz_2 = _zz_3;
  assign content_0 = _zz_4[31 : 0];
  assign content_1 = _zz_5[31 : 0];
  assign content_2 = _zz_6[31 : 0];
  assign content_3 = _zz_7[31 : 0];
  assign content_4 = _zz_8[31 : 0];
  assign content_5 = _zz_9[31 : 0];
  assign content_6 = _zz_10[31 : 0];
  assign content_7 = _zz_11[31 : 0];
  assign content_8 = _zz_12[31 : 0];
  assign content_9 = _zz_13[31 : 0];
  assign content_10 = _zz_14[31 : 0];
  assign content_11 = _zz_15[31 : 0];
  assign content_12 = _zz_16[31 : 0];
  assign content_13 = _zz_17[31 : 0];
  assign io_valid_out = avgpool_ctrl_io_valid_delay_4;
  assign io_data_out_0_0 = avgpool_layer_io_output_0_0;
  always @ (posedge clk) begin
    if(reset) begin
      write_signal <= 1'b0;
      read_signal <= 1'b1;
      fm_addr <= 6'h0;
      start <= 1'b0;
      raw_fm_0 <= 32'h0;
      raw_fm_1 <= 32'h0;
      raw_fm_2 <= 32'h0;
      raw_fm_3 <= 32'h0;
      raw_fm_4 <= 32'h0;
      raw_fm_5 <= 32'h0;
      raw_fm_6 <= 32'h0;
      raw_fm_7 <= 32'h0;
      raw_fm_8 <= 32'h0;
      raw_fm_9 <= 32'h0;
      raw_fm_10 <= 32'h0;
      raw_fm_11 <= 32'h0;
      raw_fm_12 <= 32'h0;
      raw_fm_13 <= 32'h0;
      avgpool_ctrl_io_valid_delay_1 <= 1'b0;
      avgpool_ctrl_io_valid_delay_2 <= 1'b0;
      avgpool_ctrl_io_valid_delay_3 <= 1'b0;
      avgpool_ctrl_io_valid_delay_4 <= 1'b0;
    end else begin
      if(io_valid_in)begin
        if((fm_addr < 6'h37))begin
          fm_addr <= (fm_addr + 6'h01);
        end else begin
          fm_addr <= 6'h0;
        end
      end
      if((io_valid_in && (fm_addr == 6'h37)))begin
        start <= 1'b1;
        read_signal <= (! read_signal);
        write_signal <= (! write_signal);
      end else begin
        start <= 1'b0;
      end
      if(avgpool_ctrl_io_shift_delay_1)begin
        raw_fm_0 <= raw_fm_1;
        raw_fm_1 <= raw_fm_2;
        raw_fm_2 <= raw_fm_3;
        raw_fm_3 <= raw_fm_4;
        raw_fm_4 <= raw_fm_5;
        raw_fm_5 <= raw_fm_6;
        raw_fm_6 <= raw_fm_7;
        raw_fm_7 <= raw_fm_8;
        raw_fm_8 <= raw_fm_9;
        raw_fm_9 <= raw_fm_10;
        raw_fm_10 <= raw_fm_11;
        raw_fm_11 <= raw_fm_12;
        raw_fm_12 <= raw_fm_13;
      end else begin
        raw_fm_0 <= content_0;
        raw_fm_1 <= content_1;
        raw_fm_2 <= content_2;
        raw_fm_3 <= content_3;
        raw_fm_4 <= content_4;
        raw_fm_5 <= content_5;
        raw_fm_6 <= content_6;
        raw_fm_7 <= content_7;
        raw_fm_8 <= content_8;
        raw_fm_9 <= content_9;
        raw_fm_10 <= content_10;
        raw_fm_11 <= content_11;
        raw_fm_12 <= content_12;
        raw_fm_13 <= content_13;
      end
      avgpool_ctrl_io_valid_delay_1 <= avgpool_ctrl_io_valid;
      avgpool_ctrl_io_valid_delay_2 <= avgpool_ctrl_io_valid_delay_1;
      avgpool_ctrl_io_valid_delay_3 <= avgpool_ctrl_io_valid_delay_2;
      avgpool_ctrl_io_valid_delay_4 <= avgpool_ctrl_io_valid_delay_3;
    end
  end

  always @ (posedge clk) begin
    avgpool_ctrl_io_shift_delay_1 <= avgpool_ctrl_io_shift;
  end


endmodule

module ConvolutionCore (
  input               io_valid_in,
  output              io_valid_out,
  input      [31:0]   io_data_in_0,
  input      [31:0]   io_data_in_1,
  input      [31:0]   io_data_in_2,
  input      [31:0]   io_data_in_3,
  input      [31:0]   io_data_in_4,
  input      [31:0]   io_data_in_5,
  input      [31:0]   io_data_in_6,
  input      [31:0]   io_data_in_7,
  input      [31:0]   io_data_in_8,
  input      [31:0]   io_data_in_9,
  input      [31:0]   io_data_in_10,
  input      [31:0]   io_data_in_11,
  input      [31:0]   io_data_in_12,
  input      [31:0]   io_data_in_13,
  input      [31:0]   io_data_in_14,
  input      [31:0]   io_data_in_15,
  input      [31:0]   io_data_in_16,
  input      [31:0]   io_data_in_17,
  input      [31:0]   io_data_in_18,
  input      [31:0]   io_data_in_19,
  input      [31:0]   io_data_in_20,
  input      [31:0]   io_data_in_21,
  input      [31:0]   io_data_in_22,
  input      [31:0]   io_data_in_23,
  input      [31:0]   io_data_in_24,
  input      [31:0]   io_data_in_25,
  input      [31:0]   io_data_in_26,
  input      [31:0]   io_data_in_27,
  input      [31:0]   io_data_in_28,
  input      [31:0]   io_data_in_29,
  input      [31:0]   io_data_in_30,
  input      [31:0]   io_data_in_31,
  output     [31:0]   io_data_out_0_0,
  output     [31:0]   io_data_out_0_1,
  output     [31:0]   io_data_out_0_2,
  output     [31:0]   io_data_out_0_3,
  output     [31:0]   io_data_out_0_4,
  output     [31:0]   io_data_out_0_5,
  output     [31:0]   io_data_out_0_6,
  output     [31:0]   io_data_out_0_7,
  output     [31:0]   io_data_out_0_8,
  output     [31:0]   io_data_out_0_9,
  output     [31:0]   io_data_out_0_10,
  output     [31:0]   io_data_out_0_11,
  output     [31:0]   io_data_out_0_12,
  output     [31:0]   io_data_out_0_13,
  output     [31:0]   io_data_out_1_0,
  output     [31:0]   io_data_out_1_1,
  output     [31:0]   io_data_out_1_2,
  output     [31:0]   io_data_out_1_3,
  output     [31:0]   io_data_out_1_4,
  output     [31:0]   io_data_out_1_5,
  output     [31:0]   io_data_out_1_6,
  output     [31:0]   io_data_out_1_7,
  output     [31:0]   io_data_out_1_8,
  output     [31:0]   io_data_out_1_9,
  output     [31:0]   io_data_out_1_10,
  output     [31:0]   io_data_out_1_11,
  output     [31:0]   io_data_out_1_12,
  output     [31:0]   io_data_out_1_13,
  output     [31:0]   io_data_out_2_0,
  output     [31:0]   io_data_out_2_1,
  output     [31:0]   io_data_out_2_2,
  output     [31:0]   io_data_out_2_3,
  output     [31:0]   io_data_out_2_4,
  output     [31:0]   io_data_out_2_5,
  output     [31:0]   io_data_out_2_6,
  output     [31:0]   io_data_out_2_7,
  output     [31:0]   io_data_out_2_8,
  output     [31:0]   io_data_out_2_9,
  output     [31:0]   io_data_out_2_10,
  output     [31:0]   io_data_out_2_11,
  output     [31:0]   io_data_out_2_12,
  output     [31:0]   io_data_out_2_13,
  output     [31:0]   io_data_out_3_0,
  output     [31:0]   io_data_out_3_1,
  output     [31:0]   io_data_out_3_2,
  output     [31:0]   io_data_out_3_3,
  output     [31:0]   io_data_out_3_4,
  output     [31:0]   io_data_out_3_5,
  output     [31:0]   io_data_out_3_6,
  output     [31:0]   io_data_out_3_7,
  output     [31:0]   io_data_out_3_8,
  output     [31:0]   io_data_out_3_9,
  output     [31:0]   io_data_out_3_10,
  output     [31:0]   io_data_out_3_11,
  output     [31:0]   io_data_out_3_12,
  output     [31:0]   io_data_out_3_13,
  input               clk,
  input               reset
);
  reg        [1023:0] _zz_3;
  wire                conv_ctrl_io_clear;
  wire                conv_ctrl_io_shift;
  wire                conv_ctrl_io_valid;
  wire       [6:0]    conv_ctrl_io_fm_addr;
  wire       [6:0]    conv_ctrl_io_weight_addr;
  wire       [31:0]   conv_layer_io_output_0_0;
  wire       [31:0]   conv_layer_io_output_0_1;
  wire       [31:0]   conv_layer_io_output_0_2;
  wire       [31:0]   conv_layer_io_output_0_3;
  wire       [31:0]   conv_layer_io_output_0_4;
  wire       [31:0]   conv_layer_io_output_0_5;
  wire       [31:0]   conv_layer_io_output_0_6;
  wire       [31:0]   conv_layer_io_output_0_7;
  wire       [31:0]   conv_layer_io_output_0_8;
  wire       [31:0]   conv_layer_io_output_0_9;
  wire       [31:0]   conv_layer_io_output_0_10;
  wire       [31:0]   conv_layer_io_output_0_11;
  wire       [31:0]   conv_layer_io_output_0_12;
  wire       [31:0]   conv_layer_io_output_0_13;
  wire       [31:0]   conv_layer_io_output_1_0;
  wire       [31:0]   conv_layer_io_output_1_1;
  wire       [31:0]   conv_layer_io_output_1_2;
  wire       [31:0]   conv_layer_io_output_1_3;
  wire       [31:0]   conv_layer_io_output_1_4;
  wire       [31:0]   conv_layer_io_output_1_5;
  wire       [31:0]   conv_layer_io_output_1_6;
  wire       [31:0]   conv_layer_io_output_1_7;
  wire       [31:0]   conv_layer_io_output_1_8;
  wire       [31:0]   conv_layer_io_output_1_9;
  wire       [31:0]   conv_layer_io_output_1_10;
  wire       [31:0]   conv_layer_io_output_1_11;
  wire       [31:0]   conv_layer_io_output_1_12;
  wire       [31:0]   conv_layer_io_output_1_13;
  wire       [31:0]   conv_layer_io_output_2_0;
  wire       [31:0]   conv_layer_io_output_2_1;
  wire       [31:0]   conv_layer_io_output_2_2;
  wire       [31:0]   conv_layer_io_output_2_3;
  wire       [31:0]   conv_layer_io_output_2_4;
  wire       [31:0]   conv_layer_io_output_2_5;
  wire       [31:0]   conv_layer_io_output_2_6;
  wire       [31:0]   conv_layer_io_output_2_7;
  wire       [31:0]   conv_layer_io_output_2_8;
  wire       [31:0]   conv_layer_io_output_2_9;
  wire       [31:0]   conv_layer_io_output_2_10;
  wire       [31:0]   conv_layer_io_output_2_11;
  wire       [31:0]   conv_layer_io_output_2_12;
  wire       [31:0]   conv_layer_io_output_2_13;
  wire       [31:0]   conv_layer_io_output_3_0;
  wire       [31:0]   conv_layer_io_output_3_1;
  wire       [31:0]   conv_layer_io_output_3_2;
  wire       [31:0]   conv_layer_io_output_3_3;
  wire       [31:0]   conv_layer_io_output_3_4;
  wire       [31:0]   conv_layer_io_output_3_5;
  wire       [31:0]   conv_layer_io_output_3_6;
  wire       [31:0]   conv_layer_io_output_3_7;
  wire       [31:0]   conv_layer_io_output_3_8;
  wire       [31:0]   conv_layer_io_output_3_9;
  wire       [31:0]   conv_layer_io_output_3_10;
  wire       [31:0]   conv_layer_io_output_3_11;
  wire       [31:0]   conv_layer_io_output_3_12;
  wire       [31:0]   conv_layer_io_output_3_13;
  wire       [31:0]   layer_rom_io_weights_out_0;
  wire       [31:0]   layer_rom_io_weights_out_1;
  wire       [31:0]   layer_rom_io_weights_out_2;
  wire       [31:0]   layer_rom_io_weights_out_3;
  wire       [31:0]   _zz_4;
  wire       [31:0]   _zz_5;
  wire       [31:0]   _zz_6;
  wire       [31:0]   _zz_7;
  wire       [31:0]   _zz_8;
  wire       [31:0]   _zz_9;
  wire       [31:0]   _zz_10;
  wire       [31:0]   _zz_11;
  wire       [31:0]   _zz_12;
  wire       [31:0]   _zz_13;
  wire       [31:0]   _zz_14;
  wire       [31:0]   _zz_15;
  wire       [31:0]   _zz_16;
  wire       [31:0]   _zz_17;
  wire       [31:0]   _zz_18;
  wire       [31:0]   _zz_19;
  wire       [31:0]   _zz_20;
  wire       [31:0]   _zz_21;
  wire       [31:0]   _zz_22;
  wire       [31:0]   _zz_23;
  wire       [31:0]   _zz_24;
  wire       [31:0]   _zz_25;
  wire       [31:0]   _zz_26;
  wire       [31:0]   _zz_27;
  wire       [31:0]   _zz_28;
  wire       [31:0]   _zz_29;
  wire       [31:0]   _zz_30;
  wire       [31:0]   _zz_31;
  wire       [31:0]   _zz_32;
  wire       [31:0]   _zz_33;
  wire       [31:0]   _zz_34;
  wire       [31:0]   _zz_35;
  wire       [7:0]    _zz_36;
  wire       [1023:0] _zz_37;
  wire                _zz_38;
  reg                 write_signal;
  reg                 read_signal;
  reg        [6:0]    fm_addr;
  reg                 start;
  wire       [31:0]   content_0;
  wire       [31:0]   content_1;
  wire       [31:0]   content_2;
  wire       [31:0]   content_3;
  wire       [31:0]   content_4;
  wire       [31:0]   content_5;
  wire       [31:0]   content_6;
  wire       [31:0]   content_7;
  wire       [31:0]   content_8;
  wire       [31:0]   content_9;
  wire       [31:0]   content_10;
  wire       [31:0]   content_11;
  wire       [31:0]   content_12;
  wire       [31:0]   content_13;
  wire       [31:0]   content_14;
  wire       [31:0]   content_15;
  wire       [31:0]   content_16;
  wire       [31:0]   content_17;
  wire       [31:0]   content_18;
  wire       [31:0]   content_19;
  wire       [31:0]   content_20;
  wire       [31:0]   content_21;
  wire       [31:0]   content_22;
  wire       [31:0]   content_23;
  wire       [31:0]   content_24;
  wire       [31:0]   content_25;
  wire       [31:0]   content_26;
  wire       [31:0]   content_27;
  wire       [31:0]   content_28;
  wire       [31:0]   content_29;
  wire       [31:0]   content_30;
  wire       [31:0]   content_31;
  wire       [7:0]    _zz_1;
  wire       [1023:0] _zz_2;
  reg        [31:0]   raw_fm_0;
  reg        [31:0]   raw_fm_1;
  reg        [31:0]   raw_fm_2;
  reg        [31:0]   raw_fm_3;
  reg        [31:0]   raw_fm_4;
  reg        [31:0]   raw_fm_5;
  reg        [31:0]   raw_fm_6;
  reg        [31:0]   raw_fm_7;
  reg        [31:0]   raw_fm_8;
  reg        [31:0]   raw_fm_9;
  reg        [31:0]   raw_fm_10;
  reg        [31:0]   raw_fm_11;
  reg        [31:0]   raw_fm_12;
  reg        [31:0]   raw_fm_13;
  reg        [31:0]   raw_fm_14;
  reg        [31:0]   raw_fm_15;
  reg        [31:0]   raw_fm_16;
  reg        [31:0]   raw_fm_17;
  reg        [31:0]   raw_fm_18;
  reg        [31:0]   raw_fm_19;
  reg        [31:0]   raw_fm_20;
  reg        [31:0]   raw_fm_21;
  reg        [31:0]   raw_fm_22;
  reg        [31:0]   raw_fm_23;
  reg        [31:0]   raw_fm_24;
  reg        [31:0]   raw_fm_25;
  reg        [31:0]   raw_fm_26;
  reg        [31:0]   raw_fm_27;
  reg        [31:0]   raw_fm_28;
  reg        [31:0]   raw_fm_29;
  reg        [31:0]   raw_fm_30;
  reg        [31:0]   raw_fm_31;
  reg                 conv_ctrl_io_shift_delay_1;
  reg        [6:0]    conv_ctrl_io_weight_addr_delay_1;
  reg                 conv_ctrl_io_valid_delay_1;
  reg                 conv_ctrl_io_valid_delay_2;
  reg                 conv_ctrl_io_valid_delay_3;
  reg                 conv_ctrl_io_valid_delay_4;
  reg [1023:0] fmRAM [0:191];

  assign _zz_4 = _zz_2[31 : 0];
  assign _zz_5 = _zz_2[63 : 32];
  assign _zz_6 = _zz_2[95 : 64];
  assign _zz_7 = _zz_2[127 : 96];
  assign _zz_8 = _zz_2[159 : 128];
  assign _zz_9 = _zz_2[191 : 160];
  assign _zz_10 = _zz_2[223 : 192];
  assign _zz_11 = _zz_2[255 : 224];
  assign _zz_12 = _zz_2[287 : 256];
  assign _zz_13 = _zz_2[319 : 288];
  assign _zz_14 = _zz_2[351 : 320];
  assign _zz_15 = _zz_2[383 : 352];
  assign _zz_16 = _zz_2[415 : 384];
  assign _zz_17 = _zz_2[447 : 416];
  assign _zz_18 = _zz_2[479 : 448];
  assign _zz_19 = _zz_2[511 : 480];
  assign _zz_20 = _zz_2[543 : 512];
  assign _zz_21 = _zz_2[575 : 544];
  assign _zz_22 = _zz_2[607 : 576];
  assign _zz_23 = _zz_2[639 : 608];
  assign _zz_24 = _zz_2[671 : 640];
  assign _zz_25 = _zz_2[703 : 672];
  assign _zz_26 = _zz_2[735 : 704];
  assign _zz_27 = _zz_2[767 : 736];
  assign _zz_28 = _zz_2[799 : 768];
  assign _zz_29 = _zz_2[831 : 800];
  assign _zz_30 = _zz_2[863 : 832];
  assign _zz_31 = _zz_2[895 : 864];
  assign _zz_32 = _zz_2[927 : 896];
  assign _zz_33 = _zz_2[959 : 928];
  assign _zz_34 = _zz_2[991 : 960];
  assign _zz_35 = _zz_2[1023 : 992];
  assign _zz_36 = {fm_addr,write_signal};
  assign _zz_37 = {io_data_in_31,{io_data_in_30,{io_data_in_29,{io_data_in_28,{io_data_in_27,{io_data_in_26,{io_data_in_25,{io_data_in_24,{io_data_in_23,{io_data_in_22,{io_data_in_21,{io_data_in_20,{io_data_in_19,{io_data_in_18,{io_data_in_17,{io_data_in_16,{io_data_in_15,{io_data_in_14,{io_data_in_13,{io_data_in_12,{io_data_in_11,{io_data_in_10,{io_data_in_9,{io_data_in_8,{io_data_in_7,{io_data_in_6,{io_data_in_5,{io_data_in_4,{io_data_in_3,{io_data_in_2,{io_data_in_1,io_data_in_0}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}};
  assign _zz_38 = 1'b1;
  initial begin
    $readmemb("ClassificationNet.v_toplevel_convolutionBlock_2_core_fmRAM.bin",fmRAM);
  end
  always @ (posedge clk) begin
    if(io_valid_in) begin
      fmRAM[_zz_36] <= _zz_37;
    end
  end

  always @ (posedge clk) begin
    if(_zz_38) begin
      _zz_3 <= fmRAM[_zz_1];
    end
  end

  LayerCtrl conv_ctrl (
    .io_start          (start                          ), //i
    .io_clear          (conv_ctrl_io_clear             ), //o
    .io_shift          (conv_ctrl_io_shift             ), //o
    .io_valid          (conv_ctrl_io_valid             ), //o
    .io_fm_addr        (conv_ctrl_io_fm_addr[6:0]      ), //o
    .io_weight_addr    (conv_ctrl_io_weight_addr[6:0]  ), //o
    .clk               (clk                            ), //i
    .reset             (reset                          )  //i
  );
  ConvolutionLayer conv_layer (
    .io_clear          (conv_ctrl_io_clear                ), //i
    .io_weight_0       (layer_rom_io_weights_out_0[31:0]  ), //i
    .io_weight_1       (layer_rom_io_weights_out_1[31:0]  ), //i
    .io_weight_2       (layer_rom_io_weights_out_2[31:0]  ), //i
    .io_weight_3       (layer_rom_io_weights_out_3[31:0]  ), //i
    .io_map_0          (raw_fm_0[31:0]                    ), //i
    .io_map_1          (raw_fm_2[31:0]                    ), //i
    .io_map_2          (raw_fm_4[31:0]                    ), //i
    .io_map_3          (raw_fm_6[31:0]                    ), //i
    .io_map_4          (raw_fm_8[31:0]                    ), //i
    .io_map_5          (raw_fm_10[31:0]                   ), //i
    .io_map_6          (raw_fm_12[31:0]                   ), //i
    .io_map_7          (raw_fm_14[31:0]                   ), //i
    .io_map_8          (raw_fm_16[31:0]                   ), //i
    .io_map_9          (raw_fm_18[31:0]                   ), //i
    .io_map_10         (raw_fm_20[31:0]                   ), //i
    .io_map_11         (raw_fm_22[31:0]                   ), //i
    .io_map_12         (raw_fm_24[31:0]                   ), //i
    .io_map_13         (raw_fm_26[31:0]                   ), //i
    .io_output_0_0     (conv_layer_io_output_0_0[31:0]    ), //o
    .io_output_0_1     (conv_layer_io_output_0_1[31:0]    ), //o
    .io_output_0_2     (conv_layer_io_output_0_2[31:0]    ), //o
    .io_output_0_3     (conv_layer_io_output_0_3[31:0]    ), //o
    .io_output_0_4     (conv_layer_io_output_0_4[31:0]    ), //o
    .io_output_0_5     (conv_layer_io_output_0_5[31:0]    ), //o
    .io_output_0_6     (conv_layer_io_output_0_6[31:0]    ), //o
    .io_output_0_7     (conv_layer_io_output_0_7[31:0]    ), //o
    .io_output_0_8     (conv_layer_io_output_0_8[31:0]    ), //o
    .io_output_0_9     (conv_layer_io_output_0_9[31:0]    ), //o
    .io_output_0_10    (conv_layer_io_output_0_10[31:0]   ), //o
    .io_output_0_11    (conv_layer_io_output_0_11[31:0]   ), //o
    .io_output_0_12    (conv_layer_io_output_0_12[31:0]   ), //o
    .io_output_0_13    (conv_layer_io_output_0_13[31:0]   ), //o
    .io_output_1_0     (conv_layer_io_output_1_0[31:0]    ), //o
    .io_output_1_1     (conv_layer_io_output_1_1[31:0]    ), //o
    .io_output_1_2     (conv_layer_io_output_1_2[31:0]    ), //o
    .io_output_1_3     (conv_layer_io_output_1_3[31:0]    ), //o
    .io_output_1_4     (conv_layer_io_output_1_4[31:0]    ), //o
    .io_output_1_5     (conv_layer_io_output_1_5[31:0]    ), //o
    .io_output_1_6     (conv_layer_io_output_1_6[31:0]    ), //o
    .io_output_1_7     (conv_layer_io_output_1_7[31:0]    ), //o
    .io_output_1_8     (conv_layer_io_output_1_8[31:0]    ), //o
    .io_output_1_9     (conv_layer_io_output_1_9[31:0]    ), //o
    .io_output_1_10    (conv_layer_io_output_1_10[31:0]   ), //o
    .io_output_1_11    (conv_layer_io_output_1_11[31:0]   ), //o
    .io_output_1_12    (conv_layer_io_output_1_12[31:0]   ), //o
    .io_output_1_13    (conv_layer_io_output_1_13[31:0]   ), //o
    .io_output_2_0     (conv_layer_io_output_2_0[31:0]    ), //o
    .io_output_2_1     (conv_layer_io_output_2_1[31:0]    ), //o
    .io_output_2_2     (conv_layer_io_output_2_2[31:0]    ), //o
    .io_output_2_3     (conv_layer_io_output_2_3[31:0]    ), //o
    .io_output_2_4     (conv_layer_io_output_2_4[31:0]    ), //o
    .io_output_2_5     (conv_layer_io_output_2_5[31:0]    ), //o
    .io_output_2_6     (conv_layer_io_output_2_6[31:0]    ), //o
    .io_output_2_7     (conv_layer_io_output_2_7[31:0]    ), //o
    .io_output_2_8     (conv_layer_io_output_2_8[31:0]    ), //o
    .io_output_2_9     (conv_layer_io_output_2_9[31:0]    ), //o
    .io_output_2_10    (conv_layer_io_output_2_10[31:0]   ), //o
    .io_output_2_11    (conv_layer_io_output_2_11[31:0]   ), //o
    .io_output_2_12    (conv_layer_io_output_2_12[31:0]   ), //o
    .io_output_2_13    (conv_layer_io_output_2_13[31:0]   ), //o
    .io_output_3_0     (conv_layer_io_output_3_0[31:0]    ), //o
    .io_output_3_1     (conv_layer_io_output_3_1[31:0]    ), //o
    .io_output_3_2     (conv_layer_io_output_3_2[31:0]    ), //o
    .io_output_3_3     (conv_layer_io_output_3_3[31:0]    ), //o
    .io_output_3_4     (conv_layer_io_output_3_4[31:0]    ), //o
    .io_output_3_5     (conv_layer_io_output_3_5[31:0]    ), //o
    .io_output_3_6     (conv_layer_io_output_3_6[31:0]    ), //o
    .io_output_3_7     (conv_layer_io_output_3_7[31:0]    ), //o
    .io_output_3_8     (conv_layer_io_output_3_8[31:0]    ), //o
    .io_output_3_9     (conv_layer_io_output_3_9[31:0]    ), //o
    .io_output_3_10    (conv_layer_io_output_3_10[31:0]   ), //o
    .io_output_3_11    (conv_layer_io_output_3_11[31:0]   ), //o
    .io_output_3_12    (conv_layer_io_output_3_12[31:0]   ), //o
    .io_output_3_13    (conv_layer_io_output_3_13[31:0]   ), //o
    .clk               (clk                               ), //i
    .reset             (reset                             )  //i
  );
  WeightMem layer_rom (
    .io_address          (conv_ctrl_io_weight_addr_delay_1[6:0]  ), //i
    .io_weights_out_0    (layer_rom_io_weights_out_0[31:0]       ), //o
    .io_weights_out_1    (layer_rom_io_weights_out_1[31:0]       ), //o
    .io_weights_out_2    (layer_rom_io_weights_out_2[31:0]       ), //o
    .io_weights_out_3    (layer_rom_io_weights_out_3[31:0]       ), //o
    .clk                 (clk                                    ), //i
    .reset               (reset                                  )  //i
  );
  assign _zz_1 = {conv_ctrl_io_fm_addr,read_signal};
  assign _zz_2 = _zz_3;
  assign content_0 = _zz_4[31 : 0];
  assign content_1 = _zz_5[31 : 0];
  assign content_2 = _zz_6[31 : 0];
  assign content_3 = _zz_7[31 : 0];
  assign content_4 = _zz_8[31 : 0];
  assign content_5 = _zz_9[31 : 0];
  assign content_6 = _zz_10[31 : 0];
  assign content_7 = _zz_11[31 : 0];
  assign content_8 = _zz_12[31 : 0];
  assign content_9 = _zz_13[31 : 0];
  assign content_10 = _zz_14[31 : 0];
  assign content_11 = _zz_15[31 : 0];
  assign content_12 = _zz_16[31 : 0];
  assign content_13 = _zz_17[31 : 0];
  assign content_14 = _zz_18[31 : 0];
  assign content_15 = _zz_19[31 : 0];
  assign content_16 = _zz_20[31 : 0];
  assign content_17 = _zz_21[31 : 0];
  assign content_18 = _zz_22[31 : 0];
  assign content_19 = _zz_23[31 : 0];
  assign content_20 = _zz_24[31 : 0];
  assign content_21 = _zz_25[31 : 0];
  assign content_22 = _zz_26[31 : 0];
  assign content_23 = _zz_27[31 : 0];
  assign content_24 = _zz_28[31 : 0];
  assign content_25 = _zz_29[31 : 0];
  assign content_26 = _zz_30[31 : 0];
  assign content_27 = _zz_31[31 : 0];
  assign content_28 = _zz_32[31 : 0];
  assign content_29 = _zz_33[31 : 0];
  assign content_30 = _zz_34[31 : 0];
  assign content_31 = _zz_35[31 : 0];
  assign io_valid_out = conv_ctrl_io_valid_delay_4;
  assign io_data_out_0_0 = conv_layer_io_output_0_0;
  assign io_data_out_0_1 = conv_layer_io_output_0_1;
  assign io_data_out_0_2 = conv_layer_io_output_0_2;
  assign io_data_out_0_3 = conv_layer_io_output_0_3;
  assign io_data_out_0_4 = conv_layer_io_output_0_4;
  assign io_data_out_0_5 = conv_layer_io_output_0_5;
  assign io_data_out_0_6 = conv_layer_io_output_0_6;
  assign io_data_out_0_7 = conv_layer_io_output_0_7;
  assign io_data_out_0_8 = conv_layer_io_output_0_8;
  assign io_data_out_0_9 = conv_layer_io_output_0_9;
  assign io_data_out_0_10 = conv_layer_io_output_0_10;
  assign io_data_out_0_11 = conv_layer_io_output_0_11;
  assign io_data_out_0_12 = conv_layer_io_output_0_12;
  assign io_data_out_0_13 = conv_layer_io_output_0_13;
  assign io_data_out_1_0 = conv_layer_io_output_1_0;
  assign io_data_out_1_1 = conv_layer_io_output_1_1;
  assign io_data_out_1_2 = conv_layer_io_output_1_2;
  assign io_data_out_1_3 = conv_layer_io_output_1_3;
  assign io_data_out_1_4 = conv_layer_io_output_1_4;
  assign io_data_out_1_5 = conv_layer_io_output_1_5;
  assign io_data_out_1_6 = conv_layer_io_output_1_6;
  assign io_data_out_1_7 = conv_layer_io_output_1_7;
  assign io_data_out_1_8 = conv_layer_io_output_1_8;
  assign io_data_out_1_9 = conv_layer_io_output_1_9;
  assign io_data_out_1_10 = conv_layer_io_output_1_10;
  assign io_data_out_1_11 = conv_layer_io_output_1_11;
  assign io_data_out_1_12 = conv_layer_io_output_1_12;
  assign io_data_out_1_13 = conv_layer_io_output_1_13;
  assign io_data_out_2_0 = conv_layer_io_output_2_0;
  assign io_data_out_2_1 = conv_layer_io_output_2_1;
  assign io_data_out_2_2 = conv_layer_io_output_2_2;
  assign io_data_out_2_3 = conv_layer_io_output_2_3;
  assign io_data_out_2_4 = conv_layer_io_output_2_4;
  assign io_data_out_2_5 = conv_layer_io_output_2_5;
  assign io_data_out_2_6 = conv_layer_io_output_2_6;
  assign io_data_out_2_7 = conv_layer_io_output_2_7;
  assign io_data_out_2_8 = conv_layer_io_output_2_8;
  assign io_data_out_2_9 = conv_layer_io_output_2_9;
  assign io_data_out_2_10 = conv_layer_io_output_2_10;
  assign io_data_out_2_11 = conv_layer_io_output_2_11;
  assign io_data_out_2_12 = conv_layer_io_output_2_12;
  assign io_data_out_2_13 = conv_layer_io_output_2_13;
  assign io_data_out_3_0 = conv_layer_io_output_3_0;
  assign io_data_out_3_1 = conv_layer_io_output_3_1;
  assign io_data_out_3_2 = conv_layer_io_output_3_2;
  assign io_data_out_3_3 = conv_layer_io_output_3_3;
  assign io_data_out_3_4 = conv_layer_io_output_3_4;
  assign io_data_out_3_5 = conv_layer_io_output_3_5;
  assign io_data_out_3_6 = conv_layer_io_output_3_6;
  assign io_data_out_3_7 = conv_layer_io_output_3_7;
  assign io_data_out_3_8 = conv_layer_io_output_3_8;
  assign io_data_out_3_9 = conv_layer_io_output_3_9;
  assign io_data_out_3_10 = conv_layer_io_output_3_10;
  assign io_data_out_3_11 = conv_layer_io_output_3_11;
  assign io_data_out_3_12 = conv_layer_io_output_3_12;
  assign io_data_out_3_13 = conv_layer_io_output_3_13;
  always @ (posedge clk) begin
    if(reset) begin
      write_signal <= 1'b0;
      read_signal <= 1'b1;
      fm_addr <= 7'h0;
      start <= 1'b0;
      raw_fm_0 <= 32'h0;
      raw_fm_1 <= 32'h0;
      raw_fm_2 <= 32'h0;
      raw_fm_3 <= 32'h0;
      raw_fm_4 <= 32'h0;
      raw_fm_5 <= 32'h0;
      raw_fm_6 <= 32'h0;
      raw_fm_7 <= 32'h0;
      raw_fm_8 <= 32'h0;
      raw_fm_9 <= 32'h0;
      raw_fm_10 <= 32'h0;
      raw_fm_11 <= 32'h0;
      raw_fm_12 <= 32'h0;
      raw_fm_13 <= 32'h0;
      raw_fm_14 <= 32'h0;
      raw_fm_15 <= 32'h0;
      raw_fm_16 <= 32'h0;
      raw_fm_17 <= 32'h0;
      raw_fm_18 <= 32'h0;
      raw_fm_19 <= 32'h0;
      raw_fm_20 <= 32'h0;
      raw_fm_21 <= 32'h0;
      raw_fm_22 <= 32'h0;
      raw_fm_23 <= 32'h0;
      raw_fm_24 <= 32'h0;
      raw_fm_25 <= 32'h0;
      raw_fm_26 <= 32'h0;
      raw_fm_27 <= 32'h0;
      raw_fm_28 <= 32'h0;
      raw_fm_29 <= 32'h0;
      raw_fm_30 <= 32'h0;
      raw_fm_31 <= 32'h0;
      conv_ctrl_io_valid_delay_1 <= 1'b0;
      conv_ctrl_io_valid_delay_2 <= 1'b0;
      conv_ctrl_io_valid_delay_3 <= 1'b0;
      conv_ctrl_io_valid_delay_4 <= 1'b0;
    end else begin
      if(io_valid_in)begin
        if((fm_addr < 7'h5f))begin
          fm_addr <= (fm_addr + 7'h01);
        end else begin
          fm_addr <= 7'h0;
        end
      end
      if((io_valid_in && (fm_addr == 7'h5f)))begin
        start <= 1'b1;
        read_signal <= (! read_signal);
        write_signal <= (! write_signal);
      end else begin
        start <= 1'b0;
      end
      if(conv_ctrl_io_shift_delay_1)begin
        raw_fm_0 <= raw_fm_1;
        raw_fm_1 <= raw_fm_2;
        raw_fm_2 <= raw_fm_3;
        raw_fm_3 <= raw_fm_4;
        raw_fm_4 <= raw_fm_5;
        raw_fm_5 <= raw_fm_6;
        raw_fm_6 <= raw_fm_7;
        raw_fm_7 <= raw_fm_8;
        raw_fm_8 <= raw_fm_9;
        raw_fm_9 <= raw_fm_10;
        raw_fm_10 <= raw_fm_11;
        raw_fm_11 <= raw_fm_12;
        raw_fm_12 <= raw_fm_13;
        raw_fm_13 <= raw_fm_14;
        raw_fm_14 <= raw_fm_15;
        raw_fm_15 <= raw_fm_16;
        raw_fm_16 <= raw_fm_17;
        raw_fm_17 <= raw_fm_18;
        raw_fm_18 <= raw_fm_19;
        raw_fm_19 <= raw_fm_20;
        raw_fm_20 <= raw_fm_21;
        raw_fm_21 <= raw_fm_22;
        raw_fm_22 <= raw_fm_23;
        raw_fm_23 <= raw_fm_24;
        raw_fm_24 <= raw_fm_25;
        raw_fm_25 <= raw_fm_26;
        raw_fm_26 <= raw_fm_27;
        raw_fm_27 <= raw_fm_28;
        raw_fm_28 <= raw_fm_29;
        raw_fm_29 <= raw_fm_30;
        raw_fm_30 <= raw_fm_31;
      end else begin
        raw_fm_0 <= content_0;
        raw_fm_1 <= content_1;
        raw_fm_2 <= content_2;
        raw_fm_3 <= content_3;
        raw_fm_4 <= content_4;
        raw_fm_5 <= content_5;
        raw_fm_6 <= content_6;
        raw_fm_7 <= content_7;
        raw_fm_8 <= content_8;
        raw_fm_9 <= content_9;
        raw_fm_10 <= content_10;
        raw_fm_11 <= content_11;
        raw_fm_12 <= content_12;
        raw_fm_13 <= content_13;
        raw_fm_14 <= content_14;
        raw_fm_15 <= content_15;
        raw_fm_16 <= content_16;
        raw_fm_17 <= content_17;
        raw_fm_18 <= content_18;
        raw_fm_19 <= content_19;
        raw_fm_20 <= content_20;
        raw_fm_21 <= content_21;
        raw_fm_22 <= content_22;
        raw_fm_23 <= content_23;
        raw_fm_24 <= content_24;
        raw_fm_25 <= content_25;
        raw_fm_26 <= content_26;
        raw_fm_27 <= content_27;
        raw_fm_28 <= content_28;
        raw_fm_29 <= content_29;
        raw_fm_30 <= content_30;
        raw_fm_31 <= content_31;
      end
      conv_ctrl_io_valid_delay_1 <= conv_ctrl_io_valid;
      conv_ctrl_io_valid_delay_2 <= conv_ctrl_io_valid_delay_1;
      conv_ctrl_io_valid_delay_3 <= conv_ctrl_io_valid_delay_2;
      conv_ctrl_io_valid_delay_4 <= conv_ctrl_io_valid_delay_3;
    end
  end

  always @ (posedge clk) begin
    conv_ctrl_io_shift_delay_1 <= conv_ctrl_io_shift;
    conv_ctrl_io_weight_addr_delay_1 <= conv_ctrl_io_weight_addr;
  end


endmodule

module WeightMem_1 (
  input      [1:0]    io_address,
  output     [31:0]   io_weights_out_0,
  output     [31:0]   io_weights_out_1,
  output     [31:0]   io_weights_out_2,
  output     [31:0]   io_weights_out_3,
  output     [31:0]   io_weights_out_4,
  output     [31:0]   io_weights_out_5,
  output     [31:0]   io_weights_out_6,
  output     [31:0]   io_weights_out_7,
  output     [31:0]   io_weights_out_8,
  output     [31:0]   io_weights_out_9,
  input               clk,
  input               reset
);
  reg        [319:0]  _zz_2;
  wire       [31:0]   _zz_3;
  wire       [31:0]   _zz_4;
  wire       [31:0]   _zz_5;
  wire       [31:0]   _zz_6;
  wire       [31:0]   _zz_7;
  wire       [31:0]   _zz_8;
  wire       [31:0]   _zz_9;
  wire       [31:0]   _zz_10;
  wire       [31:0]   _zz_11;
  wire       [31:0]   _zz_12;
  wire                _zz_13;
  wire       [319:0]  _zz_1;
  reg [319:0] ROM [0:3];

  assign _zz_3 = _zz_1[31 : 0];
  assign _zz_4 = _zz_1[63 : 32];
  assign _zz_5 = _zz_1[95 : 64];
  assign _zz_6 = _zz_1[127 : 96];
  assign _zz_7 = _zz_1[159 : 128];
  assign _zz_8 = _zz_1[191 : 160];
  assign _zz_9 = _zz_1[223 : 192];
  assign _zz_10 = _zz_1[255 : 224];
  assign _zz_11 = _zz_1[287 : 256];
  assign _zz_12 = _zz_1[319 : 288];
  assign _zz_13 = 1'b1;
  initial begin
    $readmemb("ClassificationNet.v_toplevel_convolutionBlock_3_core_layer_rom_ROM.bin",ROM);
  end
  always @ (posedge clk) begin
    if(_zz_13) begin
      _zz_2 <= ROM[io_address];
    end
  end

  assign _zz_1 = _zz_2;
  assign io_weights_out_0 = _zz_3[31 : 0];
  assign io_weights_out_1 = _zz_4[31 : 0];
  assign io_weights_out_2 = _zz_5[31 : 0];
  assign io_weights_out_3 = _zz_6[31 : 0];
  assign io_weights_out_4 = _zz_7[31 : 0];
  assign io_weights_out_5 = _zz_8[31 : 0];
  assign io_weights_out_6 = _zz_9[31 : 0];
  assign io_weights_out_7 = _zz_10[31 : 0];
  assign io_weights_out_8 = _zz_11[31 : 0];
  assign io_weights_out_9 = _zz_12[31 : 0];

endmodule

module ConvolutionLayer_1 (
  input               io_clear,
  input      [31:0]   io_weight_0,
  input      [31:0]   io_weight_1,
  input      [31:0]   io_weight_2,
  input      [31:0]   io_weight_3,
  input      [31:0]   io_weight_4,
  input      [31:0]   io_weight_5,
  input      [31:0]   io_weight_6,
  input      [31:0]   io_weight_7,
  input      [31:0]   io_weight_8,
  input      [31:0]   io_weight_9,
  input      [31:0]   io_map_0,
  output     [31:0]   io_output_0_0,
  output     [31:0]   io_output_1_0,
  output     [31:0]   io_output_2_0,
  output     [31:0]   io_output_3_0,
  output     [31:0]   io_output_4_0,
  output     [31:0]   io_output_5_0,
  output     [31:0]   io_output_6_0,
  output     [31:0]   io_output_7_0,
  output     [31:0]   io_output_8_0,
  output     [31:0]   io_output_9_0,
  input               clk,
  input               reset
);
  wire       [43:0]   _zz_1;
  wire       [63:0]   _zz_2;
  wire       [43:0]   _zz_3;
  wire       [63:0]   _zz_4;
  wire       [43:0]   _zz_5;
  wire       [63:0]   _zz_6;
  wire       [43:0]   _zz_7;
  wire       [63:0]   _zz_8;
  wire       [43:0]   _zz_9;
  wire       [63:0]   _zz_10;
  wire       [43:0]   _zz_11;
  wire       [63:0]   _zz_12;
  wire       [43:0]   _zz_13;
  wire       [63:0]   _zz_14;
  wire       [43:0]   _zz_15;
  wire       [63:0]   _zz_16;
  wire       [43:0]   _zz_17;
  wire       [63:0]   _zz_18;
  wire       [43:0]   _zz_19;
  wire       [63:0]   _zz_20;
  wire       [42:0]   _zz_21;
  wire       [42:0]   _zz_22;
  wire       [42:0]   _zz_23;
  wire       [42:0]   _zz_24;
  wire       [42:0]   _zz_25;
  wire       [42:0]   _zz_26;
  wire       [42:0]   _zz_27;
  wire       [42:0]   _zz_28;
  wire       [42:0]   _zz_29;
  wire       [42:0]   _zz_30;
  wire       [42:0]   _zz_31;
  wire       [42:0]   _zz_32;
  wire       [42:0]   _zz_33;
  wire       [42:0]   _zz_34;
  wire       [42:0]   _zz_35;
  wire       [42:0]   _zz_36;
  wire       [42:0]   _zz_37;
  wire       [42:0]   _zz_38;
  wire       [42:0]   _zz_39;
  wire       [42:0]   _zz_40;
  reg        [42:0]   res_0_0;
  reg        [42:0]   res_1_0;
  reg        [42:0]   res_2_0;
  reg        [42:0]   res_3_0;
  reg        [42:0]   res_4_0;
  reg        [42:0]   res_5_0;
  reg        [42:0]   res_6_0;
  reg        [42:0]   res_7_0;
  reg        [42:0]   res_8_0;
  reg        [42:0]   res_9_0;
  reg        [31:0]   output_0_0;
  reg        [31:0]   output_1_0;
  reg        [31:0]   output_2_0;
  reg        [31:0]   output_3_0;
  reg        [31:0]   output_4_0;
  reg        [31:0]   output_5_0;
  reg        [31:0]   output_6_0;
  reg        [31:0]   output_7_0;
  reg        [31:0]   output_8_0;
  reg        [31:0]   output_9_0;
  reg                 io_clear_delay_1;
  reg                 io_clear_delay_2;
  reg                 io_clear_delay_3;

  assign _zz_1 = (_zz_2 >>> 20);
  assign _zz_2 = ($signed(io_map_0) * $signed(io_weight_0));
  assign _zz_3 = (_zz_4 >>> 20);
  assign _zz_4 = ($signed(io_map_0) * $signed(io_weight_1));
  assign _zz_5 = (_zz_6 >>> 20);
  assign _zz_6 = ($signed(io_map_0) * $signed(io_weight_2));
  assign _zz_7 = (_zz_8 >>> 20);
  assign _zz_8 = ($signed(io_map_0) * $signed(io_weight_3));
  assign _zz_9 = (_zz_10 >>> 20);
  assign _zz_10 = ($signed(io_map_0) * $signed(io_weight_4));
  assign _zz_11 = (_zz_12 >>> 20);
  assign _zz_12 = ($signed(io_map_0) * $signed(io_weight_5));
  assign _zz_13 = (_zz_14 >>> 20);
  assign _zz_14 = ($signed(io_map_0) * $signed(io_weight_6));
  assign _zz_15 = (_zz_16 >>> 20);
  assign _zz_16 = ($signed(io_map_0) * $signed(io_weight_7));
  assign _zz_17 = (_zz_18 >>> 20);
  assign _zz_18 = ($signed(io_map_0) * $signed(io_weight_8));
  assign _zz_19 = (_zz_20 >>> 20);
  assign _zz_20 = ($signed(io_map_0) * $signed(io_weight_9));
  assign _zz_21 = ($signed(_zz_22) + $signed(res_0_0));
  assign _zz_22 = {{11{output_0_0[31]}}, output_0_0};
  assign _zz_23 = ($signed(_zz_24) + $signed(res_1_0));
  assign _zz_24 = {{11{output_1_0[31]}}, output_1_0};
  assign _zz_25 = ($signed(_zz_26) + $signed(res_2_0));
  assign _zz_26 = {{11{output_2_0[31]}}, output_2_0};
  assign _zz_27 = ($signed(_zz_28) + $signed(res_3_0));
  assign _zz_28 = {{11{output_3_0[31]}}, output_3_0};
  assign _zz_29 = ($signed(_zz_30) + $signed(res_4_0));
  assign _zz_30 = {{11{output_4_0[31]}}, output_4_0};
  assign _zz_31 = ($signed(_zz_32) + $signed(res_5_0));
  assign _zz_32 = {{11{output_5_0[31]}}, output_5_0};
  assign _zz_33 = ($signed(_zz_34) + $signed(res_6_0));
  assign _zz_34 = {{11{output_6_0[31]}}, output_6_0};
  assign _zz_35 = ($signed(_zz_36) + $signed(res_7_0));
  assign _zz_36 = {{11{output_7_0[31]}}, output_7_0};
  assign _zz_37 = ($signed(_zz_38) + $signed(res_8_0));
  assign _zz_38 = {{11{output_8_0[31]}}, output_8_0};
  assign _zz_39 = ($signed(_zz_40) + $signed(res_9_0));
  assign _zz_40 = {{11{output_9_0[31]}}, output_9_0};
  assign io_output_0_0 = output_0_0;
  assign io_output_1_0 = output_1_0;
  assign io_output_2_0 = output_2_0;
  assign io_output_3_0 = output_3_0;
  assign io_output_4_0 = output_4_0;
  assign io_output_5_0 = output_5_0;
  assign io_output_6_0 = output_6_0;
  assign io_output_7_0 = output_7_0;
  assign io_output_8_0 = output_8_0;
  assign io_output_9_0 = output_9_0;
  always @ (posedge clk) begin
    if(reset) begin
      res_0_0 <= 43'h0;
      res_1_0 <= 43'h0;
      res_2_0 <= 43'h0;
      res_3_0 <= 43'h0;
      res_4_0 <= 43'h0;
      res_5_0 <= 43'h0;
      res_6_0 <= 43'h0;
      res_7_0 <= 43'h0;
      res_8_0 <= 43'h0;
      res_9_0 <= 43'h0;
      output_0_0 <= 32'h0;
      output_1_0 <= 32'h0;
      output_2_0 <= 32'h0;
      output_3_0 <= 32'h0;
      output_4_0 <= 32'h0;
      output_5_0 <= 32'h0;
      output_6_0 <= 32'h0;
      output_7_0 <= 32'h0;
      output_8_0 <= 32'h0;
      output_9_0 <= 32'h0;
    end else begin
      res_0_0 <= _zz_1[42:0];
      res_1_0 <= _zz_3[42:0];
      res_2_0 <= _zz_5[42:0];
      res_3_0 <= _zz_7[42:0];
      res_4_0 <= _zz_9[42:0];
      res_5_0 <= _zz_11[42:0];
      res_6_0 <= _zz_13[42:0];
      res_7_0 <= _zz_15[42:0];
      res_8_0 <= _zz_17[42:0];
      res_9_0 <= _zz_19[42:0];
      if(io_clear_delay_3)begin
        output_0_0 <= res_0_0[31:0];
        output_1_0 <= res_1_0[31:0];
        output_2_0 <= res_2_0[31:0];
        output_3_0 <= res_3_0[31:0];
        output_4_0 <= res_4_0[31:0];
        output_5_0 <= res_5_0[31:0];
        output_6_0 <= res_6_0[31:0];
        output_7_0 <= res_7_0[31:0];
        output_8_0 <= res_8_0[31:0];
        output_9_0 <= res_9_0[31:0];
      end else begin
        output_0_0 <= _zz_21[31:0];
        output_1_0 <= _zz_23[31:0];
        output_2_0 <= _zz_25[31:0];
        output_3_0 <= _zz_27[31:0];
        output_4_0 <= _zz_29[31:0];
        output_5_0 <= _zz_31[31:0];
        output_6_0 <= _zz_33[31:0];
        output_7_0 <= _zz_35[31:0];
        output_8_0 <= _zz_37[31:0];
        output_9_0 <= _zz_39[31:0];
      end
    end
  end

  always @ (posedge clk) begin
    io_clear_delay_1 <= io_clear;
    io_clear_delay_2 <= io_clear_delay_1;
    io_clear_delay_3 <= io_clear_delay_2;
  end


endmodule

module LayerCtrl_2 (
  input               io_start,
  output              io_clear,
  output              io_shift,
  output              io_valid,
  output     [1:0]    io_fm_addr,
  output     [1:0]    io_weight_addr,
  input               clk,
  input               reset
);
  wire       [1:0]    _zz_3;
  wire       [2:0]    _zz_4;
  wire       [1:0]    _zz_5;
  wire       [3:0]    _zz_6;
  wire       [2:0]    _zz_7;
  wire       [1:0]    _zz_8;
  wire       [0:0]    _zz_9;
  wire       [1:0]    _zz_10;
  reg        [1:0]    cnt_list_1;
  reg                 _zz_1;
  reg                 _zz_2;
  reg        [1:0]    fm_addr;
  reg        [1:0]    weight_addr;
  reg                 clear;
  reg                 shift;
  reg                 valid;

  assign _zz_3 = (cnt_list_1 + 2'b00);
  assign _zz_4 = 3'b000;
  assign _zz_5 = (_zz_6[1 : 0] + _zz_10);
  assign _zz_6 = (_zz_7 * 1'b1);
  assign _zz_7 = (_zz_8 * 1'b1);
  assign _zz_8 = (cnt_list_1 + 2'b00);
  assign _zz_9 = 1'b0;
  assign _zz_10 = {1'd0, _zz_9};
  assign io_fm_addr = fm_addr;
  assign io_weight_addr = weight_addr;
  assign io_clear = clear;
  assign io_shift = shift;
  assign io_valid = valid;
  always @ (posedge clk) begin
    if(reset) begin
      cnt_list_1 <= 2'b00;
      _zz_2 <= 1'b0;
      fm_addr <= 2'b00;
      weight_addr <= 2'b00;
      clear <= 1'b0;
      shift <= 1'b0;
      valid <= 1'b0;
    end else begin
      if(io_start)begin
        _zz_2 <= 1'b1;
      end else begin
        if(_zz_1)begin
          _zz_2 <= 1'b0;
        end
      end
      if(((_zz_2 && 1'b1) && 1'b1))begin
        if((cnt_list_1 < 2'b11))begin
          cnt_list_1 <= (cnt_list_1 + 2'b01);
        end else begin
          cnt_list_1 <= 2'b00;
        end
      end
      fm_addr <= (_zz_3 + _zz_4[1 : 0]);
      weight_addr <= (_zz_5 + 2'b00);
      if(((1'b1 && (cnt_list_1 == 2'b00)) && 1'b1))begin
        clear <= 1'b1;
      end else begin
        clear <= 1'b0;
      end
      if(1'b0)begin
        shift <= 1'b1;
      end else begin
        shift <= 1'b0;
      end
      if(((1'b1 && (cnt_list_1 == 2'b11)) && 1'b1))begin
        valid <= 1'b1;
      end else begin
        valid <= 1'b0;
      end
    end
  end

  always @ (posedge clk) begin
    _zz_1 <= (cnt_list_1 == 2'b10);
  end


endmodule

module AvgPoolLayer (
  input               io_clear,
  input      [31:0]   io_map_0,
  output     [31:0]   io_output_0_0,
  input               clk,
  input               reset
);
  wire       [42:0]   _zz_1;
  wire       [42:0]   _zz_2;
  reg        [42:0]   res_0_0;
  reg        [31:0]   output_0_0;
  reg                 io_clear_delay_1;
  reg                 io_clear_delay_2;
  reg                 io_clear_delay_3;

  assign _zz_1 = ($signed(_zz_2) + $signed(res_0_0));
  assign _zz_2 = {{11{output_0_0[31]}}, output_0_0};
  assign io_output_0_0 = output_0_0;
  always @ (posedge clk) begin
    if(reset) begin
      res_0_0 <= 43'h0;
      output_0_0 <= 32'h0;
    end else begin
      res_0_0 <= {{11{io_map_0[31]}}, io_map_0};
      if(io_clear_delay_3)begin
        output_0_0 <= res_0_0[31:0];
      end else begin
        output_0_0 <= _zz_1[31:0];
      end
    end
  end

  always @ (posedge clk) begin
    io_clear_delay_1 <= io_clear;
    io_clear_delay_2 <= io_clear_delay_1;
    io_clear_delay_3 <= io_clear_delay_2;
  end


endmodule

module LayerCtrl_1 (
  input               io_start,
  output              io_clear,
  output              io_shift,
  output              io_valid,
  output     [5:0]    io_fm_addr,
  output     [8:0]    io_weight_addr,
  input               clk,
  input               reset
);
  wire       [2:0]    _zz_3;
  wire       [5:0]    _zz_4;
  wire       [6:0]    _zz_5;
  wire       [8:0]    _zz_6;
  wire       [10:0]   _zz_7;
  wire       [6:0]    _zz_8;
  wire       [2:0]    _zz_9;
  wire       [7:0]    _zz_10;
  wire       [8:0]    _zz_11;
  wire       [8:0]    _zz_12;
  reg        [3:0]    cnt_list_0;
  reg        [3:0]    cnt_list_2;
  reg        [1:0]    cnt_list_5;
  reg                 _zz_1;
  reg                 _zz_2;
  reg        [5:0]    fm_addr;
  wire       [2:0]    group_mult;
  reg        [8:0]    weight_addr;
  reg                 clear;
  reg                 shift;
  reg                 valid;

  assign _zz_3 = (3'b000 + group_mult);
  assign _zz_4 = {3'd0, _zz_3};
  assign _zz_5 = (cnt_list_2 * 3'b100);
  assign _zz_6 = (_zz_7[8 : 0] + _zz_11);
  assign _zz_7 = (_zz_8 * 4'b1010);
  assign _zz_8 = (_zz_9 * 4'b1010);
  assign _zz_9 = (3'b000 + group_mult);
  assign _zz_10 = (cnt_list_2 * 4'b1010);
  assign _zz_11 = {1'd0, _zz_10};
  assign _zz_12 = {5'd0, cnt_list_0};
  assign group_mult = (cnt_list_5 * 1'b1);
  assign io_fm_addr = fm_addr;
  assign io_weight_addr = weight_addr;
  assign io_clear = clear;
  assign io_shift = shift;
  assign io_valid = valid;
  always @ (posedge clk) begin
    if(reset) begin
      cnt_list_0 <= 4'b0000;
      cnt_list_2 <= 4'b0000;
      cnt_list_5 <= 2'b00;
      _zz_2 <= 1'b0;
      fm_addr <= 6'h0;
      weight_addr <= 9'h0;
      clear <= 1'b0;
      shift <= 1'b0;
      valid <= 1'b0;
    end else begin
      if(io_start)begin
        _zz_2 <= 1'b1;
      end else begin
        if(_zz_1)begin
          _zz_2 <= 1'b0;
        end
      end
      if((_zz_2 && 1'b1))begin
        if((cnt_list_0 < 4'b1001))begin
          cnt_list_0 <= (cnt_list_0 + 4'b0001);
        end else begin
          cnt_list_0 <= 4'b0000;
        end
      end
      if((((1'b1 && 1'b1) && (cnt_list_0 == 4'b1001)) && 1'b1))begin
        if((cnt_list_2 < 4'b1001))begin
          cnt_list_2 <= (cnt_list_2 + 4'b0001);
        end else begin
          cnt_list_2 <= 4'b0000;
        end
      end
      if(((((((1'b1 && 1'b1) && (cnt_list_0 == 4'b1001)) && 1'b1) && (cnt_list_2 == 4'b1001)) && 1'b1) && 1'b1))begin
        if((cnt_list_5 < 2'b11))begin
          cnt_list_5 <= (cnt_list_5 + 2'b01);
        end else begin
          cnt_list_5 <= 2'b00;
        end
      end
      fm_addr <= (_zz_4 + _zz_5[5 : 0]);
      weight_addr <= (_zz_6 + _zz_12);
      if((((cnt_list_0 == 4'b0000) && 1'b1) && (cnt_list_2 == 4'b0000)))begin
        clear <= 1'b1;
      end else begin
        clear <= 1'b0;
      end
      if((4'b0000 < cnt_list_0))begin
        shift <= 1'b1;
      end else begin
        shift <= 1'b0;
      end
      if((((cnt_list_0 == 4'b1001) && 1'b1) && (cnt_list_2 == 4'b1001)))begin
        valid <= 1'b1;
      end else begin
        valid <= 1'b0;
      end
    end
  end

  always @ (posedge clk) begin
    _zz_1 <= (((cnt_list_0 == 4'b1000) && (cnt_list_2 == 4'b1001)) && (cnt_list_5 == 2'b11));
  end


endmodule

module WeightMem (
  input      [6:0]    io_address,
  output     [31:0]   io_weights_out_0,
  output     [31:0]   io_weights_out_1,
  output     [31:0]   io_weights_out_2,
  output     [31:0]   io_weights_out_3,
  input               clk,
  input               reset
);
  reg        [127:0]  _zz_2;
  wire       [31:0]   _zz_3;
  wire       [31:0]   _zz_4;
  wire       [31:0]   _zz_5;
  wire       [31:0]   _zz_6;
  wire                _zz_7;
  wire       [127:0]  _zz_1;
  reg [127:0] ROM [0:74];

  assign _zz_3 = _zz_1[31 : 0];
  assign _zz_4 = _zz_1[63 : 32];
  assign _zz_5 = _zz_1[95 : 64];
  assign _zz_6 = _zz_1[127 : 96];
  assign _zz_7 = 1'b1;
  initial begin
    $readmemb("ClassificationNet.v_toplevel_convolutionBlock_2_core_layer_rom_ROM.bin",ROM);
  end
  always @ (posedge clk) begin
    if(_zz_7) begin
      _zz_2 <= ROM[io_address];
    end
  end

  assign _zz_1 = _zz_2;
  assign io_weights_out_0 = _zz_3[31 : 0];
  assign io_weights_out_1 = _zz_4[31 : 0];
  assign io_weights_out_2 = _zz_5[31 : 0];
  assign io_weights_out_3 = _zz_6[31 : 0];

endmodule

module ConvolutionLayer (
  input               io_clear,
  input      [31:0]   io_weight_0,
  input      [31:0]   io_weight_1,
  input      [31:0]   io_weight_2,
  input      [31:0]   io_weight_3,
  input      [31:0]   io_map_0,
  input      [31:0]   io_map_1,
  input      [31:0]   io_map_2,
  input      [31:0]   io_map_3,
  input      [31:0]   io_map_4,
  input      [31:0]   io_map_5,
  input      [31:0]   io_map_6,
  input      [31:0]   io_map_7,
  input      [31:0]   io_map_8,
  input      [31:0]   io_map_9,
  input      [31:0]   io_map_10,
  input      [31:0]   io_map_11,
  input      [31:0]   io_map_12,
  input      [31:0]   io_map_13,
  output     [31:0]   io_output_0_0,
  output     [31:0]   io_output_0_1,
  output     [31:0]   io_output_0_2,
  output     [31:0]   io_output_0_3,
  output     [31:0]   io_output_0_4,
  output     [31:0]   io_output_0_5,
  output     [31:0]   io_output_0_6,
  output     [31:0]   io_output_0_7,
  output     [31:0]   io_output_0_8,
  output     [31:0]   io_output_0_9,
  output     [31:0]   io_output_0_10,
  output     [31:0]   io_output_0_11,
  output     [31:0]   io_output_0_12,
  output     [31:0]   io_output_0_13,
  output     [31:0]   io_output_1_0,
  output     [31:0]   io_output_1_1,
  output     [31:0]   io_output_1_2,
  output     [31:0]   io_output_1_3,
  output     [31:0]   io_output_1_4,
  output     [31:0]   io_output_1_5,
  output     [31:0]   io_output_1_6,
  output     [31:0]   io_output_1_7,
  output     [31:0]   io_output_1_8,
  output     [31:0]   io_output_1_9,
  output     [31:0]   io_output_1_10,
  output     [31:0]   io_output_1_11,
  output     [31:0]   io_output_1_12,
  output     [31:0]   io_output_1_13,
  output     [31:0]   io_output_2_0,
  output     [31:0]   io_output_2_1,
  output     [31:0]   io_output_2_2,
  output     [31:0]   io_output_2_3,
  output     [31:0]   io_output_2_4,
  output     [31:0]   io_output_2_5,
  output     [31:0]   io_output_2_6,
  output     [31:0]   io_output_2_7,
  output     [31:0]   io_output_2_8,
  output     [31:0]   io_output_2_9,
  output     [31:0]   io_output_2_10,
  output     [31:0]   io_output_2_11,
  output     [31:0]   io_output_2_12,
  output     [31:0]   io_output_2_13,
  output     [31:0]   io_output_3_0,
  output     [31:0]   io_output_3_1,
  output     [31:0]   io_output_3_2,
  output     [31:0]   io_output_3_3,
  output     [31:0]   io_output_3_4,
  output     [31:0]   io_output_3_5,
  output     [31:0]   io_output_3_6,
  output     [31:0]   io_output_3_7,
  output     [31:0]   io_output_3_8,
  output     [31:0]   io_output_3_9,
  output     [31:0]   io_output_3_10,
  output     [31:0]   io_output_3_11,
  output     [31:0]   io_output_3_12,
  output     [31:0]   io_output_3_13,
  input               clk,
  input               reset
);
  wire       [43:0]   _zz_1;
  wire       [63:0]   _zz_2;
  wire       [43:0]   _zz_3;
  wire       [63:0]   _zz_4;
  wire       [43:0]   _zz_5;
  wire       [63:0]   _zz_6;
  wire       [43:0]   _zz_7;
  wire       [63:0]   _zz_8;
  wire       [43:0]   _zz_9;
  wire       [63:0]   _zz_10;
  wire       [43:0]   _zz_11;
  wire       [63:0]   _zz_12;
  wire       [43:0]   _zz_13;
  wire       [63:0]   _zz_14;
  wire       [43:0]   _zz_15;
  wire       [63:0]   _zz_16;
  wire       [43:0]   _zz_17;
  wire       [63:0]   _zz_18;
  wire       [43:0]   _zz_19;
  wire       [63:0]   _zz_20;
  wire       [43:0]   _zz_21;
  wire       [63:0]   _zz_22;
  wire       [43:0]   _zz_23;
  wire       [63:0]   _zz_24;
  wire       [43:0]   _zz_25;
  wire       [63:0]   _zz_26;
  wire       [43:0]   _zz_27;
  wire       [63:0]   _zz_28;
  wire       [43:0]   _zz_29;
  wire       [63:0]   _zz_30;
  wire       [43:0]   _zz_31;
  wire       [63:0]   _zz_32;
  wire       [43:0]   _zz_33;
  wire       [63:0]   _zz_34;
  wire       [43:0]   _zz_35;
  wire       [63:0]   _zz_36;
  wire       [43:0]   _zz_37;
  wire       [63:0]   _zz_38;
  wire       [43:0]   _zz_39;
  wire       [63:0]   _zz_40;
  wire       [43:0]   _zz_41;
  wire       [63:0]   _zz_42;
  wire       [43:0]   _zz_43;
  wire       [63:0]   _zz_44;
  wire       [43:0]   _zz_45;
  wire       [63:0]   _zz_46;
  wire       [43:0]   _zz_47;
  wire       [63:0]   _zz_48;
  wire       [43:0]   _zz_49;
  wire       [63:0]   _zz_50;
  wire       [43:0]   _zz_51;
  wire       [63:0]   _zz_52;
  wire       [43:0]   _zz_53;
  wire       [63:0]   _zz_54;
  wire       [43:0]   _zz_55;
  wire       [63:0]   _zz_56;
  wire       [43:0]   _zz_57;
  wire       [63:0]   _zz_58;
  wire       [43:0]   _zz_59;
  wire       [63:0]   _zz_60;
  wire       [43:0]   _zz_61;
  wire       [63:0]   _zz_62;
  wire       [43:0]   _zz_63;
  wire       [63:0]   _zz_64;
  wire       [43:0]   _zz_65;
  wire       [63:0]   _zz_66;
  wire       [43:0]   _zz_67;
  wire       [63:0]   _zz_68;
  wire       [43:0]   _zz_69;
  wire       [63:0]   _zz_70;
  wire       [43:0]   _zz_71;
  wire       [63:0]   _zz_72;
  wire       [43:0]   _zz_73;
  wire       [63:0]   _zz_74;
  wire       [43:0]   _zz_75;
  wire       [63:0]   _zz_76;
  wire       [43:0]   _zz_77;
  wire       [63:0]   _zz_78;
  wire       [43:0]   _zz_79;
  wire       [63:0]   _zz_80;
  wire       [43:0]   _zz_81;
  wire       [63:0]   _zz_82;
  wire       [43:0]   _zz_83;
  wire       [63:0]   _zz_84;
  wire       [43:0]   _zz_85;
  wire       [63:0]   _zz_86;
  wire       [43:0]   _zz_87;
  wire       [63:0]   _zz_88;
  wire       [43:0]   _zz_89;
  wire       [63:0]   _zz_90;
  wire       [43:0]   _zz_91;
  wire       [63:0]   _zz_92;
  wire       [43:0]   _zz_93;
  wire       [63:0]   _zz_94;
  wire       [43:0]   _zz_95;
  wire       [63:0]   _zz_96;
  wire       [43:0]   _zz_97;
  wire       [63:0]   _zz_98;
  wire       [43:0]   _zz_99;
  wire       [63:0]   _zz_100;
  wire       [43:0]   _zz_101;
  wire       [63:0]   _zz_102;
  wire       [43:0]   _zz_103;
  wire       [63:0]   _zz_104;
  wire       [43:0]   _zz_105;
  wire       [63:0]   _zz_106;
  wire       [43:0]   _zz_107;
  wire       [63:0]   _zz_108;
  wire       [43:0]   _zz_109;
  wire       [63:0]   _zz_110;
  wire       [43:0]   _zz_111;
  wire       [63:0]   _zz_112;
  wire       [42:0]   _zz_113;
  wire       [42:0]   _zz_114;
  wire       [42:0]   _zz_115;
  wire       [42:0]   _zz_116;
  wire       [42:0]   _zz_117;
  wire       [42:0]   _zz_118;
  wire       [42:0]   _zz_119;
  wire       [42:0]   _zz_120;
  wire       [42:0]   _zz_121;
  wire       [42:0]   _zz_122;
  wire       [42:0]   _zz_123;
  wire       [42:0]   _zz_124;
  wire       [42:0]   _zz_125;
  wire       [42:0]   _zz_126;
  wire       [42:0]   _zz_127;
  wire       [42:0]   _zz_128;
  wire       [42:0]   _zz_129;
  wire       [42:0]   _zz_130;
  wire       [42:0]   _zz_131;
  wire       [42:0]   _zz_132;
  wire       [42:0]   _zz_133;
  wire       [42:0]   _zz_134;
  wire       [42:0]   _zz_135;
  wire       [42:0]   _zz_136;
  wire       [42:0]   _zz_137;
  wire       [42:0]   _zz_138;
  wire       [42:0]   _zz_139;
  wire       [42:0]   _zz_140;
  wire       [42:0]   _zz_141;
  wire       [42:0]   _zz_142;
  wire       [42:0]   _zz_143;
  wire       [42:0]   _zz_144;
  wire       [42:0]   _zz_145;
  wire       [42:0]   _zz_146;
  wire       [42:0]   _zz_147;
  wire       [42:0]   _zz_148;
  wire       [42:0]   _zz_149;
  wire       [42:0]   _zz_150;
  wire       [42:0]   _zz_151;
  wire       [42:0]   _zz_152;
  wire       [42:0]   _zz_153;
  wire       [42:0]   _zz_154;
  wire       [42:0]   _zz_155;
  wire       [42:0]   _zz_156;
  wire       [42:0]   _zz_157;
  wire       [42:0]   _zz_158;
  wire       [42:0]   _zz_159;
  wire       [42:0]   _zz_160;
  wire       [42:0]   _zz_161;
  wire       [42:0]   _zz_162;
  wire       [42:0]   _zz_163;
  wire       [42:0]   _zz_164;
  wire       [42:0]   _zz_165;
  wire       [42:0]   _zz_166;
  wire       [42:0]   _zz_167;
  wire       [42:0]   _zz_168;
  wire       [42:0]   _zz_169;
  wire       [42:0]   _zz_170;
  wire       [42:0]   _zz_171;
  wire       [42:0]   _zz_172;
  wire       [42:0]   _zz_173;
  wire       [42:0]   _zz_174;
  wire       [42:0]   _zz_175;
  wire       [42:0]   _zz_176;
  wire       [42:0]   _zz_177;
  wire       [42:0]   _zz_178;
  wire       [42:0]   _zz_179;
  wire       [42:0]   _zz_180;
  wire       [42:0]   _zz_181;
  wire       [42:0]   _zz_182;
  wire       [42:0]   _zz_183;
  wire       [42:0]   _zz_184;
  wire       [42:0]   _zz_185;
  wire       [42:0]   _zz_186;
  wire       [42:0]   _zz_187;
  wire       [42:0]   _zz_188;
  wire       [42:0]   _zz_189;
  wire       [42:0]   _zz_190;
  wire       [42:0]   _zz_191;
  wire       [42:0]   _zz_192;
  wire       [42:0]   _zz_193;
  wire       [42:0]   _zz_194;
  wire       [42:0]   _zz_195;
  wire       [42:0]   _zz_196;
  wire       [42:0]   _zz_197;
  wire       [42:0]   _zz_198;
  wire       [42:0]   _zz_199;
  wire       [42:0]   _zz_200;
  wire       [42:0]   _zz_201;
  wire       [42:0]   _zz_202;
  wire       [42:0]   _zz_203;
  wire       [42:0]   _zz_204;
  wire       [42:0]   _zz_205;
  wire       [42:0]   _zz_206;
  wire       [42:0]   _zz_207;
  wire       [42:0]   _zz_208;
  wire       [42:0]   _zz_209;
  wire       [42:0]   _zz_210;
  wire       [42:0]   _zz_211;
  wire       [42:0]   _zz_212;
  wire       [42:0]   _zz_213;
  wire       [42:0]   _zz_214;
  wire       [42:0]   _zz_215;
  wire       [42:0]   _zz_216;
  wire       [42:0]   _zz_217;
  wire       [42:0]   _zz_218;
  wire       [42:0]   _zz_219;
  wire       [42:0]   _zz_220;
  wire       [42:0]   _zz_221;
  wire       [42:0]   _zz_222;
  wire       [42:0]   _zz_223;
  wire       [42:0]   _zz_224;
  reg        [42:0]   res_0_0;
  reg        [42:0]   res_0_1;
  reg        [42:0]   res_0_2;
  reg        [42:0]   res_0_3;
  reg        [42:0]   res_0_4;
  reg        [42:0]   res_0_5;
  reg        [42:0]   res_0_6;
  reg        [42:0]   res_0_7;
  reg        [42:0]   res_0_8;
  reg        [42:0]   res_0_9;
  reg        [42:0]   res_0_10;
  reg        [42:0]   res_0_11;
  reg        [42:0]   res_0_12;
  reg        [42:0]   res_0_13;
  reg        [42:0]   res_1_0;
  reg        [42:0]   res_1_1;
  reg        [42:0]   res_1_2;
  reg        [42:0]   res_1_3;
  reg        [42:0]   res_1_4;
  reg        [42:0]   res_1_5;
  reg        [42:0]   res_1_6;
  reg        [42:0]   res_1_7;
  reg        [42:0]   res_1_8;
  reg        [42:0]   res_1_9;
  reg        [42:0]   res_1_10;
  reg        [42:0]   res_1_11;
  reg        [42:0]   res_1_12;
  reg        [42:0]   res_1_13;
  reg        [42:0]   res_2_0;
  reg        [42:0]   res_2_1;
  reg        [42:0]   res_2_2;
  reg        [42:0]   res_2_3;
  reg        [42:0]   res_2_4;
  reg        [42:0]   res_2_5;
  reg        [42:0]   res_2_6;
  reg        [42:0]   res_2_7;
  reg        [42:0]   res_2_8;
  reg        [42:0]   res_2_9;
  reg        [42:0]   res_2_10;
  reg        [42:0]   res_2_11;
  reg        [42:0]   res_2_12;
  reg        [42:0]   res_2_13;
  reg        [42:0]   res_3_0;
  reg        [42:0]   res_3_1;
  reg        [42:0]   res_3_2;
  reg        [42:0]   res_3_3;
  reg        [42:0]   res_3_4;
  reg        [42:0]   res_3_5;
  reg        [42:0]   res_3_6;
  reg        [42:0]   res_3_7;
  reg        [42:0]   res_3_8;
  reg        [42:0]   res_3_9;
  reg        [42:0]   res_3_10;
  reg        [42:0]   res_3_11;
  reg        [42:0]   res_3_12;
  reg        [42:0]   res_3_13;
  reg        [31:0]   output_0_0;
  reg        [31:0]   output_0_1;
  reg        [31:0]   output_0_2;
  reg        [31:0]   output_0_3;
  reg        [31:0]   output_0_4;
  reg        [31:0]   output_0_5;
  reg        [31:0]   output_0_6;
  reg        [31:0]   output_0_7;
  reg        [31:0]   output_0_8;
  reg        [31:0]   output_0_9;
  reg        [31:0]   output_0_10;
  reg        [31:0]   output_0_11;
  reg        [31:0]   output_0_12;
  reg        [31:0]   output_0_13;
  reg        [31:0]   output_1_0;
  reg        [31:0]   output_1_1;
  reg        [31:0]   output_1_2;
  reg        [31:0]   output_1_3;
  reg        [31:0]   output_1_4;
  reg        [31:0]   output_1_5;
  reg        [31:0]   output_1_6;
  reg        [31:0]   output_1_7;
  reg        [31:0]   output_1_8;
  reg        [31:0]   output_1_9;
  reg        [31:0]   output_1_10;
  reg        [31:0]   output_1_11;
  reg        [31:0]   output_1_12;
  reg        [31:0]   output_1_13;
  reg        [31:0]   output_2_0;
  reg        [31:0]   output_2_1;
  reg        [31:0]   output_2_2;
  reg        [31:0]   output_2_3;
  reg        [31:0]   output_2_4;
  reg        [31:0]   output_2_5;
  reg        [31:0]   output_2_6;
  reg        [31:0]   output_2_7;
  reg        [31:0]   output_2_8;
  reg        [31:0]   output_2_9;
  reg        [31:0]   output_2_10;
  reg        [31:0]   output_2_11;
  reg        [31:0]   output_2_12;
  reg        [31:0]   output_2_13;
  reg        [31:0]   output_3_0;
  reg        [31:0]   output_3_1;
  reg        [31:0]   output_3_2;
  reg        [31:0]   output_3_3;
  reg        [31:0]   output_3_4;
  reg        [31:0]   output_3_5;
  reg        [31:0]   output_3_6;
  reg        [31:0]   output_3_7;
  reg        [31:0]   output_3_8;
  reg        [31:0]   output_3_9;
  reg        [31:0]   output_3_10;
  reg        [31:0]   output_3_11;
  reg        [31:0]   output_3_12;
  reg        [31:0]   output_3_13;
  reg                 io_clear_delay_1;
  reg                 io_clear_delay_2;
  reg                 io_clear_delay_3;

  assign _zz_1 = (_zz_2 >>> 20);
  assign _zz_2 = ($signed(io_map_0) * $signed(io_weight_0));
  assign _zz_3 = (_zz_4 >>> 20);
  assign _zz_4 = ($signed(io_map_1) * $signed(io_weight_0));
  assign _zz_5 = (_zz_6 >>> 20);
  assign _zz_6 = ($signed(io_map_2) * $signed(io_weight_0));
  assign _zz_7 = (_zz_8 >>> 20);
  assign _zz_8 = ($signed(io_map_3) * $signed(io_weight_0));
  assign _zz_9 = (_zz_10 >>> 20);
  assign _zz_10 = ($signed(io_map_4) * $signed(io_weight_0));
  assign _zz_11 = (_zz_12 >>> 20);
  assign _zz_12 = ($signed(io_map_5) * $signed(io_weight_0));
  assign _zz_13 = (_zz_14 >>> 20);
  assign _zz_14 = ($signed(io_map_6) * $signed(io_weight_0));
  assign _zz_15 = (_zz_16 >>> 20);
  assign _zz_16 = ($signed(io_map_7) * $signed(io_weight_0));
  assign _zz_17 = (_zz_18 >>> 20);
  assign _zz_18 = ($signed(io_map_8) * $signed(io_weight_0));
  assign _zz_19 = (_zz_20 >>> 20);
  assign _zz_20 = ($signed(io_map_9) * $signed(io_weight_0));
  assign _zz_21 = (_zz_22 >>> 20);
  assign _zz_22 = ($signed(io_map_10) * $signed(io_weight_0));
  assign _zz_23 = (_zz_24 >>> 20);
  assign _zz_24 = ($signed(io_map_11) * $signed(io_weight_0));
  assign _zz_25 = (_zz_26 >>> 20);
  assign _zz_26 = ($signed(io_map_12) * $signed(io_weight_0));
  assign _zz_27 = (_zz_28 >>> 20);
  assign _zz_28 = ($signed(io_map_13) * $signed(io_weight_0));
  assign _zz_29 = (_zz_30 >>> 20);
  assign _zz_30 = ($signed(io_map_0) * $signed(io_weight_1));
  assign _zz_31 = (_zz_32 >>> 20);
  assign _zz_32 = ($signed(io_map_1) * $signed(io_weight_1));
  assign _zz_33 = (_zz_34 >>> 20);
  assign _zz_34 = ($signed(io_map_2) * $signed(io_weight_1));
  assign _zz_35 = (_zz_36 >>> 20);
  assign _zz_36 = ($signed(io_map_3) * $signed(io_weight_1));
  assign _zz_37 = (_zz_38 >>> 20);
  assign _zz_38 = ($signed(io_map_4) * $signed(io_weight_1));
  assign _zz_39 = (_zz_40 >>> 20);
  assign _zz_40 = ($signed(io_map_5) * $signed(io_weight_1));
  assign _zz_41 = (_zz_42 >>> 20);
  assign _zz_42 = ($signed(io_map_6) * $signed(io_weight_1));
  assign _zz_43 = (_zz_44 >>> 20);
  assign _zz_44 = ($signed(io_map_7) * $signed(io_weight_1));
  assign _zz_45 = (_zz_46 >>> 20);
  assign _zz_46 = ($signed(io_map_8) * $signed(io_weight_1));
  assign _zz_47 = (_zz_48 >>> 20);
  assign _zz_48 = ($signed(io_map_9) * $signed(io_weight_1));
  assign _zz_49 = (_zz_50 >>> 20);
  assign _zz_50 = ($signed(io_map_10) * $signed(io_weight_1));
  assign _zz_51 = (_zz_52 >>> 20);
  assign _zz_52 = ($signed(io_map_11) * $signed(io_weight_1));
  assign _zz_53 = (_zz_54 >>> 20);
  assign _zz_54 = ($signed(io_map_12) * $signed(io_weight_1));
  assign _zz_55 = (_zz_56 >>> 20);
  assign _zz_56 = ($signed(io_map_13) * $signed(io_weight_1));
  assign _zz_57 = (_zz_58 >>> 20);
  assign _zz_58 = ($signed(io_map_0) * $signed(io_weight_2));
  assign _zz_59 = (_zz_60 >>> 20);
  assign _zz_60 = ($signed(io_map_1) * $signed(io_weight_2));
  assign _zz_61 = (_zz_62 >>> 20);
  assign _zz_62 = ($signed(io_map_2) * $signed(io_weight_2));
  assign _zz_63 = (_zz_64 >>> 20);
  assign _zz_64 = ($signed(io_map_3) * $signed(io_weight_2));
  assign _zz_65 = (_zz_66 >>> 20);
  assign _zz_66 = ($signed(io_map_4) * $signed(io_weight_2));
  assign _zz_67 = (_zz_68 >>> 20);
  assign _zz_68 = ($signed(io_map_5) * $signed(io_weight_2));
  assign _zz_69 = (_zz_70 >>> 20);
  assign _zz_70 = ($signed(io_map_6) * $signed(io_weight_2));
  assign _zz_71 = (_zz_72 >>> 20);
  assign _zz_72 = ($signed(io_map_7) * $signed(io_weight_2));
  assign _zz_73 = (_zz_74 >>> 20);
  assign _zz_74 = ($signed(io_map_8) * $signed(io_weight_2));
  assign _zz_75 = (_zz_76 >>> 20);
  assign _zz_76 = ($signed(io_map_9) * $signed(io_weight_2));
  assign _zz_77 = (_zz_78 >>> 20);
  assign _zz_78 = ($signed(io_map_10) * $signed(io_weight_2));
  assign _zz_79 = (_zz_80 >>> 20);
  assign _zz_80 = ($signed(io_map_11) * $signed(io_weight_2));
  assign _zz_81 = (_zz_82 >>> 20);
  assign _zz_82 = ($signed(io_map_12) * $signed(io_weight_2));
  assign _zz_83 = (_zz_84 >>> 20);
  assign _zz_84 = ($signed(io_map_13) * $signed(io_weight_2));
  assign _zz_85 = (_zz_86 >>> 20);
  assign _zz_86 = ($signed(io_map_0) * $signed(io_weight_3));
  assign _zz_87 = (_zz_88 >>> 20);
  assign _zz_88 = ($signed(io_map_1) * $signed(io_weight_3));
  assign _zz_89 = (_zz_90 >>> 20);
  assign _zz_90 = ($signed(io_map_2) * $signed(io_weight_3));
  assign _zz_91 = (_zz_92 >>> 20);
  assign _zz_92 = ($signed(io_map_3) * $signed(io_weight_3));
  assign _zz_93 = (_zz_94 >>> 20);
  assign _zz_94 = ($signed(io_map_4) * $signed(io_weight_3));
  assign _zz_95 = (_zz_96 >>> 20);
  assign _zz_96 = ($signed(io_map_5) * $signed(io_weight_3));
  assign _zz_97 = (_zz_98 >>> 20);
  assign _zz_98 = ($signed(io_map_6) * $signed(io_weight_3));
  assign _zz_99 = (_zz_100 >>> 20);
  assign _zz_100 = ($signed(io_map_7) * $signed(io_weight_3));
  assign _zz_101 = (_zz_102 >>> 20);
  assign _zz_102 = ($signed(io_map_8) * $signed(io_weight_3));
  assign _zz_103 = (_zz_104 >>> 20);
  assign _zz_104 = ($signed(io_map_9) * $signed(io_weight_3));
  assign _zz_105 = (_zz_106 >>> 20);
  assign _zz_106 = ($signed(io_map_10) * $signed(io_weight_3));
  assign _zz_107 = (_zz_108 >>> 20);
  assign _zz_108 = ($signed(io_map_11) * $signed(io_weight_3));
  assign _zz_109 = (_zz_110 >>> 20);
  assign _zz_110 = ($signed(io_map_12) * $signed(io_weight_3));
  assign _zz_111 = (_zz_112 >>> 20);
  assign _zz_112 = ($signed(io_map_13) * $signed(io_weight_3));
  assign _zz_113 = ($signed(_zz_114) + $signed(res_0_0));
  assign _zz_114 = {{11{output_0_0[31]}}, output_0_0};
  assign _zz_115 = ($signed(_zz_116) + $signed(res_0_1));
  assign _zz_116 = {{11{output_0_1[31]}}, output_0_1};
  assign _zz_117 = ($signed(_zz_118) + $signed(res_0_2));
  assign _zz_118 = {{11{output_0_2[31]}}, output_0_2};
  assign _zz_119 = ($signed(_zz_120) + $signed(res_0_3));
  assign _zz_120 = {{11{output_0_3[31]}}, output_0_3};
  assign _zz_121 = ($signed(_zz_122) + $signed(res_0_4));
  assign _zz_122 = {{11{output_0_4[31]}}, output_0_4};
  assign _zz_123 = ($signed(_zz_124) + $signed(res_0_5));
  assign _zz_124 = {{11{output_0_5[31]}}, output_0_5};
  assign _zz_125 = ($signed(_zz_126) + $signed(res_0_6));
  assign _zz_126 = {{11{output_0_6[31]}}, output_0_6};
  assign _zz_127 = ($signed(_zz_128) + $signed(res_0_7));
  assign _zz_128 = {{11{output_0_7[31]}}, output_0_7};
  assign _zz_129 = ($signed(_zz_130) + $signed(res_0_8));
  assign _zz_130 = {{11{output_0_8[31]}}, output_0_8};
  assign _zz_131 = ($signed(_zz_132) + $signed(res_0_9));
  assign _zz_132 = {{11{output_0_9[31]}}, output_0_9};
  assign _zz_133 = ($signed(_zz_134) + $signed(res_0_10));
  assign _zz_134 = {{11{output_0_10[31]}}, output_0_10};
  assign _zz_135 = ($signed(_zz_136) + $signed(res_0_11));
  assign _zz_136 = {{11{output_0_11[31]}}, output_0_11};
  assign _zz_137 = ($signed(_zz_138) + $signed(res_0_12));
  assign _zz_138 = {{11{output_0_12[31]}}, output_0_12};
  assign _zz_139 = ($signed(_zz_140) + $signed(res_0_13));
  assign _zz_140 = {{11{output_0_13[31]}}, output_0_13};
  assign _zz_141 = ($signed(_zz_142) + $signed(res_1_0));
  assign _zz_142 = {{11{output_1_0[31]}}, output_1_0};
  assign _zz_143 = ($signed(_zz_144) + $signed(res_1_1));
  assign _zz_144 = {{11{output_1_1[31]}}, output_1_1};
  assign _zz_145 = ($signed(_zz_146) + $signed(res_1_2));
  assign _zz_146 = {{11{output_1_2[31]}}, output_1_2};
  assign _zz_147 = ($signed(_zz_148) + $signed(res_1_3));
  assign _zz_148 = {{11{output_1_3[31]}}, output_1_3};
  assign _zz_149 = ($signed(_zz_150) + $signed(res_1_4));
  assign _zz_150 = {{11{output_1_4[31]}}, output_1_4};
  assign _zz_151 = ($signed(_zz_152) + $signed(res_1_5));
  assign _zz_152 = {{11{output_1_5[31]}}, output_1_5};
  assign _zz_153 = ($signed(_zz_154) + $signed(res_1_6));
  assign _zz_154 = {{11{output_1_6[31]}}, output_1_6};
  assign _zz_155 = ($signed(_zz_156) + $signed(res_1_7));
  assign _zz_156 = {{11{output_1_7[31]}}, output_1_7};
  assign _zz_157 = ($signed(_zz_158) + $signed(res_1_8));
  assign _zz_158 = {{11{output_1_8[31]}}, output_1_8};
  assign _zz_159 = ($signed(_zz_160) + $signed(res_1_9));
  assign _zz_160 = {{11{output_1_9[31]}}, output_1_9};
  assign _zz_161 = ($signed(_zz_162) + $signed(res_1_10));
  assign _zz_162 = {{11{output_1_10[31]}}, output_1_10};
  assign _zz_163 = ($signed(_zz_164) + $signed(res_1_11));
  assign _zz_164 = {{11{output_1_11[31]}}, output_1_11};
  assign _zz_165 = ($signed(_zz_166) + $signed(res_1_12));
  assign _zz_166 = {{11{output_1_12[31]}}, output_1_12};
  assign _zz_167 = ($signed(_zz_168) + $signed(res_1_13));
  assign _zz_168 = {{11{output_1_13[31]}}, output_1_13};
  assign _zz_169 = ($signed(_zz_170) + $signed(res_2_0));
  assign _zz_170 = {{11{output_2_0[31]}}, output_2_0};
  assign _zz_171 = ($signed(_zz_172) + $signed(res_2_1));
  assign _zz_172 = {{11{output_2_1[31]}}, output_2_1};
  assign _zz_173 = ($signed(_zz_174) + $signed(res_2_2));
  assign _zz_174 = {{11{output_2_2[31]}}, output_2_2};
  assign _zz_175 = ($signed(_zz_176) + $signed(res_2_3));
  assign _zz_176 = {{11{output_2_3[31]}}, output_2_3};
  assign _zz_177 = ($signed(_zz_178) + $signed(res_2_4));
  assign _zz_178 = {{11{output_2_4[31]}}, output_2_4};
  assign _zz_179 = ($signed(_zz_180) + $signed(res_2_5));
  assign _zz_180 = {{11{output_2_5[31]}}, output_2_5};
  assign _zz_181 = ($signed(_zz_182) + $signed(res_2_6));
  assign _zz_182 = {{11{output_2_6[31]}}, output_2_6};
  assign _zz_183 = ($signed(_zz_184) + $signed(res_2_7));
  assign _zz_184 = {{11{output_2_7[31]}}, output_2_7};
  assign _zz_185 = ($signed(_zz_186) + $signed(res_2_8));
  assign _zz_186 = {{11{output_2_8[31]}}, output_2_8};
  assign _zz_187 = ($signed(_zz_188) + $signed(res_2_9));
  assign _zz_188 = {{11{output_2_9[31]}}, output_2_9};
  assign _zz_189 = ($signed(_zz_190) + $signed(res_2_10));
  assign _zz_190 = {{11{output_2_10[31]}}, output_2_10};
  assign _zz_191 = ($signed(_zz_192) + $signed(res_2_11));
  assign _zz_192 = {{11{output_2_11[31]}}, output_2_11};
  assign _zz_193 = ($signed(_zz_194) + $signed(res_2_12));
  assign _zz_194 = {{11{output_2_12[31]}}, output_2_12};
  assign _zz_195 = ($signed(_zz_196) + $signed(res_2_13));
  assign _zz_196 = {{11{output_2_13[31]}}, output_2_13};
  assign _zz_197 = ($signed(_zz_198) + $signed(res_3_0));
  assign _zz_198 = {{11{output_3_0[31]}}, output_3_0};
  assign _zz_199 = ($signed(_zz_200) + $signed(res_3_1));
  assign _zz_200 = {{11{output_3_1[31]}}, output_3_1};
  assign _zz_201 = ($signed(_zz_202) + $signed(res_3_2));
  assign _zz_202 = {{11{output_3_2[31]}}, output_3_2};
  assign _zz_203 = ($signed(_zz_204) + $signed(res_3_3));
  assign _zz_204 = {{11{output_3_3[31]}}, output_3_3};
  assign _zz_205 = ($signed(_zz_206) + $signed(res_3_4));
  assign _zz_206 = {{11{output_3_4[31]}}, output_3_4};
  assign _zz_207 = ($signed(_zz_208) + $signed(res_3_5));
  assign _zz_208 = {{11{output_3_5[31]}}, output_3_5};
  assign _zz_209 = ($signed(_zz_210) + $signed(res_3_6));
  assign _zz_210 = {{11{output_3_6[31]}}, output_3_6};
  assign _zz_211 = ($signed(_zz_212) + $signed(res_3_7));
  assign _zz_212 = {{11{output_3_7[31]}}, output_3_7};
  assign _zz_213 = ($signed(_zz_214) + $signed(res_3_8));
  assign _zz_214 = {{11{output_3_8[31]}}, output_3_8};
  assign _zz_215 = ($signed(_zz_216) + $signed(res_3_9));
  assign _zz_216 = {{11{output_3_9[31]}}, output_3_9};
  assign _zz_217 = ($signed(_zz_218) + $signed(res_3_10));
  assign _zz_218 = {{11{output_3_10[31]}}, output_3_10};
  assign _zz_219 = ($signed(_zz_220) + $signed(res_3_11));
  assign _zz_220 = {{11{output_3_11[31]}}, output_3_11};
  assign _zz_221 = ($signed(_zz_222) + $signed(res_3_12));
  assign _zz_222 = {{11{output_3_12[31]}}, output_3_12};
  assign _zz_223 = ($signed(_zz_224) + $signed(res_3_13));
  assign _zz_224 = {{11{output_3_13[31]}}, output_3_13};
  assign io_output_0_0 = output_0_0;
  assign io_output_0_1 = output_0_1;
  assign io_output_0_2 = output_0_2;
  assign io_output_0_3 = output_0_3;
  assign io_output_0_4 = output_0_4;
  assign io_output_0_5 = output_0_5;
  assign io_output_0_6 = output_0_6;
  assign io_output_0_7 = output_0_7;
  assign io_output_0_8 = output_0_8;
  assign io_output_0_9 = output_0_9;
  assign io_output_0_10 = output_0_10;
  assign io_output_0_11 = output_0_11;
  assign io_output_0_12 = output_0_12;
  assign io_output_0_13 = output_0_13;
  assign io_output_1_0 = output_1_0;
  assign io_output_1_1 = output_1_1;
  assign io_output_1_2 = output_1_2;
  assign io_output_1_3 = output_1_3;
  assign io_output_1_4 = output_1_4;
  assign io_output_1_5 = output_1_5;
  assign io_output_1_6 = output_1_6;
  assign io_output_1_7 = output_1_7;
  assign io_output_1_8 = output_1_8;
  assign io_output_1_9 = output_1_9;
  assign io_output_1_10 = output_1_10;
  assign io_output_1_11 = output_1_11;
  assign io_output_1_12 = output_1_12;
  assign io_output_1_13 = output_1_13;
  assign io_output_2_0 = output_2_0;
  assign io_output_2_1 = output_2_1;
  assign io_output_2_2 = output_2_2;
  assign io_output_2_3 = output_2_3;
  assign io_output_2_4 = output_2_4;
  assign io_output_2_5 = output_2_5;
  assign io_output_2_6 = output_2_6;
  assign io_output_2_7 = output_2_7;
  assign io_output_2_8 = output_2_8;
  assign io_output_2_9 = output_2_9;
  assign io_output_2_10 = output_2_10;
  assign io_output_2_11 = output_2_11;
  assign io_output_2_12 = output_2_12;
  assign io_output_2_13 = output_2_13;
  assign io_output_3_0 = output_3_0;
  assign io_output_3_1 = output_3_1;
  assign io_output_3_2 = output_3_2;
  assign io_output_3_3 = output_3_3;
  assign io_output_3_4 = output_3_4;
  assign io_output_3_5 = output_3_5;
  assign io_output_3_6 = output_3_6;
  assign io_output_3_7 = output_3_7;
  assign io_output_3_8 = output_3_8;
  assign io_output_3_9 = output_3_9;
  assign io_output_3_10 = output_3_10;
  assign io_output_3_11 = output_3_11;
  assign io_output_3_12 = output_3_12;
  assign io_output_3_13 = output_3_13;
  always @ (posedge clk) begin
    if(reset) begin
      res_0_0 <= 43'h0;
      res_0_1 <= 43'h0;
      res_0_2 <= 43'h0;
      res_0_3 <= 43'h0;
      res_0_4 <= 43'h0;
      res_0_5 <= 43'h0;
      res_0_6 <= 43'h0;
      res_0_7 <= 43'h0;
      res_0_8 <= 43'h0;
      res_0_9 <= 43'h0;
      res_0_10 <= 43'h0;
      res_0_11 <= 43'h0;
      res_0_12 <= 43'h0;
      res_0_13 <= 43'h0;
      res_1_0 <= 43'h0;
      res_1_1 <= 43'h0;
      res_1_2 <= 43'h0;
      res_1_3 <= 43'h0;
      res_1_4 <= 43'h0;
      res_1_5 <= 43'h0;
      res_1_6 <= 43'h0;
      res_1_7 <= 43'h0;
      res_1_8 <= 43'h0;
      res_1_9 <= 43'h0;
      res_1_10 <= 43'h0;
      res_1_11 <= 43'h0;
      res_1_12 <= 43'h0;
      res_1_13 <= 43'h0;
      res_2_0 <= 43'h0;
      res_2_1 <= 43'h0;
      res_2_2 <= 43'h0;
      res_2_3 <= 43'h0;
      res_2_4 <= 43'h0;
      res_2_5 <= 43'h0;
      res_2_6 <= 43'h0;
      res_2_7 <= 43'h0;
      res_2_8 <= 43'h0;
      res_2_9 <= 43'h0;
      res_2_10 <= 43'h0;
      res_2_11 <= 43'h0;
      res_2_12 <= 43'h0;
      res_2_13 <= 43'h0;
      res_3_0 <= 43'h0;
      res_3_1 <= 43'h0;
      res_3_2 <= 43'h0;
      res_3_3 <= 43'h0;
      res_3_4 <= 43'h0;
      res_3_5 <= 43'h0;
      res_3_6 <= 43'h0;
      res_3_7 <= 43'h0;
      res_3_8 <= 43'h0;
      res_3_9 <= 43'h0;
      res_3_10 <= 43'h0;
      res_3_11 <= 43'h0;
      res_3_12 <= 43'h0;
      res_3_13 <= 43'h0;
      output_0_0 <= 32'h0;
      output_0_1 <= 32'h0;
      output_0_2 <= 32'h0;
      output_0_3 <= 32'h0;
      output_0_4 <= 32'h0;
      output_0_5 <= 32'h0;
      output_0_6 <= 32'h0;
      output_0_7 <= 32'h0;
      output_0_8 <= 32'h0;
      output_0_9 <= 32'h0;
      output_0_10 <= 32'h0;
      output_0_11 <= 32'h0;
      output_0_12 <= 32'h0;
      output_0_13 <= 32'h0;
      output_1_0 <= 32'h0;
      output_1_1 <= 32'h0;
      output_1_2 <= 32'h0;
      output_1_3 <= 32'h0;
      output_1_4 <= 32'h0;
      output_1_5 <= 32'h0;
      output_1_6 <= 32'h0;
      output_1_7 <= 32'h0;
      output_1_8 <= 32'h0;
      output_1_9 <= 32'h0;
      output_1_10 <= 32'h0;
      output_1_11 <= 32'h0;
      output_1_12 <= 32'h0;
      output_1_13 <= 32'h0;
      output_2_0 <= 32'h0;
      output_2_1 <= 32'h0;
      output_2_2 <= 32'h0;
      output_2_3 <= 32'h0;
      output_2_4 <= 32'h0;
      output_2_5 <= 32'h0;
      output_2_6 <= 32'h0;
      output_2_7 <= 32'h0;
      output_2_8 <= 32'h0;
      output_2_9 <= 32'h0;
      output_2_10 <= 32'h0;
      output_2_11 <= 32'h0;
      output_2_12 <= 32'h0;
      output_2_13 <= 32'h0;
      output_3_0 <= 32'h0;
      output_3_1 <= 32'h0;
      output_3_2 <= 32'h0;
      output_3_3 <= 32'h0;
      output_3_4 <= 32'h0;
      output_3_5 <= 32'h0;
      output_3_6 <= 32'h0;
      output_3_7 <= 32'h0;
      output_3_8 <= 32'h0;
      output_3_9 <= 32'h0;
      output_3_10 <= 32'h0;
      output_3_11 <= 32'h0;
      output_3_12 <= 32'h0;
      output_3_13 <= 32'h0;
    end else begin
      res_0_0 <= _zz_1[42:0];
      res_0_1 <= _zz_3[42:0];
      res_0_2 <= _zz_5[42:0];
      res_0_3 <= _zz_7[42:0];
      res_0_4 <= _zz_9[42:0];
      res_0_5 <= _zz_11[42:0];
      res_0_6 <= _zz_13[42:0];
      res_0_7 <= _zz_15[42:0];
      res_0_8 <= _zz_17[42:0];
      res_0_9 <= _zz_19[42:0];
      res_0_10 <= _zz_21[42:0];
      res_0_11 <= _zz_23[42:0];
      res_0_12 <= _zz_25[42:0];
      res_0_13 <= _zz_27[42:0];
      res_1_0 <= _zz_29[42:0];
      res_1_1 <= _zz_31[42:0];
      res_1_2 <= _zz_33[42:0];
      res_1_3 <= _zz_35[42:0];
      res_1_4 <= _zz_37[42:0];
      res_1_5 <= _zz_39[42:0];
      res_1_6 <= _zz_41[42:0];
      res_1_7 <= _zz_43[42:0];
      res_1_8 <= _zz_45[42:0];
      res_1_9 <= _zz_47[42:0];
      res_1_10 <= _zz_49[42:0];
      res_1_11 <= _zz_51[42:0];
      res_1_12 <= _zz_53[42:0];
      res_1_13 <= _zz_55[42:0];
      res_2_0 <= _zz_57[42:0];
      res_2_1 <= _zz_59[42:0];
      res_2_2 <= _zz_61[42:0];
      res_2_3 <= _zz_63[42:0];
      res_2_4 <= _zz_65[42:0];
      res_2_5 <= _zz_67[42:0];
      res_2_6 <= _zz_69[42:0];
      res_2_7 <= _zz_71[42:0];
      res_2_8 <= _zz_73[42:0];
      res_2_9 <= _zz_75[42:0];
      res_2_10 <= _zz_77[42:0];
      res_2_11 <= _zz_79[42:0];
      res_2_12 <= _zz_81[42:0];
      res_2_13 <= _zz_83[42:0];
      res_3_0 <= _zz_85[42:0];
      res_3_1 <= _zz_87[42:0];
      res_3_2 <= _zz_89[42:0];
      res_3_3 <= _zz_91[42:0];
      res_3_4 <= _zz_93[42:0];
      res_3_5 <= _zz_95[42:0];
      res_3_6 <= _zz_97[42:0];
      res_3_7 <= _zz_99[42:0];
      res_3_8 <= _zz_101[42:0];
      res_3_9 <= _zz_103[42:0];
      res_3_10 <= _zz_105[42:0];
      res_3_11 <= _zz_107[42:0];
      res_3_12 <= _zz_109[42:0];
      res_3_13 <= _zz_111[42:0];
      if(io_clear_delay_3)begin
        output_0_0 <= res_0_0[31:0];
        output_0_1 <= res_0_1[31:0];
        output_0_2 <= res_0_2[31:0];
        output_0_3 <= res_0_3[31:0];
        output_0_4 <= res_0_4[31:0];
        output_0_5 <= res_0_5[31:0];
        output_0_6 <= res_0_6[31:0];
        output_0_7 <= res_0_7[31:0];
        output_0_8 <= res_0_8[31:0];
        output_0_9 <= res_0_9[31:0];
        output_0_10 <= res_0_10[31:0];
        output_0_11 <= res_0_11[31:0];
        output_0_12 <= res_0_12[31:0];
        output_0_13 <= res_0_13[31:0];
        output_1_0 <= res_1_0[31:0];
        output_1_1 <= res_1_1[31:0];
        output_1_2 <= res_1_2[31:0];
        output_1_3 <= res_1_3[31:0];
        output_1_4 <= res_1_4[31:0];
        output_1_5 <= res_1_5[31:0];
        output_1_6 <= res_1_6[31:0];
        output_1_7 <= res_1_7[31:0];
        output_1_8 <= res_1_8[31:0];
        output_1_9 <= res_1_9[31:0];
        output_1_10 <= res_1_10[31:0];
        output_1_11 <= res_1_11[31:0];
        output_1_12 <= res_1_12[31:0];
        output_1_13 <= res_1_13[31:0];
        output_2_0 <= res_2_0[31:0];
        output_2_1 <= res_2_1[31:0];
        output_2_2 <= res_2_2[31:0];
        output_2_3 <= res_2_3[31:0];
        output_2_4 <= res_2_4[31:0];
        output_2_5 <= res_2_5[31:0];
        output_2_6 <= res_2_6[31:0];
        output_2_7 <= res_2_7[31:0];
        output_2_8 <= res_2_8[31:0];
        output_2_9 <= res_2_9[31:0];
        output_2_10 <= res_2_10[31:0];
        output_2_11 <= res_2_11[31:0];
        output_2_12 <= res_2_12[31:0];
        output_2_13 <= res_2_13[31:0];
        output_3_0 <= res_3_0[31:0];
        output_3_1 <= res_3_1[31:0];
        output_3_2 <= res_3_2[31:0];
        output_3_3 <= res_3_3[31:0];
        output_3_4 <= res_3_4[31:0];
        output_3_5 <= res_3_5[31:0];
        output_3_6 <= res_3_6[31:0];
        output_3_7 <= res_3_7[31:0];
        output_3_8 <= res_3_8[31:0];
        output_3_9 <= res_3_9[31:0];
        output_3_10 <= res_3_10[31:0];
        output_3_11 <= res_3_11[31:0];
        output_3_12 <= res_3_12[31:0];
        output_3_13 <= res_3_13[31:0];
      end else begin
        output_0_0 <= _zz_113[31:0];
        output_0_1 <= _zz_115[31:0];
        output_0_2 <= _zz_117[31:0];
        output_0_3 <= _zz_119[31:0];
        output_0_4 <= _zz_121[31:0];
        output_0_5 <= _zz_123[31:0];
        output_0_6 <= _zz_125[31:0];
        output_0_7 <= _zz_127[31:0];
        output_0_8 <= _zz_129[31:0];
        output_0_9 <= _zz_131[31:0];
        output_0_10 <= _zz_133[31:0];
        output_0_11 <= _zz_135[31:0];
        output_0_12 <= _zz_137[31:0];
        output_0_13 <= _zz_139[31:0];
        output_1_0 <= _zz_141[31:0];
        output_1_1 <= _zz_143[31:0];
        output_1_2 <= _zz_145[31:0];
        output_1_3 <= _zz_147[31:0];
        output_1_4 <= _zz_149[31:0];
        output_1_5 <= _zz_151[31:0];
        output_1_6 <= _zz_153[31:0];
        output_1_7 <= _zz_155[31:0];
        output_1_8 <= _zz_157[31:0];
        output_1_9 <= _zz_159[31:0];
        output_1_10 <= _zz_161[31:0];
        output_1_11 <= _zz_163[31:0];
        output_1_12 <= _zz_165[31:0];
        output_1_13 <= _zz_167[31:0];
        output_2_0 <= _zz_169[31:0];
        output_2_1 <= _zz_171[31:0];
        output_2_2 <= _zz_173[31:0];
        output_2_3 <= _zz_175[31:0];
        output_2_4 <= _zz_177[31:0];
        output_2_5 <= _zz_179[31:0];
        output_2_6 <= _zz_181[31:0];
        output_2_7 <= _zz_183[31:0];
        output_2_8 <= _zz_185[31:0];
        output_2_9 <= _zz_187[31:0];
        output_2_10 <= _zz_189[31:0];
        output_2_11 <= _zz_191[31:0];
        output_2_12 <= _zz_193[31:0];
        output_2_13 <= _zz_195[31:0];
        output_3_0 <= _zz_197[31:0];
        output_3_1 <= _zz_199[31:0];
        output_3_2 <= _zz_201[31:0];
        output_3_3 <= _zz_203[31:0];
        output_3_4 <= _zz_205[31:0];
        output_3_5 <= _zz_207[31:0];
        output_3_6 <= _zz_209[31:0];
        output_3_7 <= _zz_211[31:0];
        output_3_8 <= _zz_213[31:0];
        output_3_9 <= _zz_215[31:0];
        output_3_10 <= _zz_217[31:0];
        output_3_11 <= _zz_219[31:0];
        output_3_12 <= _zz_221[31:0];
        output_3_13 <= _zz_223[31:0];
      end
    end
  end

  always @ (posedge clk) begin
    io_clear_delay_1 <= io_clear;
    io_clear_delay_2 <= io_clear_delay_1;
    io_clear_delay_3 <= io_clear_delay_2;
  end


endmodule

module LayerCtrl (
  input               io_start,
  output              io_clear,
  output              io_shift,
  output              io_valid,
  output     [6:0]    io_fm_addr,
  output     [6:0]    io_weight_addr,
  input               clk,
  input               reset
);
  wire       [4:0]    _zz_3;
  wire       [6:0]    _zz_4;
  wire       [1:0]    _zz_5;
  wire       [4:0]    _zz_6;
  wire       [4:0]    _zz_7;
  wire       [7:0]    _zz_8;
  wire       [5:0]    _zz_9;
  wire       [6:0]    _zz_10;
  wire       [7:0]    _zz_11;
  wire       [4:0]    _zz_12;
  wire       [1:0]    _zz_13;
  wire       [5:0]    _zz_14;
  wire       [6:0]    _zz_15;
  wire       [6:0]    _zz_16;
  reg        [2:0]    cnt_list_0;
  reg        [1:0]    cnt_list_1;
  reg        [2:0]    cnt_list_2;
  reg        [3:0]    cnt_list_4;
  reg                 _zz_1;
  reg                 _zz_2;
  reg        [6:0]    fm_addr;
  reg        [6:0]    weight_addr;
  reg                 clear;
  reg                 shift;
  reg                 valid;

  assign _zz_3 = (_zz_6 + _zz_7[4 : 0]);
  assign _zz_4 = {2'd0, _zz_3};
  assign _zz_5 = (cnt_list_1 + 2'b00);
  assign _zz_6 = {3'd0, _zz_5};
  assign _zz_7 = (cnt_list_2 * 2'b11);
  assign _zz_8 = (_zz_9 * 2'b10);
  assign _zz_9 = (cnt_list_4 * 2'b11);
  assign _zz_10 = (_zz_11[6 : 0] + _zz_15);
  assign _zz_11 = (_zz_12 * 3'b101);
  assign _zz_12 = (_zz_13 * 3'b101);
  assign _zz_13 = (cnt_list_1 + 2'b00);
  assign _zz_14 = (cnt_list_2 * 3'b101);
  assign _zz_15 = {1'd0, _zz_14};
  assign _zz_16 = {4'd0, cnt_list_0};
  assign io_fm_addr = fm_addr;
  assign io_weight_addr = weight_addr;
  assign io_clear = clear;
  assign io_shift = shift;
  assign io_valid = valid;
  always @ (posedge clk) begin
    if(reset) begin
      cnt_list_0 <= 3'b000;
      cnt_list_1 <= 2'b00;
      cnt_list_2 <= 3'b000;
      cnt_list_4 <= 4'b0000;
      _zz_2 <= 1'b0;
      fm_addr <= 7'h0;
      weight_addr <= 7'h0;
      clear <= 1'b0;
      shift <= 1'b0;
      valid <= 1'b0;
    end else begin
      if(io_start)begin
        _zz_2 <= 1'b1;
      end else begin
        if(_zz_1)begin
          _zz_2 <= 1'b0;
        end
      end
      if((_zz_2 && 1'b1))begin
        if((cnt_list_0 < 3'b100))begin
          cnt_list_0 <= (cnt_list_0 + 3'b001);
        end else begin
          cnt_list_0 <= 3'b000;
        end
      end
      if(((_zz_2 && 1'b1) && (cnt_list_0 == 3'b100)))begin
        if((cnt_list_1 < 2'b10))begin
          cnt_list_1 <= (cnt_list_1 + 2'b01);
        end else begin
          cnt_list_1 <= 2'b00;
        end
      end
      if((((1'b1 && 1'b1) && (cnt_list_0 == 3'b100)) && (cnt_list_1 == 2'b10)))begin
        if((cnt_list_2 < 3'b100))begin
          cnt_list_2 <= (cnt_list_2 + 3'b001);
        end else begin
          cnt_list_2 <= 3'b000;
        end
      end
      if((((((1'b1 && 1'b1) && (cnt_list_0 == 3'b100)) && (cnt_list_1 == 2'b10)) && (cnt_list_2 == 3'b100)) && 1'b1))begin
        if((cnt_list_4 < 4'b1101))begin
          cnt_list_4 <= (cnt_list_4 + 4'b0001);
        end else begin
          cnt_list_4 <= 4'b0000;
        end
      end
      fm_addr <= (_zz_4 + _zz_8[6 : 0]);
      weight_addr <= (_zz_10 + _zz_16);
      if((((cnt_list_0 == 3'b000) && (cnt_list_1 == 2'b00)) && (cnt_list_2 == 3'b000)))begin
        clear <= 1'b1;
      end else begin
        clear <= 1'b0;
      end
      if((3'b000 < cnt_list_0))begin
        shift <= 1'b1;
      end else begin
        shift <= 1'b0;
      end
      if((((cnt_list_0 == 3'b100) && (cnt_list_1 == 2'b10)) && (cnt_list_2 == 3'b100)))begin
        valid <= 1'b1;
      end else begin
        valid <= 1'b0;
      end
    end
  end

  always @ (posedge clk) begin
    _zz_1 <= ((((cnt_list_0 == 3'b011) && (cnt_list_1 == 2'b10)) && (cnt_list_2 == 3'b100)) && (cnt_list_4 == 4'b1101));
  end


endmodule
