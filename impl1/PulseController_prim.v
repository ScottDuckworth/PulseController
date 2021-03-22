// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Sun Mar 21 22:17:41 2021
//
// Verilog Description of module PulseController
//

module PulseController (scl, sda, rst, i_a0_pwm, i_a1_pwm, i_a2_pwm, 
            i_a3_pwm, i_a4_pwm, o_select_indicator, o_y0_pwm, o_y1_pwm) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(131[8:23])
    inout scl /* synthesis black_box_pad_pin=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(132[13:16])
    inout sda /* synthesis black_box_pad_pin=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(133[13:16])
    input rst;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(134[13:16])
    input i_a0_pwm;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(135[13:21])
    input i_a1_pwm;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(136[13:21])
    input i_a2_pwm;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(137[13:21])
    input i_a3_pwm;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(138[13:21])
    input i_a4_pwm;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(139[13:21])
    output o_select_indicator;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(140[14:32])
    output o_y0_pwm;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(141[14:22])
    output o_y1_pwm;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(142[14:22])
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(145[7:10])
    wire i2c1_scli /* synthesis is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/efb.v(30[10:19])
    
    wire GND_net, VCC_net, rst_c, i_a0_pwm_c, i_a1_pwm_c, i_a2_pwm_c, 
        i_a3_pwm_c, i_a4_pwm_c, o_select_indicator_c, o_y0_pwm_c, o_y1_pwm_c, 
        wb_cyc_i, wb_we_i;
    wire [7:0]wb_adr_i;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(150[13:21])
    wire [7:0]wb_dat_i;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(151[13:21])
    wire [7:0]wb_dat_o;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(152[13:21])
    
    wire wb_ack_o;
    wire [2:0]count;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(178[12:17])
    wire [12:0]i2c_pw0;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(180[21:28])
    wire [12:0]i2c_pw1;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(180[30:37])
    
    wire a0_rise, a1_rise;
    wire [12:0]a0_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(185[22:27])
    wire [12:0]a1_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(185[29:34])
    wire [12:0]a2_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(185[36:41])
    wire [12:0]a3_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(185[43:48])
    wire [12:0]a4_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(185[50:55])
    wire [12:0]b0_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(187[22:27])
    wire [12:0]b1_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(187[29:34])
    wire [12:0]y0_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(189[22:27])
    wire [12:0]y1_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(189[29:34])
    wire [12:0]y0_pw_12__N_78;
    wire [12:0]y1_pw_12__N_91;
    
    wire n1442, n1421, n1433, n1091, n1090, n1416, n1415, n1414, 
        n1626, n1633, n1413, n1412, n1407, n1406, n1405, n2219, 
        n3028, n253, n1625, n1432, n2865, n1582, n3027, n1799, 
        n1632, n1431, n1688, wb_we_i_N_193, n1428, n1427, n3093, 
        n2029, n2026, n2960;
    wire [12:0]i2c_pw1_12__N_39;
    
    wire n2032, n1446, n1445, i2c1_sdaoen, n1636, i2c1_sdao, i2c1_scloen, 
        i2c1_sclo, i2c1_sdai, n1631, n1635, n2490, n2915, n4, 
        n3, n1802, n1818, n2947, n2943, clk_enable_58, n2216, 
        n1630, n1814, n2863, n6, n14, clk_enable_51, clk_enable_70, 
        clk_enable_85, clk_enable_73, n1628, n1629, n2950, n6_adj_284, 
        n2858, clk_enable_15, clk_enable_46, n2852, n4_adj_285, n1627, 
        n6_adj_286, n2937, n1810, n1634, n2929, n1806, n1690, 
        clk_enable_8, n1444, n1426, n764, n765, n766, n767, n768, 
        n769, n770, n771, n772, n773, n774, n775, n2020, n1556, 
        n1425, clk_enable_95, clk_enable_10, n1813, n3104, n1424, 
        n1423, n1422, n2224, n2223, n5, n2022, n2028, n3092, 
        clk_enable_94, clk_enable_22, n2220, n6_adj_287, n3103, n4_adj_288, 
        n3102, n3101, n1572, n3100, n3099, n5_adj_289, n4_adj_290, 
        n12, n3098, n3097, n3109, n3095, n3094, n3091, n3090, 
        n3108, n2957;
    
    VHI i2 (.Z(VCC_net));
    \PulseOut(BITS=13)  y1_pulseout (.clk(clk), .clk_enable_70(clk_enable_70), 
            .a1_rise(a1_rise), .GND_net(GND_net), .y1_pw({y1_pw}), .o_y1_pwm_c(o_y1_pwm_c), 
            .clk_enable_10(clk_enable_10), .n1690(n1690), .n1572(n1572)) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[30] 264[3])
    LUT4 i1372_2_lut_3_lut (.A(count[2]), .B(n765), .C(i2c_pw1[5]), .Z(n1433)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i1372_2_lut_3_lut.init = 16'h2020;
    LUT4 i1373_2_lut_3_lut (.A(count[2]), .B(n765), .C(i2c_pw1[6]), .Z(n1432)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i1373_2_lut_3_lut.init = 16'h2020;
    LUT4 i2_2_lut (.A(a4_pw[11]), .B(a4_pw[9]), .Z(n6_adj_287)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    FD1P3AX i2c_pw0_i0_i0 (.D(n2216), .SP(clk_enable_58), .CK(clk), .Q(i2c_pw0[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw0_i0_i0.GSR = "ENABLED";
    LUT4 i1304_2_lut_3_lut_4_lut (.A(wb_ack_o), .B(wb_cyc_i), .C(n3102), 
         .D(n770), .Z(n1090)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(431[5] 436[8])
    defparam i1304_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 i1374_2_lut_3_lut (.A(count[2]), .B(n765), .C(i2c_pw1[7]), .Z(n1431)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i1374_2_lut_3_lut.init = 16'h2020;
    OSCH internal_oscillator (.STDBY(GND_net), .OSC(clk)) /* synthesis syn_instantiated=1 */ ;
    defparam internal_oscillator.NOM_FREQ = "3.02";
    LUT4 a0_pw_12__I_0_i5_3_lut (.A(a0_pw[4]), .B(b0_pw[4]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a0_pw_12__I_0_i5_3_lut.init = 16'hcaca;
    LUT4 a0_pw_12__I_0_i4_3_lut (.A(a0_pw[3]), .B(b0_pw[3]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a0_pw_12__I_0_i4_3_lut.init = 16'hcaca;
    BB BB1_sda (.I(i2c1_sdao), .T(i2c1_sdaoen), .B(sda), .O(i2c1_sdai)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/scott/documents/pulsecontroller/efb.v(36[8:77])
    LUT4 i19_3_lut_4_lut (.A(wb_ack_o), .B(wb_cyc_i), .C(n6_adj_286), 
         .D(n767), .Z(n2915)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(431[5] 436[8])
    defparam i19_3_lut_4_lut.init = 16'hf780;
    LUT4 n1425_bdd_4_lut (.A(n1425), .B(n1413), .C(n2020), .D(n765), 
         .Z(n3091)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n1425_bdd_4_lut.init = 16'hffca;
    LUT4 i19_3_lut_4_lut_adj_5 (.A(wb_ack_o), .B(wb_cyc_i), .C(n6), .D(n769), 
         .Z(n2943)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(431[5] 436[8])
    defparam i19_3_lut_4_lut_adj_5.init = 16'hf780;
    FD1S3AX wb_we_i_112 (.D(n2219), .CK(clk), .Q(wb_we_i));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam wb_we_i_112.GSR = "ENABLED";
    LUT4 mux_417_i2_3_lut (.A(i2c_pw0[9]), .B(i2c_pw0[1]), .C(count[1]), 
         .Z(n1406)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_417_i2_3_lut.init = 16'hcaca;
    IB i_a0_pwm_pad (.I(i_a0_pwm), .O(i_a0_pwm_c));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(135[13:21])
    FD1P3AX b0_pw_i0_i0 (.D(i2c_pw0[0]), .SP(clk_enable_46), .CK(clk), 
            .Q(b0_pw[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b0_pw_i0_i0.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i0 (.D(wb_dat_o[0]), .SP(clk_enable_46), .CK(clk), 
            .Q(b1_pw[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b1_pw_i0_i0.GSR = "ENABLED";
    LUT4 a0_pw_12__I_0_i3_3_lut (.A(a0_pw[2]), .B(b0_pw[2]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a0_pw_12__I_0_i3_3_lut.init = 16'hcaca;
    FD1P3AX i2c_pw1_i0 (.D(a1_pw[0]), .SP(clk_enable_22), .CK(clk), .Q(i2c_pw1[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw1_i0.GSR = "ENABLED";
    FD1S3AX y0_pw_i0 (.D(y0_pw_12__N_78[0]), .CK(clk), .Q(y0_pw[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y0_pw_i0.GSR = "ENABLED";
    FD1S3AX y0_pw_i12 (.D(y0_pw_12__N_78[12]), .CK(clk), .Q(y0_pw[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y0_pw_i12.GSR = "ENABLED";
    FD1S3AX y0_pw_i11 (.D(y0_pw_12__N_78[11]), .CK(clk), .Q(y0_pw[11]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y0_pw_i11.GSR = "ENABLED";
    BB BB1_scl (.I(i2c1_sclo), .T(i2c1_scloen), .B(scl), .O(i2c1_scli)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/scott/documents/pulsecontroller/efb.v(38[8:77])
    \PulseIn(BITS=13)  a4_pulsein (.clk(clk), .\a4_pw[1] (a4_pw[1]), .i_a4_pwm_c(i_a4_pwm_c), 
            .GND_net(GND_net), .\a4_pw[2] (a4_pw[2]), .\a4_pw[3] (a4_pw[3]), 
            .\a4_pw[4] (a4_pw[4]), .\a4_pw[5] (a4_pw[5]), .\a4_pw[6] (a4_pw[6]), 
            .\a4_pw[7] (a4_pw[7]), .\a4_pw[8] (a4_pw[8]), .\a4_pw[9] (a4_pw[9]), 
            .\a4_pw[10] (a4_pw[10]), .\a4_pw[11] (a4_pw[11]), .\a4_pw[12] (a4_pw[12])) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(246[29] 250[3])
    LUT4 a0_pw_12__I_0_i6_3_lut (.A(a0_pw[5]), .B(b0_pw[5]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a0_pw_12__I_0_i6_3_lut.init = 16'hcaca;
    LUT4 mux_417_i1_3_lut (.A(i2c_pw0[8]), .B(i2c_pw0[0]), .C(count[1]), 
         .Z(n1407)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_417_i1_3_lut.init = 16'hcaca;
    LUT4 i1789_2_lut_rep_18 (.A(wb_ack_o), .B(wb_cyc_i), .Z(n3099)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(431[5] 436[8])
    defparam i1789_2_lut_rep_18.init = 16'h7777;
    LUT4 i1_4_lut (.A(a3_pw[12]), .B(n3092), .C(n5), .D(n6_adj_284), 
         .Z(n2957)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_4_lut.init = 16'h8880;
    LUT4 i1_4_lut_adj_6 (.A(a4_pw[7]), .B(a4_pw[5]), .C(a4_pw[6]), .D(n4_adj_290), 
         .Z(n4_adj_288)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_6.init = 16'ha8a0;
    FD1S3AX y0_pw_i10 (.D(y0_pw_12__N_78[10]), .CK(clk), .Q(y0_pw[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y0_pw_i10.GSR = "ENABLED";
    LUT4 mux_418_i2_3_lut (.A(i2c_pw1[9]), .B(i2c_pw1[1]), .C(count[2]), 
         .Z(n1415)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_418_i2_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_7 (.A(a4_pw[4]), .B(a4_pw[3]), .C(a4_pw[2]), .D(a4_pw[1]), 
         .Z(n4_adj_290)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_7.init = 16'haaa8;
    LUT4 mux_418_i1_3_lut (.A(i2c_pw1[8]), .B(i2c_pw1[0]), .C(count[2]), 
         .Z(n1416)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_418_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut (.A(n767), .B(n774), .Z(n2852)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    FD1P3IX count__i0 (.D(n2490), .SP(clk_enable_73), .CD(n3098), .CK(clk), 
            .Q(count[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam count__i0.GSR = "ENABLED";
    FD1S3AX y0_pw_i9 (.D(y0_pw_12__N_78[9]), .CK(clk), .Q(y0_pw[9]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y0_pw_i9.GSR = "ENABLED";
    PFUMX i1835 (.BLUT(n3108), .ALUT(n3109), .C0(n769), .Z(clk_enable_58));
    PFUMX i881 (.BLUT(n1424), .ALUT(n1412), .C0(n2020), .Z(n2032));
    FD1S3JX state_FSM_i1 (.D(n1799), .CK(clk), .PD(n3098), .Q(n775));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam state_FSM_i1.GSR = "ENABLED";
    FD1S3AX y0_pw_i8 (.D(y0_pw_12__N_78[8]), .CK(clk), .Q(y0_pw[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y0_pw_i8.GSR = "ENABLED";
    IB i_a1_pwm_pad (.I(i_a1_pwm), .O(i_a1_pwm_c));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(136[13:21])
    LUT4 i664_2_lut_3_lut_4_lut (.A(wb_ack_o), .B(wb_cyc_i), .C(n768), 
         .D(wb_dat_o[2]), .Z(n1813)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(431[5] 436[8])
    defparam i664_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 n3027_bdd_3_lut_4_lut (.A(wb_ack_o), .B(wb_cyc_i), .C(n771), 
         .D(n3027), .Z(n3028)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(431[5] 436[8])
    defparam n3027_bdd_3_lut_4_lut.init = 16'hf870;
    LUT4 i1794_2_lut_3_lut_4_lut (.A(wb_ack_o), .B(wb_cyc_i), .C(count[0]), 
         .D(n770), .Z(n2490)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(431[5] 436[8])
    defparam i1794_2_lut_3_lut_4_lut.init = 16'h070f;
    FD1S3AX y0_pw_i7 (.D(y0_pw_12__N_78[7]), .CK(clk), .Q(y0_pw[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y0_pw_i7.GSR = "ENABLED";
    IB rst_pad (.I(rst), .O(rst_c));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(134[13:16])
    LUT4 i536_2_lut (.A(n1572), .B(a1_rise), .Z(clk_enable_70)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i536_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_3_lut (.A(n767), .B(n769), .C(n770), .Z(n2960)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    OB o_y1_pwm_pad (.I(o_y1_pwm_c), .O(o_y1_pwm));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(142[14:22])
    FD1S3AX y0_pw_i6 (.D(y0_pw_12__N_78[6]), .CK(clk), .Q(y0_pw[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y0_pw_i6.GSR = "ENABLED";
    OB o_y0_pwm_pad (.I(o_y0_pwm_c), .O(o_y0_pwm));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(141[14:22])
    OB o_select_indicator_pad (.I(o_select_indicator_c), .O(o_select_indicator));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(140[14:32])
    FD1S3AX y0_pw_i5 (.D(y0_pw_12__N_78[5]), .CK(clk), .Q(y0_pw[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y0_pw_i5.GSR = "ENABLED";
    LUT4 i1798_3_lut (.A(n765), .B(n3097), .C(n774), .Z(n2223)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i1798_3_lut.init = 16'h3232;
    FD1P3AX wb_cyc_i_111 (.D(n3099), .SP(clk_enable_95), .CK(clk), .Q(wb_cyc_i));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam wb_cyc_i_111.GSR = "ENABLED";
    LUT4 i1294_2_lut_4_lut_4_lut (.A(n767), .B(n769), .C(n775), .D(n774), 
         .Z(n1582)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;
    defparam i1294_2_lut_4_lut_4_lut.init = 16'haaab;
    FD1S3AX y0_pw_i4 (.D(y0_pw_12__N_78[4]), .CK(clk), .Q(y0_pw[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y0_pw_i4.GSR = "ENABLED";
    FD1S3AX y0_pw_i3 (.D(y0_pw_12__N_78[3]), .CK(clk), .Q(y0_pw[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y0_pw_i3.GSR = "ENABLED";
    LUT4 a0_pw_12__I_0_i2_3_lut (.A(a0_pw[1]), .B(b0_pw[1]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a0_pw_12__I_0_i2_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_rep_13_4_lut (.A(n767), .B(n769), .C(n775), .D(n774), 
         .Z(n3094)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_rep_13_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut (.A(n767), .B(n769), .C(count[0]), .D(n3103), 
         .Z(clk_enable_51)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h000e;
    FD1S3AX y0_pw_i2 (.D(y0_pw_12__N_78[2]), .CK(clk), .Q(y0_pw[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y0_pw_i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_19 (.A(count[1]), .B(count[0]), .Z(n3100)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i1_2_lut_rep_19.init = 16'heeee;
    LUT4 i1_2_lut_adj_8 (.A(count[2]), .B(n3090), .Z(clk_enable_15)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_8.init = 16'h4444;
    LUT4 mux_272_i13_3_lut (.A(a1_pw[12]), .B(wb_dat_o[4]), .C(n767), 
         .Z(i2c_pw1_12__N_39[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_272_i13_3_lut.init = 16'hcaca;
    FD1S3AX y0_pw_i1 (.D(y0_pw_12__N_78[1]), .CK(clk), .Q(y0_pw[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y0_pw_i1.GSR = "ENABLED";
    LUT4 mux_272_i12_3_lut (.A(a1_pw[11]), .B(wb_dat_o[3]), .C(n767), 
         .Z(i2c_pw1_12__N_39[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_272_i12_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_rep_16_4_lut (.A(count[1]), .B(count[0]), .C(count[2]), 
         .D(n769), .Z(n3097)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i2_3_lut_rep_16_4_lut.init = 16'he000;
    LUT4 i653_4_lut (.A(n774), .B(n3093), .C(n3099), .D(n775), .Z(n1802)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i653_4_lut.init = 16'heca0;
    LUT4 mux_272_i11_3_lut (.A(a1_pw[10]), .B(wb_dat_o[2]), .C(n767), 
         .Z(i2c_pw1_12__N_39[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_272_i11_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_else_4_lut (.A(count[1]), .B(count[2]), .C(n767), .D(count[0]), 
         .Z(n3108)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_adj_9 (.A(count[1]), .B(count[0]), .C(count[2]), 
         .Z(n253)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i1_2_lut_3_lut_adj_9.init = 16'hefef;
    LUT4 i18_4_lut (.A(n773), .B(n3), .C(n3099), .D(n774), .Z(n2947)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B (C)+!B (C+!(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i18_4_lut.init = 16'hafac;
    LUT4 mux_272_i10_3_lut (.A(a1_pw[9]), .B(wb_dat_o[1]), .C(n767), .Z(i2c_pw1_12__N_39[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_272_i10_3_lut.init = 16'hcaca;
    LUT4 mux_272_i9_3_lut (.A(a1_pw[8]), .B(wb_dat_o[0]), .C(n767), .Z(i2c_pw1_12__N_39[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_272_i9_3_lut.init = 16'hcaca;
    FD1P3AX i2c_pw1_i12 (.D(i2c_pw1_12__N_39[12]), .SP(clk_enable_15), .CK(clk), 
            .Q(i2c_pw1[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw1_i12.GSR = "ENABLED";
    FD1P3AX i2c_pw1_i11 (.D(i2c_pw1_12__N_39[11]), .SP(clk_enable_15), .CK(clk), 
            .Q(i2c_pw1[11]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw1_i11.GSR = "ENABLED";
    FD1P3AX i2c_pw1_i10 (.D(i2c_pw1_12__N_39[10]), .SP(clk_enable_15), .CK(clk), 
            .Q(i2c_pw1[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw1_i10.GSR = "ENABLED";
    FD1P3AX i2c_pw1_i9 (.D(i2c_pw1_12__N_39[9]), .SP(clk_enable_15), .CK(clk), 
            .Q(i2c_pw1[9]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw1_i9.GSR = "ENABLED";
    FD1P3AX i2c_pw1_i8 (.D(i2c_pw1_12__N_39[8]), .SP(clk_enable_15), .CK(clk), 
            .Q(i2c_pw1[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw1_i8.GSR = "ENABLED";
    LUT4 a0_pw_12__I_0_i10_3_lut (.A(a0_pw[9]), .B(b0_pw[9]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a0_pw_12__I_0_i10_3_lut.init = 16'hcaca;
    FD1P3AX i2c_pw1_i7 (.D(a1_pw[7]), .SP(clk_enable_22), .CK(clk), .Q(i2c_pw1[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw1_i7.GSR = "ENABLED";
    FD1P3AX i2c_pw1_i6 (.D(a1_pw[6]), .SP(clk_enable_22), .CK(clk), .Q(i2c_pw1[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw1_i6.GSR = "ENABLED";
    FD1P3AX i2c_pw1_i5 (.D(a1_pw[5]), .SP(clk_enable_22), .CK(clk), .Q(i2c_pw1[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw1_i5.GSR = "ENABLED";
    FD1P3AX i2c_pw1_i4 (.D(a1_pw[4]), .SP(clk_enable_22), .CK(clk), .Q(i2c_pw1[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw1_i4.GSR = "ENABLED";
    FD1P3AX i2c_pw1_i3 (.D(a1_pw[3]), .SP(clk_enable_22), .CK(clk), .Q(i2c_pw1[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw1_i3.GSR = "ENABLED";
    FD1P3AX i2c_pw1_i2 (.D(a1_pw[2]), .SP(clk_enable_22), .CK(clk), .Q(i2c_pw1[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw1_i2.GSR = "ENABLED";
    FD1P3AX i2c_pw1_i1 (.D(a1_pw[1]), .SP(clk_enable_22), .CK(clk), .Q(i2c_pw1[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw1_i1.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i12 (.D(i2c_pw1[12]), .SP(clk_enable_46), .CK(clk), 
            .Q(b1_pw[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b1_pw_i0_i12.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i11 (.D(i2c_pw1[11]), .SP(clk_enable_46), .CK(clk), 
            .Q(b1_pw[11]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b1_pw_i0_i11.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i10 (.D(i2c_pw1[10]), .SP(clk_enable_46), .CK(clk), 
            .Q(b1_pw[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b1_pw_i0_i10.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i9 (.D(i2c_pw1[9]), .SP(clk_enable_46), .CK(clk), 
            .Q(b1_pw[9]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b1_pw_i0_i9.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i8 (.D(i2c_pw1[8]), .SP(clk_enable_46), .CK(clk), 
            .Q(b1_pw[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b1_pw_i0_i8.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i7 (.D(wb_dat_o[7]), .SP(clk_enable_46), .CK(clk), 
            .Q(b1_pw[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b1_pw_i0_i7.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i6 (.D(wb_dat_o[6]), .SP(clk_enable_46), .CK(clk), 
            .Q(b1_pw[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b1_pw_i0_i6.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i5 (.D(wb_dat_o[5]), .SP(clk_enable_46), .CK(clk), 
            .Q(b1_pw[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b1_pw_i0_i5.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i4 (.D(wb_dat_o[4]), .SP(clk_enable_46), .CK(clk), 
            .Q(b1_pw[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b1_pw_i0_i4.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i3 (.D(wb_dat_o[3]), .SP(clk_enable_46), .CK(clk), 
            .Q(b1_pw[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b1_pw_i0_i3.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i2 (.D(wb_dat_o[2]), .SP(clk_enable_46), .CK(clk), 
            .Q(b1_pw[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b1_pw_i0_i2.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i1 (.D(wb_dat_o[1]), .SP(clk_enable_46), .CK(clk), 
            .Q(b1_pw[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b1_pw_i0_i1.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i12 (.D(i2c_pw0[12]), .SP(clk_enable_46), .CK(clk), 
            .Q(b0_pw[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b0_pw_i0_i12.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i11 (.D(i2c_pw0[11]), .SP(clk_enable_46), .CK(clk), 
            .Q(b0_pw[11]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b0_pw_i0_i11.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i10 (.D(i2c_pw0[10]), .SP(clk_enable_46), .CK(clk), 
            .Q(b0_pw[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b0_pw_i0_i10.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i9 (.D(i2c_pw0[9]), .SP(clk_enable_46), .CK(clk), 
            .Q(b0_pw[9]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b0_pw_i0_i9.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i8 (.D(i2c_pw0[8]), .SP(clk_enable_46), .CK(clk), 
            .Q(b0_pw[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b0_pw_i0_i8.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i7 (.D(i2c_pw0[7]), .SP(clk_enable_46), .CK(clk), 
            .Q(b0_pw[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b0_pw_i0_i7.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i6 (.D(i2c_pw0[6]), .SP(clk_enable_46), .CK(clk), 
            .Q(b0_pw[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b0_pw_i0_i6.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i5 (.D(i2c_pw0[5]), .SP(clk_enable_46), .CK(clk), 
            .Q(b0_pw[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b0_pw_i0_i5.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i4 (.D(i2c_pw0[4]), .SP(clk_enable_46), .CK(clk), 
            .Q(b0_pw[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b0_pw_i0_i4.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i3 (.D(i2c_pw0[3]), .SP(clk_enable_46), .CK(clk), 
            .Q(b0_pw[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b0_pw_i0_i3.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i2 (.D(i2c_pw0[2]), .SP(clk_enable_46), .CK(clk), 
            .Q(b0_pw[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b0_pw_i0_i2.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i1 (.D(i2c_pw0[1]), .SP(clk_enable_46), .CK(clk), 
            .Q(b0_pw[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam b0_pw_i0_i1.GSR = "ENABLED";
    FD1P3AX i2c_pw0_i0_i12 (.D(n1636), .SP(clk_enable_51), .CK(clk), .Q(i2c_pw0[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw0_i0_i12.GSR = "ENABLED";
    FD1P3AX i2c_pw0_i0_i11 (.D(n1635), .SP(clk_enable_51), .CK(clk), .Q(i2c_pw0[11]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw0_i0_i11.GSR = "ENABLED";
    FD1P3AX i2c_pw0_i0_i10 (.D(n1634), .SP(clk_enable_51), .CK(clk), .Q(i2c_pw0[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw0_i0_i10.GSR = "ENABLED";
    FD1P3AX i2c_pw0_i0_i9 (.D(n1633), .SP(clk_enable_51), .CK(clk), .Q(i2c_pw0[9]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw0_i0_i9.GSR = "ENABLED";
    FD1P3AX i2c_pw0_i0_i8 (.D(n1632), .SP(clk_enable_51), .CK(clk), .Q(i2c_pw0[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw0_i0_i8.GSR = "ENABLED";
    FD1P3AX i2c_pw0_i0_i7 (.D(n1631), .SP(clk_enable_58), .CK(clk), .Q(i2c_pw0[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw0_i0_i7.GSR = "ENABLED";
    FD1P3AX i2c_pw0_i0_i6 (.D(n1630), .SP(clk_enable_58), .CK(clk), .Q(i2c_pw0[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw0_i0_i6.GSR = "ENABLED";
    FD1P3AX i2c_pw0_i0_i5 (.D(n1629), .SP(clk_enable_58), .CK(clk), .Q(i2c_pw0[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw0_i0_i5.GSR = "ENABLED";
    FD1P3AX i2c_pw0_i0_i4 (.D(n1628), .SP(clk_enable_58), .CK(clk), .Q(i2c_pw0[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw0_i0_i4.GSR = "ENABLED";
    FD1P3AX i2c_pw0_i0_i3 (.D(n1627), .SP(clk_enable_58), .CK(clk), .Q(i2c_pw0[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw0_i0_i3.GSR = "ENABLED";
    FD1P3AX i2c_pw0_i0_i2 (.D(n1626), .SP(clk_enable_58), .CK(clk), .Q(i2c_pw0[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw0_i0_i2.GSR = "ENABLED";
    FD1P3AX i2c_pw0_i0_i1 (.D(n1625), .SP(clk_enable_58), .CK(clk), .Q(i2c_pw0[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i2c_pw0_i0_i1.GSR = "ENABLED";
    LUT4 mux_417_i3_3_lut (.A(i2c_pw0[10]), .B(i2c_pw0[2]), .C(count[1]), 
         .Z(n1405)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_417_i3_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_20 (.A(n769), .B(count[2]), .Z(n3101)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i1_2_lut_rep_20.init = 16'h2222;
    LUT4 i1_3_lut_4_lut_adj_10 (.A(count[2]), .B(n3104), .C(n767), .D(n765), 
         .Z(n4_adj_285)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(389[6:7])
    defparam i1_3_lut_4_lut_adj_10.init = 16'hff40;
    LUT4 i1_2_lut_rep_11_2_lut_3_lut_4_lut (.A(n769), .B(count[2]), .C(count[0]), 
         .D(count[1]), .Z(n3092)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i1_2_lut_rep_11_2_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 i1_2_lut_adj_11 (.A(n764), .B(wb_dat_o[6]), .Z(n3)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i1_2_lut_adj_11.init = 16'h2222;
    LUT4 mux_418_i3_3_lut (.A(i2c_pw1[10]), .B(i2c_pw1[2]), .C(count[2]), 
         .Z(n1414)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_418_i3_3_lut.init = 16'hcaca;
    LUT4 i1303_3_lut_4_lut (.A(n770), .B(n3099), .C(n3104), .D(count[2]), 
         .Z(n1091)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A (C (D)+!C !(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i1303_3_lut_4_lut.init = 16'h0dd0;
    LUT4 i661_4_lut_4_lut (.A(n3099), .B(wb_dat_o[2]), .C(n771), .D(n770), 
         .Z(n1810)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam i661_4_lut_4_lut.init = 16'hea40;
    LUT4 mux_418_i4_3_lut (.A(i2c_pw1[11]), .B(i2c_pw1[3]), .C(count[2]), 
         .Z(n1413)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_418_i4_3_lut.init = 16'hcaca;
    LUT4 a0_pw_12__I_0_i1_3_lut (.A(a0_pw[0]), .B(b0_pw[0]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a0_pw_12__I_0_i1_3_lut.init = 16'hcaca;
    PFUMX i877 (.BLUT(n1426), .ALUT(n1414), .C0(n2020), .Z(n2028));
    LUT4 i622_4_lut (.A(n5_adj_289), .B(a2_pw[12]), .C(a2_pw[11]), .D(a2_pw[9]), 
         .Z(o_select_indicator_c)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i622_4_lut.init = 16'hccc8;
    FD1S3AX y1_pw_i12 (.D(y1_pw_12__N_91[12]), .CK(clk), .Q(y1_pw[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y1_pw_i12.GSR = "ENABLED";
    FD1S3AX y1_pw_i11 (.D(y1_pw_12__N_91[11]), .CK(clk), .Q(y1_pw[11]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y1_pw_i11.GSR = "ENABLED";
    FD1S3AX y1_pw_i10 (.D(y1_pw_12__N_91[10]), .CK(clk), .Q(y1_pw[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y1_pw_i10.GSR = "ENABLED";
    FD1S3AX y1_pw_i9 (.D(y1_pw_12__N_91[9]), .CK(clk), .Q(y1_pw[9]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y1_pw_i9.GSR = "ENABLED";
    FD1S3AX y1_pw_i8 (.D(y1_pw_12__N_91[8]), .CK(clk), .Q(y1_pw[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y1_pw_i8.GSR = "ENABLED";
    FD1S3AX y1_pw_i7 (.D(y1_pw_12__N_91[7]), .CK(clk), .Q(y1_pw[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y1_pw_i7.GSR = "ENABLED";
    FD1S3AX y1_pw_i6 (.D(y1_pw_12__N_91[6]), .CK(clk), .Q(y1_pw[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y1_pw_i6.GSR = "ENABLED";
    FD1S3AX y1_pw_i5 (.D(y1_pw_12__N_91[5]), .CK(clk), .Q(y1_pw[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y1_pw_i5.GSR = "ENABLED";
    FD1S3AX y1_pw_i4 (.D(y1_pw_12__N_91[4]), .CK(clk), .Q(y1_pw[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y1_pw_i4.GSR = "ENABLED";
    FD1S3AX y1_pw_i3 (.D(y1_pw_12__N_91[3]), .CK(clk), .Q(y1_pw[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y1_pw_i3.GSR = "ENABLED";
    FD1S3AX y1_pw_i2 (.D(y1_pw_12__N_91[2]), .CK(clk), .Q(y1_pw[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y1_pw_i2.GSR = "ENABLED";
    FD1S3AX y1_pw_i1 (.D(y1_pw_12__N_91[1]), .CK(clk), .Q(y1_pw[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y1_pw_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_12 (.A(a2_pw[8]), .B(a2_pw[10]), .C(a2_pw[7]), .D(n14), 
         .Z(n5_adj_289)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_12.init = 16'heccc;
    LUT4 i623_4_lut (.A(a2_pw[5]), .B(a2_pw[6]), .C(a2_pw[4]), .D(n2858), 
         .Z(n14)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i623_4_lut.init = 16'heccc;
    LUT4 i2_3_lut (.A(a2_pw[3]), .B(a2_pw[2]), .C(a2_pw[1]), .Z(n2858)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 a0_pw_12__I_0_i13_3_lut (.A(a0_pw[12]), .B(b0_pw[12]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a0_pw_12__I_0_i13_3_lut.init = 16'hcaca;
    LUT4 i1346_4_lut (.A(i2c_pw0[11]), .B(n3095), .C(i2c_pw0[3]), .D(count[1]), 
         .Z(n1425)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i1346_4_lut.init = 16'hc088;
    IB i_a2_pwm_pad (.I(i_a2_pwm), .O(i_a2_pwm_c));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(137[13:21])
    IB i_a3_pwm_pad (.I(i_a3_pwm), .O(i_a3_pwm_c));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(138[13:21])
    IB i_a4_pwm_pad (.I(i_a4_pwm), .O(i_a4_pwm_c));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(139[13:21])
    LUT4 i1768_3_lut_4_lut (.A(o_select_indicator_c), .B(n3092), .C(n3095), 
         .D(n1407), .Z(n1428)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i1768_3_lut_4_lut.init = 16'hf808;
    LUT4 i1068_3_lut (.A(n775), .B(wb_we_i_N_193), .C(wb_we_i), .Z(n2219)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i1068_3_lut.init = 16'hecec;
    PFUMX i875 (.BLUT(n1427), .ALUT(n1415), .C0(n2020), .Z(n2026));
    LUT4 i1_4_lut_adj_13 (.A(wb_dat_o[4]), .B(wb_dat_o[2]), .C(n770), 
         .D(n768), .Z(n6)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i1_4_lut_adj_13.init = 16'heca0;
    LUT4 i460_2_lut_rep_21 (.A(count[0]), .B(count[1]), .Z(n3102)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(178[12:17])
    defparam i460_2_lut_rep_21.init = 16'h6666;
    LUT4 i1379_2_lut (.A(n2028), .B(n765), .Z(n2029)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i1379_2_lut.init = 16'heeee;
    LUT4 mux_418_i5_3_lut (.A(i2c_pw1[12]), .B(i2c_pw1[4]), .C(count[2]), 
         .Z(n1412)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_418_i5_3_lut.init = 16'hcaca;
    LUT4 i665_4_lut (.A(n1813), .B(n769), .C(n253), .D(n3099), .Z(n1814)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i665_4_lut.init = 16'haaea;
    FD1P3AX wb_adr_i__i2 (.D(n2852), .SP(clk_enable_95), .CK(clk), .Q(wb_adr_i[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam wb_adr_i__i2.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_14_3_lut_4_lut (.A(count[0]), .B(count[1]), .C(count[2]), 
         .D(n769), .Z(n3095)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+!(D))+!B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(178[12:17])
    defparam i1_2_lut_rep_14_3_lut_4_lut.init = 16'h0600;
    PFUMX i871 (.BLUT(n1428), .ALUT(n1416), .C0(n2020), .Z(n2022));
    LUT4 i1_4_lut_adj_14 (.A(wb_dat_o[4]), .B(wb_dat_o[2]), .C(n770), 
         .D(n766), .Z(n6_adj_286)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i1_4_lut_adj_14.init = 16'hdc50;
    LUT4 i669_4_lut_4_lut (.A(n3099), .B(wb_dat_o[2]), .C(n4), .D(n766), 
         .Z(n1818)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i669_4_lut_4_lut.init = 16'hfb50;
    LUT4 i1376_2_lut_3_lut_4_lut_4_lut (.A(count[0]), .B(count[1]), .C(i2c_pw0[5]), 
         .D(n3101), .Z(n1423)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(178[12:17])
    defparam i1376_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    FD1P3IX count__i1 (.D(n1090), .SP(clk_enable_73), .CD(n3098), .CK(clk), 
            .Q(count[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam count__i1.GSR = "ENABLED";
    LUT4 i1378_2_lut_3_lut_4_lut_4_lut (.A(count[0]), .B(count[1]), .C(i2c_pw0[7]), 
         .D(n3101), .Z(n1421)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(178[12:17])
    defparam i1378_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 a1_pw_12__I_0_i13_3_lut (.A(a1_pw[12]), .B(b1_pw[12]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a1_pw_12__I_0_i13_3_lut.init = 16'hcaca;
    LUT4 a0_pw_12__I_0_i12_3_lut (.A(a0_pw[11]), .B(b0_pw[11]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a0_pw_12__I_0_i12_3_lut.init = 16'hcaca;
    LUT4 a1_pw_12__I_0_i12_3_lut (.A(a1_pw[11]), .B(b1_pw[11]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a1_pw_12__I_0_i12_3_lut.init = 16'hcaca;
    LUT4 a1_pw_12__I_0_i11_3_lut (.A(a1_pw[10]), .B(b1_pw[10]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a1_pw_12__I_0_i11_3_lut.init = 16'hcaca;
    FD1P3IX count__i2 (.D(n1091), .SP(clk_enable_73), .CD(n3098), .CK(clk), 
            .Q(count[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam count__i2.GSR = "ENABLED";
    LUT4 i1377_2_lut_3_lut_4_lut_4_lut (.A(count[0]), .B(count[1]), .C(i2c_pw0[6]), 
         .D(n3101), .Z(n1422)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(178[12:17])
    defparam i1377_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    FD1P3JX wb_dat_i_i0_i7 (.D(n1444), .SP(clk_enable_94), .PD(n2224), 
            .CK(clk), .Q(wb_dat_i[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam wb_dat_i_i0_i7.GSR = "ENABLED";
    FD1P3IX wb_dat_i_i0_i6 (.D(n1445), .SP(clk_enable_94), .CD(n2224), 
            .CK(clk), .Q(wb_dat_i[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam wb_dat_i_i0_i6.GSR = "ENABLED";
    LUT4 i1347_4_lut (.A(i2c_pw0[12]), .B(n3095), .C(i2c_pw0[4]), .D(count[1]), 
         .Z(n1424)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i1347_4_lut.init = 16'hc088;
    FD1P3IX wb_dat_i_i0_i5 (.D(n1446), .SP(clk_enable_94), .CD(n2224), 
            .CK(clk), .Q(wb_dat_i[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam wb_dat_i_i0_i5.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut (.A(n3099), .B(wb_dat_o[6]), .C(n4_adj_285), .D(n764), 
         .Z(n2937)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(317[6] 319[9])
    defparam i1_4_lut_4_lut.init = 16'hfe50;
    FD1P3IX wb_dat_i_i0_i4 (.D(n2032), .SP(clk_enable_94), .CD(n2223), 
            .CK(clk), .Q(wb_dat_i[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam wb_dat_i_i0_i4.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i1295_2_lut_rep_22 (.A(count[2]), .B(count[1]), .Z(n3103)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1295_2_lut_rep_22.init = 16'heeee;
    FD1S3IX state_FSM_i2 (.D(n1802), .CK(clk), .CD(n3098), .Q(n774));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam state_FSM_i2.GSR = "ENABLED";
    FD1S3IX state_FSM_i3 (.D(n2947), .CK(clk), .CD(n3098), .Q(n773));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3IX state_FSM_i4 (.D(n1806), .CK(clk), .CD(n3098), .Q(n772));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3IX state_FSM_i5 (.D(n3028), .CK(clk), .CD(n3098), .Q(n771));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3IX state_FSM_i6 (.D(n1810), .CK(clk), .CD(n3098), .Q(n770));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam state_FSM_i6.GSR = "ENABLED";
    FD1S3IX state_FSM_i7 (.D(n2943), .CK(clk), .CD(n3098), .Q(n769));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam state_FSM_i7.GSR = "ENABLED";
    FD1S3IX state_FSM_i8 (.D(n1814), .CK(clk), .CD(n3098), .Q(n768));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam state_FSM_i8.GSR = "ENABLED";
    FD1S3IX state_FSM_i9 (.D(n2915), .CK(clk), .CD(n3098), .Q(n767));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam state_FSM_i9.GSR = "ENABLED";
    FD1S3IX state_FSM_i10 (.D(n1818), .CK(clk), .CD(n3098), .Q(n766));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam state_FSM_i10.GSR = "ENABLED";
    FD1S3IX state_FSM_i11 (.D(n2929), .CK(clk), .CD(n3098), .Q(n765));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam state_FSM_i11.GSR = "ENABLED";
    FD1S3IX state_FSM_i12 (.D(n2937), .CK(clk), .CD(n3098), .Q(n764));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam state_FSM_i12.GSR = "ENABLED";
    LUT4 a1_pw_12__I_0_i10_3_lut (.A(a1_pw[9]), .B(b1_pw[9]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a1_pw_12__I_0_i10_3_lut.init = 16'hcaca;
    LUT4 i570_2_lut_rep_23 (.A(count[1]), .B(count[0]), .Z(n3104)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(398[15:27])
    defparam i570_2_lut_rep_23.init = 16'h8888;
    LUT4 i11_4_lut (.A(n765), .B(n253), .C(n3099), .D(n769), .Z(n2929)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+(C+!(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i11_4_lut.init = 16'ha3a0;
    LUT4 i1381_2_lut_rep_12_3_lut (.A(count[1]), .B(count[0]), .C(count[2]), 
         .Z(n3093)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(398[15:27])
    defparam i1381_2_lut_rep_12_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut (.A(count[1]), .B(count[0]), .C(n767), .D(count[2]), 
         .Z(n4)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(398[15:27])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i650_2_lut_3_lut_4_lut (.A(count[1]), .B(count[0]), .C(n775), 
         .D(count[2]), .Z(n1799)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(398[15:27])
    defparam i650_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 i2_3_lut_4_lut (.A(count[1]), .B(count[0]), .C(n767), .D(count[2]), 
         .Z(clk_enable_46)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(398[15:27])
    defparam i2_3_lut_4_lut.init = 16'h0080;
    LUT4 i992_1_lut_rep_25 (.A(n775), .Z(clk_enable_95)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i992_1_lut_rep_25.init = 16'h5555;
    LUT4 i1069_2_lut_2_lut (.A(n775), .B(n774), .Z(n2220)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i1069_2_lut_2_lut.init = 16'h4444;
    LUT4 i870_2_lut (.A(n2020), .B(n765), .Z(n1442)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i870_2_lut.init = 16'heeee;
    LUT4 i657_4_lut_4_lut (.A(n3099), .B(wb_dat_o[6]), .C(n773), .D(n772), 
         .Z(n1806)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(317[6] 319[9])
    defparam i657_4_lut_4_lut.init = 16'hfe50;
    LUT4 mux_500_i11_3_lut_4_lut (.A(n767), .B(n3103), .C(wb_dat_o[2]), 
         .D(a0_pw[10]), .Z(n1634)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_500_i11_3_lut_4_lut.init = 16'hfd20;
    LUT4 a1_pw_12__I_0_i9_3_lut (.A(a1_pw[8]), .B(b1_pw[8]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a1_pw_12__I_0_i9_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut (.A(n774), .B(n769), .C(n773), .D(n765), .Z(wb_we_i_N_193)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 mux_500_i13_3_lut_4_lut (.A(n767), .B(n3103), .C(wb_dat_o[4]), 
         .D(a0_pw[12]), .Z(n1636)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_500_i13_3_lut_4_lut.init = 16'hfd20;
    \PulseOut(BITS=13)_U0  y0_pulseout (.clk(clk), .a0_rise(a0_rise), .y0_pw({y0_pw}), 
            .clk_enable_85(clk_enable_85), .o_y0_pwm_c(o_y0_pwm_c), .clk_enable_8(clk_enable_8), 
            .n1688(n1688), .GND_net(GND_net), .n1556(n1556)) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(252[30] 257[3])
    LUT4 mux_500_i12_3_lut_4_lut (.A(n767), .B(n3103), .C(wb_dat_o[3]), 
         .D(a0_pw[11]), .Z(n1635)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_500_i12_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_500_i9_3_lut_4_lut (.A(n767), .B(n3103), .C(wb_dat_o[0]), 
         .D(a0_pw[8]), .Z(n1632)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_500_i9_3_lut_4_lut.init = 16'hfd20;
    LUT4 i6_4_lut (.A(n768), .B(n12), .C(n766), .D(n3094), .Z(n2863)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i6_4_lut.init = 16'hfffe;
    PFUMX mux_429_i8 (.BLUT(n1421), .ALUT(n1431), .C0(n1442), .Z(n1444));
    LUT4 i5_4_lut (.A(n771), .B(n772), .C(n770), .D(n764), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 a1_pw_12__I_0_i5_3_lut (.A(a1_pw[4]), .B(b1_pw[4]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a1_pw_12__I_0_i5_3_lut.init = 16'hcaca;
    LUT4 mux_500_i4_3_lut_4_lut (.A(n767), .B(n3103), .C(wb_dat_o[3]), 
         .D(a0_pw[3]), .Z(n1627)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_500_i4_3_lut_4_lut.init = 16'hfd20;
    LUT4 i869_4_lut_4_lut (.A(n769), .B(count[1]), .C(count[0]), .D(count[2]), 
         .Z(n2020)) /* synthesis lut_function=(!((B ((D)+!C)+!B (C+!(D)))+!A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i869_4_lut_4_lut.init = 16'h0280;
    LUT4 a1_pw_12__I_0_i4_3_lut (.A(a1_pw[3]), .B(b1_pw[3]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a1_pw_12__I_0_i4_3_lut.init = 16'hcaca;
    \PulseIn(BITS=13)_U4  a0_pulsein (.a0_pw({a0_pw}), .clk(clk), .a0_rise(a0_rise), 
            .n1556(n1556), .n1688(n1688), .i_a0_pwm_c(i_a0_pwm_c), .GND_net(GND_net), 
            .clk_enable_8(clk_enable_8)) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(220[29] 225[3])
    \PulseIn(BITS=13)_U3  a1_pulsein (.GND_net(GND_net), .a1_pw({a1_pw}), 
            .clk(clk), .i_a1_pwm_c(i_a1_pwm_c), .a1_rise(a1_rise), .clk_enable_10(clk_enable_10), 
            .n1572(n1572), .n1690(n1690)) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(227[29] 232[3])
    PFUMX mux_429_i7 (.BLUT(n1422), .ALUT(n1432), .C0(n1442), .Z(n1445));
    LUT4 n771_bdd_4_lut (.A(n771), .B(wb_dat_o[6]), .C(n772), .D(wb_dat_o[2]), 
         .Z(n3027)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B+!(C)))) */ ;
    defparam n771_bdd_4_lut.init = 16'h30ba;
    LUT4 mux_500_i2_3_lut_4_lut (.A(n767), .B(n3103), .C(wb_dat_o[1]), 
         .D(a0_pw[1]), .Z(n1625)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_500_i2_3_lut_4_lut.init = 16'hfd20;
    LUT4 n4_bdd_4_lut_4_lut (.A(count[1]), .B(count[0]), .C(n769), .D(n767), 
         .Z(n3090)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+((D)+!C)))) */ ;
    defparam n4_bdd_4_lut_4_lut.init = 16'h2210;
    LUT4 a0_pw_12__I_0_i8_3_lut (.A(a0_pw[7]), .B(b0_pw[7]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a0_pw_12__I_0_i8_3_lut.init = 16'hcaca;
    LUT4 a1_pw_12__I_0_i8_3_lut (.A(a1_pw[7]), .B(b1_pw[7]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a1_pw_12__I_0_i8_3_lut.init = 16'hcaca;
    LUT4 mux_500_i6_3_lut_4_lut (.A(n767), .B(n3103), .C(wb_dat_o[5]), 
         .D(a0_pw[5]), .Z(n1629)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_500_i6_3_lut_4_lut.init = 16'hfd20;
    LUT4 a1_pw_12__I_0_i1_3_lut (.A(a1_pw[0]), .B(b1_pw[0]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a1_pw_12__I_0_i1_3_lut.init = 16'hcaca;
    LUT4 i1065_3_lut_4_lut (.A(n767), .B(n3103), .C(wb_dat_o[0]), .D(a0_pw[0]), 
         .Z(n2216)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i1065_3_lut_4_lut.init = 16'hfd20;
    LUT4 a0_pw_12__I_0_i7_3_lut (.A(a0_pw[6]), .B(b0_pw[6]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a0_pw_12__I_0_i7_3_lut.init = 16'hcaca;
    FD1P3IX wb_dat_i_i0_i3 (.D(n3091), .SP(clk_enable_94), .CD(n2224), 
            .CK(clk), .Q(wb_dat_i[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam wb_dat_i_i0_i3.GSR = "ENABLED";
    FD1P3IX wb_dat_i_i0_i2 (.D(n2029), .SP(clk_enable_94), .CD(n2224), 
            .CK(clk), .Q(wb_dat_i[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam wb_dat_i_i0_i2.GSR = "ENABLED";
    LUT4 mux_500_i8_3_lut_4_lut (.A(n767), .B(n3103), .C(wb_dat_o[7]), 
         .D(a0_pw[7]), .Z(n1631)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_500_i8_3_lut_4_lut.init = 16'hfd20;
    \PulseIn(BITS=13)_U2  a2_pulsein (.\a2_pw[1] (a2_pw[1]), .clk(clk), 
            .i_a2_pwm_c(i_a2_pwm_c), .GND_net(GND_net), .\a2_pw[2] (a2_pw[2]), 
            .\a2_pw[3] (a2_pw[3]), .\a2_pw[4] (a2_pw[4]), .\a2_pw[5] (a2_pw[5]), 
            .\a2_pw[6] (a2_pw[6]), .\a2_pw[7] (a2_pw[7]), .\a2_pw[8] (a2_pw[8]), 
            .\a2_pw[9] (a2_pw[9]), .\a2_pw[10] (a2_pw[10]), .\a2_pw[11] (a2_pw[11]), 
            .\a2_pw[12] (a2_pw[12])) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(234[29] 238[3])
    LUT4 a0_pw_12__I_0_i11_3_lut (.A(a0_pw[10]), .B(b0_pw[10]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a0_pw_12__I_0_i11_3_lut.init = 16'hcaca;
    LUT4 i1773_3_lut_4_lut (.A(n3102), .B(n3101), .C(n1405), .D(n2950), 
         .Z(n1426)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i1773_3_lut_4_lut.init = 16'hf780;
    FD1P3IX wb_dat_i_i0_i1 (.D(n2026), .SP(clk_enable_94), .CD(n2223), 
            .CK(clk), .Q(wb_dat_i[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam wb_dat_i_i0_i1.GSR = "ENABLED";
    FD1P3IX wb_adr_i__i3 (.D(n2863), .SP(clk_enable_95), .CD(n2220), .CK(clk), 
            .Q(wb_adr_i[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam wb_adr_i__i3.GSR = "ENABLED";
    FD1P3IX wb_dat_i_i0_i0 (.D(n2022), .SP(clk_enable_94), .CD(n2223), 
            .CK(clk), .Q(wb_dat_i[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam wb_dat_i_i0_i0.GSR = "ENABLED";
    FD1P3IX wb_adr_i__i1 (.D(n1582), .SP(clk_enable_95), .CD(n2220), .CK(clk), 
            .Q(wb_adr_i[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam wb_adr_i__i1.GSR = "ENABLED";
    LUT4 i1771_3_lut_4_lut (.A(n3102), .B(n3101), .C(n1406), .D(n2957), 
         .Z(n1427)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i1771_3_lut_4_lut.init = 16'hf780;
    \PulseIn(BITS=13)_U1  a3_pulsein (.clk(clk), .i_a3_pwm_c(i_a3_pwm_c), 
            .GND_net(GND_net), .n3100(n3100), .n2865(n2865), .n3101(n3101), 
            .\a4_pw[12] (a4_pw[12]), .n2950(n2950), .\a3_pw[12] (a3_pw[12]), 
            .n5(n5), .n6(n6_adj_284)) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(240[29] 244[3])
    LUT4 i1791_3_lut_4_lut (.A(count[2]), .B(n3100), .C(n767), .D(n769), 
         .Z(clk_enable_22)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam i1791_3_lut_4_lut.init = 16'h0100;
    LUT4 mux_500_i7_3_lut_4_lut (.A(n767), .B(n3103), .C(wb_dat_o[6]), 
         .D(a0_pw[6]), .Z(n1630)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_500_i7_3_lut_4_lut.init = 16'hfd20;
    LUT4 a1_pw_12__I_0_i7_3_lut (.A(a1_pw[6]), .B(b1_pw[6]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a1_pw_12__I_0_i7_3_lut.init = 16'hcaca;
    LUT4 i532_2_lut (.A(n1556), .B(a0_rise), .Z(clk_enable_85)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i532_2_lut.init = 16'hdddd;
    LUT4 mux_500_i3_3_lut_4_lut (.A(n767), .B(n3103), .C(wb_dat_o[2]), 
         .D(a0_pw[2]), .Z(n1626)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_500_i3_3_lut_4_lut.init = 16'hfd20;
    LUT4 a1_pw_12__I_0_i6_3_lut (.A(a1_pw[5]), .B(b1_pw[5]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a1_pw_12__I_0_i6_3_lut.init = 16'hcaca;
    LUT4 i1796_2_lut_4_lut (.A(n769), .B(count[2]), .C(n3100), .D(n774), 
         .Z(n2224)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i1796_2_lut_4_lut.init = 16'h7f00;
    LUT4 mux_500_i10_3_lut_4_lut (.A(n767), .B(n3103), .C(wb_dat_o[1]), 
         .D(a0_pw[9]), .Z(n1633)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_500_i10_3_lut_4_lut.init = 16'hfd20;
    LUT4 a0_pw_12__I_0_i9_3_lut (.A(a0_pw[8]), .B(b0_pw[8]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a0_pw_12__I_0_i9_3_lut.init = 16'hcaca;
    LUT4 mux_500_i5_3_lut_4_lut (.A(n767), .B(n3103), .C(wb_dat_o[4]), 
         .D(a0_pw[4]), .Z(n1628)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(279[3] 438[10])
    defparam mux_500_i5_3_lut_4_lut.init = 16'hfd20;
    LUT4 a1_pw_12__I_0_i3_3_lut (.A(a1_pw[2]), .B(b1_pw[2]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a1_pw_12__I_0_i3_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_then_4_lut (.A(count[1]), .B(count[2]), .C(n767), .D(count[0]), 
         .Z(n3109)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h1001;
    LUT4 a1_pw_12__I_0_i2_3_lut (.A(a1_pw[1]), .B(b1_pw[1]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[8] 274[6])
    defparam a1_pw_12__I_0_i2_3_lut.init = 16'hcaca;
    VLO i1 (.Z(GND_net));
    LUT4 i1800_2_lut_2_lut_4_lut (.A(n769), .B(count[2]), .C(n3100), .D(wb_we_i_N_193), 
         .Z(clk_enable_94)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(278[9] 444[5])
    defparam i1800_2_lut_2_lut_4_lut.init = 16'h7f00;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1S3AX y1_pw_i0 (.D(y1_pw_12__N_91[0]), .CK(clk), .Q(y1_pw[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(266[9] 275[5])
    defparam y1_pw_i0.GSR = "ENABLED";
    PFUMX mux_429_i6 (.BLUT(n1423), .ALUT(n1433), .C0(n1442), .Z(n1446));
    LUT4 i3_4_lut_adj_15 (.A(a4_pw[8]), .B(n6_adj_287), .C(a4_pw[10]), 
         .D(n4_adj_288), .Z(n2865)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut_adj_15.init = 16'hfefc;
    LUT4 rst_I_0_1_lut_rep_17 (.A(rst_c), .Z(n3098)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(208[13:17])
    defparam rst_I_0_1_lut_rep_17.init = 16'h5555;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i531_4_lut_4_lut (.A(rst_c), .B(n2960), .C(n3099), .D(n775), 
         .Z(clk_enable_73)) /* synthesis lut_function=(!(A (B (C)+!B !(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(208[13:17])
    defparam i531_4_lut_4_lut.init = 16'h7f5d;
    efb efb (.clk(clk), .n3098(n3098), .wb_cyc_i(wb_cyc_i), .wb_we_i(wb_we_i), 
        .GND_net(GND_net), .VCC_net(VCC_net), .\wb_adr_i[2] (wb_adr_i[2]), 
        .\wb_adr_i[1] (wb_adr_i[1]), .\wb_adr_i[0] (wb_adr_i[0]), .wb_dat_i({wb_dat_i}), 
        .wb_dat_o({wb_dat_o}), .wb_ack_o(wb_ack_o), .i2c1_sdaoen(i2c1_sdaoen), 
        .i2c1_sdao(i2c1_sdao), .i2c1_scloen(i2c1_scloen), .i2c1_sclo(i2c1_sclo), 
        .i2c1_sdai(i2c1_sdai), .i2c1_scli(i2c1_scli)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(206[6] 218[3])
    
endmodule
//
// Verilog Description of module \PulseOut(BITS=13) 
//

module \PulseOut(BITS=13)  (clk, clk_enable_70, a1_rise, GND_net, y1_pw, 
            o_y1_pwm_c, clk_enable_10, n1690, n1572) /* synthesis syn_module_defined=1 */ ;
    input clk;
    input clk_enable_70;
    input a1_rise;
    input GND_net;
    input [12:0]y1_pw;
    output o_y1_pwm_c;
    input clk_enable_10;
    input n1690;
    output n1572;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(145[7:10])
    wire [12:0]count;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(110[17:22])
    wire [12:0]n5;
    
    wire n2813;
    wire [12:0]pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(110[24:26])
    
    wire n2814, n24, n20, o_signal_N_280, n22, n16, n2802, n2812, 
        n2811, n2810, n2809, n2807, n2806, n2805, n2804, n2815, 
        n2803;
    
    FD1P3IX count__i0 (.D(n5[0]), .SP(clk_enable_70), .CD(a1_rise), .CK(clk), 
            .Q(count[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i0.GSR = "ENABLED";
    CCU2D sub_457_add_2_11 (.A0(count[9]), .B0(pw[9]), .C0(GND_net), .D0(GND_net), 
          .A1(count[10]), .B1(pw[10]), .C1(GND_net), .D1(GND_net), .CIN(n2813), 
          .COUT(n2814));
    defparam sub_457_add_2_11.INIT0 = 16'h5999;
    defparam sub_457_add_2_11.INIT1 = 16'h5999;
    defparam sub_457_add_2_11.INJECT1_0 = "NO";
    defparam sub_457_add_2_11.INJECT1_1 = "NO";
    FD1P3AX pw_i0_i0 (.D(y1_pw[0]), .SP(a1_rise), .CK(clk), .Q(pw[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i0.GSR = "ENABLED";
    LUT4 i12_4_lut (.A(pw[7]), .B(n24), .C(n20), .D(pw[6]), .Z(o_signal_N_280)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(121[14:16])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i11_4_lut (.A(pw[12]), .B(n22), .C(n16), .D(pw[5]), .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(121[14:16])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i7_3_lut (.A(pw[10]), .B(pw[8]), .C(pw[3]), .Z(n20)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(121[14:16])
    defparam i7_3_lut.init = 16'hfefe;
    LUT4 i9_4_lut (.A(pw[1]), .B(pw[11]), .C(pw[0]), .D(pw[2]), .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(121[14:16])
    defparam i9_4_lut.init = 16'hfffe;
    CCU2D add_5_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2802), 
          .S1(n5[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(122[14:26])
    defparam add_5_1.INIT0 = 16'hF000;
    defparam add_5_1.INIT1 = 16'h5555;
    defparam add_5_1.INJECT1_0 = "NO";
    defparam add_5_1.INJECT1_1 = "NO";
    CCU2D sub_457_add_2_9 (.A0(count[7]), .B0(pw[7]), .C0(GND_net), .D0(GND_net), 
          .A1(count[8]), .B1(pw[8]), .C1(GND_net), .D1(GND_net), .CIN(n2812), 
          .COUT(n2813));
    defparam sub_457_add_2_9.INIT0 = 16'h5999;
    defparam sub_457_add_2_9.INIT1 = 16'h5999;
    defparam sub_457_add_2_9.INJECT1_0 = "NO";
    defparam sub_457_add_2_9.INJECT1_1 = "NO";
    LUT4 i3_2_lut (.A(pw[4]), .B(pw[9]), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(121[14:16])
    defparam i3_2_lut.init = 16'heeee;
    FD1P3IX signal_17 (.D(o_signal_N_280), .SP(clk_enable_10), .CD(n1690), 
            .CK(clk), .Q(o_y1_pwm_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam signal_17.GSR = "ENABLED";
    FD1P3IX count__i12 (.D(n5[12]), .SP(clk_enable_70), .CD(a1_rise), 
            .CK(clk), .Q(count[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i12.GSR = "ENABLED";
    CCU2D sub_457_add_2_7 (.A0(count[5]), .B0(pw[5]), .C0(GND_net), .D0(GND_net), 
          .A1(count[6]), .B1(pw[6]), .C1(GND_net), .D1(GND_net), .CIN(n2811), 
          .COUT(n2812));
    defparam sub_457_add_2_7.INIT0 = 16'h5999;
    defparam sub_457_add_2_7.INIT1 = 16'h5999;
    defparam sub_457_add_2_7.INJECT1_0 = "NO";
    defparam sub_457_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_457_add_2_5 (.A0(count[3]), .B0(pw[3]), .C0(GND_net), .D0(GND_net), 
          .A1(count[4]), .B1(pw[4]), .C1(GND_net), .D1(GND_net), .CIN(n2810), 
          .COUT(n2811));
    defparam sub_457_add_2_5.INIT0 = 16'h5999;
    defparam sub_457_add_2_5.INIT1 = 16'h5999;
    defparam sub_457_add_2_5.INJECT1_0 = "NO";
    defparam sub_457_add_2_5.INJECT1_1 = "NO";
    FD1P3IX count__i11 (.D(n5[11]), .SP(clk_enable_70), .CD(a1_rise), 
            .CK(clk), .Q(count[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i11.GSR = "ENABLED";
    FD1P3IX count__i10 (.D(n5[10]), .SP(clk_enable_70), .CD(a1_rise), 
            .CK(clk), .Q(count[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i10.GSR = "ENABLED";
    FD1P3IX count__i9 (.D(n5[9]), .SP(clk_enable_70), .CD(a1_rise), .CK(clk), 
            .Q(count[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i9.GSR = "ENABLED";
    FD1P3IX count__i8 (.D(n5[8]), .SP(clk_enable_70), .CD(a1_rise), .CK(clk), 
            .Q(count[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i8.GSR = "ENABLED";
    FD1P3IX count__i7 (.D(n5[7]), .SP(clk_enable_70), .CD(a1_rise), .CK(clk), 
            .Q(count[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i7.GSR = "ENABLED";
    FD1P3IX count__i6 (.D(n5[6]), .SP(clk_enable_70), .CD(a1_rise), .CK(clk), 
            .Q(count[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i6.GSR = "ENABLED";
    FD1P3IX count__i5 (.D(n5[5]), .SP(clk_enable_70), .CD(a1_rise), .CK(clk), 
            .Q(count[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i5.GSR = "ENABLED";
    FD1P3IX count__i4 (.D(n5[4]), .SP(clk_enable_70), .CD(a1_rise), .CK(clk), 
            .Q(count[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i4.GSR = "ENABLED";
    FD1P3IX count__i3 (.D(n5[3]), .SP(clk_enable_70), .CD(a1_rise), .CK(clk), 
            .Q(count[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i3.GSR = "ENABLED";
    FD1P3IX count__i2 (.D(n5[2]), .SP(clk_enable_70), .CD(a1_rise), .CK(clk), 
            .Q(count[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i2.GSR = "ENABLED";
    FD1P3IX count__i1 (.D(n5[1]), .SP(clk_enable_70), .CD(a1_rise), .CK(clk), 
            .Q(count[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i1.GSR = "ENABLED";
    FD1P3AX pw_i0_i1 (.D(y1_pw[1]), .SP(a1_rise), .CK(clk), .Q(pw[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i1.GSR = "ENABLED";
    FD1P3AX pw_i0_i2 (.D(y1_pw[2]), .SP(a1_rise), .CK(clk), .Q(pw[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i2.GSR = "ENABLED";
    FD1P3AX pw_i0_i3 (.D(y1_pw[3]), .SP(a1_rise), .CK(clk), .Q(pw[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i3.GSR = "ENABLED";
    FD1P3AX pw_i0_i4 (.D(y1_pw[4]), .SP(a1_rise), .CK(clk), .Q(pw[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i4.GSR = "ENABLED";
    FD1P3AX pw_i0_i5 (.D(y1_pw[5]), .SP(a1_rise), .CK(clk), .Q(pw[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i5.GSR = "ENABLED";
    FD1P3AX pw_i0_i6 (.D(y1_pw[6]), .SP(a1_rise), .CK(clk), .Q(pw[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i6.GSR = "ENABLED";
    FD1P3AX pw_i0_i7 (.D(y1_pw[7]), .SP(a1_rise), .CK(clk), .Q(pw[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i7.GSR = "ENABLED";
    FD1P3AX pw_i0_i8 (.D(y1_pw[8]), .SP(a1_rise), .CK(clk), .Q(pw[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i8.GSR = "ENABLED";
    FD1P3AX pw_i0_i9 (.D(y1_pw[9]), .SP(a1_rise), .CK(clk), .Q(pw[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i9.GSR = "ENABLED";
    FD1P3AX pw_i0_i10 (.D(y1_pw[10]), .SP(a1_rise), .CK(clk), .Q(pw[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i10.GSR = "ENABLED";
    FD1P3AX pw_i0_i11 (.D(y1_pw[11]), .SP(a1_rise), .CK(clk), .Q(pw[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i11.GSR = "ENABLED";
    FD1P3AX pw_i0_i12 (.D(y1_pw[12]), .SP(a1_rise), .CK(clk), .Q(pw[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=259, LSE_RLINE=264 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i12.GSR = "ENABLED";
    CCU2D sub_457_add_2_3 (.A0(count[1]), .B0(pw[1]), .C0(GND_net), .D0(GND_net), 
          .A1(count[2]), .B1(pw[2]), .C1(GND_net), .D1(GND_net), .CIN(n2809), 
          .COUT(n2810));
    defparam sub_457_add_2_3.INIT0 = 16'h5999;
    defparam sub_457_add_2_3.INIT1 = 16'h5999;
    defparam sub_457_add_2_3.INJECT1_0 = "NO";
    defparam sub_457_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_457_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[0]), .B1(pw[0]), .C1(GND_net), .D1(GND_net), .COUT(n2809));
    defparam sub_457_add_2_1.INIT0 = 16'h0000;
    defparam sub_457_add_2_1.INIT1 = 16'h5999;
    defparam sub_457_add_2_1.INJECT1_0 = "NO";
    defparam sub_457_add_2_1.INJECT1_1 = "NO";
    CCU2D add_5_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2807), .S0(n5[11]), .S1(n5[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(122[14:26])
    defparam add_5_13.INIT0 = 16'h5aaa;
    defparam add_5_13.INIT1 = 16'h5aaa;
    defparam add_5_13.INJECT1_0 = "NO";
    defparam add_5_13.INJECT1_1 = "NO";
    CCU2D add_5_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2806), .COUT(n2807), .S0(n5[9]), .S1(n5[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(122[14:26])
    defparam add_5_11.INIT0 = 16'h5aaa;
    defparam add_5_11.INIT1 = 16'h5aaa;
    defparam add_5_11.INJECT1_0 = "NO";
    defparam add_5_11.INJECT1_1 = "NO";
    CCU2D add_5_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2805), 
          .COUT(n2806), .S0(n5[7]), .S1(n5[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(122[14:26])
    defparam add_5_9.INIT0 = 16'h5aaa;
    defparam add_5_9.INIT1 = 16'h5aaa;
    defparam add_5_9.INJECT1_0 = "NO";
    defparam add_5_9.INJECT1_1 = "NO";
    CCU2D add_5_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2804), 
          .COUT(n2805), .S0(n5[5]), .S1(n5[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(122[14:26])
    defparam add_5_7.INIT0 = 16'h5aaa;
    defparam add_5_7.INIT1 = 16'h5aaa;
    defparam add_5_7.INJECT1_0 = "NO";
    defparam add_5_7.INJECT1_1 = "NO";
    CCU2D sub_457_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2815), .S0(n1572));
    defparam sub_457_add_2_cout.INIT0 = 16'h0000;
    defparam sub_457_add_2_cout.INIT1 = 16'h0000;
    defparam sub_457_add_2_cout.INJECT1_0 = "NO";
    defparam sub_457_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_457_add_2_13 (.A0(count[11]), .B0(pw[11]), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(pw[12]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2814), .COUT(n2815));
    defparam sub_457_add_2_13.INIT0 = 16'h5999;
    defparam sub_457_add_2_13.INIT1 = 16'h5999;
    defparam sub_457_add_2_13.INJECT1_0 = "NO";
    defparam sub_457_add_2_13.INJECT1_1 = "NO";
    CCU2D add_5_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2803), 
          .COUT(n2804), .S0(n5[3]), .S1(n5[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(122[14:26])
    defparam add_5_5.INIT0 = 16'h5aaa;
    defparam add_5_5.INIT1 = 16'h5aaa;
    defparam add_5_5.INJECT1_0 = "NO";
    defparam add_5_5.INJECT1_1 = "NO";
    CCU2D add_5_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2802), 
          .COUT(n2803), .S0(n5[1]), .S1(n5[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(122[14:26])
    defparam add_5_3.INIT0 = 16'h5aaa;
    defparam add_5_3.INIT1 = 16'h5aaa;
    defparam add_5_3.INJECT1_0 = "NO";
    defparam add_5_3.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module \PulseIn(BITS=13) 
//

module \PulseIn(BITS=13)  (clk, \a4_pw[1] , i_a4_pwm_c, GND_net, \a4_pw[2] , 
            \a4_pw[3] , \a4_pw[4] , \a4_pw[5] , \a4_pw[6] , \a4_pw[7] , 
            \a4_pw[8] , \a4_pw[9] , \a4_pw[10] , \a4_pw[11] , \a4_pw[12] ) /* synthesis syn_module_defined=1 */ ;
    input clk;
    output \a4_pw[1] ;
    input i_a4_pwm_c;
    input GND_net;
    output \a4_pw[2] ;
    output \a4_pw[3] ;
    output \a4_pw[4] ;
    output \a4_pw[5] ;
    output \a4_pw[6] ;
    output \a4_pw[7] ;
    output \a4_pw[8] ;
    output \a4_pw[9] ;
    output \a4_pw[10] ;
    output \a4_pw[11] ;
    output \a4_pw[12] ;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(145[7:10])
    wire [12:0]n100;
    wire [12:0]n57;
    
    wire o_pw_12__N_220;
    wire [12:0]count;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(66[23:28])
    
    wire signal_sync1, signal_sync0, signal, high, n2788, n2789, 
        n2791, n2792, n2793, n2790;
    
    FD1S3AX count_518__i0 (.D(n57[0]), .CK(clk), .Q(n100[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i0.GSR = "ENABLED";
    FD1P3AX pw__i1 (.D(count[1]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=246, LSE_RLINE=250 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i1.GSR = "ENABLED";
    FD1S3AX signal_sync1_19 (.D(signal_sync0), .CK(clk), .Q(signal_sync1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=246, LSE_RLINE=250 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync1_19.GSR = "ENABLED";
    FD1S3AX signal_20 (.D(signal_sync1), .CK(clk), .Q(signal)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=246, LSE_RLINE=250 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_20.GSR = "ENABLED";
    FD1S3AX high_21 (.D(signal), .CK(clk), .Q(high)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=246, LSE_RLINE=250 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam high_21.GSR = "ENABLED";
    FD1S3AX signal_sync0_18 (.D(i_a4_pwm_c), .CK(clk), .Q(signal_sync0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=246, LSE_RLINE=250 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync0_18.GSR = "ENABLED";
    CCU2D count_518_add_4_3 (.A0(count[1]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2788), .COUT(n2789), .S0(n57[1]), .S1(n57[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518_add_4_3.INIT0 = 16'h7888;
    defparam count_518_add_4_3.INIT1 = 16'h7888;
    defparam count_518_add_4_3.INJECT1_0 = "NO";
    defparam count_518_add_4_3.INJECT1_1 = "NO";
    CCU2D count_518_add_4_9 (.A0(count[7]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2791), .COUT(n2792), .S0(n57[7]), .S1(n57[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518_add_4_9.INIT0 = 16'h7888;
    defparam count_518_add_4_9.INIT1 = 16'h7888;
    defparam count_518_add_4_9.INJECT1_0 = "NO";
    defparam count_518_add_4_9.INJECT1_1 = "NO";
    CCU2D count_518_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n100[0]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .COUT(n2788), .S1(n57[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518_add_4_1.INIT0 = 16'hF000;
    defparam count_518_add_4_1.INIT1 = 16'h7777;
    defparam count_518_add_4_1.INJECT1_0 = "NO";
    defparam count_518_add_4_1.INJECT1_1 = "NO";
    CCU2D count_518_add_4_13 (.A0(count[11]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2793), .S0(n57[11]), .S1(n57[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518_add_4_13.INIT0 = 16'h7888;
    defparam count_518_add_4_13.INIT1 = 16'h7888;
    defparam count_518_add_4_13.INJECT1_0 = "NO";
    defparam count_518_add_4_13.INJECT1_1 = "NO";
    CCU2D count_518_add_4_11 (.A0(count[9]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2792), .COUT(n2793), .S0(n57[9]), .S1(n57[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518_add_4_11.INIT0 = 16'h7888;
    defparam count_518_add_4_11.INIT1 = 16'h7888;
    defparam count_518_add_4_11.INJECT1_0 = "NO";
    defparam count_518_add_4_11.INJECT1_1 = "NO";
    CCU2D count_518_add_4_7 (.A0(count[5]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2790), .COUT(n2791), .S0(n57[5]), .S1(n57[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518_add_4_7.INIT0 = 16'h7888;
    defparam count_518_add_4_7.INIT1 = 16'h7888;
    defparam count_518_add_4_7.INJECT1_0 = "NO";
    defparam count_518_add_4_7.INJECT1_1 = "NO";
    FD1S3AX count_518__i1 (.D(n57[1]), .CK(clk), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i1.GSR = "ENABLED";
    FD1S3AX count_518__i2 (.D(n57[2]), .CK(clk), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i2.GSR = "ENABLED";
    FD1S3AX count_518__i3 (.D(n57[3]), .CK(clk), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i3.GSR = "ENABLED";
    FD1S3AX count_518__i4 (.D(n57[4]), .CK(clk), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i4.GSR = "ENABLED";
    FD1S3AX count_518__i5 (.D(n57[5]), .CK(clk), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i5.GSR = "ENABLED";
    FD1S3AX count_518__i6 (.D(n57[6]), .CK(clk), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i6.GSR = "ENABLED";
    FD1S3AX count_518__i7 (.D(n57[7]), .CK(clk), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i7.GSR = "ENABLED";
    FD1S3AX count_518__i8 (.D(n57[8]), .CK(clk), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i8.GSR = "ENABLED";
    FD1S3AX count_518__i9 (.D(n57[9]), .CK(clk), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i9.GSR = "ENABLED";
    FD1S3AX count_518__i10 (.D(n57[10]), .CK(clk), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i10.GSR = "ENABLED";
    FD1S3AX count_518__i11 (.D(n57[11]), .CK(clk), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i11.GSR = "ENABLED";
    FD1S3AX count_518__i12 (.D(n57[12]), .CK(clk), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518__i12.GSR = "ENABLED";
    FD1P3AX pw__i2 (.D(count[2]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[2] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=246, LSE_RLINE=250 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i2.GSR = "ENABLED";
    FD1P3AX pw__i3 (.D(count[3]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[3] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=246, LSE_RLINE=250 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i3.GSR = "ENABLED";
    FD1P3AX pw__i4 (.D(count[4]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[4] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=246, LSE_RLINE=250 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i4.GSR = "ENABLED";
    FD1P3AX pw__i5 (.D(count[5]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[5] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=246, LSE_RLINE=250 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i5.GSR = "ENABLED";
    FD1P3AX pw__i6 (.D(count[6]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[6] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=246, LSE_RLINE=250 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i6.GSR = "ENABLED";
    FD1P3AX pw__i7 (.D(count[7]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[7] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=246, LSE_RLINE=250 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i7.GSR = "ENABLED";
    FD1P3AX pw__i8 (.D(count[8]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[8] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=246, LSE_RLINE=250 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i8.GSR = "ENABLED";
    FD1P3AX pw__i9 (.D(count[9]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[9] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=246, LSE_RLINE=250 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i9.GSR = "ENABLED";
    FD1P3AX pw__i10 (.D(count[10]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[10] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=246, LSE_RLINE=250 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i10.GSR = "ENABLED";
    FD1P3AX pw__i11 (.D(count[11]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[11] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=246, LSE_RLINE=250 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i11.GSR = "ENABLED";
    FD1P3AX pw__i12 (.D(count[12]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[12] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=246, LSE_RLINE=250 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i12.GSR = "ENABLED";
    CCU2D count_518_add_4_5 (.A0(count[3]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2789), .COUT(n2790), .S0(n57[3]), .S1(n57[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_518_add_4_5.INIT0 = 16'h7888;
    defparam count_518_add_4_5.INIT1 = 16'h7888;
    defparam count_518_add_4_5.INJECT1_0 = "NO";
    defparam count_518_add_4_5.INJECT1_1 = "NO";
    LUT4 o_pw_12__I_3_2_lut (.A(signal), .B(high), .Z(o_pw_12__N_220)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(84[7:22])
    defparam o_pw_12__I_3_2_lut.init = 16'h4444;
    
endmodule
//
// Verilog Description of module \PulseOut(BITS=13)_U0 
//

module \PulseOut(BITS=13)_U0  (clk, a0_rise, y0_pw, clk_enable_85, o_y0_pwm_c, 
            clk_enable_8, n1688, GND_net, n1556) /* synthesis syn_module_defined=1 */ ;
    input clk;
    input a0_rise;
    input [12:0]y0_pw;
    input clk_enable_85;
    output o_y0_pwm_c;
    input clk_enable_8;
    input n1688;
    input GND_net;
    output n1556;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(145[7:10])
    wire [12:0]pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(110[24:26])
    
    wire n22, n16;
    wire [12:0]count;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(110[17:22])
    wire [12:0]n5;
    
    wire o_signal_N_280, n2795, n2796, n2800, n2799, n2798, n2822, 
        n2821, n2797, n2820, n2819, n2818, n2817, n2816, n24, 
        n20;
    
    LUT4 i9_4_lut (.A(pw[1]), .B(pw[11]), .C(pw[0]), .D(pw[2]), .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(121[14:16])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(pw[4]), .B(pw[9]), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(121[14:16])
    defparam i3_2_lut.init = 16'heeee;
    FD1P3AX pw_i0_i0 (.D(y0_pw[0]), .SP(a0_rise), .CK(clk), .Q(pw[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i0.GSR = "ENABLED";
    FD1P3IX count__i0 (.D(n5[0]), .SP(clk_enable_85), .CD(a0_rise), .CK(clk), 
            .Q(count[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i0.GSR = "ENABLED";
    FD1P3IX signal_17 (.D(o_signal_N_280), .SP(clk_enable_8), .CD(n1688), 
            .CK(clk), .Q(o_y0_pwm_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam signal_17.GSR = "ENABLED";
    CCU2D add_5_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2795), 
          .COUT(n2796), .S0(n5[1]), .S1(n5[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(122[14:26])
    defparam add_5_3.INIT0 = 16'h5aaa;
    defparam add_5_3.INIT1 = 16'h5aaa;
    defparam add_5_3.INJECT1_0 = "NO";
    defparam add_5_3.INJECT1_1 = "NO";
    CCU2D add_5_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n2795), 
          .S1(n5[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(122[14:26])
    defparam add_5_1.INIT0 = 16'hF000;
    defparam add_5_1.INIT1 = 16'h5555;
    defparam add_5_1.INJECT1_0 = "NO";
    defparam add_5_1.INJECT1_1 = "NO";
    CCU2D add_5_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2800), .S0(n5[11]), .S1(n5[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(122[14:26])
    defparam add_5_13.INIT0 = 16'h5aaa;
    defparam add_5_13.INIT1 = 16'h5aaa;
    defparam add_5_13.INJECT1_0 = "NO";
    defparam add_5_13.INJECT1_1 = "NO";
    CCU2D add_5_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2799), .COUT(n2800), .S0(n5[9]), .S1(n5[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(122[14:26])
    defparam add_5_11.INIT0 = 16'h5aaa;
    defparam add_5_11.INIT1 = 16'h5aaa;
    defparam add_5_11.INJECT1_0 = "NO";
    defparam add_5_11.INJECT1_1 = "NO";
    CCU2D add_5_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2798), 
          .COUT(n2799), .S0(n5[7]), .S1(n5[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(122[14:26])
    defparam add_5_9.INIT0 = 16'h5aaa;
    defparam add_5_9.INIT1 = 16'h5aaa;
    defparam add_5_9.INJECT1_0 = "NO";
    defparam add_5_9.INJECT1_1 = "NO";
    FD1P3AX pw_i0_i1 (.D(y0_pw[1]), .SP(a0_rise), .CK(clk), .Q(pw[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i1.GSR = "ENABLED";
    FD1P3AX pw_i0_i2 (.D(y0_pw[2]), .SP(a0_rise), .CK(clk), .Q(pw[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i2.GSR = "ENABLED";
    FD1P3AX pw_i0_i3 (.D(y0_pw[3]), .SP(a0_rise), .CK(clk), .Q(pw[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i3.GSR = "ENABLED";
    FD1P3AX pw_i0_i4 (.D(y0_pw[4]), .SP(a0_rise), .CK(clk), .Q(pw[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i4.GSR = "ENABLED";
    FD1P3AX pw_i0_i5 (.D(y0_pw[5]), .SP(a0_rise), .CK(clk), .Q(pw[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i5.GSR = "ENABLED";
    FD1P3AX pw_i0_i6 (.D(y0_pw[6]), .SP(a0_rise), .CK(clk), .Q(pw[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i6.GSR = "ENABLED";
    FD1P3AX pw_i0_i7 (.D(y0_pw[7]), .SP(a0_rise), .CK(clk), .Q(pw[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i7.GSR = "ENABLED";
    FD1P3AX pw_i0_i8 (.D(y0_pw[8]), .SP(a0_rise), .CK(clk), .Q(pw[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i8.GSR = "ENABLED";
    FD1P3AX pw_i0_i9 (.D(y0_pw[9]), .SP(a0_rise), .CK(clk), .Q(pw[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i9.GSR = "ENABLED";
    FD1P3AX pw_i0_i10 (.D(y0_pw[10]), .SP(a0_rise), .CK(clk), .Q(pw[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i10.GSR = "ENABLED";
    FD1P3AX pw_i0_i11 (.D(y0_pw[11]), .SP(a0_rise), .CK(clk), .Q(pw[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i11.GSR = "ENABLED";
    FD1P3AX pw_i0_i12 (.D(y0_pw[12]), .SP(a0_rise), .CK(clk), .Q(pw[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam pw_i0_i12.GSR = "ENABLED";
    FD1P3IX count__i1 (.D(n5[1]), .SP(clk_enable_85), .CD(a0_rise), .CK(clk), 
            .Q(count[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i1.GSR = "ENABLED";
    FD1P3IX count__i2 (.D(n5[2]), .SP(clk_enable_85), .CD(a0_rise), .CK(clk), 
            .Q(count[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i2.GSR = "ENABLED";
    FD1P3IX count__i3 (.D(n5[3]), .SP(clk_enable_85), .CD(a0_rise), .CK(clk), 
            .Q(count[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i3.GSR = "ENABLED";
    FD1P3IX count__i4 (.D(n5[4]), .SP(clk_enable_85), .CD(a0_rise), .CK(clk), 
            .Q(count[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i4.GSR = "ENABLED";
    FD1P3IX count__i5 (.D(n5[5]), .SP(clk_enable_85), .CD(a0_rise), .CK(clk), 
            .Q(count[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i5.GSR = "ENABLED";
    FD1P3IX count__i6 (.D(n5[6]), .SP(clk_enable_85), .CD(a0_rise), .CK(clk), 
            .Q(count[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i6.GSR = "ENABLED";
    FD1P3IX count__i7 (.D(n5[7]), .SP(clk_enable_85), .CD(a0_rise), .CK(clk), 
            .Q(count[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i7.GSR = "ENABLED";
    FD1P3IX count__i8 (.D(n5[8]), .SP(clk_enable_85), .CD(a0_rise), .CK(clk), 
            .Q(count[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i8.GSR = "ENABLED";
    FD1P3IX count__i9 (.D(n5[9]), .SP(clk_enable_85), .CD(a0_rise), .CK(clk), 
            .Q(count[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i9.GSR = "ENABLED";
    FD1P3IX count__i10 (.D(n5[10]), .SP(clk_enable_85), .CD(a0_rise), 
            .CK(clk), .Q(count[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i10.GSR = "ENABLED";
    FD1P3IX count__i11 (.D(n5[11]), .SP(clk_enable_85), .CD(a0_rise), 
            .CK(clk), .Q(count[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i11.GSR = "ENABLED";
    FD1P3IX count__i12 (.D(n5[12]), .SP(clk_enable_85), .CD(a0_rise), 
            .CK(clk), .Q(count[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 127[5])
    defparam count__i12.GSR = "ENABLED";
    CCU2D sub_455_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2822), .S0(n1556));
    defparam sub_455_add_2_cout.INIT0 = 16'h0000;
    defparam sub_455_add_2_cout.INIT1 = 16'h0000;
    defparam sub_455_add_2_cout.INJECT1_0 = "NO";
    defparam sub_455_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_455_add_2_13 (.A0(count[11]), .B0(pw[11]), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(pw[12]), .C1(GND_net), .D1(GND_net), 
          .CIN(n2821), .COUT(n2822));
    defparam sub_455_add_2_13.INIT0 = 16'h5999;
    defparam sub_455_add_2_13.INIT1 = 16'h5999;
    defparam sub_455_add_2_13.INJECT1_0 = "NO";
    defparam sub_455_add_2_13.INJECT1_1 = "NO";
    CCU2D add_5_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2797), 
          .COUT(n2798), .S0(n5[5]), .S1(n5[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(122[14:26])
    defparam add_5_7.INIT0 = 16'h5aaa;
    defparam add_5_7.INIT1 = 16'h5aaa;
    defparam add_5_7.INJECT1_0 = "NO";
    defparam add_5_7.INJECT1_1 = "NO";
    CCU2D sub_455_add_2_11 (.A0(count[9]), .B0(pw[9]), .C0(GND_net), .D0(GND_net), 
          .A1(count[10]), .B1(pw[10]), .C1(GND_net), .D1(GND_net), .CIN(n2820), 
          .COUT(n2821));
    defparam sub_455_add_2_11.INIT0 = 16'h5999;
    defparam sub_455_add_2_11.INIT1 = 16'h5999;
    defparam sub_455_add_2_11.INJECT1_0 = "NO";
    defparam sub_455_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_455_add_2_9 (.A0(count[7]), .B0(pw[7]), .C0(GND_net), .D0(GND_net), 
          .A1(count[8]), .B1(pw[8]), .C1(GND_net), .D1(GND_net), .CIN(n2819), 
          .COUT(n2820));
    defparam sub_455_add_2_9.INIT0 = 16'h5999;
    defparam sub_455_add_2_9.INIT1 = 16'h5999;
    defparam sub_455_add_2_9.INJECT1_0 = "NO";
    defparam sub_455_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_455_add_2_7 (.A0(count[5]), .B0(pw[5]), .C0(GND_net), .D0(GND_net), 
          .A1(count[6]), .B1(pw[6]), .C1(GND_net), .D1(GND_net), .CIN(n2818), 
          .COUT(n2819));
    defparam sub_455_add_2_7.INIT0 = 16'h5999;
    defparam sub_455_add_2_7.INIT1 = 16'h5999;
    defparam sub_455_add_2_7.INJECT1_0 = "NO";
    defparam sub_455_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_455_add_2_5 (.A0(count[3]), .B0(pw[3]), .C0(GND_net), .D0(GND_net), 
          .A1(count[4]), .B1(pw[4]), .C1(GND_net), .D1(GND_net), .CIN(n2817), 
          .COUT(n2818));
    defparam sub_455_add_2_5.INIT0 = 16'h5999;
    defparam sub_455_add_2_5.INIT1 = 16'h5999;
    defparam sub_455_add_2_5.INJECT1_0 = "NO";
    defparam sub_455_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_455_add_2_3 (.A0(count[1]), .B0(pw[1]), .C0(GND_net), .D0(GND_net), 
          .A1(count[2]), .B1(pw[2]), .C1(GND_net), .D1(GND_net), .CIN(n2816), 
          .COUT(n2817));
    defparam sub_455_add_2_3.INIT0 = 16'h5999;
    defparam sub_455_add_2_3.INIT1 = 16'h5999;
    defparam sub_455_add_2_3.INJECT1_0 = "NO";
    defparam sub_455_add_2_3.INJECT1_1 = "NO";
    CCU2D add_5_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2796), 
          .COUT(n2797), .S0(n5[3]), .S1(n5[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(122[14:26])
    defparam add_5_5.INIT0 = 16'h5aaa;
    defparam add_5_5.INIT1 = 16'h5aaa;
    defparam add_5_5.INJECT1_0 = "NO";
    defparam add_5_5.INJECT1_1 = "NO";
    CCU2D sub_455_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(count[0]), .B1(pw[0]), .C1(GND_net), .D1(GND_net), .COUT(n2816));
    defparam sub_455_add_2_1.INIT0 = 16'h0000;
    defparam sub_455_add_2_1.INIT1 = 16'h5999;
    defparam sub_455_add_2_1.INJECT1_0 = "NO";
    defparam sub_455_add_2_1.INJECT1_1 = "NO";
    LUT4 i12_4_lut (.A(pw[7]), .B(n24), .C(n20), .D(pw[6]), .Z(o_signal_N_280)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(121[14:16])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i11_4_lut (.A(pw[12]), .B(n22), .C(n16), .D(pw[5]), .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(121[14:16])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i7_3_lut (.A(pw[10]), .B(pw[8]), .C(pw[3]), .Z(n20)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(121[14:16])
    defparam i7_3_lut.init = 16'hfefe;
    
endmodule
//
// Verilog Description of module \PulseIn(BITS=13)_U4 
//

module \PulseIn(BITS=13)_U4  (a0_pw, clk, a0_rise, n1556, n1688, i_a0_pwm_c, 
            GND_net, clk_enable_8) /* synthesis syn_module_defined=1 */ ;
    output [12:0]a0_pw;
    input clk;
    output a0_rise;
    input n1556;
    output n1688;
    input i_a0_pwm_c;
    input GND_net;
    output clk_enable_8;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(145[7:10])
    
    wire o_pw_12__N_220;
    wire [12:0]count;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(66[23:28])
    
    wire signal_sync1, signal_sync0, signal, high;
    wire [12:0]n57;
    
    wire n2842, n2841, n2840, n2839, n2838, n2837;
    
    FD1P3AX pw_i0_i0 (.D(count[0]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i0.GSR = "ENABLED";
    LUT4 i546_2_lut_2_lut (.A(a0_rise), .B(n1556), .Z(n1688)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam i546_2_lut_2_lut.init = 16'h4444;
    FD1S3AX signal_sync1_19 (.D(signal_sync0), .CK(clk), .Q(signal_sync1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync1_19.GSR = "ENABLED";
    FD1S3AX signal_20 (.D(signal_sync1), .CK(clk), .Q(signal)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_20.GSR = "ENABLED";
    FD1S3AX high_21 (.D(signal), .CK(clk), .Q(high)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam high_21.GSR = "ENABLED";
    FD1S3AX signal_sync0_18 (.D(i_a0_pwm_c), .CK(clk), .Q(signal_sync0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync0_18.GSR = "ENABLED";
    FD1S3IX rise_22 (.D(signal), .CK(clk), .CD(high), .Q(a0_rise)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam rise_22.GSR = "ENABLED";
    FD1P3AX pw_i0_i12 (.D(count[12]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i12.GSR = "ENABLED";
    FD1P3AX pw_i0_i11 (.D(count[11]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i11.GSR = "ENABLED";
    FD1P3AX pw_i0_i10 (.D(count[10]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i10.GSR = "ENABLED";
    FD1P3AX pw_i0_i9 (.D(count[9]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i9.GSR = "ENABLED";
    FD1P3AX pw_i0_i8 (.D(count[8]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i8.GSR = "ENABLED";
    FD1P3AX pw_i0_i7 (.D(count[7]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i7.GSR = "ENABLED";
    FD1P3AX pw_i0_i6 (.D(count[6]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i6.GSR = "ENABLED";
    FD1P3AX pw_i0_i5 (.D(count[5]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i5.GSR = "ENABLED";
    FD1P3AX pw_i0_i4 (.D(count[4]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i4.GSR = "ENABLED";
    FD1P3AX pw_i0_i3 (.D(count[3]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i3.GSR = "ENABLED";
    FD1P3AX pw_i0_i2 (.D(count[2]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i2.GSR = "ENABLED";
    FD1P3AX pw_i0_i1 (.D(count[1]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i1.GSR = "ENABLED";
    FD1S3AX count_514__i0 (.D(n57[0]), .CK(clk), .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_514__i0.GSR = "ENABLED";
    LUT4 o_pw_12__I_3_2_lut (.A(signal), .B(high), .Z(o_pw_12__N_220)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(84[7:22])
    defparam o_pw_12__I_3_2_lut.init = 16'h4444;
    CCU2D count_514_add_4_13 (.A0(count[11]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2842), .S0(n57[11]), .S1(n57[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_514_add_4_13.INIT0 = 16'h7888;
    defparam count_514_add_4_13.INIT1 = 16'h7888;
    defparam count_514_add_4_13.INJECT1_0 = "NO";
    defparam count_514_add_4_13.INJECT1_1 = "NO";
    CCU2D count_514_add_4_11 (.A0(count[9]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2841), .COUT(n2842), .S0(n57[9]), .S1(n57[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_514_add_4_11.INIT0 = 16'h7888;
    defparam count_514_add_4_11.INIT1 = 16'h7888;
    defparam count_514_add_4_11.INJECT1_0 = "NO";
    defparam count_514_add_4_11.INJECT1_1 = "NO";
    CCU2D count_514_add_4_9 (.A0(count[7]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2840), .COUT(n2841), .S0(n57[7]), .S1(n57[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_514_add_4_9.INIT0 = 16'h7888;
    defparam count_514_add_4_9.INIT1 = 16'h7888;
    defparam count_514_add_4_9.INJECT1_0 = "NO";
    defparam count_514_add_4_9.INJECT1_1 = "NO";
    CCU2D count_514_add_4_7 (.A0(count[5]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2839), .COUT(n2840), .S0(n57[5]), .S1(n57[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_514_add_4_7.INIT0 = 16'h7888;
    defparam count_514_add_4_7.INIT1 = 16'h7888;
    defparam count_514_add_4_7.INJECT1_0 = "NO";
    defparam count_514_add_4_7.INJECT1_1 = "NO";
    CCU2D count_514_add_4_5 (.A0(count[3]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2838), .COUT(n2839), .S0(n57[3]), .S1(n57[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_514_add_4_5.INIT0 = 16'h7888;
    defparam count_514_add_4_5.INIT1 = 16'h7888;
    defparam count_514_add_4_5.INJECT1_0 = "NO";
    defparam count_514_add_4_5.INJECT1_1 = "NO";
    CCU2D count_514_add_4_3 (.A0(count[1]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2837), .COUT(n2838), .S0(n57[1]), .S1(n57[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_514_add_4_3.INIT0 = 16'h7888;
    defparam count_514_add_4_3.INIT1 = 16'h7888;
    defparam count_514_add_4_3.INJECT1_0 = "NO";
    defparam count_514_add_4_3.INJECT1_1 = "NO";
    CCU2D count_514_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .COUT(n2837), .S1(n57[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_514_add_4_1.INIT0 = 16'hF000;
    defparam count_514_add_4_1.INIT1 = 16'h7777;
    defparam count_514_add_4_1.INJECT1_0 = "NO";
    defparam count_514_add_4_1.INJECT1_1 = "NO";
    LUT4 i533_1_lut_rep_26 (.A(a0_rise), .Z(clk_enable_8)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam i533_1_lut_rep_26.init = 16'h5555;
    FD1S3AX count_514__i1 (.D(n57[1]), .CK(clk), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_514__i1.GSR = "ENABLED";
    FD1S3AX count_514__i2 (.D(n57[2]), .CK(clk), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_514__i2.GSR = "ENABLED";
    FD1S3AX count_514__i3 (.D(n57[3]), .CK(clk), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_514__i3.GSR = "ENABLED";
    FD1S3AX count_514__i4 (.D(n57[4]), .CK(clk), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_514__i4.GSR = "ENABLED";
    FD1S3AX count_514__i5 (.D(n57[5]), .CK(clk), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_514__i5.GSR = "ENABLED";
    FD1S3AX count_514__i6 (.D(n57[6]), .CK(clk), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_514__i6.GSR = "ENABLED";
    FD1S3AX count_514__i7 (.D(n57[7]), .CK(clk), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_514__i7.GSR = "ENABLED";
    FD1S3AX count_514__i8 (.D(n57[8]), .CK(clk), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_514__i8.GSR = "ENABLED";
    FD1S3AX count_514__i9 (.D(n57[9]), .CK(clk), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_514__i9.GSR = "ENABLED";
    FD1S3AX count_514__i10 (.D(n57[10]), .CK(clk), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_514__i10.GSR = "ENABLED";
    FD1S3AX count_514__i11 (.D(n57[11]), .CK(clk), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_514__i11.GSR = "ENABLED";
    FD1S3AX count_514__i12 (.D(n57[12]), .CK(clk), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_514__i12.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \PulseIn(BITS=13)_U3 
//

module \PulseIn(BITS=13)_U3  (GND_net, a1_pw, clk, i_a1_pwm_c, a1_rise, 
            clk_enable_10, n1572, n1690) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    output [12:0]a1_pw;
    input clk;
    input i_a1_pwm_c;
    output a1_rise;
    output clk_enable_10;
    input n1572;
    output n1690;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(145[7:10])
    
    wire n2831;
    wire [12:0]count;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(66[23:28])
    
    wire signal;
    wire [12:0]n57;
    
    wire n2832, o_pw_12__N_220, signal_sync1, signal_sync0, high, 
        n2830, n2835, n2834, n2833;
    
    CCU2D count_515_add_4_5 (.A0(count[3]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2831), .COUT(n2832), .S0(n57[3]), .S1(n57[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_515_add_4_5.INIT0 = 16'h7888;
    defparam count_515_add_4_5.INIT1 = 16'h7888;
    defparam count_515_add_4_5.INJECT1_0 = "NO";
    defparam count_515_add_4_5.INJECT1_1 = "NO";
    FD1P3AX pw_i0_i0 (.D(count[0]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=232 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i0.GSR = "ENABLED";
    FD1S3AX signal_sync1_19 (.D(signal_sync0), .CK(clk), .Q(signal_sync1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=232 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync1_19.GSR = "ENABLED";
    FD1S3AX signal_20 (.D(signal_sync1), .CK(clk), .Q(signal)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=232 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_20.GSR = "ENABLED";
    FD1S3AX high_21 (.D(signal), .CK(clk), .Q(high)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=232 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam high_21.GSR = "ENABLED";
    FD1S3AX signal_sync0_18 (.D(i_a1_pwm_c), .CK(clk), .Q(signal_sync0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=232 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync0_18.GSR = "ENABLED";
    FD1S3IX rise_22 (.D(signal), .CK(clk), .CD(high), .Q(a1_rise)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=232 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam rise_22.GSR = "ENABLED";
    CCU2D count_515_add_4_3 (.A0(count[1]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2830), .COUT(n2831), .S0(n57[1]), .S1(n57[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_515_add_4_3.INIT0 = 16'h7888;
    defparam count_515_add_4_3.INIT1 = 16'h7888;
    defparam count_515_add_4_3.INJECT1_0 = "NO";
    defparam count_515_add_4_3.INJECT1_1 = "NO";
    CCU2D count_515_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .COUT(n2830), .S1(n57[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_515_add_4_1.INIT0 = 16'hF000;
    defparam count_515_add_4_1.INIT1 = 16'h7777;
    defparam count_515_add_4_1.INJECT1_0 = "NO";
    defparam count_515_add_4_1.INJECT1_1 = "NO";
    FD1P3AX pw_i0_i12 (.D(count[12]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=232 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i12.GSR = "ENABLED";
    FD1P3AX pw_i0_i11 (.D(count[11]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=232 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i11.GSR = "ENABLED";
    FD1P3AX pw_i0_i10 (.D(count[10]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=232 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i10.GSR = "ENABLED";
    FD1P3AX pw_i0_i9 (.D(count[9]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=232 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i9.GSR = "ENABLED";
    FD1P3AX pw_i0_i8 (.D(count[8]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=232 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i8.GSR = "ENABLED";
    FD1P3AX pw_i0_i7 (.D(count[7]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=232 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i7.GSR = "ENABLED";
    FD1P3AX pw_i0_i6 (.D(count[6]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=232 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i6.GSR = "ENABLED";
    FD1P3AX pw_i0_i5 (.D(count[5]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=232 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i5.GSR = "ENABLED";
    FD1P3AX pw_i0_i4 (.D(count[4]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=232 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i4.GSR = "ENABLED";
    FD1P3AX pw_i0_i3 (.D(count[3]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=232 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i3.GSR = "ENABLED";
    FD1P3AX pw_i0_i2 (.D(count[2]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=232 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i2.GSR = "ENABLED";
    FD1P3AX pw_i0_i1 (.D(count[1]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=232 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i1.GSR = "ENABLED";
    FD1S3AX count_515__i0 (.D(n57[0]), .CK(clk), .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_515__i0.GSR = "ENABLED";
    LUT4 o_pw_12__I_3_2_lut (.A(signal), .B(high), .Z(o_pw_12__N_220)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(84[7:22])
    defparam o_pw_12__I_3_2_lut.init = 16'h4444;
    LUT4 i537_1_lut_rep_24 (.A(a1_rise), .Z(clk_enable_10)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam i537_1_lut_rep_24.init = 16'h5555;
    LUT4 i549_2_lut_2_lut (.A(a1_rise), .B(n1572), .Z(n1690)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam i549_2_lut_2_lut.init = 16'h4444;
    CCU2D count_515_add_4_13 (.A0(count[11]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2835), .S0(n57[11]), .S1(n57[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_515_add_4_13.INIT0 = 16'h7888;
    defparam count_515_add_4_13.INIT1 = 16'h7888;
    defparam count_515_add_4_13.INJECT1_0 = "NO";
    defparam count_515_add_4_13.INJECT1_1 = "NO";
    CCU2D count_515_add_4_11 (.A0(count[9]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2834), .COUT(n2835), .S0(n57[9]), .S1(n57[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_515_add_4_11.INIT0 = 16'h7888;
    defparam count_515_add_4_11.INIT1 = 16'h7888;
    defparam count_515_add_4_11.INJECT1_0 = "NO";
    defparam count_515_add_4_11.INJECT1_1 = "NO";
    CCU2D count_515_add_4_9 (.A0(count[7]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2833), .COUT(n2834), .S0(n57[7]), .S1(n57[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_515_add_4_9.INIT0 = 16'h7888;
    defparam count_515_add_4_9.INIT1 = 16'h7888;
    defparam count_515_add_4_9.INJECT1_0 = "NO";
    defparam count_515_add_4_9.INJECT1_1 = "NO";
    CCU2D count_515_add_4_7 (.A0(count[5]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2832), .COUT(n2833), .S0(n57[5]), .S1(n57[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_515_add_4_7.INIT0 = 16'h7888;
    defparam count_515_add_4_7.INIT1 = 16'h7888;
    defparam count_515_add_4_7.INJECT1_0 = "NO";
    defparam count_515_add_4_7.INJECT1_1 = "NO";
    FD1S3AX count_515__i1 (.D(n57[1]), .CK(clk), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_515__i1.GSR = "ENABLED";
    FD1S3AX count_515__i2 (.D(n57[2]), .CK(clk), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_515__i2.GSR = "ENABLED";
    FD1S3AX count_515__i3 (.D(n57[3]), .CK(clk), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_515__i3.GSR = "ENABLED";
    FD1S3AX count_515__i4 (.D(n57[4]), .CK(clk), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_515__i4.GSR = "ENABLED";
    FD1S3AX count_515__i5 (.D(n57[5]), .CK(clk), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_515__i5.GSR = "ENABLED";
    FD1S3AX count_515__i6 (.D(n57[6]), .CK(clk), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_515__i6.GSR = "ENABLED";
    FD1S3AX count_515__i7 (.D(n57[7]), .CK(clk), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_515__i7.GSR = "ENABLED";
    FD1S3AX count_515__i8 (.D(n57[8]), .CK(clk), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_515__i8.GSR = "ENABLED";
    FD1S3AX count_515__i9 (.D(n57[9]), .CK(clk), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_515__i9.GSR = "ENABLED";
    FD1S3AX count_515__i10 (.D(n57[10]), .CK(clk), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_515__i10.GSR = "ENABLED";
    FD1S3AX count_515__i11 (.D(n57[11]), .CK(clk), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_515__i11.GSR = "ENABLED";
    FD1S3AX count_515__i12 (.D(n57[12]), .CK(clk), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_515__i12.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module \PulseIn(BITS=13)_U2 
//

module \PulseIn(BITS=13)_U2  (\a2_pw[1] , clk, i_a2_pwm_c, GND_net, 
            \a2_pw[2] , \a2_pw[3] , \a2_pw[4] , \a2_pw[5] , \a2_pw[6] , 
            \a2_pw[7] , \a2_pw[8] , \a2_pw[9] , \a2_pw[10] , \a2_pw[11] , 
            \a2_pw[12] ) /* synthesis syn_module_defined=1 */ ;
    output \a2_pw[1] ;
    input clk;
    input i_a2_pwm_c;
    input GND_net;
    output \a2_pw[2] ;
    output \a2_pw[3] ;
    output \a2_pw[4] ;
    output \a2_pw[5] ;
    output \a2_pw[6] ;
    output \a2_pw[7] ;
    output \a2_pw[8] ;
    output \a2_pw[9] ;
    output \a2_pw[10] ;
    output \a2_pw[11] ;
    output \a2_pw[12] ;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(145[7:10])
    
    wire o_pw_12__N_220;
    wire [12:0]count;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(66[23:28])
    
    wire signal_sync1, signal_sync0, signal, high;
    wire [12:0]n100;
    wire [12:0]n57;
    
    wire n2828, n2827, n2826, n2825, n2824, n2823;
    
    FD1P3AX pw__i1 (.D(count[1]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i1.GSR = "ENABLED";
    FD1S3AX signal_sync1_19 (.D(signal_sync0), .CK(clk), .Q(signal_sync1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync1_19.GSR = "ENABLED";
    FD1S3AX signal_20 (.D(signal_sync1), .CK(clk), .Q(signal)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_20.GSR = "ENABLED";
    FD1S3AX high_21 (.D(signal), .CK(clk), .Q(high)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam high_21.GSR = "ENABLED";
    FD1S3AX signal_sync0_18 (.D(i_a2_pwm_c), .CK(clk), .Q(signal_sync0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync0_18.GSR = "ENABLED";
    FD1S3AX count_516__i0 (.D(n57[0]), .CK(clk), .Q(n100[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_516__i0.GSR = "ENABLED";
    CCU2D count_516_add_4_13 (.A0(count[11]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2828), .S0(n57[11]), .S1(n57[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_516_add_4_13.INIT0 = 16'h7888;
    defparam count_516_add_4_13.INIT1 = 16'h7888;
    defparam count_516_add_4_13.INJECT1_0 = "NO";
    defparam count_516_add_4_13.INJECT1_1 = "NO";
    CCU2D count_516_add_4_11 (.A0(count[9]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2827), .COUT(n2828), .S0(n57[9]), .S1(n57[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_516_add_4_11.INIT0 = 16'h7888;
    defparam count_516_add_4_11.INIT1 = 16'h7888;
    defparam count_516_add_4_11.INJECT1_0 = "NO";
    defparam count_516_add_4_11.INJECT1_1 = "NO";
    CCU2D count_516_add_4_9 (.A0(count[7]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2826), .COUT(n2827), .S0(n57[7]), .S1(n57[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_516_add_4_9.INIT0 = 16'h7888;
    defparam count_516_add_4_9.INIT1 = 16'h7888;
    defparam count_516_add_4_9.INJECT1_0 = "NO";
    defparam count_516_add_4_9.INJECT1_1 = "NO";
    CCU2D count_516_add_4_7 (.A0(count[5]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2825), .COUT(n2826), .S0(n57[5]), .S1(n57[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_516_add_4_7.INIT0 = 16'h7888;
    defparam count_516_add_4_7.INIT1 = 16'h7888;
    defparam count_516_add_4_7.INJECT1_0 = "NO";
    defparam count_516_add_4_7.INJECT1_1 = "NO";
    FD1P3AX pw__i2 (.D(count[2]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[2] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i2.GSR = "ENABLED";
    CCU2D count_516_add_4_5 (.A0(count[3]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2824), .COUT(n2825), .S0(n57[3]), .S1(n57[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_516_add_4_5.INIT0 = 16'h7888;
    defparam count_516_add_4_5.INIT1 = 16'h7888;
    defparam count_516_add_4_5.INJECT1_0 = "NO";
    defparam count_516_add_4_5.INJECT1_1 = "NO";
    FD1P3AX pw__i3 (.D(count[3]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[3] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i3.GSR = "ENABLED";
    FD1P3AX pw__i4 (.D(count[4]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[4] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i4.GSR = "ENABLED";
    FD1P3AX pw__i5 (.D(count[5]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[5] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i5.GSR = "ENABLED";
    FD1P3AX pw__i6 (.D(count[6]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[6] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i6.GSR = "ENABLED";
    FD1P3AX pw__i7 (.D(count[7]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[7] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i7.GSR = "ENABLED";
    FD1P3AX pw__i8 (.D(count[8]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[8] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i8.GSR = "ENABLED";
    FD1P3AX pw__i9 (.D(count[9]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[9] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i9.GSR = "ENABLED";
    FD1P3AX pw__i10 (.D(count[10]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[10] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i10.GSR = "ENABLED";
    FD1P3AX pw__i11 (.D(count[11]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[11] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i11.GSR = "ENABLED";
    FD1P3AX pw__i12 (.D(count[12]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[12] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=234, LSE_RLINE=238 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i12.GSR = "ENABLED";
    CCU2D count_516_add_4_3 (.A0(count[1]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2823), .COUT(n2824), .S0(n57[1]), .S1(n57[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_516_add_4_3.INIT0 = 16'h7888;
    defparam count_516_add_4_3.INIT1 = 16'h7888;
    defparam count_516_add_4_3.INJECT1_0 = "NO";
    defparam count_516_add_4_3.INJECT1_1 = "NO";
    CCU2D count_516_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n100[0]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .COUT(n2823), .S1(n57[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_516_add_4_1.INIT0 = 16'hF000;
    defparam count_516_add_4_1.INIT1 = 16'h7777;
    defparam count_516_add_4_1.INJECT1_0 = "NO";
    defparam count_516_add_4_1.INJECT1_1 = "NO";
    FD1S3AX count_516__i1 (.D(n57[1]), .CK(clk), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_516__i1.GSR = "ENABLED";
    FD1S3AX count_516__i2 (.D(n57[2]), .CK(clk), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_516__i2.GSR = "ENABLED";
    FD1S3AX count_516__i3 (.D(n57[3]), .CK(clk), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_516__i3.GSR = "ENABLED";
    FD1S3AX count_516__i4 (.D(n57[4]), .CK(clk), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_516__i4.GSR = "ENABLED";
    FD1S3AX count_516__i5 (.D(n57[5]), .CK(clk), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_516__i5.GSR = "ENABLED";
    FD1S3AX count_516__i6 (.D(n57[6]), .CK(clk), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_516__i6.GSR = "ENABLED";
    FD1S3AX count_516__i7 (.D(n57[7]), .CK(clk), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_516__i7.GSR = "ENABLED";
    FD1S3AX count_516__i8 (.D(n57[8]), .CK(clk), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_516__i8.GSR = "ENABLED";
    FD1S3AX count_516__i9 (.D(n57[9]), .CK(clk), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_516__i9.GSR = "ENABLED";
    FD1S3AX count_516__i10 (.D(n57[10]), .CK(clk), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_516__i10.GSR = "ENABLED";
    FD1S3AX count_516__i11 (.D(n57[11]), .CK(clk), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_516__i11.GSR = "ENABLED";
    FD1S3AX count_516__i12 (.D(n57[12]), .CK(clk), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_516__i12.GSR = "ENABLED";
    LUT4 o_pw_12__I_3_2_lut (.A(signal), .B(high), .Z(o_pw_12__N_220)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(84[7:22])
    defparam o_pw_12__I_3_2_lut.init = 16'h4444;
    
endmodule
//
// Verilog Description of module \PulseIn(BITS=13)_U1 
//

module \PulseIn(BITS=13)_U1  (clk, i_a3_pwm_c, GND_net, n3100, n2865, 
            n3101, \a4_pw[12] , n2950, \a3_pw[12] , n5, n6) /* synthesis syn_module_defined=1 */ ;
    input clk;
    input i_a3_pwm_c;
    input GND_net;
    input n3100;
    input n2865;
    input n3101;
    input \a4_pw[12] ;
    output n2950;
    output \a3_pw[12] ;
    output n5;
    output n6;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(145[7:10])
    wire [12:0]a3_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(185[43:48])
    
    wire o_pw_12__N_220;
    wire [12:0]count;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(66[23:28])
    
    wire signal_sync1, signal_sync0, signal, high;
    wire [12:0]n100;
    wire [12:0]n57;
    
    wire n2782, n2783, n2785, n2786, n2784, n2781, n81, n2862;
    
    FD1P3AX pw__i1 (.D(count[1]), .SP(o_pw_12__N_220), .CK(clk), .Q(a3_pw[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=240, LSE_RLINE=244 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i1.GSR = "ENABLED";
    FD1S3AX signal_sync1_19 (.D(signal_sync0), .CK(clk), .Q(signal_sync1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=240, LSE_RLINE=244 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync1_19.GSR = "ENABLED";
    FD1S3AX signal_20 (.D(signal_sync1), .CK(clk), .Q(signal)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=240, LSE_RLINE=244 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_20.GSR = "ENABLED";
    FD1S3AX high_21 (.D(signal), .CK(clk), .Q(high)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=240, LSE_RLINE=244 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam high_21.GSR = "ENABLED";
    FD1S3AX signal_sync0_18 (.D(i_a3_pwm_c), .CK(clk), .Q(signal_sync0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=240, LSE_RLINE=244 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync0_18.GSR = "ENABLED";
    FD1S3AX count_517__i0 (.D(n57[0]), .CK(clk), .Q(n100[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i0.GSR = "ENABLED";
    CCU2D count_517_add_4_5 (.A0(count[3]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2782), .COUT(n2783), .S0(n57[3]), .S1(n57[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517_add_4_5.INIT0 = 16'h7888;
    defparam count_517_add_4_5.INIT1 = 16'h7888;
    defparam count_517_add_4_5.INJECT1_0 = "NO";
    defparam count_517_add_4_5.INJECT1_1 = "NO";
    CCU2D count_517_add_4_11 (.A0(count[9]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2785), .COUT(n2786), .S0(n57[9]), .S1(n57[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517_add_4_11.INIT0 = 16'h7888;
    defparam count_517_add_4_11.INIT1 = 16'h7888;
    defparam count_517_add_4_11.INJECT1_0 = "NO";
    defparam count_517_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(n3100), .B(n2865), .C(n3101), .D(\a4_pw[12] ), 
         .Z(n2950)) /* synthesis lut_function=(A+(B ((D)+!C)+!B !(C))) */ ;
    defparam i1_4_lut.init = 16'hefaf;
    CCU2D count_517_add_4_9 (.A0(count[7]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2784), .COUT(n2785), .S0(n57[7]), .S1(n57[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517_add_4_9.INIT0 = 16'h7888;
    defparam count_517_add_4_9.INIT1 = 16'h7888;
    defparam count_517_add_4_9.INJECT1_0 = "NO";
    defparam count_517_add_4_9.INJECT1_1 = "NO";
    CCU2D count_517_add_4_3 (.A0(count[1]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2781), .COUT(n2782), .S0(n57[1]), .S1(n57[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517_add_4_3.INIT0 = 16'h7888;
    defparam count_517_add_4_3.INIT1 = 16'h7888;
    defparam count_517_add_4_3.INJECT1_0 = "NO";
    defparam count_517_add_4_3.INJECT1_1 = "NO";
    CCU2D count_517_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n100[0]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .COUT(n2781), .S1(n57[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517_add_4_1.INIT0 = 16'hF000;
    defparam count_517_add_4_1.INIT1 = 16'h7777;
    defparam count_517_add_4_1.INJECT1_0 = "NO";
    defparam count_517_add_4_1.INJECT1_1 = "NO";
    CCU2D count_517_add_4_7 (.A0(count[5]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2783), .COUT(n2784), .S0(n57[5]), .S1(n57[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517_add_4_7.INIT0 = 16'h7888;
    defparam count_517_add_4_7.INIT1 = 16'h7888;
    defparam count_517_add_4_7.INJECT1_0 = "NO";
    defparam count_517_add_4_7.INJECT1_1 = "NO";
    CCU2D count_517_add_4_13 (.A0(count[11]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2786), .S0(n57[11]), .S1(n57[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517_add_4_13.INIT0 = 16'h7888;
    defparam count_517_add_4_13.INIT1 = 16'h7888;
    defparam count_517_add_4_13.INJECT1_0 = "NO";
    defparam count_517_add_4_13.INJECT1_1 = "NO";
    FD1P3AX pw__i2 (.D(count[2]), .SP(o_pw_12__N_220), .CK(clk), .Q(a3_pw[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=240, LSE_RLINE=244 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i2.GSR = "ENABLED";
    FD1P3AX pw__i3 (.D(count[3]), .SP(o_pw_12__N_220), .CK(clk), .Q(a3_pw[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=240, LSE_RLINE=244 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i3.GSR = "ENABLED";
    FD1P3AX pw__i4 (.D(count[4]), .SP(o_pw_12__N_220), .CK(clk), .Q(a3_pw[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=240, LSE_RLINE=244 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i4.GSR = "ENABLED";
    FD1P3AX pw__i5 (.D(count[5]), .SP(o_pw_12__N_220), .CK(clk), .Q(a3_pw[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=240, LSE_RLINE=244 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i5.GSR = "ENABLED";
    FD1P3AX pw__i6 (.D(count[6]), .SP(o_pw_12__N_220), .CK(clk), .Q(a3_pw[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=240, LSE_RLINE=244 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i6.GSR = "ENABLED";
    FD1P3AX pw__i7 (.D(count[7]), .SP(o_pw_12__N_220), .CK(clk), .Q(a3_pw[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=240, LSE_RLINE=244 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i7.GSR = "ENABLED";
    FD1P3AX pw__i8 (.D(count[8]), .SP(o_pw_12__N_220), .CK(clk), .Q(a3_pw[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=240, LSE_RLINE=244 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i8.GSR = "ENABLED";
    FD1P3AX pw__i9 (.D(count[9]), .SP(o_pw_12__N_220), .CK(clk), .Q(a3_pw[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=240, LSE_RLINE=244 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i9.GSR = "ENABLED";
    FD1P3AX pw__i10 (.D(count[10]), .SP(o_pw_12__N_220), .CK(clk), .Q(a3_pw[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=240, LSE_RLINE=244 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i10.GSR = "ENABLED";
    FD1P3AX pw__i11 (.D(count[11]), .SP(o_pw_12__N_220), .CK(clk), .Q(a3_pw[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=240, LSE_RLINE=244 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i11.GSR = "ENABLED";
    FD1P3AX pw__i12 (.D(count[12]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a3_pw[12] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=240, LSE_RLINE=244 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i12.GSR = "ENABLED";
    FD1S3AX count_517__i1 (.D(n57[1]), .CK(clk), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i1.GSR = "ENABLED";
    FD1S3AX count_517__i2 (.D(n57[2]), .CK(clk), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i2.GSR = "ENABLED";
    FD1S3AX count_517__i3 (.D(n57[3]), .CK(clk), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i3.GSR = "ENABLED";
    FD1S3AX count_517__i4 (.D(n57[4]), .CK(clk), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i4.GSR = "ENABLED";
    FD1S3AX count_517__i5 (.D(n57[5]), .CK(clk), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i5.GSR = "ENABLED";
    FD1S3AX count_517__i6 (.D(n57[6]), .CK(clk), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i6.GSR = "ENABLED";
    FD1S3AX count_517__i7 (.D(n57[7]), .CK(clk), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i7.GSR = "ENABLED";
    FD1S3AX count_517__i8 (.D(n57[8]), .CK(clk), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i8.GSR = "ENABLED";
    FD1S3AX count_517__i9 (.D(n57[9]), .CK(clk), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i9.GSR = "ENABLED";
    FD1S3AX count_517__i10 (.D(n57[10]), .CK(clk), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i10.GSR = "ENABLED";
    FD1S3AX count_517__i11 (.D(n57[11]), .CK(clk), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i11.GSR = "ENABLED";
    FD1S3AX count_517__i12 (.D(n57[12]), .CK(clk), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_517__i12.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(a3_pw[11]), .B(a3_pw[9]), .Z(n5)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(185[43:48])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i2_4_lut (.A(a3_pw[10]), .B(a3_pw[8]), .C(n81), .D(a3_pw[7]), 
         .Z(n6)) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(185[43:48])
    defparam i2_4_lut.init = 16'heaaa;
    LUT4 i78_4_lut (.A(a3_pw[5]), .B(a3_pw[6]), .C(n2862), .D(a3_pw[4]), 
         .Z(n81)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(185[43:48])
    defparam i78_4_lut.init = 16'heccc;
    LUT4 i2_3_lut (.A(a3_pw[2]), .B(a3_pw[3]), .C(a3_pw[1]), .Z(n2862)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(185[43:48])
    defparam i2_3_lut.init = 16'hfefe;
    LUT4 o_pw_12__I_3_2_lut (.A(signal), .B(high), .Z(o_pw_12__N_220)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(84[7:22])
    defparam o_pw_12__I_3_2_lut.init = 16'h4444;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module efb
//

module efb (clk, n3098, wb_cyc_i, wb_we_i, GND_net, VCC_net, \wb_adr_i[2] , 
            \wb_adr_i[1] , \wb_adr_i[0] , wb_dat_i, wb_dat_o, wb_ack_o, 
            i2c1_sdaoen, i2c1_sdao, i2c1_scloen, i2c1_sclo, i2c1_sdai, 
            i2c1_scli) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clk;
    input n3098;
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
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(145[7:10])
    wire i2c1_scli /* synthesis is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/efb.v(30[10:19])
    
    EFB EFBInst_0 (.WBCLKI(clk), .WBRSTI(n3098), .WBCYCI(wb_cyc_i), .WBSTBI(wb_cyc_i), 
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
        .I2C1SDAO(i2c1_sdao), .I2C1SDAOEN(i2c1_sdaoen)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=206, LSE_RLINE=218 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(206[6] 218[3])
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
