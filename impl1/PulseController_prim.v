// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Sun Mar 28 23:42:36 2021
//
// Verilog Description of module PulseController
//

module PulseController (scl, sda, rst, i_a0_pwm, i_a1_pwm, i_a2_pwm, 
            i_a3_pwm, i_a4_pwm, i_rev_pulse, o_select_indicator, o_y0_pwm, 
            o_y1_pwm) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(143[8:23])
    inout scl /* synthesis black_box_pad_pin=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(144[13:16])
    inout sda /* synthesis black_box_pad_pin=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(145[13:16])
    input rst;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(146[13:16])
    input i_a0_pwm;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(147[13:21])
    input i_a1_pwm;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(148[13:21])
    input i_a2_pwm;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(149[13:21])
    input i_a3_pwm;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(150[13:21])
    input i_a4_pwm;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(151[13:21])
    input i_rev_pulse;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(152[13:24])
    output o_select_indicator;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(153[14:32])
    output o_y0_pwm;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(154[14:22])
    output o_y1_pwm;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(155[14:22])
    
    wire i_rev_pulse_c /* synthesis SET_AS_NETWORK=i_rev_pulse_c, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(152[13:24])
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(158[7:10])
    wire i2c1_scli /* synthesis is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/efb.v(30[10:19])
    
    wire GND_net, VCC_net, rst_c, i_a0_pwm_c, i_a1_pwm_c, i_a2_pwm_c, 
        i_a3_pwm_c, i_a4_pwm_c, o_select_indicator_c, o_y0_pwm_c, o_y1_pwm_c, 
        wb_cyc_i, wb_we_i, n21;
    wire [7:0]wb_adr_i;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(163[13:21])
    wire [7:0]wb_dat_i;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(164[13:21])
    wire [7:0]wb_dat_o;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(165[13:21])
    
    wire wb_ack_o, n3212;
    wire [2:0]count;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(191[12:17])
    wire [12:0]i2c_pw0;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(193[21:28])
    wire [12:0]i2c_pw1;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(193[30:37])
    
    wire a0_rise, a1_rise;
    wire [12:0]a0_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(198[22:27])
    wire [12:0]a1_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(198[29:34])
    wire [12:0]a2_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(198[36:41])
    
    wire n3026;
    wire [12:0]a3_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(198[43:48])
    
    wire n17;
    wire [12:0]a4_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(198[50:55])
    wire [12:0]b0_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(200[22:27])
    wire [12:0]b1_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(200[29:34])
    wire [12:0]y0_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(202[22:27])
    wire [12:0]y1_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(202[29:34])
    wire [7:0]revcount;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(204[13:21])
    wire [12:0]y0_pw_12__N_78;
    wire [12:0]y1_pw_12__N_91;
    
    wire n2041, n3213, n3208, n1924, n1926, n1928, n1930, n1932, 
        n1418, n1417, n1416, n1415, n1414, n1409, n1408, n1406, 
        n1405, n3225, n261, n1440, n1790, n3079, n1578, n20, 
        n22, n2257, n1786, n2251, n3224, wb_we_i_N_193, n3223, 
        n2047;
    wire [12:0]i2c_pw1_12__N_39;
    
    wire n6, i2c1_sdaoen, i2c1_sdao, i2c1_scloen, i2c1_sclo, i2c1_sdai, 
        n2259, n1802, n4, n2268, n2967, n1782, n1774, n2263, 
        n12, n2389, clk_enable_56, n5, n2253, n2962, n3016, n3222, 
        n3018, n2255, n5_adj_276, n1771, n2947, n2467, n4_adj_277, 
        clk_enable_66, n2239, n2959, n3220, n1097, n1096, n3219, 
        n14, n3059, clk_enable_49, n2241, n2249, clk_enable_44, 
        clk_enable_58, clk_enable_13, n6_adj_278, n772, n773, n774, 
        n775, n776, n777, n778, n779, n780, n781, n782, n783, 
        n3199, n3, n3198, clk_enable_67, clk_enable_20, n3048, n2267, 
        n1785, n2247, n2245, n2243, n2272, n1778, n2261, n2266, 
        n9, n3209, n3218, n3006, n3063, n3008, n2044, n2046, 
        n2013, n3217, n4_adj_279, n3216, n3070, n4_adj_280, n1954, 
        n6_adj_281, n3215, n1922, n3231, n3207, n6_adj_282, n3230, 
        n3229, n3228, n3227, n3226, n3232;
    
    VHI i2 (.Z(VCC_net));
    LUT4 i1_4_lut (.A(a2_pw[8]), .B(a2_pw[10]), .C(a2_pw[7]), .D(n14), 
         .Z(n5_adj_276)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut.init = 16'heccc;
    FD1S3IX state_FSM_i5 (.D(n3199), .CK(clk), .CD(n3230), .Q(n779));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam state_FSM_i5.GSR = "DISABLED";
    FD1S3IX state_FSM_i4 (.D(n1778), .CK(clk), .CD(n3230), .Q(n780));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam state_FSM_i4.GSR = "DISABLED";
    FD1S3IX state_FSM_i3 (.D(n3048), .CK(clk), .CD(n3230), .Q(n781));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam state_FSM_i3.GSR = "DISABLED";
    FD1S3IX state_FSM_i2 (.D(n1774), .CK(clk), .CD(n3230), .Q(n782));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam state_FSM_i2.GSR = "DISABLED";
    FD1S3AX y1_pw_i0 (.D(y1_pw_12__N_91[0]), .CK(clk), .Q(y1_pw[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y1_pw_i0.GSR = "DISABLED";
    FD1P3IX count__i0 (.D(n2467), .SP(clk_enable_58), .CD(n3230), .CK(clk), 
            .Q(count[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam count__i0.GSR = "DISABLED";
    FD1P3AX i2c_pw0_i0_i0 (.D(n2263), .SP(clk_enable_56), .CK(clk), .Q(i2c_pw0[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw0_i0_i0.GSR = "DISABLED";
    LUT4 i795_4_lut_4_lut (.A(n3216), .B(n1406), .C(n3218), .D(revcount[3]), 
         .Z(n1926)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam i795_4_lut_4_lut.init = 16'hea40;
    LUT4 a1_pw_12__I_0_i7_3_lut (.A(a1_pw[6]), .B(b1_pw[6]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a1_pw_12__I_0_i7_3_lut.init = 16'hcaca;
    LUT4 a1_pw_12__I_0_i13_3_lut (.A(a1_pw[12]), .B(b1_pw[12]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a1_pw_12__I_0_i13_3_lut.init = 16'hcaca;
    IB i_a3_pwm_pad (.I(i_a3_pwm), .O(i_a3_pwm_c));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(150[13:21])
    LUT4 mux_412_i5_3_lut (.A(i2c_pw1[12]), .B(i2c_pw1[4]), .C(count[2]), 
         .Z(n1414)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam mux_412_i5_3_lut.init = 16'hcaca;
    OSCH internal_oscillator (.STDBY(GND_net), .OSC(clk)) /* synthesis syn_instantiated=1 */ ;
    defparam internal_oscillator.NOM_FREQ = "3.02";
    LUT4 a1_pw_12__I_0_i6_3_lut (.A(a1_pw[5]), .B(b1_pw[5]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a1_pw_12__I_0_i6_3_lut.init = 16'hcaca;
    BB BB1_sda (.I(i2c1_sdao), .T(i2c1_sdaoen), .B(sda), .O(i2c1_sdai)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=221, LSE_RLINE=233 */ ;   // c:/users/scott/documents/pulsecontroller/efb.v(36[8:77])
    LUT4 a1_pw_12__I_0_i5_3_lut (.A(a1_pw[4]), .B(b1_pw[4]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a1_pw_12__I_0_i5_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut (.A(count[1]), .B(count[2]), .C(count[0]), .D(n3223), 
         .Z(clk_enable_49)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut (.A(count[0]), .B(count[2]), .C(count[1]), .Z(n261)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut.init = 16'hf7f7;
    LUT4 i1029_1_lut_rep_21 (.A(n783), .Z(clk_enable_66)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i1029_1_lut_rep_21.init = 16'h5555;
    LUT4 i1_2_lut_rep_20 (.A(count[0]), .B(count[2]), .Z(n3220)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(411[6:7])
    defparam i1_2_lut_rep_20.init = 16'heeee;
    LUT4 a1_pw_12__I_0_i4_3_lut (.A(a1_pw[3]), .B(b1_pw[3]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a1_pw_12__I_0_i4_3_lut.init = 16'hcaca;
    LUT4 a1_pw_12__I_0_i3_3_lut (.A(a1_pw[2]), .B(b1_pw[2]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a1_pw_12__I_0_i3_3_lut.init = 16'hcaca;
    LUT4 mux_411_i1_3_lut (.A(i2c_pw0[8]), .B(i2c_pw0[0]), .C(count[1]), 
         .Z(n1409)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam mux_411_i1_3_lut.init = 16'hcaca;
    LUT4 i1136_2_lut_2_lut (.A(n783), .B(n782), .Z(n2267)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i1136_2_lut_2_lut.init = 16'h4444;
    LUT4 a1_pw_12__I_0_i2_3_lut (.A(a1_pw[1]), .B(b1_pw[1]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a1_pw_12__I_0_i2_3_lut.init = 16'hcaca;
    LUT4 i556_2_lut_rep_22 (.A(count[1]), .B(count[0]), .Z(n3222)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(420[15:27])
    defparam i556_2_lut_rep_22.init = 16'h8888;
    FD1S3AX wb_we_i_112 (.D(n2266), .CK(clk), .Q(wb_we_i));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam wb_we_i_112.GSR = "DISABLED";
    LUT4 i1_4_lut_else_4_lut (.A(count[2]), .B(count[0]), .C(n775), .D(count[1]), 
         .Z(n3231)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h0040;
    FD1P3AX b0_pw_i0_i0 (.D(i2c_pw0[0]), .SP(clk_enable_44), .CK(clk), 
            .Q(b0_pw[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b0_pw_i0_i0.GSR = "DISABLED";
    FD1P3AX b1_pw_i0_i0 (.D(wb_dat_o[0]), .SP(clk_enable_44), .CK(clk), 
            .Q(b1_pw[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b1_pw_i0_i0.GSR = "DISABLED";
    FD1P3AX i2c_pw1_i0 (.D(a1_pw[0]), .SP(clk_enable_20), .CK(clk), .Q(i2c_pw1[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw1_i0.GSR = "DISABLED";
    FD1S3AX y0_pw_i0 (.D(y0_pw_12__N_78[0]), .CK(clk), .Q(y0_pw[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y0_pw_i0.GSR = "DISABLED";
    BB BB1_scl (.I(i2c1_sclo), .T(i2c1_scloen), .B(scl), .O(i2c1_scli)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=221, LSE_RLINE=233 */ ;   // c:/users/scott/documents/pulsecontroller/efb.v(38[8:77])
    \PulseIn(BITS=13)  a4_pulsein (.clk(clk), .\a4_pw[1] (a4_pw[1]), .i_a4_pwm_c(i_a4_pwm_c), 
            .GND_net(GND_net), .\a4_pw[12] (a4_pw[12]), .\a4_pw[11] (a4_pw[11]), 
            .\a4_pw[10] (a4_pw[10]), .\a4_pw[9] (a4_pw[9]), .\a4_pw[8] (a4_pw[8]), 
            .\a4_pw[7] (a4_pw[7]), .\a4_pw[6] (a4_pw[6]), .\a4_pw[5] (a4_pw[5]), 
            .\a4_pw[4] (a4_pw[4]), .\a4_pw[3] (a4_pw[3]), .\a4_pw[2] (a4_pw[2])) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(261[29] 265[3])
    LUT4 i1_4_lut_adj_4 (.A(wb_dat_o[4]), .B(wb_dat_o[2]), .C(n778), .D(n776), 
         .Z(n6)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i1_4_lut_adj_4.init = 16'heca0;
    LUT4 i1420_2_lut_rep_13_3_lut (.A(count[0]), .B(count[2]), .C(count[1]), 
         .Z(n3213)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1420_2_lut_rep_13_3_lut.init = 16'h8080;
    LUT4 i2_3_lut_4_lut_adj_5 (.A(count[1]), .B(count[0]), .C(n775), .D(count[2]), 
         .Z(clk_enable_44)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(420[15:27])
    defparam i2_3_lut_4_lut_adj_5.init = 16'h0080;
    LUT4 i671_3_lut (.A(n1418), .B(revcount[0]), .C(n3217), .Z(n1802)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i671_3_lut.init = 16'hcaca;
    LUT4 i1945_3_lut_4_lut (.A(count[1]), .B(n3220), .C(n775), .D(n777), 
         .Z(clk_enable_20)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(373[5] 384[12])
    defparam i1945_3_lut_4_lut.init = 16'h0100;
    LUT4 i23_4_lut (.A(i2c_pw1[7]), .B(revcount[7]), .C(n3217), .D(count[2]), 
         .Z(n9)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i23_4_lut.init = 16'hcac0;
    LUT4 mux_411_i2_3_lut (.A(i2c_pw0[9]), .B(i2c_pw0[1]), .C(count[1]), 
         .Z(n1408)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam mux_411_i2_3_lut.init = 16'hcaca;
    LUT4 a1_pw_12__I_0_i12_3_lut (.A(a1_pw[11]), .B(b1_pw[11]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a1_pw_12__I_0_i12_3_lut.init = 16'hcaca;
    FD1P3IX wb_adr_i__i1 (.D(n1578), .SP(clk_enable_66), .CD(n2267), .CK(clk), 
            .Q(wb_adr_i[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam wb_adr_i__i1.GSR = "DISABLED";
    LUT4 i1_4_lut_rep_16_4_lut (.A(count[1]), .B(count[0]), .C(count[2]), 
         .D(n777), .Z(n3216)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(C (D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(420[15:27])
    defparam i1_4_lut_rep_16_4_lut.init = 16'h5800;
    LUT4 a1_pw_12__I_0_i11_3_lut (.A(a1_pw[10]), .B(b1_pw[10]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a1_pw_12__I_0_i11_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_6 (.A(n5), .B(n3215), .C(a3_pw[12]), .D(n6_adj_282), 
         .Z(n3063)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_6.init = 16'hc080;
    LUT4 i656_4_lut (.A(n1785), .B(n777), .C(n261), .D(n3226), .Z(n1786)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i656_4_lut.init = 16'haaea;
    LUT4 i1108_3_lut_4_lut (.A(n775), .B(n3219), .C(wb_dat_o[4]), .D(a0_pw[12]), 
         .Z(n2239)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i1108_3_lut_4_lut.init = 16'hfd20;
    FD1P3AX wb_cyc_i_111 (.D(n3226), .SP(clk_enable_66), .CK(clk), .Q(wb_cyc_i));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam wb_cyc_i_111.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_23 (.A(n775), .B(n777), .Z(n3223)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_23.init = 16'heeee;
    IB i_a2_pwm_pad (.I(i_a2_pwm), .O(i_a2_pwm_c));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(149[13:21])
    LUT4 i791_3_lut (.A(n1417), .B(revcount[1]), .C(n3217), .Z(n1922)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i791_3_lut.init = 16'hcaca;
    LUT4 i641_2_lut_3_lut_4_lut (.A(count[0]), .B(count[2]), .C(n783), 
         .D(count[1]), .Z(n1771)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;
    defparam i641_2_lut_3_lut_4_lut.init = 16'h70f0;
    FD1S3JX state_FSM_i1 (.D(n1771), .CK(clk), .PD(n3230), .Q(n783));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam state_FSM_i1.GSR = "DISABLED";
    LUT4 a1_pw_12__I_0_i10_3_lut (.A(a1_pw[9]), .B(b1_pw[9]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a1_pw_12__I_0_i10_3_lut.init = 16'hcaca;
    LUT4 i1337_2_lut_4_lut_4_lut (.A(n775), .B(n777), .C(n783), .D(n782), 
         .Z(n1578)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;
    defparam i1337_2_lut_4_lut_4_lut.init = 16'haaab;
    IB i_a4_pwm_pad (.I(i_a4_pwm), .O(i_a4_pwm_c));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(151[13:21])
    IB i_a1_pwm_pad (.I(i_a1_pwm), .O(i_a1_pwm_c));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(148[13:21])
    LUT4 i1_3_lut_rep_12_4_lut (.A(n775), .B(n777), .C(n783), .D(n782), 
         .Z(n3212)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_rep_12_4_lut.init = 16'hfffe;
    LUT4 a1_pw_12__I_0_i9_3_lut (.A(a1_pw[8]), .B(b1_pw[8]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a1_pw_12__I_0_i9_3_lut.init = 16'hcaca;
    IB i_a0_pwm_pad (.I(i_a0_pwm), .O(i_a0_pwm_c));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(147[13:21])
    LUT4 a1_pw_12__I_0_i8_3_lut (.A(a1_pw[7]), .B(b1_pw[7]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a1_pw_12__I_0_i8_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut (.A(n775), .B(n782), .Z(n2947)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_adj_7 (.A(wb_dat_o[4]), .B(wb_dat_o[2]), .C(n778), .D(n774), 
         .Z(n6_adj_278)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i1_4_lut_adj_7.init = 16'hdc50;
    LUT4 i17_3_lut (.A(i2c_pw0[10]), .B(i2c_pw0[2]), .C(count[1]), .Z(n21)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(191[12:17])
    defparam i17_3_lut.init = 16'hcaca;
    LUT4 a0_pw_12__I_0_i13_3_lut (.A(a0_pw[12]), .B(b0_pw[12]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a0_pw_12__I_0_i13_3_lut.init = 16'hcaca;
    LUT4 i801_4_lut (.A(i2c_pw1[6]), .B(revcount[6]), .C(n3217), .D(count[2]), 
         .Z(n1932)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i801_4_lut.init = 16'hcac0;
    LUT4 a0_pw_12__I_0_i12_3_lut (.A(a0_pw[11]), .B(b0_pw[11]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a0_pw_12__I_0_i12_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_8 (.A(n775), .B(n777), .C(n778), .Z(n3070)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_8.init = 16'hfefe;
    LUT4 mux_412_i3_3_lut (.A(i2c_pw1[10]), .B(i2c_pw1[2]), .C(count[2]), 
         .Z(n1416)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam mux_412_i3_3_lut.init = 16'hcaca;
    LUT4 i1132_3_lut_4_lut (.A(n775), .B(n3219), .C(wb_dat_o[0]), .D(a0_pw[0]), 
         .Z(n2263)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i1132_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_4_lut_adj_9 (.A(n3224), .B(n2962), .C(n3228), .D(a4_pw[12]), 
         .Z(n3059)) /* synthesis lut_function=(A+(B ((D)+!C)+!B !(C))) */ ;
    defparam i1_4_lut_adj_9.init = 16'hefaf;
    LUT4 i11_4_lut (.A(n773), .B(n261), .C(n3226), .D(n777), .Z(n3026)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+(C+!(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i11_4_lut.init = 16'ha3a0;
    LUT4 a0_pw_12__I_0_i11_3_lut (.A(a0_pw[10]), .B(b0_pw[10]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a0_pw_12__I_0_i11_3_lut.init = 16'hcaca;
    LUT4 i793_3_lut (.A(n1416), .B(revcount[2]), .C(n3217), .Z(n1924)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i793_3_lut.init = 16'hcaca;
    LUT4 a0_pw_12__I_0_i10_3_lut (.A(a0_pw[9]), .B(b0_pw[9]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a0_pw_12__I_0_i10_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut (.A(n3225), .B(n773), .C(n775), .Z(n4)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i1_3_lut.init = 16'hdcdc;
    LUT4 n779_bdd_4_lut (.A(n779), .B(wb_dat_o[6]), .C(n780), .D(wb_dat_o[2]), 
         .Z(n3198)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B+!(C)))) */ ;
    defparam n779_bdd_4_lut.init = 16'h30ba;
    LUT4 a0_pw_12__I_0_i9_3_lut (.A(a0_pw[8]), .B(b0_pw[8]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a0_pw_12__I_0_i9_3_lut.init = 16'hcaca;
    LUT4 i1366_2_lut_rep_24 (.A(count[1]), .B(count[0]), .Z(n3224)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1366_2_lut_rep_24.init = 16'heeee;
    LUT4 a0_pw_12__I_0_i8_3_lut (.A(a0_pw[7]), .B(b0_pw[7]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a0_pw_12__I_0_i8_3_lut.init = 16'hcaca;
    LUT4 a0_pw_12__I_0_i7_3_lut (.A(a0_pw[6]), .B(b0_pw[6]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a0_pw_12__I_0_i7_3_lut.init = 16'hcaca;
    LUT4 i609_4_lut (.A(a2_pw[5]), .B(a2_pw[6]), .C(a2_pw[4]), .D(n2967), 
         .Z(n14)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i609_4_lut.init = 16'heccc;
    LUT4 i2_3_lut (.A(a2_pw[3]), .B(a2_pw[2]), .C(a2_pw[1]), .Z(n2967)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 i3_4_lut (.A(a4_pw[8]), .B(n6_adj_281), .C(a4_pw[10]), .D(n4_adj_280), 
         .Z(n2962)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut.init = 16'hfefc;
    LUT4 i2_3_lut_rep_25 (.A(count[1]), .B(count[2]), .C(count[0]), .Z(n3225)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i2_3_lut_rep_25.init = 16'hdfdf;
    IB rst_pad (.I(rst), .O(rst_c));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(146[13:16])
    OB o_y1_pwm_pad (.I(o_y1_pwm_c), .O(o_y1_pwm));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(155[14:22])
    LUT4 i1_2_lut_4_lut (.A(count[1]), .B(count[2]), .C(count[0]), .D(n775), 
         .Z(n4_adj_277)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;
    defparam i1_2_lut_4_lut.init = 16'hdf00;
    LUT4 i1936_2_lut_rep_26 (.A(wb_ack_o), .B(wb_cyc_i), .Z(n3226)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(453[5] 458[8])
    defparam i1936_2_lut_rep_26.init = 16'h7777;
    LUT4 a0_pw_12__I_0_i6_3_lut (.A(a0_pw[5]), .B(b0_pw[5]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a0_pw_12__I_0_i6_3_lut.init = 16'hcaca;
    LUT4 i1118_3_lut_4_lut (.A(n775), .B(n3219), .C(wb_dat_o[7]), .D(a0_pw[7]), 
         .Z(n2249)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i1118_3_lut_4_lut.init = 16'hfd20;
    OB o_y0_pwm_pad (.I(o_y0_pwm_c), .O(o_y0_pwm));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(154[14:22])
    OB o_select_indicator_pad (.I(o_select_indicator_c), .O(o_select_indicator));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(153[14:32])
    LUT4 i2_2_lut (.A(a4_pw[11]), .B(a4_pw[9]), .Z(n6_adj_281)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    PFUMX i16 (.BLUT(n22), .ALUT(n1924), .C0(n3216), .Z(n20));
    LUT4 i1_4_lut_adj_10 (.A(a4_pw[7]), .B(a4_pw[5]), .C(a4_pw[6]), .D(n4_adj_279), 
         .Z(n4_adj_280)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_10.init = 16'ha8a0;
    LUT4 i1114_3_lut_4_lut (.A(n775), .B(n3219), .C(wb_dat_o[1]), .D(a0_pw[9]), 
         .Z(n2245)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i1114_3_lut_4_lut.init = 16'hfd20;
    LUT4 a0_pw_12__I_0_i5_3_lut (.A(a0_pw[4]), .B(b0_pw[4]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a0_pw_12__I_0_i5_3_lut.init = 16'hcaca;
    FD1P3AX wb_adr_i__i2 (.D(n2947), .SP(clk_enable_66), .CK(clk), .Q(wb_adr_i[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam wb_adr_i__i2.GSR = "DISABLED";
    FD1S3AX y0_pw_i12 (.D(y0_pw_12__N_78[12]), .CK(clk), .Q(y0_pw[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y0_pw_i12.GSR = "DISABLED";
    LUT4 a0_pw_12__I_0_i4_3_lut (.A(a0_pw[3]), .B(b0_pw[3]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a0_pw_12__I_0_i4_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_11 (.A(a4_pw[4]), .B(a4_pw[3]), .C(a4_pw[2]), .D(a4_pw[1]), 
         .Z(n4_adj_279)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_11.init = 16'haaa8;
    FD1S3AX y0_pw_i11 (.D(y0_pw_12__N_78[11]), .CK(clk), .Q(y0_pw[11]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y0_pw_i11.GSR = "DISABLED";
    FD1S3AX y0_pw_i10 (.D(y0_pw_12__N_78[10]), .CK(clk), .Q(y0_pw[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y0_pw_i10.GSR = "DISABLED";
    FD1S3AX y0_pw_i9 (.D(y0_pw_12__N_78[9]), .CK(clk), .Q(y0_pw[9]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y0_pw_i9.GSR = "DISABLED";
    FD1S3AX y0_pw_i8 (.D(y0_pw_12__N_78[8]), .CK(clk), .Q(y0_pw[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y0_pw_i8.GSR = "DISABLED";
    FD1S3AX y0_pw_i7 (.D(y0_pw_12__N_78[7]), .CK(clk), .Q(y0_pw[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y0_pw_i7.GSR = "DISABLED";
    FD1S3AX y0_pw_i6 (.D(y0_pw_12__N_78[6]), .CK(clk), .Q(y0_pw[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y0_pw_i6.GSR = "DISABLED";
    FD1S3AX y0_pw_i5 (.D(y0_pw_12__N_78[5]), .CK(clk), .Q(y0_pw[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y0_pw_i5.GSR = "DISABLED";
    FD1S3AX y0_pw_i4 (.D(y0_pw_12__N_78[4]), .CK(clk), .Q(y0_pw[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y0_pw_i4.GSR = "DISABLED";
    FD1S3AX y0_pw_i3 (.D(y0_pw_12__N_78[3]), .CK(clk), .Q(y0_pw[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y0_pw_i3.GSR = "DISABLED";
    FD1S3AX y0_pw_i2 (.D(y0_pw_12__N_78[2]), .CK(clk), .Q(y0_pw[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y0_pw_i2.GSR = "DISABLED";
    FD1S3AX y0_pw_i1 (.D(y0_pw_12__N_78[1]), .CK(clk), .Q(y0_pw[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y0_pw_i1.GSR = "DISABLED";
    FD1P3AX i2c_pw1_i12 (.D(i2c_pw1_12__N_39[12]), .SP(clk_enable_13), .CK(clk), 
            .Q(i2c_pw1[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw1_i12.GSR = "DISABLED";
    FD1P3AX i2c_pw1_i11 (.D(i2c_pw1_12__N_39[11]), .SP(clk_enable_13), .CK(clk), 
            .Q(i2c_pw1[11]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw1_i11.GSR = "DISABLED";
    FD1P3AX i2c_pw1_i10 (.D(i2c_pw1_12__N_39[10]), .SP(clk_enable_13), .CK(clk), 
            .Q(i2c_pw1[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw1_i10.GSR = "DISABLED";
    FD1P3AX i2c_pw1_i9 (.D(i2c_pw1_12__N_39[9]), .SP(clk_enable_13), .CK(clk), 
            .Q(i2c_pw1[9]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw1_i9.GSR = "DISABLED";
    FD1P3AX i2c_pw1_i8 (.D(i2c_pw1_12__N_39[8]), .SP(clk_enable_13), .CK(clk), 
            .Q(i2c_pw1[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw1_i8.GSR = "DISABLED";
    FD1P3AX i2c_pw1_i7 (.D(a1_pw[7]), .SP(clk_enable_20), .CK(clk), .Q(i2c_pw1[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw1_i7.GSR = "DISABLED";
    FD1P3AX i2c_pw1_i6 (.D(a1_pw[6]), .SP(clk_enable_20), .CK(clk), .Q(i2c_pw1[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw1_i6.GSR = "DISABLED";
    FD1P3AX i2c_pw1_i5 (.D(a1_pw[5]), .SP(clk_enable_20), .CK(clk), .Q(i2c_pw1[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw1_i5.GSR = "DISABLED";
    FD1P3AX i2c_pw1_i4 (.D(a1_pw[4]), .SP(clk_enable_20), .CK(clk), .Q(i2c_pw1[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw1_i4.GSR = "DISABLED";
    FD1P3AX i2c_pw1_i3 (.D(a1_pw[3]), .SP(clk_enable_20), .CK(clk), .Q(i2c_pw1[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw1_i3.GSR = "DISABLED";
    FD1P3AX i2c_pw1_i2 (.D(a1_pw[2]), .SP(clk_enable_20), .CK(clk), .Q(i2c_pw1[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw1_i2.GSR = "DISABLED";
    FD1P3AX i2c_pw1_i1 (.D(a1_pw[1]), .SP(clk_enable_20), .CK(clk), .Q(i2c_pw1[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw1_i1.GSR = "DISABLED";
    FD1P3AX b1_pw_i0_i12 (.D(i2c_pw1[12]), .SP(clk_enable_44), .CK(clk), 
            .Q(b1_pw[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b1_pw_i0_i12.GSR = "DISABLED";
    FD1P3AX b1_pw_i0_i11 (.D(i2c_pw1[11]), .SP(clk_enable_44), .CK(clk), 
            .Q(b1_pw[11]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b1_pw_i0_i11.GSR = "DISABLED";
    FD1P3AX b1_pw_i0_i10 (.D(i2c_pw1[10]), .SP(clk_enable_44), .CK(clk), 
            .Q(b1_pw[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b1_pw_i0_i10.GSR = "DISABLED";
    FD1P3AX b1_pw_i0_i9 (.D(i2c_pw1[9]), .SP(clk_enable_44), .CK(clk), 
            .Q(b1_pw[9]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b1_pw_i0_i9.GSR = "DISABLED";
    FD1P3AX b1_pw_i0_i8 (.D(i2c_pw1[8]), .SP(clk_enable_44), .CK(clk), 
            .Q(b1_pw[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b1_pw_i0_i8.GSR = "DISABLED";
    FD1P3AX b1_pw_i0_i7 (.D(wb_dat_o[7]), .SP(clk_enable_44), .CK(clk), 
            .Q(b1_pw[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b1_pw_i0_i7.GSR = "DISABLED";
    FD1P3AX b1_pw_i0_i6 (.D(wb_dat_o[6]), .SP(clk_enable_44), .CK(clk), 
            .Q(b1_pw[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b1_pw_i0_i6.GSR = "DISABLED";
    FD1P3AX b1_pw_i0_i5 (.D(wb_dat_o[5]), .SP(clk_enable_44), .CK(clk), 
            .Q(b1_pw[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b1_pw_i0_i5.GSR = "DISABLED";
    FD1P3AX b1_pw_i0_i4 (.D(wb_dat_o[4]), .SP(clk_enable_44), .CK(clk), 
            .Q(b1_pw[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b1_pw_i0_i4.GSR = "DISABLED";
    FD1P3AX b1_pw_i0_i3 (.D(wb_dat_o[3]), .SP(clk_enable_44), .CK(clk), 
            .Q(b1_pw[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b1_pw_i0_i3.GSR = "DISABLED";
    FD1P3AX b1_pw_i0_i2 (.D(wb_dat_o[2]), .SP(clk_enable_44), .CK(clk), 
            .Q(b1_pw[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b1_pw_i0_i2.GSR = "DISABLED";
    FD1P3AX b1_pw_i0_i1 (.D(wb_dat_o[1]), .SP(clk_enable_44), .CK(clk), 
            .Q(b1_pw[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b1_pw_i0_i1.GSR = "DISABLED";
    FD1P3AX b0_pw_i0_i12 (.D(i2c_pw0[12]), .SP(clk_enable_44), .CK(clk), 
            .Q(b0_pw[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b0_pw_i0_i12.GSR = "DISABLED";
    FD1P3AX b0_pw_i0_i11 (.D(i2c_pw0[11]), .SP(clk_enable_44), .CK(clk), 
            .Q(b0_pw[11]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b0_pw_i0_i11.GSR = "DISABLED";
    FD1P3AX b0_pw_i0_i10 (.D(i2c_pw0[10]), .SP(clk_enable_44), .CK(clk), 
            .Q(b0_pw[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b0_pw_i0_i10.GSR = "DISABLED";
    FD1P3AX b0_pw_i0_i9 (.D(i2c_pw0[9]), .SP(clk_enable_44), .CK(clk), 
            .Q(b0_pw[9]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b0_pw_i0_i9.GSR = "DISABLED";
    FD1P3AX b0_pw_i0_i8 (.D(i2c_pw0[8]), .SP(clk_enable_44), .CK(clk), 
            .Q(b0_pw[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b0_pw_i0_i8.GSR = "DISABLED";
    FD1P3AX b0_pw_i0_i7 (.D(i2c_pw0[7]), .SP(clk_enable_44), .CK(clk), 
            .Q(b0_pw[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b0_pw_i0_i7.GSR = "DISABLED";
    FD1P3AX b0_pw_i0_i6 (.D(i2c_pw0[6]), .SP(clk_enable_44), .CK(clk), 
            .Q(b0_pw[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b0_pw_i0_i6.GSR = "DISABLED";
    FD1P3AX b0_pw_i0_i5 (.D(i2c_pw0[5]), .SP(clk_enable_44), .CK(clk), 
            .Q(b0_pw[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b0_pw_i0_i5.GSR = "DISABLED";
    FD1P3AX b0_pw_i0_i4 (.D(i2c_pw0[4]), .SP(clk_enable_44), .CK(clk), 
            .Q(b0_pw[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b0_pw_i0_i4.GSR = "DISABLED";
    FD1P3AX b0_pw_i0_i3 (.D(i2c_pw0[3]), .SP(clk_enable_44), .CK(clk), 
            .Q(b0_pw[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b0_pw_i0_i3.GSR = "DISABLED";
    FD1P3AX b0_pw_i0_i2 (.D(i2c_pw0[2]), .SP(clk_enable_44), .CK(clk), 
            .Q(b0_pw[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b0_pw_i0_i2.GSR = "DISABLED";
    FD1P3AX b0_pw_i0_i1 (.D(i2c_pw0[1]), .SP(clk_enable_44), .CK(clk), 
            .Q(b0_pw[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam b0_pw_i0_i1.GSR = "DISABLED";
    FD1P3AX i2c_pw0_i0_i12 (.D(n2239), .SP(clk_enable_49), .CK(clk), .Q(i2c_pw0[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw0_i0_i12.GSR = "DISABLED";
    FD1P3AX i2c_pw0_i0_i11 (.D(n2241), .SP(clk_enable_49), .CK(clk), .Q(i2c_pw0[11]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw0_i0_i11.GSR = "DISABLED";
    FD1P3AX i2c_pw0_i0_i10 (.D(n2243), .SP(clk_enable_49), .CK(clk), .Q(i2c_pw0[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw0_i0_i10.GSR = "DISABLED";
    FD1P3AX i2c_pw0_i0_i9 (.D(n2245), .SP(clk_enable_49), .CK(clk), .Q(i2c_pw0[9]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw0_i0_i9.GSR = "DISABLED";
    FD1P3AX i2c_pw0_i0_i8 (.D(n2247), .SP(clk_enable_49), .CK(clk), .Q(i2c_pw0[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw0_i0_i8.GSR = "DISABLED";
    FD1P3AX i2c_pw0_i0_i7 (.D(n2249), .SP(clk_enable_56), .CK(clk), .Q(i2c_pw0[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw0_i0_i7.GSR = "DISABLED";
    FD1P3AX i2c_pw0_i0_i6 (.D(n2251), .SP(clk_enable_56), .CK(clk), .Q(i2c_pw0[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw0_i0_i6.GSR = "DISABLED";
    FD1P3AX i2c_pw0_i0_i5 (.D(n2253), .SP(clk_enable_56), .CK(clk), .Q(i2c_pw0[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw0_i0_i5.GSR = "DISABLED";
    FD1P3AX i2c_pw0_i0_i4 (.D(n2255), .SP(clk_enable_56), .CK(clk), .Q(i2c_pw0[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw0_i0_i4.GSR = "DISABLED";
    FD1P3AX i2c_pw0_i0_i3 (.D(n2257), .SP(clk_enable_56), .CK(clk), .Q(i2c_pw0[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw0_i0_i3.GSR = "DISABLED";
    FD1P3AX i2c_pw0_i0_i2 (.D(n2259), .SP(clk_enable_56), .CK(clk), .Q(i2c_pw0[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw0_i0_i2.GSR = "DISABLED";
    FD1P3AX i2c_pw0_i0_i1 (.D(n2261), .SP(clk_enable_56), .CK(clk), .Q(i2c_pw0[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i2c_pw0_i0_i1.GSR = "DISABLED";
    FD1P3IX count__i2 (.D(n1097), .SP(clk_enable_58), .CD(n3230), .CK(clk), 
            .Q(count[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam count__i2.GSR = "DISABLED";
    LUT4 i19_3_lut_4_lut (.A(wb_ack_o), .B(wb_cyc_i), .C(n6_adj_278), 
         .D(n775), .Z(n3008)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(453[5] 458[8])
    defparam i19_3_lut_4_lut.init = 16'hf780;
    LUT4 n3198_bdd_3_lut_4_lut (.A(wb_ack_o), .B(wb_cyc_i), .C(n779), 
         .D(n3198), .Z(n3199)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(453[5] 458[8])
    defparam n3198_bdd_3_lut_4_lut.init = 16'hf870;
    PFUMX i882 (.BLUT(n1440), .ALUT(n1802), .C0(n3216), .Z(n2013));
    LUT4 i1122_3_lut_4_lut (.A(n775), .B(n3219), .C(wb_dat_o[5]), .D(a0_pw[5]), 
         .Z(n2253)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i1122_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1116_3_lut_4_lut (.A(n775), .B(n3219), .C(wb_dat_o[0]), .D(a0_pw[8]), 
         .Z(n2247)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i1116_3_lut_4_lut.init = 16'hfd20;
    LUT4 a0_pw_12__I_0_i3_3_lut (.A(a0_pw[2]), .B(b0_pw[2]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a0_pw_12__I_0_i3_3_lut.init = 16'hcaca;
    LUT4 i1351_2_lut_3_lut_4_lut (.A(wb_ack_o), .B(wb_cyc_i), .C(n3229), 
         .D(n778), .Z(n1096)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(453[5] 458[8])
    defparam i1351_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 a0_pw_12__I_0_i2_3_lut (.A(a0_pw[1]), .B(b0_pw[1]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a0_pw_12__I_0_i2_3_lut.init = 16'hcaca;
    FD1P3IX count__i1 (.D(n1096), .SP(clk_enable_58), .CD(n3230), .CK(clk), 
            .Q(count[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam count__i1.GSR = "DISABLED";
    FD1S3AX y1_pw_i12 (.D(y1_pw_12__N_91[12]), .CK(clk), .Q(y1_pw[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y1_pw_i12.GSR = "DISABLED";
    FD1S3AX y1_pw_i11 (.D(y1_pw_12__N_91[11]), .CK(clk), .Q(y1_pw[11]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y1_pw_i11.GSR = "DISABLED";
    FD1S3AX y1_pw_i10 (.D(y1_pw_12__N_91[10]), .CK(clk), .Q(y1_pw[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y1_pw_i10.GSR = "DISABLED";
    FD1S3AX y1_pw_i9 (.D(y1_pw_12__N_91[9]), .CK(clk), .Q(y1_pw[9]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y1_pw_i9.GSR = "DISABLED";
    FD1S3AX y1_pw_i8 (.D(y1_pw_12__N_91[8]), .CK(clk), .Q(y1_pw[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y1_pw_i8.GSR = "DISABLED";
    FD1S3AX y1_pw_i7 (.D(y1_pw_12__N_91[7]), .CK(clk), .Q(y1_pw[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y1_pw_i7.GSR = "DISABLED";
    FD1S3AX y1_pw_i6 (.D(y1_pw_12__N_91[6]), .CK(clk), .Q(y1_pw[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y1_pw_i6.GSR = "DISABLED";
    FD1S3AX y1_pw_i5 (.D(y1_pw_12__N_91[5]), .CK(clk), .Q(y1_pw[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y1_pw_i5.GSR = "DISABLED";
    FD1S3AX y1_pw_i4 (.D(y1_pw_12__N_91[4]), .CK(clk), .Q(y1_pw[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y1_pw_i4.GSR = "DISABLED";
    FD1S3AX y1_pw_i3 (.D(y1_pw_12__N_91[3]), .CK(clk), .Q(y1_pw[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y1_pw_i3.GSR = "DISABLED";
    FD1S3AX y1_pw_i2 (.D(y1_pw_12__N_91[2]), .CK(clk), .Q(y1_pw[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y1_pw_i2.GSR = "DISABLED";
    FD1S3AX y1_pw_i1 (.D(y1_pw_12__N_91[1]), .CK(clk), .Q(y1_pw[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(287[9] 296[5])
    defparam y1_pw_i1.GSR = "DISABLED";
    FD1S3IX state_FSM_i6 (.D(n1782), .CK(clk), .CD(n3230), .Q(n778));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam state_FSM_i6.GSR = "DISABLED";
    LUT4 i1112_3_lut_4_lut (.A(n775), .B(n3219), .C(wb_dat_o[2]), .D(a0_pw[10]), 
         .Z(n2243)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i1112_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_4_lut_adj_12 (.A(n3220), .B(count[1]), .C(n775), .D(n777), 
         .Z(clk_enable_13)) /* synthesis lut_function=(!(A+!(B (C)+!B !(C+!(D))))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i1_4_lut_adj_12.init = 16'h4140;
    IB i_rev_pulse_pad (.I(i_rev_pulse), .O(i_rev_pulse_c));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(152[13:24])
    FD1S3IX state_FSM_i7 (.D(n3018), .CK(clk), .CD(n3230), .Q(n777));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam state_FSM_i7.GSR = "DISABLED";
    FD1S3IX state_FSM_i8 (.D(n1786), .CK(clk), .CD(n3230), .Q(n776));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam state_FSM_i8.GSR = "DISABLED";
    FD1S3IX state_FSM_i9 (.D(n3008), .CK(clk), .CD(n3230), .Q(n775));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam state_FSM_i9.GSR = "DISABLED";
    FD1S3IX state_FSM_i10 (.D(n1790), .CK(clk), .CD(n3230), .Q(n774));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam state_FSM_i10.GSR = "DISABLED";
    FD1S3IX state_FSM_i11 (.D(n3026), .CK(clk), .CD(n3230), .Q(n773));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam state_FSM_i11.GSR = "DISABLED";
    FD1S3IX state_FSM_i12 (.D(n3016), .CK(clk), .CD(n3230), .Q(n772));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam state_FSM_i12.GSR = "DISABLED";
    LUT4 i3_4_lut_adj_13 (.A(n782), .B(n777), .C(n781), .D(n773), .Z(wb_we_i_N_193)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_13.init = 16'hfffe;
    LUT4 i655_2_lut_3_lut_4_lut (.A(wb_ack_o), .B(wb_cyc_i), .C(n776), 
         .D(wb_dat_o[2]), .Z(n1785)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(453[5] 458[8])
    defparam i655_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 i1939_2_lut_3_lut_4_lut (.A(wb_ack_o), .B(wb_cyc_i), .C(count[0]), 
         .D(n778), .Z(n2467)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(453[5] 458[8])
    defparam i1939_2_lut_3_lut_4_lut.init = 16'h070f;
    LUT4 i19_3_lut_4_lut_adj_14 (.A(wb_ack_o), .B(wb_cyc_i), .C(n6), .D(n777), 
         .Z(n3018)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(453[5] 458[8])
    defparam i19_3_lut_4_lut_adj_14.init = 16'hf780;
    LUT4 mux_272_i13_3_lut (.A(a1_pw[12]), .B(wb_dat_o[4]), .C(n775), 
         .Z(i2c_pw1_12__N_39[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam mux_272_i13_3_lut.init = 16'hcaca;
    LUT4 mux_272_i12_3_lut (.A(a1_pw[11]), .B(wb_dat_o[3]), .C(n775), 
         .Z(i2c_pw1_12__N_39[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam mux_272_i12_3_lut.init = 16'hcaca;
    LUT4 i18_4_lut (.A(n781), .B(n3), .C(n3226), .D(n782), .Z(n3048)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B (C)+!B (C+!(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i18_4_lut.init = 16'hafac;
    LUT4 mux_272_i11_3_lut (.A(a1_pw[10]), .B(wb_dat_o[2]), .C(n775), 
         .Z(i2c_pw1_12__N_39[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam mux_272_i11_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_27 (.A(count[2]), .B(n777), .Z(n3227)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_27.init = 16'h8888;
    LUT4 i1110_3_lut_4_lut (.A(n775), .B(n3219), .C(wb_dat_o[3]), .D(a0_pw[11]), 
         .Z(n2241)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i1110_3_lut_4_lut.init = 16'hfd20;
    GSR GSR_INST (.GSR(rst_c));
    LUT4 mux_272_i10_3_lut (.A(a1_pw[9]), .B(wb_dat_o[1]), .C(n775), .Z(i2c_pw1_12__N_39[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam mux_272_i10_3_lut.init = 16'hcaca;
    LUT4 i1943_2_lut_3_lut_4_lut (.A(count[2]), .B(n777), .C(n782), .D(count[1]), 
         .Z(n2272)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;
    defparam i1943_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 i1120_3_lut_4_lut (.A(n775), .B(n3219), .C(wb_dat_o[6]), .D(a0_pw[6]), 
         .Z(n2251)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i1120_3_lut_4_lut.init = 16'hfd20;
    LUT4 i5_4_lut (.A(n779), .B(n780), .C(n778), .D(n772), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i1124_3_lut_4_lut (.A(n775), .B(n3219), .C(wb_dat_o[4]), .D(a0_pw[4]), 
         .Z(n2255)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i1124_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_411_i4_3_lut (.A(i2c_pw0[11]), .B(i2c_pw0[3]), .C(count[1]), 
         .Z(n1406)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam mux_411_i4_3_lut.init = 16'hcaca;
    LUT4 i1130_3_lut_4_lut (.A(n775), .B(n3219), .C(wb_dat_o[1]), .D(a0_pw[1]), 
         .Z(n2261)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i1130_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_2_lut_rep_18_3_lut_4_lut (.A(count[0]), .B(count[1]), .C(count[2]), 
         .D(n777), .Z(n3218)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+!(D))+!B))) */ ;
    defparam i1_2_lut_rep_18_3_lut_4_lut.init = 16'h0600;
    efb efb (.clk(clk), .n3230(n3230), .wb_cyc_i(wb_cyc_i), .wb_we_i(wb_we_i), 
        .GND_net(GND_net), .VCC_net(VCC_net), .\wb_adr_i[2] (wb_adr_i[2]), 
        .\wb_adr_i[1] (wb_adr_i[1]), .\wb_adr_i[0] (wb_adr_i[0]), .wb_dat_i({wb_dat_i}), 
        .wb_dat_o({wb_dat_o}), .wb_ack_o(wb_ack_o), .i2c1_sdaoen(i2c1_sdaoen), 
        .i2c1_sdao(i2c1_sdao), .i2c1_scloen(i2c1_scloen), .i2c1_sclo(i2c1_sclo), 
        .i2c1_sdai(i2c1_sdai), .i2c1_scli(i2c1_scli)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(221[6] 233[3])
    LUT4 i22_2_lut_rep_29 (.A(count[0]), .B(count[1]), .Z(n3229)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i22_2_lut_rep_29.init = 16'h6666;
    PFUMX i910 (.BLUT(n1414), .ALUT(n1928), .C0(n3079), .Z(n2041));
    LUT4 i1_2_lut_rep_15_3_lut_4_lut (.A(n777), .B(count[2]), .C(count[0]), 
         .D(count[1]), .Z(n3215)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_2_lut_rep_15_3_lut_4_lut.init = 16'h0002;
    LUT4 a0_pw_12__I_0_i1_3_lut (.A(a0_pw[0]), .B(b0_pw[0]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a0_pw_12__I_0_i1_3_lut.init = 16'hcaca;
    \PulseIn(BITS=13)_U3  a1_pulsein (.GND_net(GND_net), .a1_pw({a1_pw}), 
            .clk(clk), .i_a1_pwm_c(i_a1_pwm_c), .a1_rise(a1_rise)) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(242[29] 247[3])
    LUT4 mux_411_i5_3_lut (.A(i2c_pw0[12]), .B(i2c_pw0[4]), .C(count[1]), 
         .Z(n1405)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam mux_411_i5_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_28 (.A(n777), .B(count[2]), .Z(n3228)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_28.init = 16'h2222;
    LUT4 i2c_pw0_7__bdd_4_lut (.A(i2c_pw0[7]), .B(n1954), .C(n9), .D(n3216), 
         .Z(n3208)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam i2c_pw0_7__bdd_4_lut.init = 16'hf088;
    LUT4 i1947_3_lut_4_lut (.A(count[1]), .B(n3227), .C(n782), .D(n773), 
         .Z(n2268)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A !(C+(D)))) */ ;
    defparam i1947_3_lut_4_lut.init = 16'h7770;
    \PulseIn(BITS=13)_U2  a2_pulsein (.\a2_pw[1] (a2_pw[1]), .clk(clk), 
            .i_a2_pwm_c(i_a2_pwm_c), .GND_net(GND_net), .\a2_pw[12] (a2_pw[12]), 
            .\a2_pw[11] (a2_pw[11]), .\a2_pw[10] (a2_pw[10]), .\a2_pw[9] (a2_pw[9]), 
            .\a2_pw[8] (a2_pw[8]), .\a2_pw[7] (a2_pw[7]), .\a2_pw[6] (a2_pw[6]), 
            .\a2_pw[5] (a2_pw[5]), .\a2_pw[4] (a2_pw[4]), .\a2_pw[3] (a2_pw[3]), 
            .\a2_pw[2] (a2_pw[2])) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(249[29] 253[3])
    LUT4 n1954_bdd_4_lut_1986 (.A(n1954), .B(i2c_pw0[5]), .C(n1930), .D(n3216), 
         .Z(n3209)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n1954_bdd_4_lut_1986.init = 16'hf088;
    LUT4 i823_2_lut_3_lut_4_lut_4_lut (.A(count[0]), .B(count[1]), .C(count[2]), 
         .D(n777), .Z(n1954)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i823_2_lut_3_lut_4_lut_4_lut.init = 16'h0400;
    LUT4 i797_4_lut_4_lut (.A(n3216), .B(n3218), .C(n1405), .D(revcount[4]), 
         .Z(n1928)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam i797_4_lut_4_lut.init = 16'hea40;
    LUT4 i1941_2_lut_2_lut_3_lut_4_lut (.A(count[2]), .B(n777), .C(wb_we_i_N_193), 
         .D(count[1]), .Z(clk_enable_67)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;
    defparam i1941_2_lut_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 i1350_3_lut_4_lut (.A(n778), .B(n3226), .C(n3222), .D(count[2]), 
         .Z(n1097)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A (C (D)+!C !(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i1350_3_lut_4_lut.init = 16'h0dd0;
    RevolutionCounter revcounter (.revcount({revcount}), .i_rev_pulse_c(i_rev_pulse_c), 
            .GND_net(GND_net), .rst_c(rst_c), .n3070(n3070), .n3226(n3226), 
            .n783(n783), .clk_enable_58(clk_enable_58), .n3230(n3230)) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(281[20] 285[3])
    LUT4 n1954_bdd_4_lut_1970 (.A(n1954), .B(i2c_pw0[6]), .C(n1932), .D(n3216), 
         .Z(n3207)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n1954_bdd_4_lut_1970.init = 16'hf088;
    LUT4 mux_272_i9_3_lut (.A(a1_pw[8]), .B(wb_dat_o[0]), .C(n775), .Z(i2c_pw1_12__N_39[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam mux_272_i9_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_15 (.A(n773), .B(n3208), .Z(n3006)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_15.init = 16'h4444;
    LUT4 i644_4_lut (.A(n782), .B(n3213), .C(n3226), .D(n783), .Z(n1774)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i644_4_lut.init = 16'heca0;
    LUT4 i1921_2_lut_2_lut_4_lut (.A(n3227), .B(count[1]), .C(count[0]), 
         .D(n3216), .Z(n3079)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (D))) */ ;
    defparam i1921_2_lut_2_lut_4_lut.init = 16'h20ff;
    LUT4 mux_412_i1_3_lut (.A(i2c_pw1[8]), .B(i2c_pw1[0]), .C(count[2]), 
         .Z(n1418)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam mux_412_i1_3_lut.init = 16'hcaca;
    \PulseIn(BITS=13)_U1  a3_pulsein (.clk(clk), .i_a3_pwm_c(i_a3_pwm_c), 
            .\a3_pw[12] (a3_pw[12]), .n5(n5), .n2389(n2389), .n1922(n1922), 
            .n3216(n3216), .n2047(n2047), .GND_net(GND_net), .n6(n6_adj_282)) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(255[29] 259[3])
    LUT4 mux_412_i2_3_lut (.A(i2c_pw1[9]), .B(i2c_pw1[1]), .C(count[2]), 
         .Z(n1417)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam mux_412_i2_3_lut.init = 16'hcaca;
    LUT4 i1126_3_lut_4_lut (.A(n775), .B(n3219), .C(wb_dat_o[3]), .D(a0_pw[3]), 
         .Z(n2257)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i1126_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_4_lut_4_lut (.A(n3226), .B(wb_dat_o[6]), .C(n4), .D(n772), 
         .Z(n3016)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(338[6] 340[9])
    defparam i1_4_lut_4_lut.init = 16'hfe50;
    LUT4 i648_4_lut_4_lut (.A(n3226), .B(wb_dat_o[6]), .C(n781), .D(n780), 
         .Z(n1778)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(338[6] 340[9])
    defparam i648_4_lut_4_lut.init = 16'hfe50;
    LUT4 i1_2_lut_adj_16 (.A(n772), .B(wb_dat_o[6]), .Z(n3)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i1_2_lut_adj_16.init = 16'h2222;
    LUT4 i799_4_lut (.A(i2c_pw1[5]), .B(revcount[5]), .C(n3217), .D(count[2]), 
         .Z(n1930)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i799_4_lut.init = 16'hcac0;
    FD1P3JX wb_dat_i_i0_i7 (.D(n3006), .SP(clk_enable_67), .PD(n2272), 
            .CK(clk), .Q(wb_dat_i[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam wb_dat_i_i0_i7.GSR = "DISABLED";
    FD1P3IX wb_dat_i_i0_i6 (.D(n3207), .SP(clk_enable_67), .CD(n2268), 
            .CK(clk), .Q(wb_dat_i[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam wb_dat_i_i0_i6.GSR = "DISABLED";
    LUT4 i1918_3_lut_4_lut (.A(n3229), .B(n3228), .C(n21), .D(n3059), 
         .Z(n22)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i1918_3_lut_4_lut.init = 16'hf780;
    LUT4 i1128_3_lut_4_lut (.A(n775), .B(n3219), .C(wb_dat_o[2]), .D(a0_pw[2]), 
         .Z(n2259)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i1128_3_lut_4_lut.init = 16'hfd20;
    FD1P3IX wb_dat_i_i0_i5 (.D(n3209), .SP(clk_enable_67), .CD(n2268), 
            .CK(clk), .Q(wb_dat_i[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam wb_dat_i_i0_i5.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_17 (.A(n773), .B(n17), .Z(n2044)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_17.init = 16'heeee;
    FD1P3IX wb_dat_i_i0_i4 (.D(n2041), .SP(clk_enable_67), .CD(n2268), 
            .CK(clk), .Q(wb_dat_i[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam wb_dat_i_i0_i4.GSR = "DISABLED";
    LUT4 i1914_3_lut_4_lut (.A(n3229), .B(n3228), .C(n1408), .D(n3063), 
         .Z(n2389)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i1914_3_lut_4_lut.init = 16'hf780;
    FD1P3IX wb_dat_i_i0_i3 (.D(n2044), .SP(clk_enable_67), .CD(n2272), 
            .CK(clk), .Q(wb_dat_i[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam wb_dat_i_i0_i3.GSR = "DISABLED";
    LUT4 i652_4_lut_4_lut (.A(n3226), .B(wb_dat_o[2]), .C(n779), .D(n778), 
         .Z(n1782)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam i652_4_lut_4_lut.init = 16'hea40;
    FD1P3IX wb_dat_i_i0_i2 (.D(n2046), .SP(clk_enable_67), .CD(n2272), 
            .CK(clk), .Q(wb_dat_i[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam wb_dat_i_i0_i2.GSR = "DISABLED";
    FD1P3IX wb_dat_i_i0_i1 (.D(n2047), .SP(clk_enable_67), .CD(n2268), 
            .CK(clk), .Q(wb_dat_i[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam wb_dat_i_i0_i1.GSR = "DISABLED";
    \PulseIn(BITS=13)_U4  a0_pulsein (.a0_pw({a0_pw}), .clk(clk), .i_a0_pwm_c(i_a0_pwm_c), 
            .a0_rise(a0_rise), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(235[29] 240[3])
    LUT4 i1_2_lut_adj_18 (.A(n773), .B(n20), .Z(n2046)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(191[12:17])
    defparam i1_2_lut_adj_18.init = 16'heeee;
    LUT4 mux_412_i4_3_lut (.A(i2c_pw1[11]), .B(i2c_pw1[3]), .C(count[2]), 
         .Z(n1415)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam mux_412_i4_3_lut.init = 16'hcaca;
    LUT4 a1_pw_12__I_0_i1_3_lut (.A(a1_pw[0]), .B(b1_pw[0]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(292[8] 295[6])
    defparam a1_pw_12__I_0_i1_3_lut.init = 16'hcaca;
    LUT4 i6_4_lut (.A(n776), .B(n12), .C(n774), .D(n3212), .Z(n2959)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(300[3] 460[10])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i1916_3_lut_4_lut (.A(o_select_indicator_c), .B(n3215), .C(n3218), 
         .D(n1409), .Z(n1440)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i1916_3_lut_4_lut.init = 16'hf808;
    FD1P3IX wb_adr_i__i3 (.D(n2959), .SP(clk_enable_66), .CD(n2267), .CK(clk), 
            .Q(wb_adr_i[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam wb_adr_i__i3.GSR = "DISABLED";
    LUT4 i1135_3_lut (.A(n783), .B(wb_we_i_N_193), .C(wb_we_i), .Z(n2266)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam i1135_3_lut.init = 16'hecec;
    FD1P3IX wb_dat_i_i0_i0 (.D(n2013), .SP(clk_enable_67), .CD(n2268), 
            .CK(clk), .Q(wb_dat_i[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(299[9] 466[5])
    defparam wb_dat_i_i0_i0.GSR = "DISABLED";
    LUT4 i618_4_lut (.A(n5_adj_276), .B(a2_pw[12]), .C(a2_pw[11]), .D(a2_pw[9]), 
         .Z(o_select_indicator_c)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i618_4_lut.init = 16'hccc8;
    VLO i1 (.Z(GND_net));
    PFUMX i1317 (.BLUT(n1415), .ALUT(n1926), .C0(n3079), .Z(n17));
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i2_3_lut_rep_17_4_lut (.A(count[2]), .B(n777), .C(count[0]), 
         .D(count[1]), .Z(n3217)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_3_lut_rep_17_4_lut.init = 16'h0080;
    \PulseOut(BITS=13)_U0  y0_pulseout (.clk(clk), .o_y0_pwm_c(o_y0_pwm_c), 
            .y0_pw({y0_pw}), .a0_rise(a0_rise), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(267[30] 272[3])
    PFUMX i1971 (.BLUT(n3231), .ALUT(n3232), .C0(n777), .Z(clk_enable_56));
    \PulseOut(BITS=13)  y1_pulseout (.y1_pw({y1_pw}), .a1_rise(a1_rise), 
            .GND_net(GND_net), .o_y1_pwm_c(o_y1_pwm_c), .clk(clk)) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(274[30] 279[3])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i660_4_lut_4_lut (.A(n3226), .B(wb_dat_o[2]), .C(n4_adj_277), 
         .D(n774), .Z(n1790)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i660_4_lut_4_lut.init = 16'hfb50;
    LUT4 i1334_2_lut_rep_19 (.A(count[1]), .B(count[2]), .Z(n3219)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1334_2_lut_rep_19.init = 16'heeee;
    LUT4 i1_4_lut_then_4_lut (.A(count[2]), .B(count[0]), .C(n775), .D(count[1]), 
         .Z(n3232)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+(D))))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h0041;
    
endmodule
//
// Verilog Description of module \PulseIn(BITS=13) 
//

module \PulseIn(BITS=13)  (clk, \a4_pw[1] , i_a4_pwm_c, GND_net, \a4_pw[12] , 
            \a4_pw[11] , \a4_pw[10] , \a4_pw[9] , \a4_pw[8] , \a4_pw[7] , 
            \a4_pw[6] , \a4_pw[5] , \a4_pw[4] , \a4_pw[3] , \a4_pw[2] ) /* synthesis syn_module_defined=1 */ ;
    input clk;
    output \a4_pw[1] ;
    input i_a4_pwm_c;
    input GND_net;
    output \a4_pw[12] ;
    output \a4_pw[11] ;
    output \a4_pw[10] ;
    output \a4_pw[9] ;
    output \a4_pw[8] ;
    output \a4_pw[7] ;
    output \a4_pw[6] ;
    output \a4_pw[5] ;
    output \a4_pw[4] ;
    output \a4_pw[3] ;
    output \a4_pw[2] ;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(158[7:10])
    wire [12:0]n100;
    wire [12:0]n57;
    
    wire o_pw_12__N_220;
    wire [12:0]count;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(66[23:28])
    
    wire signal_sync1, signal_sync0, signal, high, n2903, n2902, 
        n2901, n2900, n2899, n2898;
    
    FD1S3AX count_521__i0 (.D(n57[0]), .CK(clk), .Q(n100[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_521__i0.GSR = "DISABLED";
    FD1P3AX pw__i1 (.D(count[1]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=261, LSE_RLINE=265 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i1.GSR = "DISABLED";
    FD1S3AX signal_sync1_19 (.D(signal_sync0), .CK(clk), .Q(signal_sync1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=261, LSE_RLINE=265 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync1_19.GSR = "DISABLED";
    FD1S3AX signal_20 (.D(signal_sync1), .CK(clk), .Q(signal)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=261, LSE_RLINE=265 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_20.GSR = "DISABLED";
    FD1S3AX high_21 (.D(signal), .CK(clk), .Q(high)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=261, LSE_RLINE=265 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam high_21.GSR = "DISABLED";
    FD1S3AX signal_sync0_18 (.D(i_a4_pwm_c), .CK(clk), .Q(signal_sync0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=261, LSE_RLINE=265 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync0_18.GSR = "DISABLED";
    CCU2D count_521_add_4_13 (.A0(count[11]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2903), .S0(n57[11]), .S1(n57[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_521_add_4_13.INIT0 = 16'h7888;
    defparam count_521_add_4_13.INIT1 = 16'h7888;
    defparam count_521_add_4_13.INJECT1_0 = "NO";
    defparam count_521_add_4_13.INJECT1_1 = "NO";
    CCU2D count_521_add_4_11 (.A0(count[9]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2902), .COUT(n2903), .S0(n57[9]), .S1(n57[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_521_add_4_11.INIT0 = 16'h7888;
    defparam count_521_add_4_11.INIT1 = 16'h7888;
    defparam count_521_add_4_11.INJECT1_0 = "NO";
    defparam count_521_add_4_11.INJECT1_1 = "NO";
    CCU2D count_521_add_4_9 (.A0(count[7]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2901), .COUT(n2902), .S0(n57[7]), .S1(n57[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_521_add_4_9.INIT0 = 16'h7888;
    defparam count_521_add_4_9.INIT1 = 16'h7888;
    defparam count_521_add_4_9.INJECT1_0 = "NO";
    defparam count_521_add_4_9.INJECT1_1 = "NO";
    CCU2D count_521_add_4_7 (.A0(count[5]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2900), .COUT(n2901), .S0(n57[5]), .S1(n57[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_521_add_4_7.INIT0 = 16'h7888;
    defparam count_521_add_4_7.INIT1 = 16'h7888;
    defparam count_521_add_4_7.INJECT1_0 = "NO";
    defparam count_521_add_4_7.INJECT1_1 = "NO";
    CCU2D count_521_add_4_5 (.A0(count[3]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2899), .COUT(n2900), .S0(n57[3]), .S1(n57[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_521_add_4_5.INIT0 = 16'h7888;
    defparam count_521_add_4_5.INIT1 = 16'h7888;
    defparam count_521_add_4_5.INJECT1_0 = "NO";
    defparam count_521_add_4_5.INJECT1_1 = "NO";
    CCU2D count_521_add_4_3 (.A0(count[1]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2898), .COUT(n2899), .S0(n57[1]), .S1(n57[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_521_add_4_3.INIT0 = 16'h7888;
    defparam count_521_add_4_3.INIT1 = 16'h7888;
    defparam count_521_add_4_3.INJECT1_0 = "NO";
    defparam count_521_add_4_3.INJECT1_1 = "NO";
    CCU2D count_521_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n100[0]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .COUT(n2898), .S1(n57[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_521_add_4_1.INIT0 = 16'hF000;
    defparam count_521_add_4_1.INIT1 = 16'h7777;
    defparam count_521_add_4_1.INJECT1_0 = "NO";
    defparam count_521_add_4_1.INJECT1_1 = "NO";
    FD1P3AX pw__i12 (.D(count[12]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[12] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=261, LSE_RLINE=265 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i12.GSR = "DISABLED";
    FD1P3AX pw__i11 (.D(count[11]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[11] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=261, LSE_RLINE=265 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i11.GSR = "DISABLED";
    FD1P3AX pw__i10 (.D(count[10]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[10] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=261, LSE_RLINE=265 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i10.GSR = "DISABLED";
    FD1P3AX pw__i9 (.D(count[9]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[9] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=261, LSE_RLINE=265 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i9.GSR = "DISABLED";
    FD1P3AX pw__i8 (.D(count[8]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[8] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=261, LSE_RLINE=265 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i8.GSR = "DISABLED";
    FD1P3AX pw__i7 (.D(count[7]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[7] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=261, LSE_RLINE=265 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i7.GSR = "DISABLED";
    FD1P3AX pw__i6 (.D(count[6]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[6] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=261, LSE_RLINE=265 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i6.GSR = "DISABLED";
    FD1P3AX pw__i5 (.D(count[5]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[5] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=261, LSE_RLINE=265 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i5.GSR = "DISABLED";
    FD1P3AX pw__i4 (.D(count[4]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[4] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=261, LSE_RLINE=265 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i4.GSR = "DISABLED";
    FD1P3AX pw__i3 (.D(count[3]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[3] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=261, LSE_RLINE=265 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i3.GSR = "DISABLED";
    FD1P3AX pw__i2 (.D(count[2]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[2] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=261, LSE_RLINE=265 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i2.GSR = "DISABLED";
    FD1S3AX count_521__i12 (.D(n57[12]), .CK(clk), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_521__i12.GSR = "DISABLED";
    FD1S3AX count_521__i11 (.D(n57[11]), .CK(clk), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_521__i11.GSR = "DISABLED";
    FD1S3AX count_521__i10 (.D(n57[10]), .CK(clk), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_521__i10.GSR = "DISABLED";
    FD1S3AX count_521__i9 (.D(n57[9]), .CK(clk), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_521__i9.GSR = "DISABLED";
    FD1S3AX count_521__i8 (.D(n57[8]), .CK(clk), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_521__i8.GSR = "DISABLED";
    FD1S3AX count_521__i7 (.D(n57[7]), .CK(clk), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_521__i7.GSR = "DISABLED";
    FD1S3AX count_521__i6 (.D(n57[6]), .CK(clk), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_521__i6.GSR = "DISABLED";
    FD1S3AX count_521__i5 (.D(n57[5]), .CK(clk), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_521__i5.GSR = "DISABLED";
    FD1S3AX count_521__i4 (.D(n57[4]), .CK(clk), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_521__i4.GSR = "DISABLED";
    FD1S3AX count_521__i3 (.D(n57[3]), .CK(clk), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_521__i3.GSR = "DISABLED";
    FD1S3AX count_521__i2 (.D(n57[2]), .CK(clk), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_521__i2.GSR = "DISABLED";
    FD1S3AX count_521__i1 (.D(n57[1]), .CK(clk), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_521__i1.GSR = "DISABLED";
    LUT4 o_pw_12__I_3_2_lut (.A(signal), .B(high), .Z(o_pw_12__N_220)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(84[7:22])
    defparam o_pw_12__I_3_2_lut.init = 16'h4444;
    
endmodule
//
// Verilog Description of module efb
//

module efb (clk, n3230, wb_cyc_i, wb_we_i, GND_net, VCC_net, \wb_adr_i[2] , 
            \wb_adr_i[1] , \wb_adr_i[0] , wb_dat_i, wb_dat_o, wb_ack_o, 
            i2c1_sdaoen, i2c1_sdao, i2c1_scloen, i2c1_sclo, i2c1_sdai, 
            i2c1_scli) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clk;
    input n3230;
    input wb_cyc_i;
    input wb_we_i;
    input GND_net;
    input VCC_net;
    input \wb_adr_i[2] ;
    input \wb_adr_i[1] ;
    input \wb_adr_i[0] ;
    input [7:0]wb_dat_i;
    output [7:0]wb_dat_o;
    output wb_ack_o;
    output i2c1_sdaoen;
    output i2c1_sdao;
    output i2c1_scloen;
    output i2c1_sclo;
    input i2c1_sdai;
    input i2c1_scli;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(158[7:10])
    wire i2c1_scli /* synthesis is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/efb.v(30[10:19])
    
    EFB EFBInst_0 (.WBCLKI(clk), .WBRSTI(n3230), .WBCYCI(wb_cyc_i), .WBSTBI(wb_cyc_i), 
        .WBWEI(wb_we_i), .WBADRI0(\wb_adr_i[0] ), .WBADRI1(\wb_adr_i[1] ), 
        .WBADRI2(\wb_adr_i[2] ), .WBADRI3(GND_net), .WBADRI4(GND_net), 
        .WBADRI5(GND_net), .WBADRI6(VCC_net), .WBADRI7(GND_net), .WBDATI0(wb_dat_i[0]), 
        .WBDATI1(wb_dat_i[1]), .WBDATI2(wb_dat_i[2]), .WBDATI3(wb_dat_i[3]), 
        .WBDATI4(wb_dat_i[4]), .WBDATI5(wb_dat_i[5]), .WBDATI6(wb_dat_i[6]), 
        .WBDATI7(wb_dat_i[7]), .I2C1SCLI(i2c1_scli), .I2C1SDAI(i2c1_sdai), 
        .I2C2SCLI(GND_net), .I2C2SDAI(GND_net), .SPISCKI(GND_net), .SPIMISOI(GND_net), 
        .SPIMOSII(GND_net), .SPISCSN(GND_net), .TCCLKI(GND_net), .TCRSTN(GND_net), 
        .TCIC(GND_net), .UFMSN(VCC_net), .PLL0DATI0(GND_net), .PLL0DATI1(GND_net), 
        .PLL0DATI2(GND_net), .PLL0DATI3(GND_net), .PLL0DATI4(GND_net), 
        .PLL0DATI5(GND_net), .PLL0DATI6(GND_net), .PLL0DATI7(GND_net), 
        .PLL0ACKI(GND_net), .PLL1DATI0(GND_net), .PLL1DATI1(GND_net), 
        .PLL1DATI2(GND_net), .PLL1DATI3(GND_net), .PLL1DATI4(GND_net), 
        .PLL1DATI5(GND_net), .PLL1DATI6(GND_net), .PLL1DATI7(GND_net), 
        .PLL1ACKI(GND_net), .WBDATO0(wb_dat_o[0]), .WBDATO1(wb_dat_o[1]), 
        .WBDATO2(wb_dat_o[2]), .WBDATO3(wb_dat_o[3]), .WBDATO4(wb_dat_o[4]), 
        .WBDATO5(wb_dat_o[5]), .WBDATO6(wb_dat_o[6]), .WBDATO7(wb_dat_o[7]), 
        .WBACKO(wb_ack_o), .I2C1SCLO(i2c1_sclo), .I2C1SCLOEN(i2c1_scloen), 
        .I2C1SDAO(i2c1_sdao), .I2C1SDAOEN(i2c1_sdaoen)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=221, LSE_RLINE=233 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(221[6] 233[3])
    defparam EFBInst_0.EFB_I2C1 = "ENABLED";
    defparam EFBInst_0.EFB_I2C2 = "DISABLED";
    defparam EFBInst_0.EFB_SPI = "DISABLED";
    defparam EFBInst_0.EFB_TC = "DISABLED";
    defparam EFBInst_0.EFB_TC_PORTMODE = "WB";
    defparam EFBInst_0.EFB_UFM = "DISABLED";
    defparam EFBInst_0.EFB_WB_CLK_FREQ = "50.0";
    defparam EFBInst_0.DEV_DENSITY = "1200L";
    defparam EFBInst_0.UFM_INIT_PAGES = 0;
    defparam EFBInst_0.UFM_INIT_START_PAGE = 0;
    defparam EFBInst_0.UFM_INIT_ALL_ZEROS = "ENABLED";
    defparam EFBInst_0.UFM_INIT_FILE_NAME = "NONE";
    defparam EFBInst_0.UFM_INIT_FILE_FORMAT = "HEX";
    defparam EFBInst_0.I2C1_ADDRESSING = "7BIT";
    defparam EFBInst_0.I2C2_ADDRESSING = "7BIT";
    defparam EFBInst_0.I2C1_SLAVE_ADDR = "0b0001001";
    defparam EFBInst_0.I2C2_SLAVE_ADDR = "0b0001001";
    defparam EFBInst_0.I2C1_BUS_PERF = "100kHz";
    defparam EFBInst_0.I2C2_BUS_PERF = "100kHz";
    defparam EFBInst_0.I2C1_CLK_DIVIDER = 125;
    defparam EFBInst_0.I2C2_CLK_DIVIDER = 1;
    defparam EFBInst_0.I2C1_GEN_CALL = "DISABLED";
    defparam EFBInst_0.I2C2_GEN_CALL = "DISABLED";
    defparam EFBInst_0.I2C1_WAKEUP = "DISABLED";
    defparam EFBInst_0.I2C2_WAKEUP = "DISABLED";
    defparam EFBInst_0.SPI_MODE = "MASTER";
    defparam EFBInst_0.SPI_CLK_DIVIDER = 1;
    defparam EFBInst_0.SPI_LSB_FIRST = "DISABLED";
    defparam EFBInst_0.SPI_CLK_INV = "DISABLED";
    defparam EFBInst_0.SPI_PHASE_ADJ = "DISABLED";
    defparam EFBInst_0.SPI_SLAVE_HANDSHAKE = "DISABLED";
    defparam EFBInst_0.SPI_INTR_TXRDY = "DISABLED";
    defparam EFBInst_0.SPI_INTR_RXRDY = "DISABLED";
    defparam EFBInst_0.SPI_INTR_TXOVR = "DISABLED";
    defparam EFBInst_0.SPI_INTR_RXOVR = "DISABLED";
    defparam EFBInst_0.SPI_WAKEUP = "DISABLED";
    defparam EFBInst_0.TC_MODE = "CTCM";
    defparam EFBInst_0.TC_SCLK_SEL = "PCLOCK";
    defparam EFBInst_0.TC_CCLK_SEL = 1;
    defparam EFBInst_0.GSR = "ENABLED";
    defparam EFBInst_0.TC_TOP_SET = 65535;
    defparam EFBInst_0.TC_OCR_SET = 32767;
    defparam EFBInst_0.TC_OC_MODE = "TOGGLE";
    defparam EFBInst_0.TC_RESETN = "ENABLED";
    defparam EFBInst_0.TC_TOP_SEL = "OFF";
    defparam EFBInst_0.TC_OV_INT = "OFF";
    defparam EFBInst_0.TC_OCR_INT = "OFF";
    defparam EFBInst_0.TC_ICR_INT = "OFF";
    defparam EFBInst_0.TC_OVERFLOW = "DISABLED";
    defparam EFBInst_0.TC_ICAPTURE = "DISABLED";
    
endmodule
//
// Verilog Description of module \PulseIn(BITS=13)_U3 
//

module \PulseIn(BITS=13)_U3  (GND_net, a1_pw, clk, i_a1_pwm_c, a1_rise) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output [12:0]a1_pw;
    input clk;
    input i_a1_pwm_c;
    output a1_rise;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(158[7:10])
    
    wire n2932;
    wire [12:0]count;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(66[23:28])
    
    wire signal;
    wire [12:0]n57;
    
    wire n2933, n2931, o_pw_12__N_220, n2930, signal_sync1, signal_sync0, 
        high, n2929, n2934;
    
    CCU2D count_518_add_4_9 (.A0(count[7]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2932), .COUT(n2933), .S0(n57[7]), .S1(n57[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518_add_4_9.INIT0 = 16'h7888;
    defparam count_518_add_4_9.INIT1 = 16'h7888;
    defparam count_518_add_4_9.INJECT1_0 = "NO";
    defparam count_518_add_4_9.INJECT1_1 = "NO";
    CCU2D count_518_add_4_7 (.A0(count[5]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2931), .COUT(n2932), .S0(n57[5]), .S1(n57[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518_add_4_7.INIT0 = 16'h7888;
    defparam count_518_add_4_7.INIT1 = 16'h7888;
    defparam count_518_add_4_7.INJECT1_0 = "NO";
    defparam count_518_add_4_7.INJECT1_1 = "NO";
    FD1P3AX pw_i0_i0 (.D(count[0]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=242, LSE_RLINE=247 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i0.GSR = "DISABLED";
    CCU2D count_518_add_4_5 (.A0(count[3]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2930), .COUT(n2931), .S0(n57[3]), .S1(n57[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518_add_4_5.INIT0 = 16'h7888;
    defparam count_518_add_4_5.INIT1 = 16'h7888;
    defparam count_518_add_4_5.INJECT1_0 = "NO";
    defparam count_518_add_4_5.INJECT1_1 = "NO";
    FD1S3AX signal_sync1_19 (.D(signal_sync0), .CK(clk), .Q(signal_sync1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=242, LSE_RLINE=247 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync1_19.GSR = "DISABLED";
    FD1S3AX signal_20 (.D(signal_sync1), .CK(clk), .Q(signal)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=242, LSE_RLINE=247 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_20.GSR = "DISABLED";
    FD1S3AX high_21 (.D(signal), .CK(clk), .Q(high)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=242, LSE_RLINE=247 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam high_21.GSR = "DISABLED";
    FD1S3AX signal_sync0_18 (.D(i_a1_pwm_c), .CK(clk), .Q(signal_sync0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=242, LSE_RLINE=247 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync0_18.GSR = "DISABLED";
    CCU2D count_518_add_4_3 (.A0(count[1]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2929), .COUT(n2930), .S0(n57[1]), .S1(n57[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518_add_4_3.INIT0 = 16'h7888;
    defparam count_518_add_4_3.INIT1 = 16'h7888;
    defparam count_518_add_4_3.INJECT1_0 = "NO";
    defparam count_518_add_4_3.INJECT1_1 = "NO";
    CCU2D count_518_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .COUT(n2929), .S1(n57[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518_add_4_1.INIT0 = 16'hF000;
    defparam count_518_add_4_1.INIT1 = 16'h7777;
    defparam count_518_add_4_1.INJECT1_0 = "NO";
    defparam count_518_add_4_1.INJECT1_1 = "NO";
    FD1S3IX rise_22 (.D(signal), .CK(clk), .CD(high), .Q(a1_rise)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=242, LSE_RLINE=247 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam rise_22.GSR = "DISABLED";
    FD1S3AX count_518__i0 (.D(n57[0]), .CK(clk), .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i0.GSR = "DISABLED";
    FD1P3AX pw_i0_i12 (.D(count[12]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=242, LSE_RLINE=247 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i12.GSR = "DISABLED";
    FD1P3AX pw_i0_i11 (.D(count[11]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=242, LSE_RLINE=247 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i11.GSR = "DISABLED";
    FD1P3AX pw_i0_i10 (.D(count[10]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=242, LSE_RLINE=247 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i10.GSR = "DISABLED";
    FD1P3AX pw_i0_i9 (.D(count[9]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=242, LSE_RLINE=247 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i9.GSR = "DISABLED";
    FD1P3AX pw_i0_i8 (.D(count[8]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=242, LSE_RLINE=247 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i8.GSR = "DISABLED";
    FD1P3AX pw_i0_i7 (.D(count[7]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=242, LSE_RLINE=247 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i7.GSR = "DISABLED";
    FD1P3AX pw_i0_i6 (.D(count[6]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=242, LSE_RLINE=247 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i6.GSR = "DISABLED";
    FD1P3AX pw_i0_i5 (.D(count[5]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=242, LSE_RLINE=247 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i5.GSR = "DISABLED";
    FD1P3AX pw_i0_i4 (.D(count[4]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=242, LSE_RLINE=247 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i4.GSR = "DISABLED";
    FD1P3AX pw_i0_i3 (.D(count[3]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=242, LSE_RLINE=247 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i3.GSR = "DISABLED";
    FD1P3AX pw_i0_i2 (.D(count[2]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=242, LSE_RLINE=247 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i2.GSR = "DISABLED";
    FD1P3AX pw_i0_i1 (.D(count[1]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=242, LSE_RLINE=247 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i1.GSR = "DISABLED";
    LUT4 o_pw_12__I_3_2_lut (.A(signal), .B(high), .Z(o_pw_12__N_220)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(84[7:22])
    defparam o_pw_12__I_3_2_lut.init = 16'h4444;
    FD1S3AX count_518__i1 (.D(n57[1]), .CK(clk), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i1.GSR = "DISABLED";
    FD1S3AX count_518__i2 (.D(n57[2]), .CK(clk), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i2.GSR = "DISABLED";
    FD1S3AX count_518__i3 (.D(n57[3]), .CK(clk), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i3.GSR = "DISABLED";
    FD1S3AX count_518__i4 (.D(n57[4]), .CK(clk), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i4.GSR = "DISABLED";
    FD1S3AX count_518__i5 (.D(n57[5]), .CK(clk), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i5.GSR = "DISABLED";
    FD1S3AX count_518__i6 (.D(n57[6]), .CK(clk), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i6.GSR = "DISABLED";
    FD1S3AX count_518__i7 (.D(n57[7]), .CK(clk), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i7.GSR = "DISABLED";
    FD1S3AX count_518__i8 (.D(n57[8]), .CK(clk), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i8.GSR = "DISABLED";
    FD1S3AX count_518__i9 (.D(n57[9]), .CK(clk), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i9.GSR = "DISABLED";
    FD1S3AX count_518__i10 (.D(n57[10]), .CK(clk), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i10.GSR = "DISABLED";
    FD1S3AX count_518__i11 (.D(n57[11]), .CK(clk), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i11.GSR = "DISABLED";
    FD1S3AX count_518__i12 (.D(n57[12]), .CK(clk), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i12.GSR = "DISABLED";
    CCU2D count_518_add_4_13 (.A0(count[11]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2934), .S0(n57[11]), .S1(n57[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518_add_4_13.INIT0 = 16'h7888;
    defparam count_518_add_4_13.INIT1 = 16'h7888;
    defparam count_518_add_4_13.INJECT1_0 = "NO";
    defparam count_518_add_4_13.INJECT1_1 = "NO";
    CCU2D count_518_add_4_11 (.A0(count[9]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2933), .COUT(n2934), .S0(n57[9]), .S1(n57[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518_add_4_11.INIT0 = 16'h7888;
    defparam count_518_add_4_11.INIT1 = 16'h7888;
    defparam count_518_add_4_11.INJECT1_0 = "NO";
    defparam count_518_add_4_11.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module \PulseIn(BITS=13)_U2 
//

module \PulseIn(BITS=13)_U2  (\a2_pw[1] , clk, i_a2_pwm_c, GND_net, 
            \a2_pw[12] , \a2_pw[11] , \a2_pw[10] , \a2_pw[9] , \a2_pw[8] , 
            \a2_pw[7] , \a2_pw[6] , \a2_pw[5] , \a2_pw[4] , \a2_pw[3] , 
            \a2_pw[2] ) /* synthesis syn_module_defined=1 */ ;
    output \a2_pw[1] ;
    input clk;
    input i_a2_pwm_c;
    input GND_net;
    output \a2_pw[12] ;
    output \a2_pw[11] ;
    output \a2_pw[10] ;
    output \a2_pw[9] ;
    output \a2_pw[8] ;
    output \a2_pw[7] ;
    output \a2_pw[6] ;
    output \a2_pw[5] ;
    output \a2_pw[4] ;
    output \a2_pw[3] ;
    output \a2_pw[2] ;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(158[7:10])
    
    wire o_pw_12__N_220;
    wire [12:0]count;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(66[23:28])
    
    wire signal_sync1, signal_sync0, signal, high, n2927;
    wire [12:0]n57;
    
    wire n2926, n2925;
    wire [12:0]n100;
    
    wire n2924, n2923, n2922;
    
    FD1P3AX pw__i1 (.D(count[1]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=249, LSE_RLINE=253 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i1.GSR = "DISABLED";
    FD1S3AX signal_sync1_19 (.D(signal_sync0), .CK(clk), .Q(signal_sync1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=249, LSE_RLINE=253 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync1_19.GSR = "DISABLED";
    FD1S3AX signal_20 (.D(signal_sync1), .CK(clk), .Q(signal)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=249, LSE_RLINE=253 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_20.GSR = "DISABLED";
    FD1S3AX high_21 (.D(signal), .CK(clk), .Q(high)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=249, LSE_RLINE=253 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam high_21.GSR = "DISABLED";
    FD1S3AX signal_sync0_18 (.D(i_a2_pwm_c), .CK(clk), .Q(signal_sync0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=249, LSE_RLINE=253 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync0_18.GSR = "DISABLED";
    CCU2D count_519_add_4_13 (.A0(count[11]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2927), .S0(n57[11]), .S1(n57[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_519_add_4_13.INIT0 = 16'h7888;
    defparam count_519_add_4_13.INIT1 = 16'h7888;
    defparam count_519_add_4_13.INJECT1_0 = "NO";
    defparam count_519_add_4_13.INJECT1_1 = "NO";
    CCU2D count_519_add_4_11 (.A0(count[9]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2926), .COUT(n2927), .S0(n57[9]), .S1(n57[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_519_add_4_11.INIT0 = 16'h7888;
    defparam count_519_add_4_11.INIT1 = 16'h7888;
    defparam count_519_add_4_11.INJECT1_0 = "NO";
    defparam count_519_add_4_11.INJECT1_1 = "NO";
    CCU2D count_519_add_4_9 (.A0(count[7]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2925), .COUT(n2926), .S0(n57[7]), .S1(n57[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_519_add_4_9.INIT0 = 16'h7888;
    defparam count_519_add_4_9.INIT1 = 16'h7888;
    defparam count_519_add_4_9.INJECT1_0 = "NO";
    defparam count_519_add_4_9.INJECT1_1 = "NO";
    FD1S3AX count_519__i0 (.D(n57[0]), .CK(clk), .Q(n100[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_519__i0.GSR = "DISABLED";
    FD1P3AX pw__i12 (.D(count[12]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[12] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=249, LSE_RLINE=253 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i12.GSR = "DISABLED";
    FD1P3AX pw__i11 (.D(count[11]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[11] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=249, LSE_RLINE=253 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i11.GSR = "DISABLED";
    FD1P3AX pw__i10 (.D(count[10]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[10] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=249, LSE_RLINE=253 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i10.GSR = "DISABLED";
    FD1P3AX pw__i9 (.D(count[9]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[9] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=249, LSE_RLINE=253 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i9.GSR = "DISABLED";
    FD1P3AX pw__i8 (.D(count[8]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[8] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=249, LSE_RLINE=253 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i8.GSR = "DISABLED";
    FD1P3AX pw__i7 (.D(count[7]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[7] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=249, LSE_RLINE=253 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i7.GSR = "DISABLED";
    FD1P3AX pw__i6 (.D(count[6]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[6] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=249, LSE_RLINE=253 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i6.GSR = "DISABLED";
    FD1P3AX pw__i5 (.D(count[5]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[5] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=249, LSE_RLINE=253 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i5.GSR = "DISABLED";
    FD1P3AX pw__i4 (.D(count[4]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[4] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=249, LSE_RLINE=253 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i4.GSR = "DISABLED";
    FD1P3AX pw__i3 (.D(count[3]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[3] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=249, LSE_RLINE=253 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i3.GSR = "DISABLED";
    FD1P3AX pw__i2 (.D(count[2]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[2] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=249, LSE_RLINE=253 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i2.GSR = "DISABLED";
    CCU2D count_519_add_4_7 (.A0(count[5]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2924), .COUT(n2925), .S0(n57[5]), .S1(n57[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_519_add_4_7.INIT0 = 16'h7888;
    defparam count_519_add_4_7.INIT1 = 16'h7888;
    defparam count_519_add_4_7.INJECT1_0 = "NO";
    defparam count_519_add_4_7.INJECT1_1 = "NO";
    CCU2D count_519_add_4_5 (.A0(count[3]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2923), .COUT(n2924), .S0(n57[3]), .S1(n57[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_519_add_4_5.INIT0 = 16'h7888;
    defparam count_519_add_4_5.INIT1 = 16'h7888;
    defparam count_519_add_4_5.INJECT1_0 = "NO";
    defparam count_519_add_4_5.INJECT1_1 = "NO";
    CCU2D count_519_add_4_3 (.A0(count[1]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2922), .COUT(n2923), .S0(n57[1]), .S1(n57[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_519_add_4_3.INIT0 = 16'h7888;
    defparam count_519_add_4_3.INIT1 = 16'h7888;
    defparam count_519_add_4_3.INJECT1_0 = "NO";
    defparam count_519_add_4_3.INJECT1_1 = "NO";
    CCU2D count_519_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n100[0]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .COUT(n2922), .S1(n57[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_519_add_4_1.INIT0 = 16'hF000;
    defparam count_519_add_4_1.INIT1 = 16'h7777;
    defparam count_519_add_4_1.INJECT1_0 = "NO";
    defparam count_519_add_4_1.INJECT1_1 = "NO";
    FD1S3AX count_519__i1 (.D(n57[1]), .CK(clk), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_519__i1.GSR = "DISABLED";
    FD1S3AX count_519__i2 (.D(n57[2]), .CK(clk), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_519__i2.GSR = "DISABLED";
    FD1S3AX count_519__i3 (.D(n57[3]), .CK(clk), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_519__i3.GSR = "DISABLED";
    FD1S3AX count_519__i4 (.D(n57[4]), .CK(clk), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_519__i4.GSR = "DISABLED";
    FD1S3AX count_519__i5 (.D(n57[5]), .CK(clk), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_519__i5.GSR = "DISABLED";
    FD1S3AX count_519__i6 (.D(n57[6]), .CK(clk), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_519__i6.GSR = "DISABLED";
    FD1S3AX count_519__i7 (.D(n57[7]), .CK(clk), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_519__i7.GSR = "DISABLED";
    FD1S3AX count_519__i8 (.D(n57[8]), .CK(clk), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_519__i8.GSR = "DISABLED";
    FD1S3AX count_519__i9 (.D(n57[9]), .CK(clk), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_519__i9.GSR = "DISABLED";
    FD1S3AX count_519__i10 (.D(n57[10]), .CK(clk), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_519__i10.GSR = "DISABLED";
    FD1S3AX count_519__i11 (.D(n57[11]), .CK(clk), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_519__i11.GSR = "DISABLED";
    FD1S3AX count_519__i12 (.D(n57[12]), .CK(clk), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_519__i12.GSR = "DISABLED";
    LUT4 o_pw_12__I_3_2_lut (.A(signal), .B(high), .Z(o_pw_12__N_220)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(84[7:22])
    defparam o_pw_12__I_3_2_lut.init = 16'h4444;
    
endmodule
//
// Verilog Description of module RevolutionCounter
//

module RevolutionCounter (revcount, i_rev_pulse_c, GND_net, rst_c, n3070, 
            n3226, n783, clk_enable_58, n3230) /* synthesis syn_module_defined=1 */ ;
    output [7:0]revcount;
    input i_rev_pulse_c;
    input GND_net;
    input rst_c;
    input n3070;
    input n3226;
    input n783;
    output clk_enable_58;
    output n3230;
    
    wire i_rev_pulse_c /* synthesis SET_AS_NETWORK=i_rev_pulse_c, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(152[13:24])
    wire [7:0]n37;
    
    wire n2887, n2886, n2885, n2884;
    
    FD1S3AX dff_6_524__i0 (.D(n37[0]), .CK(i_rev_pulse_c), .Q(revcount[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(137[15:30])
    defparam dff_6_524__i0.GSR = "ENABLED";
    FD1S3AX dff_6_524__i7 (.D(n37[7]), .CK(i_rev_pulse_c), .Q(revcount[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(137[15:30])
    defparam dff_6_524__i7.GSR = "ENABLED";
    FD1S3AX dff_6_524__i6 (.D(n37[6]), .CK(i_rev_pulse_c), .Q(revcount[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(137[15:30])
    defparam dff_6_524__i6.GSR = "ENABLED";
    FD1S3AX dff_6_524__i5 (.D(n37[5]), .CK(i_rev_pulse_c), .Q(revcount[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(137[15:30])
    defparam dff_6_524__i5.GSR = "ENABLED";
    FD1S3AX dff_6_524__i4 (.D(n37[4]), .CK(i_rev_pulse_c), .Q(revcount[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(137[15:30])
    defparam dff_6_524__i4.GSR = "ENABLED";
    FD1S3AX dff_6_524__i3 (.D(n37[3]), .CK(i_rev_pulse_c), .Q(revcount[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(137[15:30])
    defparam dff_6_524__i3.GSR = "ENABLED";
    FD1S3AX dff_6_524__i2 (.D(n37[2]), .CK(i_rev_pulse_c), .Q(revcount[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(137[15:30])
    defparam dff_6_524__i2.GSR = "ENABLED";
    FD1S3AX dff_6_524__i1 (.D(n37[1]), .CK(i_rev_pulse_c), .Q(revcount[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(137[15:30])
    defparam dff_6_524__i1.GSR = "ENABLED";
    CCU2D dff_6_524_add_4_9 (.A0(revcount[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2887), .S0(n37[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(137[15:30])
    defparam dff_6_524_add_4_9.INIT0 = 16'hfaaa;
    defparam dff_6_524_add_4_9.INIT1 = 16'h0000;
    defparam dff_6_524_add_4_9.INJECT1_0 = "NO";
    defparam dff_6_524_add_4_9.INJECT1_1 = "NO";
    CCU2D dff_6_524_add_4_7 (.A0(revcount[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(revcount[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2886), .COUT(n2887), .S0(n37[5]), .S1(n37[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(137[15:30])
    defparam dff_6_524_add_4_7.INIT0 = 16'hfaaa;
    defparam dff_6_524_add_4_7.INIT1 = 16'hfaaa;
    defparam dff_6_524_add_4_7.INJECT1_0 = "NO";
    defparam dff_6_524_add_4_7.INJECT1_1 = "NO";
    CCU2D dff_6_524_add_4_5 (.A0(revcount[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(revcount[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2885), .COUT(n2886), .S0(n37[3]), .S1(n37[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(137[15:30])
    defparam dff_6_524_add_4_5.INIT0 = 16'hfaaa;
    defparam dff_6_524_add_4_5.INIT1 = 16'hfaaa;
    defparam dff_6_524_add_4_5.INJECT1_0 = "NO";
    defparam dff_6_524_add_4_5.INJECT1_1 = "NO";
    CCU2D dff_6_524_add_4_3 (.A0(revcount[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(revcount[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n2884), .COUT(n2885), .S0(n37[1]), .S1(n37[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(137[15:30])
    defparam dff_6_524_add_4_3.INIT0 = 16'hfaaa;
    defparam dff_6_524_add_4_3.INIT1 = 16'hfaaa;
    defparam dff_6_524_add_4_3.INJECT1_0 = "NO";
    defparam dff_6_524_add_4_3.INJECT1_1 = "NO";
    CCU2D dff_6_524_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(revcount[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n2884), .S1(n37[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(137[15:30])
    defparam dff_6_524_add_4_1.INIT0 = 16'hF000;
    defparam dff_6_524_add_4_1.INIT1 = 16'h0555;
    defparam dff_6_524_add_4_1.INJECT1_0 = "NO";
    defparam dff_6_524_add_4_1.INJECT1_1 = "NO";
    LUT4 i537_4_lut_4_lut (.A(rst_c), .B(n3070), .C(n3226), .D(n783), 
         .Z(clk_enable_58)) /* synthesis lut_function=(!(A (B (C)+!B !(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(223[13:17])
    defparam i537_4_lut_4_lut.init = 16'h7f5d;
    LUT4 rst_I_0_1_lut_rep_30 (.A(rst_c), .Z(n3230)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(223[13:17])
    defparam rst_I_0_1_lut_rep_30.init = 16'h5555;
    
endmodule
//
// Verilog Description of module \PulseIn(BITS=13)_U1 
//

module \PulseIn(BITS=13)_U1  (clk, i_a3_pwm_c, \a3_pw[12] , n5, n2389, 
            n1922, n3216, n2047, GND_net, n6) /* synthesis syn_module_defined=1 */ ;
    input clk;
    input i_a3_pwm_c;
    output \a3_pw[12] ;
    output n5;
    input n2389;
    input n1922;
    input n3216;
    output n2047;
    input GND_net;
    output n6;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(158[7:10])
    wire [12:0]a3_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(198[43:48])
    
    wire o_pw_12__N_220;
    wire [12:0]count;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(66[23:28])
    
    wire signal_sync1, signal_sync0, signal, high;
    wire [12:0]n100;
    wire [12:0]n57;
    
    wire n31, n2920, n2919, n2918, n2917, n2960, n2916, n2915;
    
    FD1P3AX pw__i1 (.D(count[1]), .SP(o_pw_12__N_220), .CK(clk), .Q(a3_pw[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=255, LSE_RLINE=259 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i1.GSR = "DISABLED";
    FD1S3AX signal_sync1_19 (.D(signal_sync0), .CK(clk), .Q(signal_sync1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=255, LSE_RLINE=259 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync1_19.GSR = "DISABLED";
    FD1S3AX signal_20 (.D(signal_sync1), .CK(clk), .Q(signal)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=255, LSE_RLINE=259 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_20.GSR = "DISABLED";
    FD1S3AX high_21 (.D(signal), .CK(clk), .Q(high)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=255, LSE_RLINE=259 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam high_21.GSR = "DISABLED";
    FD1S3AX signal_sync0_18 (.D(i_a3_pwm_c), .CK(clk), .Q(signal_sync0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=255, LSE_RLINE=259 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync0_18.GSR = "DISABLED";
    FD1S3AX count_520__i0 (.D(n57[0]), .CK(clk), .Q(n100[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_520__i0.GSR = "DISABLED";
    FD1P3AX pw__i12 (.D(count[12]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a3_pw[12] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=255, LSE_RLINE=259 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i12.GSR = "DISABLED";
    FD1P3AX pw__i11 (.D(count[11]), .SP(o_pw_12__N_220), .CK(clk), .Q(a3_pw[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=255, LSE_RLINE=259 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i11.GSR = "DISABLED";
    FD1P3AX pw__i10 (.D(count[10]), .SP(o_pw_12__N_220), .CK(clk), .Q(a3_pw[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=255, LSE_RLINE=259 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i10.GSR = "DISABLED";
    FD1P3AX pw__i9 (.D(count[9]), .SP(o_pw_12__N_220), .CK(clk), .Q(a3_pw[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=255, LSE_RLINE=259 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i9.GSR = "DISABLED";
    FD1P3AX pw__i8 (.D(count[8]), .SP(o_pw_12__N_220), .CK(clk), .Q(a3_pw[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=255, LSE_RLINE=259 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i8.GSR = "DISABLED";
    FD1P3AX pw__i7 (.D(count[7]), .SP(o_pw_12__N_220), .CK(clk), .Q(a3_pw[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=255, LSE_RLINE=259 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i7.GSR = "DISABLED";
    FD1P3AX pw__i6 (.D(count[6]), .SP(o_pw_12__N_220), .CK(clk), .Q(a3_pw[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=255, LSE_RLINE=259 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i6.GSR = "DISABLED";
    FD1P3AX pw__i5 (.D(count[5]), .SP(o_pw_12__N_220), .CK(clk), .Q(a3_pw[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=255, LSE_RLINE=259 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i5.GSR = "DISABLED";
    FD1P3AX pw__i4 (.D(count[4]), .SP(o_pw_12__N_220), .CK(clk), .Q(a3_pw[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=255, LSE_RLINE=259 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i4.GSR = "DISABLED";
    FD1P3AX pw__i3 (.D(count[3]), .SP(o_pw_12__N_220), .CK(clk), .Q(a3_pw[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=255, LSE_RLINE=259 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i3.GSR = "DISABLED";
    FD1P3AX pw__i2 (.D(count[2]), .SP(o_pw_12__N_220), .CK(clk), .Q(a3_pw[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=255, LSE_RLINE=259 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i2.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(a3_pw[7]), .B(a3_pw[10]), .C(a3_pw[8]), .D(n31), 
         .Z(n5)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut.init = 16'heccc;
    PFUMX i1261 (.BLUT(n2389), .ALUT(n1922), .C0(n3216), .Z(n2047));
    CCU2D count_520_add_4_13 (.A0(count[11]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2920), .S0(n57[11]), .S1(n57[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_520_add_4_13.INIT0 = 16'h7888;
    defparam count_520_add_4_13.INIT1 = 16'h7888;
    defparam count_520_add_4_13.INJECT1_0 = "NO";
    defparam count_520_add_4_13.INJECT1_1 = "NO";
    CCU2D count_520_add_4_11 (.A0(count[9]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2919), .COUT(n2920), .S0(n57[9]), .S1(n57[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_520_add_4_11.INIT0 = 16'h7888;
    defparam count_520_add_4_11.INIT1 = 16'h7888;
    defparam count_520_add_4_11.INJECT1_0 = "NO";
    defparam count_520_add_4_11.INJECT1_1 = "NO";
    CCU2D count_520_add_4_9 (.A0(count[7]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2918), .COUT(n2919), .S0(n57[7]), .S1(n57[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_520_add_4_9.INIT0 = 16'h7888;
    defparam count_520_add_4_9.INIT1 = 16'h7888;
    defparam count_520_add_4_9.INJECT1_0 = "NO";
    defparam count_520_add_4_9.INJECT1_1 = "NO";
    CCU2D count_520_add_4_7 (.A0(count[5]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2917), .COUT(n2918), .S0(n57[5]), .S1(n57[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_520_add_4_7.INIT0 = 16'h7888;
    defparam count_520_add_4_7.INIT1 = 16'h7888;
    defparam count_520_add_4_7.INJECT1_0 = "NO";
    defparam count_520_add_4_7.INJECT1_1 = "NO";
    LUT4 i47_4_lut (.A(a3_pw[6]), .B(a3_pw[4]), .C(a3_pw[5]), .D(n2960), 
         .Z(n31)) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(198[43:48])
    defparam i47_4_lut.init = 16'heaaa;
    LUT4 i2_3_lut (.A(a3_pw[3]), .B(a3_pw[2]), .C(a3_pw[1]), .Z(n2960)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(198[43:48])
    defparam i2_3_lut.init = 16'hfefe;
    CCU2D count_520_add_4_5 (.A0(count[3]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2916), .COUT(n2917), .S0(n57[3]), .S1(n57[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_520_add_4_5.INIT0 = 16'h7888;
    defparam count_520_add_4_5.INIT1 = 16'h7888;
    defparam count_520_add_4_5.INJECT1_0 = "NO";
    defparam count_520_add_4_5.INJECT1_1 = "NO";
    CCU2D count_520_add_4_3 (.A0(count[1]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2915), .COUT(n2916), .S0(n57[1]), .S1(n57[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_520_add_4_3.INIT0 = 16'h7888;
    defparam count_520_add_4_3.INIT1 = 16'h7888;
    defparam count_520_add_4_3.INJECT1_0 = "NO";
    defparam count_520_add_4_3.INJECT1_1 = "NO";
    CCU2D count_520_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n100[0]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .COUT(n2915), .S1(n57[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_520_add_4_1.INIT0 = 16'hF000;
    defparam count_520_add_4_1.INIT1 = 16'h7777;
    defparam count_520_add_4_1.INJECT1_0 = "NO";
    defparam count_520_add_4_1.INJECT1_1 = "NO";
    FD1S3AX count_520__i1 (.D(n57[1]), .CK(clk), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_520__i1.GSR = "DISABLED";
    FD1S3AX count_520__i2 (.D(n57[2]), .CK(clk), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_520__i2.GSR = "DISABLED";
    FD1S3AX count_520__i3 (.D(n57[3]), .CK(clk), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_520__i3.GSR = "DISABLED";
    FD1S3AX count_520__i4 (.D(n57[4]), .CK(clk), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_520__i4.GSR = "DISABLED";
    FD1S3AX count_520__i5 (.D(n57[5]), .CK(clk), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_520__i5.GSR = "DISABLED";
    FD1S3AX count_520__i6 (.D(n57[6]), .CK(clk), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_520__i6.GSR = "DISABLED";
    FD1S3AX count_520__i7 (.D(n57[7]), .CK(clk), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_520__i7.GSR = "DISABLED";
    FD1S3AX count_520__i8 (.D(n57[8]), .CK(clk), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_520__i8.GSR = "DISABLED";
    FD1S3AX count_520__i9 (.D(n57[9]), .CK(clk), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_520__i9.GSR = "DISABLED";
    FD1S3AX count_520__i10 (.D(n57[10]), .CK(clk), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_520__i10.GSR = "DISABLED";
    FD1S3AX count_520__i11 (.D(n57[11]), .CK(clk), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_520__i11.GSR = "DISABLED";
    FD1S3AX count_520__i12 (.D(n57[12]), .CK(clk), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_520__i12.GSR = "DISABLED";
    LUT4 i2_2_lut (.A(a3_pw[11]), .B(a3_pw[9]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 o_pw_12__I_3_2_lut (.A(signal), .B(high), .Z(o_pw_12__N_220)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(84[7:22])
    defparam o_pw_12__I_3_2_lut.init = 16'h4444;
    
endmodule
//
// Verilog Description of module \PulseIn(BITS=13)_U4 
//

module \PulseIn(BITS=13)_U4  (a0_pw, clk, i_a0_pwm_c, a0_rise, GND_net) /* synthesis syn_module_defined=1 */ ;
    output [12:0]a0_pw;
    input clk;
    input i_a0_pwm_c;
    output a0_rise;
    input GND_net;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(158[7:10])
    
    wire o_pw_12__N_220;
    wire [12:0]count;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(66[23:28])
    
    wire signal_sync1, signal_sync0, signal, high;
    wire [12:0]n57;
    
    wire n2941, n2940, n2939, n2938, n2937, n2936;
    
    FD1P3AX pw_i0_i0 (.D(count[0]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=235, LSE_RLINE=240 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i0.GSR = "DISABLED";
    FD1S3AX signal_sync1_19 (.D(signal_sync0), .CK(clk), .Q(signal_sync1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=235, LSE_RLINE=240 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync1_19.GSR = "DISABLED";
    FD1S3AX signal_20 (.D(signal_sync1), .CK(clk), .Q(signal)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=235, LSE_RLINE=240 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_20.GSR = "DISABLED";
    FD1S3AX high_21 (.D(signal), .CK(clk), .Q(high)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=235, LSE_RLINE=240 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam high_21.GSR = "DISABLED";
    FD1S3AX signal_sync0_18 (.D(i_a0_pwm_c), .CK(clk), .Q(signal_sync0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=235, LSE_RLINE=240 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync0_18.GSR = "DISABLED";
    LUT4 o_pw_12__I_3_2_lut (.A(signal), .B(high), .Z(o_pw_12__N_220)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(84[7:22])
    defparam o_pw_12__I_3_2_lut.init = 16'h4444;
    FD1S3IX rise_22 (.D(signal), .CK(clk), .CD(high), .Q(a0_rise)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=235, LSE_RLINE=240 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam rise_22.GSR = "DISABLED";
    FD1S3AX count_517__i0 (.D(n57[0]), .CK(clk), .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i0.GSR = "DISABLED";
    FD1P3AX pw_i0_i12 (.D(count[12]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=235, LSE_RLINE=240 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i12.GSR = "DISABLED";
    FD1P3AX pw_i0_i11 (.D(count[11]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=235, LSE_RLINE=240 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i11.GSR = "DISABLED";
    FD1P3AX pw_i0_i10 (.D(count[10]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=235, LSE_RLINE=240 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i10.GSR = "DISABLED";
    FD1P3AX pw_i0_i9 (.D(count[9]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=235, LSE_RLINE=240 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i9.GSR = "DISABLED";
    FD1P3AX pw_i0_i8 (.D(count[8]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=235, LSE_RLINE=240 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i8.GSR = "DISABLED";
    FD1P3AX pw_i0_i7 (.D(count[7]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=235, LSE_RLINE=240 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i7.GSR = "DISABLED";
    FD1P3AX pw_i0_i6 (.D(count[6]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=235, LSE_RLINE=240 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i6.GSR = "DISABLED";
    FD1P3AX pw_i0_i5 (.D(count[5]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=235, LSE_RLINE=240 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i5.GSR = "DISABLED";
    FD1P3AX pw_i0_i4 (.D(count[4]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=235, LSE_RLINE=240 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i4.GSR = "DISABLED";
    FD1P3AX pw_i0_i3 (.D(count[3]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=235, LSE_RLINE=240 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i3.GSR = "DISABLED";
    FD1P3AX pw_i0_i2 (.D(count[2]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=235, LSE_RLINE=240 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i2.GSR = "DISABLED";
    FD1P3AX pw_i0_i1 (.D(count[1]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=235, LSE_RLINE=240 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i1.GSR = "DISABLED";
    CCU2D count_517_add_4_13 (.A0(count[11]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2941), .S0(n57[11]), .S1(n57[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517_add_4_13.INIT0 = 16'h7888;
    defparam count_517_add_4_13.INIT1 = 16'h7888;
    defparam count_517_add_4_13.INJECT1_0 = "NO";
    defparam count_517_add_4_13.INJECT1_1 = "NO";
    CCU2D count_517_add_4_11 (.A0(count[9]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2940), .COUT(n2941), .S0(n57[9]), .S1(n57[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517_add_4_11.INIT0 = 16'h7888;
    defparam count_517_add_4_11.INIT1 = 16'h7888;
    defparam count_517_add_4_11.INJECT1_0 = "NO";
    defparam count_517_add_4_11.INJECT1_1 = "NO";
    CCU2D count_517_add_4_9 (.A0(count[7]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2939), .COUT(n2940), .S0(n57[7]), .S1(n57[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517_add_4_9.INIT0 = 16'h7888;
    defparam count_517_add_4_9.INIT1 = 16'h7888;
    defparam count_517_add_4_9.INJECT1_0 = "NO";
    defparam count_517_add_4_9.INJECT1_1 = "NO";
    CCU2D count_517_add_4_7 (.A0(count[5]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2938), .COUT(n2939), .S0(n57[5]), .S1(n57[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517_add_4_7.INIT0 = 16'h7888;
    defparam count_517_add_4_7.INIT1 = 16'h7888;
    defparam count_517_add_4_7.INJECT1_0 = "NO";
    defparam count_517_add_4_7.INJECT1_1 = "NO";
    CCU2D count_517_add_4_5 (.A0(count[3]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2937), .COUT(n2938), .S0(n57[3]), .S1(n57[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517_add_4_5.INIT0 = 16'h7888;
    defparam count_517_add_4_5.INIT1 = 16'h7888;
    defparam count_517_add_4_5.INJECT1_0 = "NO";
    defparam count_517_add_4_5.INJECT1_1 = "NO";
    CCU2D count_517_add_4_3 (.A0(count[1]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2936), .COUT(n2937), .S0(n57[1]), .S1(n57[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517_add_4_3.INIT0 = 16'h7888;
    defparam count_517_add_4_3.INIT1 = 16'h7888;
    defparam count_517_add_4_3.INJECT1_0 = "NO";
    defparam count_517_add_4_3.INJECT1_1 = "NO";
    FD1S3AX count_517__i1 (.D(n57[1]), .CK(clk), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i1.GSR = "DISABLED";
    FD1S3AX count_517__i2 (.D(n57[2]), .CK(clk), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i2.GSR = "DISABLED";
    FD1S3AX count_517__i3 (.D(n57[3]), .CK(clk), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i3.GSR = "DISABLED";
    FD1S3AX count_517__i4 (.D(n57[4]), .CK(clk), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i4.GSR = "DISABLED";
    FD1S3AX count_517__i5 (.D(n57[5]), .CK(clk), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i5.GSR = "DISABLED";
    FD1S3AX count_517__i6 (.D(n57[6]), .CK(clk), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i6.GSR = "DISABLED";
    FD1S3AX count_517__i7 (.D(n57[7]), .CK(clk), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i7.GSR = "DISABLED";
    FD1S3AX count_517__i8 (.D(n57[8]), .CK(clk), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i8.GSR = "DISABLED";
    FD1S3AX count_517__i9 (.D(n57[9]), .CK(clk), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i9.GSR = "DISABLED";
    FD1S3AX count_517__i10 (.D(n57[10]), .CK(clk), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i10.GSR = "DISABLED";
    FD1S3AX count_517__i11 (.D(n57[11]), .CK(clk), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i11.GSR = "DISABLED";
    FD1S3AX count_517__i12 (.D(n57[12]), .CK(clk), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i12.GSR = "DISABLED";
    CCU2D count_517_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .COUT(n2936), .S1(n57[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517_add_4_1.INIT0 = 16'hF000;
    defparam count_517_add_4_1.INIT1 = 16'h7777;
    defparam count_517_add_4_1.INJECT1_0 = "NO";
    defparam count_517_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module \PulseOut(BITS=13)_U0 
//

module \PulseOut(BITS=13)_U0  (clk, o_y0_pwm_c, y0_pw, a0_rise, GND_net) /* synthesis syn_module_defined=1 */ ;
    input clk;
    output o_y0_pwm_c;
    input [12:0]y0_pw;
    input a0_rise;
    input GND_net;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(158[7:10])
    wire [12:0]count;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(110[17:22])
    
    wire n24, n20;
    wire [12:0]n55;
    wire [12:0]n57;
    
    wire n3210, n2897, n2896, n2895, n2894, n2893, n2892, n2891, 
        n22, n16;
    
    LUT4 count_522_inv_2_i1_1_lut_4_lut (.A(count[7]), .B(n24), .C(n20), 
         .D(count[6]), .Z(n55[0])) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(117[7:12])
    defparam count_522_inv_2_i1_1_lut_4_lut.init = 16'h0001;
    FD1S3AX count_522__i0 (.D(n57[0]), .CK(clk), .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_522__i0.GSR = "DISABLED";
    LUT4 i12_4_lut_rep_10 (.A(count[7]), .B(n24), .C(n20), .D(count[6]), 
         .Z(n3210)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(117[7:12])
    defparam i12_4_lut_rep_10.init = 16'hfffe;
    FD1S3AX signal_11 (.D(n3210), .CK(clk), .Q(o_y0_pwm_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=267, LSE_RLINE=272 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 120[5])
    defparam signal_11.GSR = "DISABLED";
    CCU2D count_522_add_4_15 (.A0(y0_pw[12]), .B0(a0_rise), .C0(count[12]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2897), .S0(n57[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_522_add_4_15.INIT0 = 16'h4b8b;
    defparam count_522_add_4_15.INIT1 = 16'h0000;
    defparam count_522_add_4_15.INJECT1_0 = "NO";
    defparam count_522_add_4_15.INJECT1_1 = "NO";
    CCU2D count_522_add_4_13 (.A0(y0_pw[10]), .B0(a0_rise), .C0(count[10]), 
          .D0(GND_net), .A1(y0_pw[11]), .B1(a0_rise), .C1(count[11]), 
          .D1(GND_net), .CIN(n2896), .COUT(n2897), .S0(n57[10]), .S1(n57[11]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_522_add_4_13.INIT0 = 16'h4b8b;
    defparam count_522_add_4_13.INIT1 = 16'h4b8b;
    defparam count_522_add_4_13.INJECT1_0 = "NO";
    defparam count_522_add_4_13.INJECT1_1 = "NO";
    FD1S3AX count_522__i12 (.D(n57[12]), .CK(clk), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_522__i12.GSR = "DISABLED";
    FD1S3AX count_522__i11 (.D(n57[11]), .CK(clk), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_522__i11.GSR = "DISABLED";
    FD1S3AX count_522__i10 (.D(n57[10]), .CK(clk), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_522__i10.GSR = "DISABLED";
    FD1S3AX count_522__i9 (.D(n57[9]), .CK(clk), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_522__i9.GSR = "DISABLED";
    FD1S3AX count_522__i8 (.D(n57[8]), .CK(clk), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_522__i8.GSR = "DISABLED";
    FD1S3AX count_522__i7 (.D(n57[7]), .CK(clk), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_522__i7.GSR = "DISABLED";
    FD1S3AX count_522__i6 (.D(n57[6]), .CK(clk), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_522__i6.GSR = "DISABLED";
    FD1S3AX count_522__i5 (.D(n57[5]), .CK(clk), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_522__i5.GSR = "DISABLED";
    FD1S3AX count_522__i4 (.D(n57[4]), .CK(clk), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_522__i4.GSR = "DISABLED";
    FD1S3AX count_522__i3 (.D(n57[3]), .CK(clk), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_522__i3.GSR = "DISABLED";
    FD1S3AX count_522__i2 (.D(n57[2]), .CK(clk), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_522__i2.GSR = "DISABLED";
    FD1S3AX count_522__i1 (.D(n57[1]), .CK(clk), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_522__i1.GSR = "DISABLED";
    CCU2D count_522_add_4_11 (.A0(y0_pw[8]), .B0(a0_rise), .C0(count[8]), 
          .D0(GND_net), .A1(y0_pw[9]), .B1(a0_rise), .C1(count[9]), 
          .D1(GND_net), .CIN(n2895), .COUT(n2896), .S0(n57[8]), .S1(n57[9]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_522_add_4_11.INIT0 = 16'h4b8b;
    defparam count_522_add_4_11.INIT1 = 16'h4b8b;
    defparam count_522_add_4_11.INJECT1_0 = "NO";
    defparam count_522_add_4_11.INJECT1_1 = "NO";
    CCU2D count_522_add_4_9 (.A0(y0_pw[6]), .B0(a0_rise), .C0(count[6]), 
          .D0(GND_net), .A1(y0_pw[7]), .B1(a0_rise), .C1(count[7]), 
          .D1(GND_net), .CIN(n2894), .COUT(n2895), .S0(n57[6]), .S1(n57[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_522_add_4_9.INIT0 = 16'h4b8b;
    defparam count_522_add_4_9.INIT1 = 16'h4b8b;
    defparam count_522_add_4_9.INJECT1_0 = "NO";
    defparam count_522_add_4_9.INJECT1_1 = "NO";
    CCU2D count_522_add_4_7 (.A0(y0_pw[4]), .B0(a0_rise), .C0(count[4]), 
          .D0(GND_net), .A1(y0_pw[5]), .B1(a0_rise), .C1(count[5]), 
          .D1(GND_net), .CIN(n2893), .COUT(n2894), .S0(n57[4]), .S1(n57[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_522_add_4_7.INIT0 = 16'h4b8b;
    defparam count_522_add_4_7.INIT1 = 16'h4b8b;
    defparam count_522_add_4_7.INJECT1_0 = "NO";
    defparam count_522_add_4_7.INJECT1_1 = "NO";
    CCU2D count_522_add_4_5 (.A0(y0_pw[2]), .B0(a0_rise), .C0(count[2]), 
          .D0(GND_net), .A1(y0_pw[3]), .B1(a0_rise), .C1(count[3]), 
          .D1(GND_net), .CIN(n2892), .COUT(n2893), .S0(n57[2]), .S1(n57[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_522_add_4_5.INIT0 = 16'h4b8b;
    defparam count_522_add_4_5.INIT1 = 16'h4b8b;
    defparam count_522_add_4_5.INJECT1_0 = "NO";
    defparam count_522_add_4_5.INJECT1_1 = "NO";
    CCU2D count_522_add_4_3 (.A0(count[0]), .B0(a0_rise), .C0(y0_pw[0]), 
          .D0(n55[0]), .A1(y0_pw[1]), .B1(a0_rise), .C1(count[1]), .D1(GND_net), 
          .CIN(n2891), .COUT(n2892), .S0(n57[0]), .S1(n57[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_522_add_4_3.INIT0 = 16'hd1e2;
    defparam count_522_add_4_3.INIT1 = 16'h4b8b;
    defparam count_522_add_4_3.INJECT1_0 = "NO";
    defparam count_522_add_4_3.INJECT1_1 = "NO";
    CCU2D count_522_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(a0_rise), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2891));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_522_add_4_1.INIT0 = 16'hF000;
    defparam count_522_add_4_1.INIT1 = 16'h0aaa;
    defparam count_522_add_4_1.INJECT1_0 = "NO";
    defparam count_522_add_4_1.INJECT1_1 = "NO";
    LUT4 i11_4_lut (.A(count[12]), .B(n22), .C(n16), .D(count[5]), .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(117[7:12])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i7_3_lut (.A(count[10]), .B(count[8]), .C(count[3]), .Z(n20)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(117[7:12])
    defparam i7_3_lut.init = 16'hfefe;
    LUT4 i9_4_lut (.A(count[1]), .B(count[11]), .C(count[0]), .D(count[2]), 
         .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(117[7:12])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(count[4]), .B(count[9]), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(117[7:12])
    defparam i3_2_lut.init = 16'heeee;
    
endmodule
//
// Verilog Description of module \PulseOut(BITS=13) 
//

module \PulseOut(BITS=13)  (y1_pw, a1_rise, GND_net, o_y1_pwm_c, clk) /* synthesis syn_module_defined=1 */ ;
    input [12:0]y1_pw;
    input a1_rise;
    input GND_net;
    output o_y1_pwm_c;
    input clk;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(158[7:10])
    wire [12:0]count;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(110[17:22])
    
    wire n22, n16, n2910;
    wire [12:0]n57;
    
    wire n2911, n3211, n2909, n2908;
    wire [12:0]n55;
    
    wire n2914, n2913, n2912, n24, n20;
    
    LUT4 i9_4_lut (.A(count[1]), .B(count[11]), .C(count[0]), .D(count[2]), 
         .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(117[7:12])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(count[4]), .B(count[9]), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(117[7:12])
    defparam i3_2_lut.init = 16'heeee;
    CCU2D count_523_add_4_7 (.A0(y1_pw[4]), .B0(a1_rise), .C0(count[4]), 
          .D0(GND_net), .A1(y1_pw[5]), .B1(a1_rise), .C1(count[5]), 
          .D1(GND_net), .CIN(n2910), .COUT(n2911), .S0(n57[4]), .S1(n57[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_523_add_4_7.INIT0 = 16'h4b8b;
    defparam count_523_add_4_7.INIT1 = 16'h4b8b;
    defparam count_523_add_4_7.INJECT1_0 = "NO";
    defparam count_523_add_4_7.INJECT1_1 = "NO";
    FD1S3AX signal_11 (.D(n3211), .CK(clk), .Q(o_y1_pwm_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=274, LSE_RLINE=279 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 120[5])
    defparam signal_11.GSR = "DISABLED";
    FD1S3AX count_523__i0 (.D(n57[0]), .CK(clk), .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_523__i0.GSR = "DISABLED";
    CCU2D count_523_add_4_5 (.A0(y1_pw[2]), .B0(a1_rise), .C0(count[2]), 
          .D0(GND_net), .A1(y1_pw[3]), .B1(a1_rise), .C1(count[3]), 
          .D1(GND_net), .CIN(n2909), .COUT(n2910), .S0(n57[2]), .S1(n57[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_523_add_4_5.INIT0 = 16'h4b8b;
    defparam count_523_add_4_5.INIT1 = 16'h4b8b;
    defparam count_523_add_4_5.INJECT1_0 = "NO";
    defparam count_523_add_4_5.INJECT1_1 = "NO";
    CCU2D count_523_add_4_3 (.A0(count[0]), .B0(a1_rise), .C0(y1_pw[0]), 
          .D0(n55[0]), .A1(y1_pw[1]), .B1(a1_rise), .C1(count[1]), .D1(GND_net), 
          .CIN(n2908), .COUT(n2909), .S0(n57[0]), .S1(n57[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_523_add_4_3.INIT0 = 16'hd1e2;
    defparam count_523_add_4_3.INIT1 = 16'h4b8b;
    defparam count_523_add_4_3.INJECT1_0 = "NO";
    defparam count_523_add_4_3.INJECT1_1 = "NO";
    CCU2D count_523_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(a1_rise), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2908));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_523_add_4_1.INIT0 = 16'hF000;
    defparam count_523_add_4_1.INIT1 = 16'h0aaa;
    defparam count_523_add_4_1.INJECT1_0 = "NO";
    defparam count_523_add_4_1.INJECT1_1 = "NO";
    FD1S3AX count_523__i1 (.D(n57[1]), .CK(clk), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_523__i1.GSR = "DISABLED";
    FD1S3AX count_523__i2 (.D(n57[2]), .CK(clk), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_523__i2.GSR = "DISABLED";
    FD1S3AX count_523__i3 (.D(n57[3]), .CK(clk), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_523__i3.GSR = "DISABLED";
    FD1S3AX count_523__i4 (.D(n57[4]), .CK(clk), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_523__i4.GSR = "DISABLED";
    FD1S3AX count_523__i5 (.D(n57[5]), .CK(clk), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_523__i5.GSR = "DISABLED";
    FD1S3AX count_523__i6 (.D(n57[6]), .CK(clk), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_523__i6.GSR = "DISABLED";
    FD1S3AX count_523__i7 (.D(n57[7]), .CK(clk), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_523__i7.GSR = "DISABLED";
    FD1S3AX count_523__i8 (.D(n57[8]), .CK(clk), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_523__i8.GSR = "DISABLED";
    FD1S3AX count_523__i9 (.D(n57[9]), .CK(clk), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_523__i9.GSR = "DISABLED";
    FD1S3AX count_523__i10 (.D(n57[10]), .CK(clk), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_523__i10.GSR = "DISABLED";
    FD1S3AX count_523__i11 (.D(n57[11]), .CK(clk), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_523__i11.GSR = "DISABLED";
    FD1S3AX count_523__i12 (.D(n57[12]), .CK(clk), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_523__i12.GSR = "DISABLED";
    CCU2D count_523_add_4_15 (.A0(y1_pw[12]), .B0(a1_rise), .C0(count[12]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2914), .S0(n57[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_523_add_4_15.INIT0 = 16'h4b8b;
    defparam count_523_add_4_15.INIT1 = 16'h0000;
    defparam count_523_add_4_15.INJECT1_0 = "NO";
    defparam count_523_add_4_15.INJECT1_1 = "NO";
    CCU2D count_523_add_4_13 (.A0(y1_pw[10]), .B0(a1_rise), .C0(count[10]), 
          .D0(GND_net), .A1(y1_pw[11]), .B1(a1_rise), .C1(count[11]), 
          .D1(GND_net), .CIN(n2913), .COUT(n2914), .S0(n57[10]), .S1(n57[11]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_523_add_4_13.INIT0 = 16'h4b8b;
    defparam count_523_add_4_13.INIT1 = 16'h4b8b;
    defparam count_523_add_4_13.INJECT1_0 = "NO";
    defparam count_523_add_4_13.INJECT1_1 = "NO";
    CCU2D count_523_add_4_11 (.A0(y1_pw[8]), .B0(a1_rise), .C0(count[8]), 
          .D0(GND_net), .A1(y1_pw[9]), .B1(a1_rise), .C1(count[9]), 
          .D1(GND_net), .CIN(n2912), .COUT(n2913), .S0(n57[8]), .S1(n57[9]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_523_add_4_11.INIT0 = 16'h4b8b;
    defparam count_523_add_4_11.INIT1 = 16'h4b8b;
    defparam count_523_add_4_11.INJECT1_0 = "NO";
    defparam count_523_add_4_11.INJECT1_1 = "NO";
    CCU2D count_523_add_4_9 (.A0(y1_pw[6]), .B0(a1_rise), .C0(count[6]), 
          .D0(GND_net), .A1(y1_pw[7]), .B1(a1_rise), .C1(count[7]), 
          .D1(GND_net), .CIN(n2911), .COUT(n2912), .S0(n57[6]), .S1(n57[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_523_add_4_9.INIT0 = 16'h4b8b;
    defparam count_523_add_4_9.INIT1 = 16'h4b8b;
    defparam count_523_add_4_9.INJECT1_0 = "NO";
    defparam count_523_add_4_9.INJECT1_1 = "NO";
    LUT4 i12_4_lut_rep_11 (.A(count[7]), .B(n24), .C(n20), .D(count[6]), 
         .Z(n3211)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(117[7:12])
    defparam i12_4_lut_rep_11.init = 16'hfffe;
    LUT4 count_523_inv_2_i1_1_lut_4_lut (.A(count[7]), .B(n24), .C(n20), 
         .D(count[6]), .Z(n55[0])) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(117[7:12])
    defparam count_523_inv_2_i1_1_lut_4_lut.init = 16'h0001;
    LUT4 i11_4_lut (.A(count[12]), .B(n22), .C(n16), .D(count[5]), .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(117[7:12])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i7_3_lut (.A(count[10]), .B(count[8]), .C(count[3]), .Z(n20)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(117[7:12])
    defparam i7_3_lut.init = 16'hfefe;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

