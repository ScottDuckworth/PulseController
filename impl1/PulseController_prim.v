// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Tue Mar 23 22:39:26 2021
//
// Verilog Description of module PulseController
//

module PulseController (scl, sda, rst, i_a0_pwm, i_a1_pwm, i_a2_pwm, 
            i_a3_pwm, i_a4_pwm, o_select_indicator, o_y0_pwm, o_y1_pwm) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(124[8:23])
    inout scl /* synthesis black_box_pad_pin=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(125[13:16])
    inout sda /* synthesis black_box_pad_pin=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(126[13:16])
    input rst;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(127[13:16])
    input i_a0_pwm;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(128[13:21])
    input i_a1_pwm;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(129[13:21])
    input i_a2_pwm;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(130[13:21])
    input i_a3_pwm;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(131[13:21])
    input i_a4_pwm;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(132[13:21])
    output o_select_indicator;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(133[14:32])
    output o_y0_pwm;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(134[14:22])
    output o_y1_pwm;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(135[14:22])
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(138[7:10])
    wire i2c1_scli /* synthesis is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/efb.v(30[10:19])
    
    wire GND_net, VCC_net, rst_c, i_a0_pwm_c, i_a1_pwm_c, i_a2_pwm_c, 
        i_a3_pwm_c, i_a4_pwm_c, o_select_indicator_c, o_y0_pwm_c, o_y1_pwm_c, 
        wb_cyc_i, wb_we_i;
    wire [7:0]wb_adr_i;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(143[13:21])
    wire [7:0]wb_dat_i;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(144[13:21])
    wire [7:0]wb_dat_o;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(145[13:21])
    
    wire wb_ack_o;
    wire [2:0]count;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(171[12:17])
    wire [12:0]i2c_pw0;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(173[21:28])
    wire [12:0]i2c_pw1;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(173[30:37])
    
    wire a0_rise, a1_rise;
    wire [12:0]a0_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(178[22:27])
    wire [12:0]a1_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(178[29:34])
    wire [12:0]a2_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(178[36:41])
    wire [12:0]a3_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(178[43:48])
    wire [12:0]a4_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(178[50:55])
    wire [12:0]b0_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(180[22:27])
    wire [12:0]b1_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(180[29:34])
    wire [12:0]y0_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(182[22:27])
    wire [12:0]y1_pw;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(182[29:34])
    
    wire rst_N_18;
    wire [12:0]y0_pw_12__N_78;
    wire [12:0]y1_pw_12__N_91;
    
    wire n1970, n1415, n1974, n1440, n1439, n1410, n1409, n1408, 
        n1438, n1436, n1584, n1591, n1407, n1406, n1401, n1400, 
        n1399, n2166, n253, n1583, n1754, n1427, n2870, n1426, 
        n1746, n1544, n1750, n1590, n1425, n1422, n1421, n1538, 
        n1420, n1419, n1738, wb_we_i_N_193, n3, n4;
    wire [12:0]i2c_pw1_12__N_39;
    
    wire n2868, n2838, i2c1_sdaoen, n1594, i2c1_sdao, i2c1_scloen, 
        i2c1_sclo, i2c1_sdai, n1589, n1593, clk_enable_54, n14, 
        n1735, n1742, n2424, n2798, n2158, n1588, n3028, n14_adj_266, 
        n1586, n1587, clk_enable_47, n2796, n3046, n2802, n1585, 
        n1089, n1088, n1418, n14_adj_267, clk_enable_56, n1592, 
        n1962, clk_enable_11, clk_enable_42, n2954, n2953, clk_enable_65, 
        clk_enable_18, n764, n765, n766, n767, n768, n769, n770, 
        n771, n772, n773, n774, n775, n2162, n1749, n2793, n3044, 
        n1417, n1416, n3043, n2797, n2161, n2165, n2852, n3042, 
        n3041, n2883, n3045, n5, n3040, n6, n5_adj_268, clk_enable_67, 
        n3038, n1964, n1968, n1971, n3037, n3036, n3035, n2875, 
        n4_adj_269, n3034, n6_adj_270, n3033, n3032, n2842, n5_adj_271, 
        n3027, n12, n6_adj_272, n6_adj_273;
    
    VHI i2 (.Z(VCC_net));
    \PulseOut(BITS=13)  y1_pulseout (.clk(clk), .o_y1_pwm_c(o_y1_pwm_c), 
            .y1_pw({y1_pw}), .a1_rise(a1_rise), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(252[30] 257[3])
    FD1S3AX y1_pw_i0 (.D(y1_pw_12__N_91[0]), .CK(clk), .Q(y1_pw[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y1_pw_i0.GSR = "ENABLED";
    LUT4 i1313_4_lut (.A(i2c_pw0[12]), .B(n3036), .C(i2c_pw0[4]), .D(count[1]), 
         .Z(n1418)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1313_4_lut.init = 16'hc088;
    FD1P3IX count__i0 (.D(n2424), .SP(clk_enable_56), .CD(rst_N_18), .CK(clk), 
            .Q(count[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam count__i0.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(wb_dat_o[4]), .B(wb_dat_o[2]), .C(n770), .D(n766), 
         .Z(n6_adj_270)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1_4_lut.init = 16'hdc50;
    FD1P3AX i2c_pw0_i0_i0 (.D(n2158), .SP(clk_enable_54), .CK(clk), .Q(i2c_pw0[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw0_i0_i0.GSR = "ENABLED";
    LUT4 i2_3_lut (.A(a2_pw[3]), .B(a2_pw[2]), .C(a2_pw[1]), .Z(n2798)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut.init = 16'hfefe;
    IB i_a2_pwm_pad (.I(i_a2_pwm), .O(i_a2_pwm_c));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(130[13:21])
    LUT4 mux_486_i11_3_lut_4_lut (.A(n767), .B(n3037), .C(wb_dat_o[2]), 
         .D(a0_pw[10]), .Z(n1592)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_486_i11_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_272_i10_3_lut (.A(a1_pw[9]), .B(wb_dat_o[1]), .C(n767), .Z(i2c_pw1_12__N_39[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_272_i10_3_lut.init = 16'hcaca;
    LUT4 i1771_3_lut_4_lut (.A(count[2]), .B(n3038), .C(n767), .D(n769), 
         .Z(clk_enable_18)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(345[5] 355[12])
    defparam i1771_3_lut_4_lut.init = 16'h0400;
    OSCH internal_oscillator (.STDBY(GND_net), .OSC(clk)) /* synthesis syn_instantiated=1 */ ;
    defparam internal_oscillator.NOM_FREQ = "3.02";
    BB BB1_sda (.I(i2c1_sdao), .T(i2c1_sdaoen), .B(sda), .O(i2c1_sdai)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=199, LSE_RLINE=211 */ ;   // c:/users/scott/documents/pulsecontroller/efb.v(36[8:77])
    LUT4 mux_272_i9_3_lut (.A(a1_pw[8]), .B(wb_dat_o[0]), .C(n767), .Z(i2c_pw1_12__N_39[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_272_i9_3_lut.init = 16'hcaca;
    LUT4 i962_1_lut_rep_21 (.A(n775), .Z(clk_enable_67)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i962_1_lut_rep_21.init = 16'h5555;
    LUT4 i1045_2_lut_2_lut (.A(n775), .B(n774), .Z(n2162)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1045_2_lut_2_lut.init = 16'h4444;
    LUT4 i1350_2_lut_3_lut (.A(count[2]), .B(n765), .C(i2c_pw1[5]), .Z(n1427)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1350_2_lut_3_lut.init = 16'h2020;
    LUT4 i1351_2_lut_3_lut (.A(count[2]), .B(n765), .C(i2c_pw1[6]), .Z(n1426)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1351_2_lut_3_lut.init = 16'h2020;
    LUT4 i1352_2_lut_3_lut (.A(count[2]), .B(n765), .C(i2c_pw1[7]), .Z(n1425)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1352_2_lut_3_lut.init = 16'h2020;
    LUT4 i1276_2_lut_rep_19 (.A(count[2]), .B(count[1]), .Z(n3037)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1276_2_lut_rep_19.init = 16'heeee;
    LUT4 i1756_2_lut_rep_22 (.A(wb_ack_o), .B(wb_cyc_i), .Z(n3040)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(424[5] 429[8])
    defparam i1756_2_lut_rep_22.init = 16'h7777;
    LUT4 i1_4_lut_then_4_lut (.A(count[0]), .B(count[1]), .C(n767), .D(count[2]), 
         .Z(n3046)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(C+(D))))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h0021;
    FD1S3AX wb_we_i_112 (.D(n2161), .CK(clk), .Q(wb_we_i));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam wb_we_i_112.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i0 (.D(i2c_pw0[0]), .SP(clk_enable_42), .CK(clk), 
            .Q(b0_pw[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b0_pw_i0_i0.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i0 (.D(wb_dat_o[0]), .SP(clk_enable_42), .CK(clk), 
            .Q(b1_pw[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b1_pw_i0_i0.GSR = "ENABLED";
    FD1P3AX i2c_pw1_i0 (.D(a1_pw[0]), .SP(clk_enable_18), .CK(clk), .Q(i2c_pw1[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw1_i0.GSR = "ENABLED";
    FD1S3AX y0_pw_i0 (.D(y0_pw_12__N_78[0]), .CK(clk), .Q(y0_pw[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y0_pw_i0.GSR = "ENABLED";
    PFUMX i847 (.BLUT(n1422), .ALUT(n1410), .C0(n1962), .Z(n1964));
    BB BB1_scl (.I(i2c1_sclo), .T(i2c1_scloen), .B(scl), .O(i2c1_scli)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=199, LSE_RLINE=211 */ ;   // c:/users/scott/documents/pulsecontroller/efb.v(38[8:77])
    \PulseIn(BITS=13)  a4_pulsein (.\a4_pw[1] (a4_pw[1]), .clk(clk), .i_a4_pwm_c(i_a4_pwm_c), 
            .\a4_pw[12] (a4_pw[12]), .\a4_pw[11] (a4_pw[11]), .\a4_pw[10] (a4_pw[10]), 
            .\a4_pw[9] (a4_pw[9]), .\a4_pw[8] (a4_pw[8]), .\a4_pw[7] (a4_pw[7]), 
            .\a4_pw[6] (a4_pw[6]), .\a4_pw[5] (a4_pw[5]), .\a4_pw[4] (a4_pw[4]), 
            .\a4_pw[3] (a4_pw[3]), .\a4_pw[2] (a4_pw[2]), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(239[29] 243[3])
    LUT4 a0_pw_12__I_0_i1_3_lut (.A(a0_pw[0]), .B(b0_pw[0]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a0_pw_12__I_0_i1_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut (.A(count[2]), .B(count[1]), .C(n3041), .D(count[0]), 
         .Z(clk_enable_47)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0010;
    LUT4 i1762_2_lut_rep_20 (.A(count[1]), .B(count[0]), .Z(n3038)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1762_2_lut_rep_20.init = 16'h1111;
    LUT4 i1_4_lut_else_4_lut (.A(count[0]), .B(count[1]), .C(n767), .D(count[2]), 
         .Z(n3045)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h0020;
    LUT4 i2_3_lut_rep_16_4_lut (.A(count[1]), .B(count[0]), .C(count[2]), 
         .D(n769), .Z(n3034)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2_3_lut_rep_16_4_lut.init = 16'he000;
    LUT4 n1419_bdd_4_lut (.A(n1419), .B(n1407), .C(n1962), .D(n765), 
         .Z(n3028)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n1419_bdd_4_lut.init = 16'hffca;
    LUT4 mux_412_i4_3_lut (.A(i2c_pw1[11]), .B(i2c_pw1[3]), .C(count[2]), 
         .Z(n1407)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_412_i4_3_lut.init = 16'hcaca;
    LUT4 i1312_4_lut (.A(i2c_pw0[11]), .B(n3036), .C(i2c_pw0[3]), .D(count[1]), 
         .Z(n1419)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1312_4_lut.init = 16'hc088;
    LUT4 i1736_3_lut_4_lut (.A(o_select_indicator_c), .B(n3033), .C(n3036), 
         .D(n1401), .Z(n1422)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1736_3_lut_4_lut.init = 16'hf808;
    LUT4 i1766_3_lut (.A(n765), .B(n3034), .C(n774), .Z(n2165)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i1766_3_lut.init = 16'h3232;
    LUT4 i1041_3_lut_4_lut (.A(n767), .B(n3037), .C(wb_dat_o[0]), .D(a0_pw[0]), 
         .Z(n2158)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1041_3_lut_4_lut.init = 16'hfd20;
    LUT4 i5_4_lut (.A(n771), .B(n772), .C(n770), .D(n764), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i5_4_lut.init = 16'hfffe;
    FD1S3JX state_FSM_i1 (.D(n1735), .CK(clk), .PD(rst_N_18), .Q(n775));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam state_FSM_i1.GSR = "ENABLED";
    IB i_a3_pwm_pad (.I(i_a3_pwm), .O(i_a3_pwm_c));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(131[13:21])
    LUT4 i1_2_lut_3_lut (.A(count[1]), .B(count[0]), .C(count[2]), .Z(n253)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hefef;
    LUT4 a1_pw_12__I_0_i13_3_lut (.A(a1_pw[12]), .B(b1_pw[12]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a1_pw_12__I_0_i13_3_lut.init = 16'hcaca;
    LUT4 a1_pw_12__I_0_i12_3_lut (.A(a1_pw[11]), .B(b1_pw[11]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a1_pw_12__I_0_i12_3_lut.init = 16'hcaca;
    LUT4 mux_412_i5_3_lut (.A(i2c_pw1[12]), .B(i2c_pw1[4]), .C(count[2]), 
         .Z(n1406)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_412_i5_3_lut.init = 16'hcaca;
    LUT4 a1_pw_12__I_0_i11_3_lut (.A(a1_pw[10]), .B(b1_pw[10]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a1_pw_12__I_0_i11_3_lut.init = 16'hcaca;
    LUT4 i846_2_lut (.A(n1962), .B(n765), .Z(n1436)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i846_2_lut.init = 16'heeee;
    IB i_a1_pwm_pad (.I(i_a1_pwm), .O(i_a1_pwm_c));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(129[13:21])
    IB i_a0_pwm_pad (.I(i_a0_pwm), .O(i_a0_pwm_c));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(128[13:21])
    IB rst_pad (.I(rst), .O(rst_c));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(127[13:16])
    LUT4 i1_4_lut_adj_4 (.A(a4_pw[8]), .B(a4_pw[10]), .C(a4_pw[7]), .D(n14), 
         .Z(n5)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_4.init = 16'heccc;
    LUT4 a1_pw_12__I_0_i10_3_lut (.A(a1_pw[9]), .B(b1_pw[9]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a1_pw_12__I_0_i10_3_lut.init = 16'hcaca;
    OB o_y1_pwm_pad (.I(o_y1_pwm_c), .O(o_y1_pwm));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(135[14:22])
    LUT4 i517_4_lut (.A(n775), .B(rst_c), .C(n3040), .D(n2883), .Z(clk_enable_56)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B (C+!(D))))) */ ;
    defparam i517_4_lut.init = 16'h3fbb;
    LUT4 i579_4_lut (.A(a4_pw[5]), .B(a4_pw[6]), .C(a4_pw[4]), .D(n2796), 
         .Z(n14)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i579_4_lut.init = 16'heccc;
    LUT4 i2_3_lut_adj_5 (.A(a4_pw[3]), .B(a4_pw[2]), .C(a4_pw[1]), .Z(n2796)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_5.init = 16'hfefe;
    LUT4 a1_pw_12__I_0_i9_3_lut (.A(a1_pw[8]), .B(b1_pw[8]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a1_pw_12__I_0_i9_3_lut.init = 16'hcaca;
    LUT4 i1302_2_lut_3_lut_4_lut (.A(wb_ack_o), .B(wb_cyc_i), .C(n3043), 
         .D(n770), .Z(n1088)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(424[5] 429[8])
    defparam i1302_2_lut_3_lut_4_lut.init = 16'h70f0;
    OB o_y0_pwm_pad (.I(o_y0_pwm_c), .O(o_y0_pwm));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(134[14:22])
    LUT4 i19_3_lut_4_lut (.A(wb_ack_o), .B(wb_cyc_i), .C(n6_adj_273), 
         .D(n769), .Z(n2838)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(424[5] 429[8])
    defparam i19_3_lut_4_lut.init = 16'hf780;
    LUT4 a1_pw_12__I_0_i8_3_lut (.A(a1_pw[7]), .B(b1_pw[7]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a1_pw_12__I_0_i8_3_lut.init = 16'hcaca;
    LUT4 i19_3_lut_4_lut_adj_6 (.A(wb_ack_o), .B(wb_cyc_i), .C(n6_adj_270), 
         .D(n767), .Z(n2842)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(424[5] 429[8])
    defparam i19_3_lut_4_lut_adj_6.init = 16'hf780;
    OB o_select_indicator_pad (.I(o_select_indicator_c), .O(o_select_indicator));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(133[14:32])
    LUT4 i634_2_lut_3_lut_4_lut (.A(wb_ack_o), .B(wb_cyc_i), .C(n768), 
         .D(wb_dat_o[2]), .Z(n1749)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(424[5] 429[8])
    defparam i634_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 a1_pw_12__I_0_i7_3_lut (.A(a1_pw[6]), .B(b1_pw[6]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a1_pw_12__I_0_i7_3_lut.init = 16'hcaca;
    LUT4 n2953_bdd_3_lut_4_lut (.A(wb_ack_o), .B(wb_cyc_i), .C(n771), 
         .D(n2953), .Z(n2954)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(424[5] 429[8])
    defparam n2953_bdd_3_lut_4_lut.init = 16'hf870;
    LUT4 i1769_2_lut_3_lut_4_lut (.A(wb_ack_o), .B(wb_cyc_i), .C(count[0]), 
         .D(n770), .Z(n2424)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(424[5] 429[8])
    defparam i1769_2_lut_3_lut_4_lut.init = 16'h070f;
    PFUMX mux_423_i8 (.BLUT(n1415), .ALUT(n1425), .C0(n1436), .Z(n1438));
    LUT4 a1_pw_12__I_0_i1_3_lut (.A(a1_pw[0]), .B(b1_pw[0]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a1_pw_12__I_0_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_23 (.A(n767), .B(n769), .Z(n3041)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1_2_lut_rep_23.init = 16'heeee;
    LUT4 a1_pw_12__I_0_i6_3_lut (.A(a1_pw[5]), .B(b1_pw[5]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a1_pw_12__I_0_i6_3_lut.init = 16'hcaca;
    LUT4 i1357_2_lut (.A(n1970), .B(n765), .Z(n1971)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1357_2_lut.init = 16'heeee;
    FD1P3AX wb_adr_i__i2 (.D(n2793), .SP(clk_enable_67), .CK(clk), .Q(wb_adr_i[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam wb_adr_i__i2.GSR = "ENABLED";
    LUT4 rst_I_0_1_lut (.A(rst_c), .Z(rst_N_18)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(201[13:17])
    defparam rst_I_0_1_lut.init = 16'h5555;
    LUT4 i620_2_lut_3_lut_4_lut (.A(count[1]), .B(count[0]), .C(n775), 
         .D(count[2]), .Z(n1735)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(391[15:27])
    defparam i620_2_lut_3_lut_4_lut.init = 16'h70f0;
    LUT4 a1_pw_12__I_0_i5_3_lut (.A(a1_pw[4]), .B(b1_pw[4]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a1_pw_12__I_0_i5_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_rep_17_4_lut (.A(n767), .B(n769), .C(n775), .D(n774), 
         .Z(n3035)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1_3_lut_rep_17_4_lut.init = 16'hfffe;
    LUT4 a1_pw_12__I_0_i4_3_lut (.A(a1_pw[3]), .B(b1_pw[3]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a1_pw_12__I_0_i4_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_7 (.A(n767), .B(n769), .C(n770), .Z(n2883)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1_2_lut_3_lut_adj_7.init = 16'hfefe;
    FD1S3AX y0_pw_i12 (.D(y0_pw_12__N_78[12]), .CK(clk), .Q(y0_pw[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y0_pw_i12.GSR = "ENABLED";
    PFUMX mux_423_i7 (.BLUT(n1416), .ALUT(n1426), .C0(n1436), .Z(n1439));
    FD1S3AX y0_pw_i11 (.D(y0_pw_12__N_78[11]), .CK(clk), .Q(y0_pw[11]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y0_pw_i11.GSR = "ENABLED";
    FD1S3AX y0_pw_i10 (.D(y0_pw_12__N_78[10]), .CK(clk), .Q(y0_pw[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y0_pw_i10.GSR = "ENABLED";
    FD1S3AX y0_pw_i9 (.D(y0_pw_12__N_78[9]), .CK(clk), .Q(y0_pw[9]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y0_pw_i9.GSR = "ENABLED";
    FD1S3AX y0_pw_i8 (.D(y0_pw_12__N_78[8]), .CK(clk), .Q(y0_pw[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y0_pw_i8.GSR = "ENABLED";
    FD1S3AX y0_pw_i7 (.D(y0_pw_12__N_78[7]), .CK(clk), .Q(y0_pw[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y0_pw_i7.GSR = "ENABLED";
    FD1S3AX y0_pw_i6 (.D(y0_pw_12__N_78[6]), .CK(clk), .Q(y0_pw[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y0_pw_i6.GSR = "ENABLED";
    FD1S3AX y0_pw_i5 (.D(y0_pw_12__N_78[5]), .CK(clk), .Q(y0_pw[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y0_pw_i5.GSR = "ENABLED";
    FD1S3AX y0_pw_i4 (.D(y0_pw_12__N_78[4]), .CK(clk), .Q(y0_pw[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y0_pw_i4.GSR = "ENABLED";
    FD1S3AX y0_pw_i3 (.D(y0_pw_12__N_78[3]), .CK(clk), .Q(y0_pw[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y0_pw_i3.GSR = "ENABLED";
    FD1S3AX y0_pw_i2 (.D(y0_pw_12__N_78[2]), .CK(clk), .Q(y0_pw[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y0_pw_i2.GSR = "ENABLED";
    FD1S3AX y0_pw_i1 (.D(y0_pw_12__N_78[1]), .CK(clk), .Q(y0_pw[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y0_pw_i1.GSR = "ENABLED";
    FD1P3AX i2c_pw1_i12 (.D(i2c_pw1_12__N_39[12]), .SP(clk_enable_11), .CK(clk), 
            .Q(i2c_pw1[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw1_i12.GSR = "ENABLED";
    FD1P3AX i2c_pw1_i11 (.D(i2c_pw1_12__N_39[11]), .SP(clk_enable_11), .CK(clk), 
            .Q(i2c_pw1[11]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw1_i11.GSR = "ENABLED";
    FD1P3AX i2c_pw1_i10 (.D(i2c_pw1_12__N_39[10]), .SP(clk_enable_11), .CK(clk), 
            .Q(i2c_pw1[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw1_i10.GSR = "ENABLED";
    FD1P3AX i2c_pw1_i9 (.D(i2c_pw1_12__N_39[9]), .SP(clk_enable_11), .CK(clk), 
            .Q(i2c_pw1[9]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw1_i9.GSR = "ENABLED";
    FD1P3AX i2c_pw1_i8 (.D(i2c_pw1_12__N_39[8]), .SP(clk_enable_11), .CK(clk), 
            .Q(i2c_pw1[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw1_i8.GSR = "ENABLED";
    FD1P3AX i2c_pw1_i7 (.D(a1_pw[7]), .SP(clk_enable_18), .CK(clk), .Q(i2c_pw1[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw1_i7.GSR = "ENABLED";
    FD1P3AX i2c_pw1_i6 (.D(a1_pw[6]), .SP(clk_enable_18), .CK(clk), .Q(i2c_pw1[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw1_i6.GSR = "ENABLED";
    FD1P3AX i2c_pw1_i5 (.D(a1_pw[5]), .SP(clk_enable_18), .CK(clk), .Q(i2c_pw1[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw1_i5.GSR = "ENABLED";
    FD1P3AX i2c_pw1_i4 (.D(a1_pw[4]), .SP(clk_enable_18), .CK(clk), .Q(i2c_pw1[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw1_i4.GSR = "ENABLED";
    FD1P3AX i2c_pw1_i3 (.D(a1_pw[3]), .SP(clk_enable_18), .CK(clk), .Q(i2c_pw1[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw1_i3.GSR = "ENABLED";
    FD1P3AX i2c_pw1_i2 (.D(a1_pw[2]), .SP(clk_enable_18), .CK(clk), .Q(i2c_pw1[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw1_i2.GSR = "ENABLED";
    FD1P3AX i2c_pw1_i1 (.D(a1_pw[1]), .SP(clk_enable_18), .CK(clk), .Q(i2c_pw1[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw1_i1.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i12 (.D(i2c_pw1[12]), .SP(clk_enable_42), .CK(clk), 
            .Q(b1_pw[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b1_pw_i0_i12.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i11 (.D(i2c_pw1[11]), .SP(clk_enable_42), .CK(clk), 
            .Q(b1_pw[11]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b1_pw_i0_i11.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i10 (.D(i2c_pw1[10]), .SP(clk_enable_42), .CK(clk), 
            .Q(b1_pw[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b1_pw_i0_i10.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i9 (.D(i2c_pw1[9]), .SP(clk_enable_42), .CK(clk), 
            .Q(b1_pw[9]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b1_pw_i0_i9.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i8 (.D(i2c_pw1[8]), .SP(clk_enable_42), .CK(clk), 
            .Q(b1_pw[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b1_pw_i0_i8.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i7 (.D(wb_dat_o[7]), .SP(clk_enable_42), .CK(clk), 
            .Q(b1_pw[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b1_pw_i0_i7.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i6 (.D(wb_dat_o[6]), .SP(clk_enable_42), .CK(clk), 
            .Q(b1_pw[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b1_pw_i0_i6.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i5 (.D(wb_dat_o[5]), .SP(clk_enable_42), .CK(clk), 
            .Q(b1_pw[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b1_pw_i0_i5.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i4 (.D(wb_dat_o[4]), .SP(clk_enable_42), .CK(clk), 
            .Q(b1_pw[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b1_pw_i0_i4.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i3 (.D(wb_dat_o[3]), .SP(clk_enable_42), .CK(clk), 
            .Q(b1_pw[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b1_pw_i0_i3.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i2 (.D(wb_dat_o[2]), .SP(clk_enable_42), .CK(clk), 
            .Q(b1_pw[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b1_pw_i0_i2.GSR = "ENABLED";
    FD1P3AX b1_pw_i0_i1 (.D(wb_dat_o[1]), .SP(clk_enable_42), .CK(clk), 
            .Q(b1_pw[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b1_pw_i0_i1.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i12 (.D(i2c_pw0[12]), .SP(clk_enable_42), .CK(clk), 
            .Q(b0_pw[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b0_pw_i0_i12.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i11 (.D(i2c_pw0[11]), .SP(clk_enable_42), .CK(clk), 
            .Q(b0_pw[11]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b0_pw_i0_i11.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i10 (.D(i2c_pw0[10]), .SP(clk_enable_42), .CK(clk), 
            .Q(b0_pw[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b0_pw_i0_i10.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i9 (.D(i2c_pw0[9]), .SP(clk_enable_42), .CK(clk), 
            .Q(b0_pw[9]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b0_pw_i0_i9.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i8 (.D(i2c_pw0[8]), .SP(clk_enable_42), .CK(clk), 
            .Q(b0_pw[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b0_pw_i0_i8.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i7 (.D(i2c_pw0[7]), .SP(clk_enable_42), .CK(clk), 
            .Q(b0_pw[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b0_pw_i0_i7.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i6 (.D(i2c_pw0[6]), .SP(clk_enable_42), .CK(clk), 
            .Q(b0_pw[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b0_pw_i0_i6.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i5 (.D(i2c_pw0[5]), .SP(clk_enable_42), .CK(clk), 
            .Q(b0_pw[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b0_pw_i0_i5.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i4 (.D(i2c_pw0[4]), .SP(clk_enable_42), .CK(clk), 
            .Q(b0_pw[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b0_pw_i0_i4.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i3 (.D(i2c_pw0[3]), .SP(clk_enable_42), .CK(clk), 
            .Q(b0_pw[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b0_pw_i0_i3.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i2 (.D(i2c_pw0[2]), .SP(clk_enable_42), .CK(clk), 
            .Q(b0_pw[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b0_pw_i0_i2.GSR = "ENABLED";
    FD1P3AX b0_pw_i0_i1 (.D(i2c_pw0[1]), .SP(clk_enable_42), .CK(clk), 
            .Q(b0_pw[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam b0_pw_i0_i1.GSR = "ENABLED";
    FD1P3AX i2c_pw0_i0_i12 (.D(n1594), .SP(clk_enable_47), .CK(clk), .Q(i2c_pw0[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw0_i0_i12.GSR = "ENABLED";
    FD1P3AX i2c_pw0_i0_i11 (.D(n1593), .SP(clk_enable_47), .CK(clk), .Q(i2c_pw0[11]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw0_i0_i11.GSR = "ENABLED";
    FD1P3AX i2c_pw0_i0_i10 (.D(n1592), .SP(clk_enable_47), .CK(clk), .Q(i2c_pw0[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw0_i0_i10.GSR = "ENABLED";
    FD1P3AX i2c_pw0_i0_i9 (.D(n1591), .SP(clk_enable_47), .CK(clk), .Q(i2c_pw0[9]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw0_i0_i9.GSR = "ENABLED";
    FD1P3AX i2c_pw0_i0_i8 (.D(n1590), .SP(clk_enable_47), .CK(clk), .Q(i2c_pw0[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw0_i0_i8.GSR = "ENABLED";
    FD1P3AX i2c_pw0_i0_i7 (.D(n1589), .SP(clk_enable_54), .CK(clk), .Q(i2c_pw0[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw0_i0_i7.GSR = "ENABLED";
    FD1P3AX i2c_pw0_i0_i6 (.D(n1588), .SP(clk_enable_54), .CK(clk), .Q(i2c_pw0[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw0_i0_i6.GSR = "ENABLED";
    FD1P3AX i2c_pw0_i0_i5 (.D(n1587), .SP(clk_enable_54), .CK(clk), .Q(i2c_pw0[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw0_i0_i5.GSR = "ENABLED";
    FD1P3AX i2c_pw0_i0_i4 (.D(n1586), .SP(clk_enable_54), .CK(clk), .Q(i2c_pw0[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw0_i0_i4.GSR = "ENABLED";
    FD1P3AX i2c_pw0_i0_i3 (.D(n1585), .SP(clk_enable_54), .CK(clk), .Q(i2c_pw0[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw0_i0_i3.GSR = "ENABLED";
    FD1P3AX i2c_pw0_i0_i2 (.D(n1584), .SP(clk_enable_54), .CK(clk), .Q(i2c_pw0[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw0_i0_i2.GSR = "ENABLED";
    FD1P3AX i2c_pw0_i0_i1 (.D(n1583), .SP(clk_enable_54), .CK(clk), .Q(i2c_pw0[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i2c_pw0_i0_i1.GSR = "ENABLED";
    FD1P3IX count__i2 (.D(n1089), .SP(clk_enable_56), .CD(rst_N_18), .CK(clk), 
            .Q(count[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam count__i2.GSR = "ENABLED";
    LUT4 i1279_2_lut_4_lut_4_lut (.A(n767), .B(n769), .C(n775), .D(n774), 
         .Z(n1544)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1279_2_lut_4_lut_4_lut.init = 16'haaab;
    LUT4 i2_2_lut (.A(a4_pw[11]), .B(a4_pw[9]), .Z(n6_adj_272)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i596_4_lut (.A(n5_adj_271), .B(a2_pw[12]), .C(a2_pw[11]), .D(a2_pw[9]), 
         .Z(o_select_indicator_c)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i596_4_lut.init = 16'hccc8;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 a1_pw_12__I_0_i3_3_lut (.A(a1_pw[2]), .B(b1_pw[2]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a1_pw_12__I_0_i3_3_lut.init = 16'hcaca;
    \PulseIn(BITS=13)_U1  a3_pulsein (.clk(clk), .\a3_pw[1] (a3_pw[1]), 
            .i_a3_pwm_c(i_a3_pwm_c), .\a3_pw[12] (a3_pw[12]), .\a3_pw[11] (a3_pw[11]), 
            .\a3_pw[10] (a3_pw[10]), .\a3_pw[9] (a3_pw[9]), .\a3_pw[8] (a3_pw[8]), 
            .\a3_pw[7] (a3_pw[7]), .\a3_pw[6] (a3_pw[6]), .\a3_pw[5] (a3_pw[5]), 
            .\a3_pw[4] (a3_pw[4]), .\a3_pw[3] (a3_pw[3]), .\a3_pw[2] (a3_pw[2]), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(233[29] 237[3])
    FD1P3IX count__i1 (.D(n1088), .SP(clk_enable_56), .CD(rst_N_18), .CK(clk), 
            .Q(count[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam count__i1.GSR = "ENABLED";
    FD1S3AX y1_pw_i12 (.D(y1_pw_12__N_91[12]), .CK(clk), .Q(y1_pw[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y1_pw_i12.GSR = "ENABLED";
    FD1S3AX y1_pw_i11 (.D(y1_pw_12__N_91[11]), .CK(clk), .Q(y1_pw[11]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y1_pw_i11.GSR = "ENABLED";
    FD1S3AX y1_pw_i10 (.D(y1_pw_12__N_91[10]), .CK(clk), .Q(y1_pw[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y1_pw_i10.GSR = "ENABLED";
    FD1S3AX y1_pw_i9 (.D(y1_pw_12__N_91[9]), .CK(clk), .Q(y1_pw[9]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y1_pw_i9.GSR = "ENABLED";
    FD1S3AX y1_pw_i8 (.D(y1_pw_12__N_91[8]), .CK(clk), .Q(y1_pw[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y1_pw_i8.GSR = "ENABLED";
    FD1S3AX y1_pw_i7 (.D(y1_pw_12__N_91[7]), .CK(clk), .Q(y1_pw[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y1_pw_i7.GSR = "ENABLED";
    FD1S3AX y1_pw_i6 (.D(y1_pw_12__N_91[6]), .CK(clk), .Q(y1_pw[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y1_pw_i6.GSR = "ENABLED";
    FD1S3AX y1_pw_i5 (.D(y1_pw_12__N_91[5]), .CK(clk), .Q(y1_pw[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y1_pw_i5.GSR = "ENABLED";
    FD1S3AX y1_pw_i4 (.D(y1_pw_12__N_91[4]), .CK(clk), .Q(y1_pw[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y1_pw_i4.GSR = "ENABLED";
    FD1S3AX y1_pw_i3 (.D(y1_pw_12__N_91[3]), .CK(clk), .Q(y1_pw[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y1_pw_i3.GSR = "ENABLED";
    FD1S3AX y1_pw_i2 (.D(y1_pw_12__N_91[2]), .CK(clk), .Q(y1_pw[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y1_pw_i2.GSR = "ENABLED";
    FD1S3AX y1_pw_i1 (.D(y1_pw_12__N_91[1]), .CK(clk), .Q(y1_pw[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(259[9] 268[5])
    defparam y1_pw_i1.GSR = "ENABLED";
    FD1S3IX state_FSM_i2 (.D(n1738), .CK(clk), .CD(rst_N_18), .Q(n774));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam state_FSM_i2.GSR = "ENABLED";
    IB i_a4_pwm_pad (.I(i_a4_pwm), .O(i_a4_pwm_c));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(132[13:21])
    LUT4 a1_pw_12__I_0_i2_3_lut (.A(a1_pw[1]), .B(b1_pw[1]), .C(o_select_indicator_c), 
         .Z(y1_pw_12__N_91[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a1_pw_12__I_0_i2_3_lut.init = 16'hcaca;
    LUT4 i623_4_lut (.A(n774), .B(n3032), .C(n3040), .D(n775), .Z(n1738)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i623_4_lut.init = 16'heca0;
    PFUMX mux_423_i6 (.BLUT(n1417), .ALUT(n1427), .C0(n1436), .Z(n1440));
    LUT4 i12_4_lut (.A(n765), .B(n253), .C(n3040), .D(n769), .Z(n2852)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+(C+!(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i12_4_lut.init = 16'ha3a0;
    LUT4 i1_2_lut_rep_24 (.A(n769), .B(count[2]), .Z(n3042)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1_2_lut_rep_24.init = 16'h2222;
    LUT4 mux_411_i1_3_lut (.A(i2c_pw0[8]), .B(i2c_pw0[0]), .C(count[1]), 
         .Z(n1401)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_411_i1_3_lut.init = 16'hcaca;
    LUT4 mux_412_i1_3_lut (.A(i2c_pw1[8]), .B(i2c_pw1[0]), .C(count[2]), 
         .Z(n1410)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_412_i1_3_lut.init = 16'hcaca;
    LUT4 mux_411_i2_3_lut (.A(i2c_pw0[9]), .B(i2c_pw0[1]), .C(count[1]), 
         .Z(n1400)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_411_i2_3_lut.init = 16'hcaca;
    LUT4 i18_4_lut (.A(n773), .B(n3), .C(n3040), .D(n774), .Z(n2870)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B (C)+!B (C+!(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i18_4_lut.init = 16'hafac;
    FD1S3IX state_FSM_i3 (.D(n2870), .CK(clk), .CD(rst_N_18), .Q(n773));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam state_FSM_i3.GSR = "ENABLED";
    FD1S3IX state_FSM_i4 (.D(n1742), .CK(clk), .CD(rst_N_18), .Q(n772));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam state_FSM_i4.GSR = "ENABLED";
    FD1S3IX state_FSM_i5 (.D(n2954), .CK(clk), .CD(rst_N_18), .Q(n771));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3IX state_FSM_i6 (.D(n1746), .CK(clk), .CD(rst_N_18), .Q(n770));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam state_FSM_i6.GSR = "ENABLED";
    FD1S3IX state_FSM_i7 (.D(n2838), .CK(clk), .CD(rst_N_18), .Q(n769));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam state_FSM_i7.GSR = "ENABLED";
    FD1S3IX state_FSM_i8 (.D(n1750), .CK(clk), .CD(rst_N_18), .Q(n768));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam state_FSM_i8.GSR = "ENABLED";
    FD1S3IX state_FSM_i9 (.D(n2842), .CK(clk), .CD(rst_N_18), .Q(n767));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam state_FSM_i9.GSR = "ENABLED";
    FD1S3IX state_FSM_i10 (.D(n1754), .CK(clk), .CD(rst_N_18), .Q(n766));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam state_FSM_i10.GSR = "ENABLED";
    FD1S3IX state_FSM_i11 (.D(n2852), .CK(clk), .CD(rst_N_18), .Q(n765));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam state_FSM_i11.GSR = "ENABLED";
    FD1S3IX state_FSM_i12 (.D(n2868), .CK(clk), .CD(rst_N_18), .Q(n764));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam state_FSM_i12.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_8 (.A(n3033), .B(n5_adj_268), .C(a3_pw[12]), .D(n6), 
         .Z(n2875)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1_4_lut_adj_8.init = 16'ha080;
    LUT4 mux_486_i12_3_lut_4_lut (.A(n767), .B(n3037), .C(wb_dat_o[3]), 
         .D(a0_pw[11]), .Z(n1593)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_486_i12_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_4_lut_adj_9 (.A(a3_pw[8]), .B(a3_pw[10]), .C(a3_pw[7]), .D(n14_adj_266), 
         .Z(n5_adj_268)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_9.init = 16'heccc;
    PFUMX i1811 (.BLUT(n3045), .ALUT(n3046), .C0(n769), .Z(clk_enable_54));
    LUT4 mux_486_i10_3_lut_4_lut (.A(n767), .B(n3037), .C(wb_dat_o[1]), 
         .D(a0_pw[9]), .Z(n1591)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_486_i10_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_2_lut (.A(n764), .B(wb_dat_o[6]), .Z(n3)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i589_4_lut (.A(a3_pw[5]), .B(a3_pw[6]), .C(a3_pw[4]), .D(n2797), 
         .Z(n14_adj_266)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i589_4_lut.init = 16'heccc;
    LUT4 mux_486_i5_3_lut_4_lut (.A(n767), .B(n3037), .C(wb_dat_o[4]), 
         .D(a0_pw[4]), .Z(n1586)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_486_i5_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_2_lut_rep_15_3_lut_4_lut (.A(n769), .B(count[2]), .C(count[0]), 
         .D(count[1]), .Z(n3033)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1_2_lut_rep_15_3_lut_4_lut.init = 16'h0002;
    LUT4 i450_2_lut_rep_25 (.A(count[0]), .B(count[1]), .Z(n3043)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(171[12:17])
    defparam i450_2_lut_rep_25.init = 16'h6666;
    \PulseIn(BITS=13)_U2  a2_pulsein (.\a2_pw[1] (a2_pw[1]), .clk(clk), 
            .i_a2_pwm_c(i_a2_pwm_c), .\a2_pw[12] (a2_pw[12]), .\a2_pw[11] (a2_pw[11]), 
            .\a2_pw[10] (a2_pw[10]), .\a2_pw[9] (a2_pw[9]), .\a2_pw[8] (a2_pw[8]), 
            .\a2_pw[7] (a2_pw[7]), .\a2_pw[6] (a2_pw[6]), .\a2_pw[5] (a2_pw[5]), 
            .\a2_pw[4] (a2_pw[4]), .\a2_pw[3] (a2_pw[3]), .\a2_pw[2] (a2_pw[2]), 
            .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(227[29] 231[3])
    LUT4 a0_pw_12__I_0_i13_3_lut (.A(a0_pw[12]), .B(b0_pw[12]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a0_pw_12__I_0_i13_3_lut.init = 16'hcaca;
    \PulseIn(BITS=13)_U3  a1_pulsein (.a1_pw({a1_pw}), .clk(clk), .i_a1_pwm_c(i_a1_pwm_c), 
            .GND_net(GND_net), .a1_rise(a1_rise)) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(220[29] 225[3])
    LUT4 a0_pw_12__I_0_i12_3_lut (.A(a0_pw[11]), .B(b0_pw[11]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a0_pw_12__I_0_i12_3_lut.init = 16'hcaca;
    LUT4 mux_486_i3_3_lut_4_lut (.A(n767), .B(n3037), .C(wb_dat_o[2]), 
         .D(a0_pw[2]), .Z(n1584)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_486_i3_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1359_2_lut_rep_14_3_lut (.A(count[1]), .B(count[0]), .C(count[2]), 
         .Z(n3032)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(391[15:27])
    defparam i1359_2_lut_rep_14_3_lut.init = 16'h8080;
    LUT4 i536_2_lut_rep_26 (.A(count[1]), .B(count[0]), .Z(n3044)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(391[15:27])
    defparam i536_2_lut_rep_26.init = 16'h8888;
    PFUMX i857 (.BLUT(n1418), .ALUT(n1406), .C0(n1962), .Z(n1974));
    LUT4 mux_486_i13_3_lut_4_lut (.A(n767), .B(n3037), .C(wb_dat_o[4]), 
         .D(a0_pw[12]), .Z(n1594)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_486_i13_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_2_lut_rep_18_3_lut_4_lut (.A(count[0]), .B(count[1]), .C(count[2]), 
         .D(n769), .Z(n3036)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+!(D))+!B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(171[12:17])
    defparam i1_2_lut_rep_18_3_lut_4_lut.init = 16'h0600;
    LUT4 i1_2_lut_3_lut_4_lut (.A(count[1]), .B(count[0]), .C(n767), .D(count[2]), 
         .Z(n4_adj_269)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(391[15:27])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf070;
    LUT4 i2_3_lut_4_lut (.A(count[1]), .B(count[0]), .C(n767), .D(count[2]), 
         .Z(clk_enable_42)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(391[15:27])
    defparam i2_3_lut_4_lut.init = 16'h0080;
    LUT4 mux_486_i9_3_lut_4_lut (.A(n767), .B(n3037), .C(wb_dat_o[0]), 
         .D(a0_pw[8]), .Z(n1590)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_486_i9_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_486_i2_3_lut_4_lut (.A(n767), .B(n3037), .C(wb_dat_o[1]), 
         .D(a0_pw[1]), .Z(n1583)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_486_i2_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_486_i7_3_lut_4_lut (.A(n767), .B(n3037), .C(wb_dat_o[6]), 
         .D(a0_pw[6]), .Z(n1588)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_486_i7_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_412_i2_3_lut (.A(i2c_pw1[9]), .B(i2c_pw1[1]), .C(count[2]), 
         .Z(n1409)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_412_i2_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_adj_10 (.A(a3_pw[3]), .B(a3_pw[2]), .C(a3_pw[1]), .Z(n2797)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_10.init = 16'hfefe;
    LUT4 i1354_2_lut_3_lut_4_lut_4_lut (.A(count[0]), .B(count[1]), .C(i2c_pw0[5]), 
         .D(n3042), .Z(n1417)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(171[12:17])
    defparam i1354_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 mux_486_i8_3_lut_4_lut (.A(n767), .B(n3037), .C(wb_dat_o[7]), 
         .D(a0_pw[7]), .Z(n1589)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_486_i8_3_lut_4_lut.init = 16'hfd20;
    LUT4 mux_411_i3_3_lut (.A(i2c_pw0[10]), .B(i2c_pw0[2]), .C(count[1]), 
         .Z(n1399)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_411_i3_3_lut.init = 16'hcaca;
    LUT4 a0_pw_12__I_0_i11_3_lut (.A(a0_pw[10]), .B(b0_pw[10]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a0_pw_12__I_0_i11_3_lut.init = 16'hcaca;
    LUT4 a0_pw_12__I_0_i10_3_lut (.A(a0_pw[9]), .B(b0_pw[9]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a0_pw_12__I_0_i10_3_lut.init = 16'hcaca;
    LUT4 i2_2_lut_adj_11 (.A(a3_pw[11]), .B(a3_pw[9]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_adj_11.init = 16'heeee;
    LUT4 i1356_2_lut_3_lut_4_lut_4_lut (.A(count[0]), .B(count[1]), .C(i2c_pw0[7]), 
         .D(n3042), .Z(n1415)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(171[12:17])
    defparam i1356_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i631_4_lut_4_lut (.A(n3040), .B(wb_dat_o[2]), .C(n771), .D(n770), 
         .Z(n1746)) /* synthesis lut_function=(A (D)+!A (B (C))) */ ;
    defparam i631_4_lut_4_lut.init = 16'hea40;
    LUT4 mux_486_i6_3_lut_4_lut (.A(n767), .B(n3037), .C(wb_dat_o[5]), 
         .D(a0_pw[5]), .Z(n1587)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_486_i6_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1304_4_lut (.A(n5), .B(n3033), .C(a4_pw[12]), .D(n6_adj_272), 
         .Z(n1538)) /* synthesis lut_function=(A ((C)+!B)+!A ((C (D))+!B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1304_4_lut.init = 16'hf3b3;
    LUT4 i639_4_lut_4_lut (.A(n3040), .B(wb_dat_o[2]), .C(n4_adj_269), 
         .D(n766), .Z(n1754)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (C+(D)))) */ ;
    defparam i639_4_lut_4_lut.init = 16'hfb50;
    LUT4 i1_4_lut_4_lut (.A(n3040), .B(wb_dat_o[6]), .C(n4), .D(n764), 
         .Z(n2868)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(310[6] 312[9])
    defparam i1_4_lut_4_lut.init = 16'hfe50;
    LUT4 n4_bdd_4_lut_4_lut (.A(count[1]), .B(count[0]), .C(n769), .D(n767), 
         .Z(n3027)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+((D)+!C)))) */ ;
    defparam n4_bdd_4_lut_4_lut.init = 16'h2210;
    LUT4 i845_4_lut_4_lut (.A(n769), .B(count[1]), .C(count[0]), .D(count[2]), 
         .Z(n1962)) /* synthesis lut_function=(!((B ((D)+!C)+!B (C+!(D)))+!A)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i845_4_lut_4_lut.init = 16'h0280;
    LUT4 mux_412_i3_3_lut (.A(i2c_pw1[10]), .B(i2c_pw1[2]), .C(count[2]), 
         .Z(n1408)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_412_i3_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_12 (.A(count[2]), .B(n3044), .C(n767), .D(n765), 
         .Z(n4)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(382[6:7])
    defparam i1_3_lut_4_lut_adj_12.init = 16'hff40;
    FD1P3JX wb_dat_i_i0_i7 (.D(n1438), .SP(clk_enable_65), .PD(n2166), 
            .CK(clk), .Q(wb_dat_i[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam wb_dat_i_i0_i7.GSR = "ENABLED";
    LUT4 a0_pw_12__I_0_i3_3_lut (.A(a0_pw[2]), .B(b0_pw[2]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a0_pw_12__I_0_i3_3_lut.init = 16'hcaca;
    LUT4 a0_pw_12__I_0_i2_3_lut (.A(a0_pw[1]), .B(b0_pw[1]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a0_pw_12__I_0_i2_3_lut.init = 16'hcaca;
    LUT4 i627_4_lut_4_lut (.A(n3040), .B(wb_dat_o[6]), .C(n773), .D(n772), 
         .Z(n1742)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(310[6] 312[9])
    defparam i627_4_lut_4_lut.init = 16'hfe50;
    FD1P3IX wb_dat_i_i0_i6 (.D(n1439), .SP(clk_enable_65), .CD(n2166), 
            .CK(clk), .Q(wb_dat_i[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam wb_dat_i_i0_i6.GSR = "ENABLED";
    LUT4 a0_pw_12__I_0_i9_3_lut (.A(a0_pw[8]), .B(b0_pw[8]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a0_pw_12__I_0_i9_3_lut.init = 16'hcaca;
    LUT4 a0_pw_12__I_0_i8_3_lut (.A(a0_pw[7]), .B(b0_pw[7]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a0_pw_12__I_0_i8_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_13 (.A(wb_dat_o[4]), .B(wb_dat_o[2]), .C(n770), 
         .D(n768), .Z(n6_adj_273)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1_4_lut_adj_13.init = 16'heca0;
    LUT4 a0_pw_12__I_0_i7_3_lut (.A(a0_pw[6]), .B(b0_pw[6]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a0_pw_12__I_0_i7_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_14 (.A(count[2]), .B(n3027), .Z(clk_enable_11)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_14.init = 16'h4444;
    FD1P3IX wb_dat_i_i0_i5 (.D(n1440), .SP(clk_enable_65), .CD(n2166), 
            .CK(clk), .Q(wb_dat_i[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam wb_dat_i_i0_i5.GSR = "ENABLED";
    LUT4 i635_4_lut (.A(n1749), .B(n769), .C(n253), .D(n3040), .Z(n1750)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i635_4_lut.init = 16'haaea;
    LUT4 mux_272_i13_3_lut (.A(a1_pw[12]), .B(wb_dat_o[4]), .C(n767), 
         .Z(i2c_pw1_12__N_39[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_272_i13_3_lut.init = 16'hcaca;
    PFUMX i853 (.BLUT(n1420), .ALUT(n1408), .C0(n1962), .Z(n1970));
    FD1P3IX wb_dat_i_i0_i4 (.D(n1974), .SP(clk_enable_65), .CD(n2165), 
            .CK(clk), .Q(wb_dat_i[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam wb_dat_i_i0_i4.GSR = "ENABLED";
    efb efb (.clk(clk), .rst_N_18(rst_N_18), .wb_cyc_i(wb_cyc_i), .wb_we_i(wb_we_i), 
        .GND_net(GND_net), .VCC_net(VCC_net), .\wb_adr_i[2] (wb_adr_i[2]), 
        .\wb_adr_i[1] (wb_adr_i[1]), .\wb_adr_i[0] (wb_adr_i[0]), .wb_dat_i({wb_dat_i}), 
        .wb_dat_o({wb_dat_o}), .wb_ack_o(wb_ack_o), .i2c1_sdaoen(i2c1_sdaoen), 
        .i2c1_sdao(i2c1_sdao), .i2c1_scloen(i2c1_scloen), .i2c1_sclo(i2c1_sclo), 
        .i2c1_sdai(i2c1_sdai), .i2c1_scli(i2c1_scli)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(199[6] 211[3])
    FD1P3IX wb_dat_i_i0_i3 (.D(n3028), .SP(clk_enable_65), .CD(n2166), 
            .CK(clk), .Q(wb_dat_i[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam wb_dat_i_i0_i3.GSR = "ENABLED";
    LUT4 i1355_2_lut_3_lut_4_lut_4_lut (.A(count[0]), .B(count[1]), .C(i2c_pw0[6]), 
         .D(n3042), .Z(n1416)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(171[12:17])
    defparam i1355_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1301_3_lut_4_lut (.A(n770), .B(n3040), .C(n3044), .D(count[2]), 
         .Z(n1089)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A (C (D)+!C !(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1301_3_lut_4_lut.init = 16'h0dd0;
    LUT4 i1_2_lut_adj_15 (.A(n767), .B(n774), .Z(n2793)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_15.init = 16'h2222;
    LUT4 n771_bdd_4_lut (.A(n771), .B(wb_dat_o[6]), .C(n772), .D(wb_dat_o[2]), 
         .Z(n2953)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B+!(C)))) */ ;
    defparam n771_bdd_4_lut.init = 16'h30ba;
    LUT4 a0_pw_12__I_0_i6_3_lut (.A(a0_pw[5]), .B(b0_pw[5]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a0_pw_12__I_0_i6_3_lut.init = 16'hcaca;
    \PulseOut(BITS=13)_U0  y0_pulseout (.a0_rise(a0_rise), .y0_pw({y0_pw}), 
            .GND_net(GND_net), .o_y0_pwm_c(o_y0_pwm_c), .clk(clk)) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(245[30] 250[3])
    LUT4 i1764_2_lut_4_lut (.A(n769), .B(count[2]), .C(n3038), .D(n774), 
         .Z(n2166)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1764_2_lut_4_lut.init = 16'hf700;
    LUT4 i1773_2_lut_2_lut_4_lut (.A(n769), .B(count[2]), .C(n3038), .D(wb_we_i_N_193), 
         .Z(clk_enable_65)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1773_2_lut_2_lut_4_lut.init = 16'hf700;
    LUT4 i1738_3_lut_4_lut (.A(n3043), .B(n3042), .C(n1400), .D(n2875), 
         .Z(n1421)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1738_3_lut_4_lut.init = 16'hf780;
    FD1P3IX wb_dat_i_i0_i2 (.D(n1971), .SP(clk_enable_65), .CD(n2166), 
            .CK(clk), .Q(wb_dat_i[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam wb_dat_i_i0_i2.GSR = "ENABLED";
    LUT4 i1044_3_lut (.A(n775), .B(wb_we_i_N_193), .C(wb_we_i), .Z(n2161)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam i1044_3_lut.init = 16'hecec;
    FD1P3IX wb_dat_i_i0_i1 (.D(n1968), .SP(clk_enable_65), .CD(n2165), 
            .CK(clk), .Q(wb_dat_i[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam wb_dat_i_i0_i1.GSR = "ENABLED";
    LUT4 a0_pw_12__I_0_i5_3_lut (.A(a0_pw[4]), .B(b0_pw[4]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a0_pw_12__I_0_i5_3_lut.init = 16'hcaca;
    LUT4 mux_272_i12_3_lut (.A(a1_pw[11]), .B(wb_dat_o[3]), .C(n767), 
         .Z(i2c_pw1_12__N_39[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_272_i12_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut (.A(n774), .B(n769), .C(n773), .D(n765), .Z(wb_we_i_N_193)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 mux_486_i4_3_lut_4_lut (.A(n767), .B(n3037), .C(wb_dat_o[3]), 
         .D(a0_pw[3]), .Z(n1585)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_486_i4_3_lut_4_lut.init = 16'hfd20;
    FD1P3IX wb_adr_i__i3 (.D(n2802), .SP(clk_enable_67), .CD(n2162), .CK(clk), 
            .Q(wb_adr_i[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam wb_adr_i__i3.GSR = "ENABLED";
    LUT4 i1740_3_lut_4_lut (.A(n3043), .B(n3042), .C(n1399), .D(n1538), 
         .Z(n1420)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i1740_3_lut_4_lut.init = 16'hf780;
    FD1P3IX wb_dat_i_i0_i0 (.D(n1964), .SP(clk_enable_65), .CD(n2165), 
            .CK(clk), .Q(wb_dat_i[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam wb_dat_i_i0_i0.GSR = "ENABLED";
    FD1P3IX wb_adr_i__i1 (.D(n1544), .SP(clk_enable_67), .CD(n2162), .CK(clk), 
            .Q(wb_adr_i[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam wb_adr_i__i1.GSR = "ENABLED";
    LUT4 i6_4_lut (.A(n768), .B(n12), .C(n766), .D(n3035), .Z(n2802)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam i6_4_lut.init = 16'hfffe;
    PFUMX i851 (.BLUT(n1421), .ALUT(n1409), .C0(n1962), .Z(n1968));
    FD1P3AX wb_cyc_i_111 (.D(n3040), .SP(clk_enable_67), .CK(clk), .Q(wb_cyc_i));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(271[9] 437[5])
    defparam wb_cyc_i_111.GSR = "ENABLED";
    LUT4 mux_272_i11_3_lut (.A(a1_pw[10]), .B(wb_dat_o[2]), .C(n767), 
         .Z(i2c_pw1_12__N_39[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(272[3] 431[10])
    defparam mux_272_i11_3_lut.init = 16'hcaca;
    LUT4 a0_pw_12__I_0_i4_3_lut (.A(a0_pw[3]), .B(b0_pw[3]), .C(o_select_indicator_c), 
         .Z(y0_pw_12__N_78[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(264[8] 267[6])
    defparam a0_pw_12__I_0_i4_3_lut.init = 16'hcaca;
    VLO i1 (.Z(GND_net));
    LUT4 i1_4_lut_adj_16 (.A(a2_pw[8]), .B(a2_pw[10]), .C(a2_pw[7]), .D(n14_adj_267), 
         .Z(n5_adj_271)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_16.init = 16'heccc;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i583_4_lut (.A(a2_pw[5]), .B(a2_pw[6]), .C(a2_pw[4]), .D(n2798), 
         .Z(n14_adj_267)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i583_4_lut.init = 16'heccc;
    TSALL TSALL_INST (.TSALL(GND_net));
    \PulseIn(BITS=13)_U4  a0_pulsein (.a0_pw({a0_pw}), .clk(clk), .i_a0_pwm_c(i_a0_pwm_c), 
            .a0_rise(a0_rise), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(213[29] 218[3])
    
endmodule
//
// Verilog Description of module \PulseOut(BITS=13) 
//

module \PulseOut(BITS=13)  (clk, o_y1_pwm_c, y1_pw, a1_rise, GND_net) /* synthesis syn_module_defined=1 */ ;
    input clk;
    output o_y1_pwm_c;
    input [12:0]y1_pw;
    input a1_rise;
    input GND_net;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(138[7:10])
    wire [12:0]count;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(110[17:22])
    wire [12:0]n57;
    
    wire n22, n16, n24, n20, n3030, n2738, n2737, n2736, n2735, 
        n2734, n2733, n2732;
    wire [12:0]n55;
    
    FD1S3AX count_504__i3 (.D(n57[3]), .CK(clk), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_504__i3.GSR = "ENABLED";
    FD1S3AX count_504__i2 (.D(n57[2]), .CK(clk), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_504__i2.GSR = "ENABLED";
    FD1S3AX count_504__i1 (.D(n57[1]), .CK(clk), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_504__i1.GSR = "ENABLED";
    FD1S3AX count_504__i6 (.D(n57[6]), .CK(clk), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_504__i6.GSR = "ENABLED";
    LUT4 i11_4_lut (.A(count[12]), .B(n22), .C(n16), .D(count[5]), .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(117[7:12])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i7_3_lut (.A(count[10]), .B(count[8]), .C(count[3]), .Z(n20)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(117[7:12])
    defparam i7_3_lut.init = 16'hfefe;
    FD1S3AX signal_11 (.D(n3030), .CK(clk), .Q(o_y1_pwm_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=252, LSE_RLINE=257 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 120[5])
    defparam signal_11.GSR = "ENABLED";
    LUT4 i9_4_lut (.A(count[1]), .B(count[11]), .C(count[0]), .D(count[2]), 
         .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(117[7:12])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(count[4]), .B(count[9]), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(117[7:12])
    defparam i3_2_lut.init = 16'heeee;
    FD1S3AX count_504__i5 (.D(n57[5]), .CK(clk), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_504__i5.GSR = "ENABLED";
    FD1S3AX count_504__i0 (.D(n57[0]), .CK(clk), .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_504__i0.GSR = "ENABLED";
    FD1S3AX count_504__i4 (.D(n57[4]), .CK(clk), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_504__i4.GSR = "ENABLED";
    FD1S3AX count_504__i12 (.D(n57[12]), .CK(clk), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_504__i12.GSR = "ENABLED";
    FD1S3AX count_504__i11 (.D(n57[11]), .CK(clk), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_504__i11.GSR = "ENABLED";
    FD1S3AX count_504__i10 (.D(n57[10]), .CK(clk), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_504__i10.GSR = "ENABLED";
    FD1S3AX count_504__i9 (.D(n57[9]), .CK(clk), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_504__i9.GSR = "ENABLED";
    FD1S3AX count_504__i8 (.D(n57[8]), .CK(clk), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_504__i8.GSR = "ENABLED";
    FD1S3AX count_504__i7 (.D(n57[7]), .CK(clk), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_504__i7.GSR = "ENABLED";
    CCU2D count_504_add_4_15 (.A0(y1_pw[12]), .B0(a1_rise), .C0(count[12]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2738), .S0(n57[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_504_add_4_15.INIT0 = 16'h4b8b;
    defparam count_504_add_4_15.INIT1 = 16'h0000;
    defparam count_504_add_4_15.INJECT1_0 = "NO";
    defparam count_504_add_4_15.INJECT1_1 = "NO";
    CCU2D count_504_add_4_13 (.A0(y1_pw[10]), .B0(a1_rise), .C0(count[10]), 
          .D0(GND_net), .A1(y1_pw[11]), .B1(a1_rise), .C1(count[11]), 
          .D1(GND_net), .CIN(n2737), .COUT(n2738), .S0(n57[10]), .S1(n57[11]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_504_add_4_13.INIT0 = 16'h4b8b;
    defparam count_504_add_4_13.INIT1 = 16'h4b8b;
    defparam count_504_add_4_13.INJECT1_0 = "NO";
    defparam count_504_add_4_13.INJECT1_1 = "NO";
    CCU2D count_504_add_4_11 (.A0(y1_pw[8]), .B0(a1_rise), .C0(count[8]), 
          .D0(GND_net), .A1(y1_pw[9]), .B1(a1_rise), .C1(count[9]), 
          .D1(GND_net), .CIN(n2736), .COUT(n2737), .S0(n57[8]), .S1(n57[9]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_504_add_4_11.INIT0 = 16'h4b8b;
    defparam count_504_add_4_11.INIT1 = 16'h4b8b;
    defparam count_504_add_4_11.INJECT1_0 = "NO";
    defparam count_504_add_4_11.INJECT1_1 = "NO";
    CCU2D count_504_add_4_9 (.A0(y1_pw[6]), .B0(a1_rise), .C0(count[6]), 
          .D0(GND_net), .A1(y1_pw[7]), .B1(a1_rise), .C1(count[7]), 
          .D1(GND_net), .CIN(n2735), .COUT(n2736), .S0(n57[6]), .S1(n57[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_504_add_4_9.INIT0 = 16'h4b8b;
    defparam count_504_add_4_9.INIT1 = 16'h4b8b;
    defparam count_504_add_4_9.INJECT1_0 = "NO";
    defparam count_504_add_4_9.INJECT1_1 = "NO";
    CCU2D count_504_add_4_7 (.A0(y1_pw[4]), .B0(a1_rise), .C0(count[4]), 
          .D0(GND_net), .A1(y1_pw[5]), .B1(a1_rise), .C1(count[5]), 
          .D1(GND_net), .CIN(n2734), .COUT(n2735), .S0(n57[4]), .S1(n57[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_504_add_4_7.INIT0 = 16'h4b8b;
    defparam count_504_add_4_7.INIT1 = 16'h4b8b;
    defparam count_504_add_4_7.INJECT1_0 = "NO";
    defparam count_504_add_4_7.INJECT1_1 = "NO";
    CCU2D count_504_add_4_5 (.A0(y1_pw[2]), .B0(a1_rise), .C0(count[2]), 
          .D0(GND_net), .A1(y1_pw[3]), .B1(a1_rise), .C1(count[3]), 
          .D1(GND_net), .CIN(n2733), .COUT(n2734), .S0(n57[2]), .S1(n57[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_504_add_4_5.INIT0 = 16'h4b8b;
    defparam count_504_add_4_5.INIT1 = 16'h4b8b;
    defparam count_504_add_4_5.INJECT1_0 = "NO";
    defparam count_504_add_4_5.INJECT1_1 = "NO";
    CCU2D count_504_add_4_3 (.A0(count[0]), .B0(a1_rise), .C0(y1_pw[0]), 
          .D0(n55[0]), .A1(y1_pw[1]), .B1(a1_rise), .C1(count[1]), .D1(GND_net), 
          .CIN(n2732), .COUT(n2733), .S0(n57[0]), .S1(n57[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_504_add_4_3.INIT0 = 16'hd1e2;
    defparam count_504_add_4_3.INIT1 = 16'h4b8b;
    defparam count_504_add_4_3.INJECT1_0 = "NO";
    defparam count_504_add_4_3.INJECT1_1 = "NO";
    CCU2D count_504_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(a1_rise), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2732));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_504_add_4_1.INIT0 = 16'hF000;
    defparam count_504_add_4_1.INIT1 = 16'h0aaa;
    defparam count_504_add_4_1.INJECT1_0 = "NO";
    defparam count_504_add_4_1.INJECT1_1 = "NO";
    LUT4 i12_4_lut_rep_12 (.A(count[7]), .B(n24), .C(n20), .D(count[6]), 
         .Z(n3030)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(117[7:12])
    defparam i12_4_lut_rep_12.init = 16'hfffe;
    LUT4 count_504_inv_2_i1_1_lut_4_lut (.A(count[7]), .B(n24), .C(n20), 
         .D(count[6]), .Z(n55[0])) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(117[7:12])
    defparam count_504_inv_2_i1_1_lut_4_lut.init = 16'h0001;
    
endmodule
//
// Verilog Description of module \PulseIn(BITS=13) 
//

module \PulseIn(BITS=13)  (\a4_pw[1] , clk, i_a4_pwm_c, \a4_pw[12] , 
            \a4_pw[11] , \a4_pw[10] , \a4_pw[9] , \a4_pw[8] , \a4_pw[7] , 
            \a4_pw[6] , \a4_pw[5] , \a4_pw[4] , \a4_pw[3] , \a4_pw[2] , 
            GND_net) /* synthesis syn_module_defined=1 */ ;
    output \a4_pw[1] ;
    input clk;
    input i_a4_pwm_c;
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
    input GND_net;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(138[7:10])
    
    wire signal, high, o_pw_12__N_220;
    wire [12:0]count;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(66[23:28])
    wire [12:0]n100;
    wire [12:0]n57;
    
    wire signal_sync1, signal_sync0, n2751, n2750, n2749, n2748, 
        n2747, n2746;
    
    LUT4 o_pw_12__I_3_2_lut (.A(signal), .B(high), .Z(o_pw_12__N_220)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(84[7:22])
    defparam o_pw_12__I_3_2_lut.init = 16'h4444;
    FD1P3AX pw__i1 (.D(count[1]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=239, LSE_RLINE=243 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i1.GSR = "ENABLED";
    FD1S3AX count_502__i0 (.D(n57[0]), .CK(clk), .Q(n100[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_502__i0.GSR = "ENABLED";
    FD1S3AX signal_sync1_19 (.D(signal_sync0), .CK(clk), .Q(signal_sync1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=239, LSE_RLINE=243 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync1_19.GSR = "ENABLED";
    FD1S3AX signal_20 (.D(signal_sync1), .CK(clk), .Q(signal)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=239, LSE_RLINE=243 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_20.GSR = "ENABLED";
    FD1S3AX high_21 (.D(signal), .CK(clk), .Q(high)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=239, LSE_RLINE=243 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam high_21.GSR = "ENABLED";
    FD1S3AX signal_sync0_18 (.D(i_a4_pwm_c), .CK(clk), .Q(signal_sync0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=239, LSE_RLINE=243 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync0_18.GSR = "ENABLED";
    FD1S3AX count_502__i12 (.D(n57[12]), .CK(clk), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_502__i12.GSR = "ENABLED";
    FD1S3AX count_502__i11 (.D(n57[11]), .CK(clk), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_502__i11.GSR = "ENABLED";
    FD1S3AX count_502__i10 (.D(n57[10]), .CK(clk), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_502__i10.GSR = "ENABLED";
    FD1S3AX count_502__i9 (.D(n57[9]), .CK(clk), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_502__i9.GSR = "ENABLED";
    FD1S3AX count_502__i8 (.D(n57[8]), .CK(clk), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_502__i8.GSR = "ENABLED";
    FD1S3AX count_502__i7 (.D(n57[7]), .CK(clk), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_502__i7.GSR = "ENABLED";
    FD1S3AX count_502__i6 (.D(n57[6]), .CK(clk), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_502__i6.GSR = "ENABLED";
    FD1S3AX count_502__i5 (.D(n57[5]), .CK(clk), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_502__i5.GSR = "ENABLED";
    FD1S3AX count_502__i4 (.D(n57[4]), .CK(clk), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_502__i4.GSR = "ENABLED";
    FD1S3AX count_502__i3 (.D(n57[3]), .CK(clk), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_502__i3.GSR = "ENABLED";
    FD1S3AX count_502__i2 (.D(n57[2]), .CK(clk), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_502__i2.GSR = "ENABLED";
    FD1S3AX count_502__i1 (.D(n57[1]), .CK(clk), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_502__i1.GSR = "ENABLED";
    FD1P3AX pw__i12 (.D(count[12]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[12] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=239, LSE_RLINE=243 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i12.GSR = "ENABLED";
    FD1P3AX pw__i11 (.D(count[11]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[11] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=239, LSE_RLINE=243 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i11.GSR = "ENABLED";
    FD1P3AX pw__i10 (.D(count[10]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[10] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=239, LSE_RLINE=243 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i10.GSR = "ENABLED";
    FD1P3AX pw__i9 (.D(count[9]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[9] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=239, LSE_RLINE=243 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i9.GSR = "ENABLED";
    FD1P3AX pw__i8 (.D(count[8]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[8] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=239, LSE_RLINE=243 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i8.GSR = "ENABLED";
    FD1P3AX pw__i7 (.D(count[7]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[7] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=239, LSE_RLINE=243 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i7.GSR = "ENABLED";
    FD1P3AX pw__i6 (.D(count[6]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[6] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=239, LSE_RLINE=243 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i6.GSR = "ENABLED";
    FD1P3AX pw__i5 (.D(count[5]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[5] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=239, LSE_RLINE=243 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i5.GSR = "ENABLED";
    FD1P3AX pw__i4 (.D(count[4]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[4] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=239, LSE_RLINE=243 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i4.GSR = "ENABLED";
    FD1P3AX pw__i3 (.D(count[3]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[3] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=239, LSE_RLINE=243 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i3.GSR = "ENABLED";
    FD1P3AX pw__i2 (.D(count[2]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a4_pw[2] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=239, LSE_RLINE=243 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i2.GSR = "ENABLED";
    CCU2D count_502_add_4_13 (.A0(count[11]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2751), .S0(n57[11]), .S1(n57[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_502_add_4_13.INIT0 = 16'h7888;
    defparam count_502_add_4_13.INIT1 = 16'h7888;
    defparam count_502_add_4_13.INJECT1_0 = "NO";
    defparam count_502_add_4_13.INJECT1_1 = "NO";
    CCU2D count_502_add_4_11 (.A0(count[9]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2750), .COUT(n2751), .S0(n57[9]), .S1(n57[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_502_add_4_11.INIT0 = 16'h7888;
    defparam count_502_add_4_11.INIT1 = 16'h7888;
    defparam count_502_add_4_11.INJECT1_0 = "NO";
    defparam count_502_add_4_11.INJECT1_1 = "NO";
    CCU2D count_502_add_4_9 (.A0(count[7]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2749), .COUT(n2750), .S0(n57[7]), .S1(n57[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_502_add_4_9.INIT0 = 16'h7888;
    defparam count_502_add_4_9.INIT1 = 16'h7888;
    defparam count_502_add_4_9.INJECT1_0 = "NO";
    defparam count_502_add_4_9.INJECT1_1 = "NO";
    CCU2D count_502_add_4_7 (.A0(count[5]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2748), .COUT(n2749), .S0(n57[5]), .S1(n57[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_502_add_4_7.INIT0 = 16'h7888;
    defparam count_502_add_4_7.INIT1 = 16'h7888;
    defparam count_502_add_4_7.INJECT1_0 = "NO";
    defparam count_502_add_4_7.INJECT1_1 = "NO";
    CCU2D count_502_add_4_5 (.A0(count[3]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2747), .COUT(n2748), .S0(n57[3]), .S1(n57[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_502_add_4_5.INIT0 = 16'h7888;
    defparam count_502_add_4_5.INIT1 = 16'h7888;
    defparam count_502_add_4_5.INJECT1_0 = "NO";
    defparam count_502_add_4_5.INJECT1_1 = "NO";
    CCU2D count_502_add_4_3 (.A0(count[1]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2746), .COUT(n2747), .S0(n57[1]), .S1(n57[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_502_add_4_3.INIT0 = 16'h7888;
    defparam count_502_add_4_3.INIT1 = 16'h7888;
    defparam count_502_add_4_3.INJECT1_0 = "NO";
    defparam count_502_add_4_3.INJECT1_1 = "NO";
    CCU2D count_502_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n100[0]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .COUT(n2746), .S1(n57[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_502_add_4_1.INIT0 = 16'hF000;
    defparam count_502_add_4_1.INIT1 = 16'h7777;
    defparam count_502_add_4_1.INJECT1_0 = "NO";
    defparam count_502_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module \PulseIn(BITS=13)_U1 
//

module \PulseIn(BITS=13)_U1  (clk, \a3_pw[1] , i_a3_pwm_c, \a3_pw[12] , 
            \a3_pw[11] , \a3_pw[10] , \a3_pw[9] , \a3_pw[8] , \a3_pw[7] , 
            \a3_pw[6] , \a3_pw[5] , \a3_pw[4] , \a3_pw[3] , \a3_pw[2] , 
            GND_net) /* synthesis syn_module_defined=1 */ ;
    input clk;
    output \a3_pw[1] ;
    input i_a3_pwm_c;
    output \a3_pw[12] ;
    output \a3_pw[11] ;
    output \a3_pw[10] ;
    output \a3_pw[9] ;
    output \a3_pw[8] ;
    output \a3_pw[7] ;
    output \a3_pw[6] ;
    output \a3_pw[5] ;
    output \a3_pw[4] ;
    output \a3_pw[3] ;
    output \a3_pw[2] ;
    input GND_net;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(138[7:10])
    
    wire signal, high, o_pw_12__N_220;
    wire [12:0]n100;
    wire [12:0]n57;
    wire [12:0]count;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(66[23:28])
    
    wire signal_sync1, signal_sync0, n2744, n2743, n2742, n2741, 
        n2740, n2739;
    
    LUT4 o_pw_12__I_3_2_lut (.A(signal), .B(high), .Z(o_pw_12__N_220)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(84[7:22])
    defparam o_pw_12__I_3_2_lut.init = 16'h4444;
    FD1S3AX count_501__i0 (.D(n57[0]), .CK(clk), .Q(n100[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_501__i0.GSR = "ENABLED";
    FD1P3AX pw__i1 (.D(count[1]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a3_pw[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=233, LSE_RLINE=237 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i1.GSR = "ENABLED";
    FD1S3AX signal_sync1_19 (.D(signal_sync0), .CK(clk), .Q(signal_sync1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=233, LSE_RLINE=237 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync1_19.GSR = "ENABLED";
    FD1S3AX signal_20 (.D(signal_sync1), .CK(clk), .Q(signal)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=233, LSE_RLINE=237 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_20.GSR = "ENABLED";
    FD1S3AX high_21 (.D(signal), .CK(clk), .Q(high)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=233, LSE_RLINE=237 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam high_21.GSR = "ENABLED";
    FD1S3AX signal_sync0_18 (.D(i_a3_pwm_c), .CK(clk), .Q(signal_sync0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=233, LSE_RLINE=237 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync0_18.GSR = "ENABLED";
    FD1P3AX pw__i12 (.D(count[12]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a3_pw[12] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=233, LSE_RLINE=237 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i12.GSR = "ENABLED";
    FD1P3AX pw__i11 (.D(count[11]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a3_pw[11] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=233, LSE_RLINE=237 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i11.GSR = "ENABLED";
    FD1P3AX pw__i10 (.D(count[10]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a3_pw[10] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=233, LSE_RLINE=237 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i10.GSR = "ENABLED";
    FD1P3AX pw__i9 (.D(count[9]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a3_pw[9] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=233, LSE_RLINE=237 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i9.GSR = "ENABLED";
    FD1P3AX pw__i8 (.D(count[8]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a3_pw[8] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=233, LSE_RLINE=237 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i8.GSR = "ENABLED";
    FD1P3AX pw__i7 (.D(count[7]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a3_pw[7] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=233, LSE_RLINE=237 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i7.GSR = "ENABLED";
    FD1P3AX pw__i6 (.D(count[6]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a3_pw[6] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=233, LSE_RLINE=237 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i6.GSR = "ENABLED";
    FD1P3AX pw__i5 (.D(count[5]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a3_pw[5] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=233, LSE_RLINE=237 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i5.GSR = "ENABLED";
    FD1P3AX pw__i4 (.D(count[4]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a3_pw[4] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=233, LSE_RLINE=237 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i4.GSR = "ENABLED";
    FD1P3AX pw__i3 (.D(count[3]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a3_pw[3] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=233, LSE_RLINE=237 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i3.GSR = "ENABLED";
    FD1P3AX pw__i2 (.D(count[2]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a3_pw[2] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=233, LSE_RLINE=237 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i2.GSR = "ENABLED";
    FD1S3AX count_501__i12 (.D(n57[12]), .CK(clk), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_501__i12.GSR = "ENABLED";
    FD1S3AX count_501__i11 (.D(n57[11]), .CK(clk), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_501__i11.GSR = "ENABLED";
    FD1S3AX count_501__i10 (.D(n57[10]), .CK(clk), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_501__i10.GSR = "ENABLED";
    FD1S3AX count_501__i9 (.D(n57[9]), .CK(clk), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_501__i9.GSR = "ENABLED";
    FD1S3AX count_501__i8 (.D(n57[8]), .CK(clk), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_501__i8.GSR = "ENABLED";
    FD1S3AX count_501__i7 (.D(n57[7]), .CK(clk), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_501__i7.GSR = "ENABLED";
    FD1S3AX count_501__i6 (.D(n57[6]), .CK(clk), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_501__i6.GSR = "ENABLED";
    FD1S3AX count_501__i5 (.D(n57[5]), .CK(clk), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_501__i5.GSR = "ENABLED";
    FD1S3AX count_501__i4 (.D(n57[4]), .CK(clk), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_501__i4.GSR = "ENABLED";
    FD1S3AX count_501__i3 (.D(n57[3]), .CK(clk), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_501__i3.GSR = "ENABLED";
    FD1S3AX count_501__i2 (.D(n57[2]), .CK(clk), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_501__i2.GSR = "ENABLED";
    FD1S3AX count_501__i1 (.D(n57[1]), .CK(clk), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_501__i1.GSR = "ENABLED";
    CCU2D count_501_add_4_13 (.A0(count[11]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2744), .S0(n57[11]), .S1(n57[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_501_add_4_13.INIT0 = 16'h7888;
    defparam count_501_add_4_13.INIT1 = 16'h7888;
    defparam count_501_add_4_13.INJECT1_0 = "NO";
    defparam count_501_add_4_13.INJECT1_1 = "NO";
    CCU2D count_501_add_4_11 (.A0(count[9]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2743), .COUT(n2744), .S0(n57[9]), .S1(n57[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_501_add_4_11.INIT0 = 16'h7888;
    defparam count_501_add_4_11.INIT1 = 16'h7888;
    defparam count_501_add_4_11.INJECT1_0 = "NO";
    defparam count_501_add_4_11.INJECT1_1 = "NO";
    CCU2D count_501_add_4_9 (.A0(count[7]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2742), .COUT(n2743), .S0(n57[7]), .S1(n57[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_501_add_4_9.INIT0 = 16'h7888;
    defparam count_501_add_4_9.INIT1 = 16'h7888;
    defparam count_501_add_4_9.INJECT1_0 = "NO";
    defparam count_501_add_4_9.INJECT1_1 = "NO";
    CCU2D count_501_add_4_7 (.A0(count[5]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2741), .COUT(n2742), .S0(n57[5]), .S1(n57[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_501_add_4_7.INIT0 = 16'h7888;
    defparam count_501_add_4_7.INIT1 = 16'h7888;
    defparam count_501_add_4_7.INJECT1_0 = "NO";
    defparam count_501_add_4_7.INJECT1_1 = "NO";
    CCU2D count_501_add_4_5 (.A0(count[3]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2740), .COUT(n2741), .S0(n57[3]), .S1(n57[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_501_add_4_5.INIT0 = 16'h7888;
    defparam count_501_add_4_5.INIT1 = 16'h7888;
    defparam count_501_add_4_5.INJECT1_0 = "NO";
    defparam count_501_add_4_5.INJECT1_1 = "NO";
    CCU2D count_501_add_4_3 (.A0(count[1]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2739), .COUT(n2740), .S0(n57[1]), .S1(n57[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_501_add_4_3.INIT0 = 16'h7888;
    defparam count_501_add_4_3.INIT1 = 16'h7888;
    defparam count_501_add_4_3.INJECT1_0 = "NO";
    defparam count_501_add_4_3.INJECT1_1 = "NO";
    CCU2D count_501_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n100[0]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .COUT(n2739), .S1(n57[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_501_add_4_1.INIT0 = 16'hF000;
    defparam count_501_add_4_1.INIT1 = 16'h7777;
    defparam count_501_add_4_1.INJECT1_0 = "NO";
    defparam count_501_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module \PulseIn(BITS=13)_U2 
//

module \PulseIn(BITS=13)_U2  (\a2_pw[1] , clk, i_a2_pwm_c, \a2_pw[12] , 
            \a2_pw[11] , \a2_pw[10] , \a2_pw[9] , \a2_pw[8] , \a2_pw[7] , 
            \a2_pw[6] , \a2_pw[5] , \a2_pw[4] , \a2_pw[3] , \a2_pw[2] , 
            GND_net) /* synthesis syn_module_defined=1 */ ;
    output \a2_pw[1] ;
    input clk;
    input i_a2_pwm_c;
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
    input GND_net;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(138[7:10])
    
    wire signal, high, o_pw_12__N_220;
    wire [12:0]count;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(66[23:28])
    
    wire signal_sync1, signal_sync0;
    wire [12:0]n100;
    wire [12:0]n57;
    
    wire n2768, n2767, n2766, n2765, n2764, n2763;
    
    LUT4 o_pw_12__I_3_2_lut (.A(signal), .B(high), .Z(o_pw_12__N_220)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(84[7:22])
    defparam o_pw_12__I_3_2_lut.init = 16'h4444;
    FD1P3AX pw__i1 (.D(count[1]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[1] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=231 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i1.GSR = "ENABLED";
    FD1S3AX signal_sync1_19 (.D(signal_sync0), .CK(clk), .Q(signal_sync1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=231 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync1_19.GSR = "ENABLED";
    FD1S3AX signal_20 (.D(signal_sync1), .CK(clk), .Q(signal)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=231 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_20.GSR = "ENABLED";
    FD1S3AX high_21 (.D(signal), .CK(clk), .Q(high)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=231 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam high_21.GSR = "ENABLED";
    FD1S3AX signal_sync0_18 (.D(i_a2_pwm_c), .CK(clk), .Q(signal_sync0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=231 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync0_18.GSR = "ENABLED";
    FD1S3AX count_500__i0 (.D(n57[0]), .CK(clk), .Q(n100[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_500__i0.GSR = "ENABLED";
    FD1P3AX pw__i12 (.D(count[12]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[12] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=231 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i12.GSR = "ENABLED";
    FD1P3AX pw__i11 (.D(count[11]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[11] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=231 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i11.GSR = "ENABLED";
    FD1P3AX pw__i10 (.D(count[10]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[10] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=231 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i10.GSR = "ENABLED";
    FD1P3AX pw__i9 (.D(count[9]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[9] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=231 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i9.GSR = "ENABLED";
    FD1P3AX pw__i8 (.D(count[8]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[8] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=231 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i8.GSR = "ENABLED";
    FD1P3AX pw__i7 (.D(count[7]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[7] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=231 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i7.GSR = "ENABLED";
    FD1P3AX pw__i6 (.D(count[6]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[6] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=231 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i6.GSR = "ENABLED";
    FD1P3AX pw__i5 (.D(count[5]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[5] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=231 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i5.GSR = "ENABLED";
    FD1P3AX pw__i4 (.D(count[4]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[4] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=231 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i4.GSR = "ENABLED";
    FD1P3AX pw__i3 (.D(count[3]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[3] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=231 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i3.GSR = "ENABLED";
    FD1P3AX pw__i2 (.D(count[2]), .SP(o_pw_12__N_220), .CK(clk), .Q(\a2_pw[2] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=227, LSE_RLINE=231 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw__i2.GSR = "ENABLED";
    CCU2D count_500_add_4_13 (.A0(count[11]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2768), .S0(n57[11]), .S1(n57[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_500_add_4_13.INIT0 = 16'h7888;
    defparam count_500_add_4_13.INIT1 = 16'h7888;
    defparam count_500_add_4_13.INJECT1_0 = "NO";
    defparam count_500_add_4_13.INJECT1_1 = "NO";
    CCU2D count_500_add_4_11 (.A0(count[9]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2767), .COUT(n2768), .S0(n57[9]), .S1(n57[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_500_add_4_11.INIT0 = 16'h7888;
    defparam count_500_add_4_11.INIT1 = 16'h7888;
    defparam count_500_add_4_11.INJECT1_0 = "NO";
    defparam count_500_add_4_11.INJECT1_1 = "NO";
    CCU2D count_500_add_4_9 (.A0(count[7]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2766), .COUT(n2767), .S0(n57[7]), .S1(n57[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_500_add_4_9.INIT0 = 16'h7888;
    defparam count_500_add_4_9.INIT1 = 16'h7888;
    defparam count_500_add_4_9.INJECT1_0 = "NO";
    defparam count_500_add_4_9.INJECT1_1 = "NO";
    CCU2D count_500_add_4_7 (.A0(count[5]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2765), .COUT(n2766), .S0(n57[5]), .S1(n57[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_500_add_4_7.INIT0 = 16'h7888;
    defparam count_500_add_4_7.INIT1 = 16'h7888;
    defparam count_500_add_4_7.INJECT1_0 = "NO";
    defparam count_500_add_4_7.INJECT1_1 = "NO";
    FD1S3AX count_500__i1 (.D(n57[1]), .CK(clk), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_500__i1.GSR = "ENABLED";
    FD1S3AX count_500__i2 (.D(n57[2]), .CK(clk), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_500__i2.GSR = "ENABLED";
    FD1S3AX count_500__i3 (.D(n57[3]), .CK(clk), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_500__i3.GSR = "ENABLED";
    FD1S3AX count_500__i4 (.D(n57[4]), .CK(clk), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_500__i4.GSR = "ENABLED";
    FD1S3AX count_500__i5 (.D(n57[5]), .CK(clk), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_500__i5.GSR = "ENABLED";
    FD1S3AX count_500__i6 (.D(n57[6]), .CK(clk), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_500__i6.GSR = "ENABLED";
    FD1S3AX count_500__i7 (.D(n57[7]), .CK(clk), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_500__i7.GSR = "ENABLED";
    FD1S3AX count_500__i8 (.D(n57[8]), .CK(clk), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_500__i8.GSR = "ENABLED";
    FD1S3AX count_500__i9 (.D(n57[9]), .CK(clk), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_500__i9.GSR = "ENABLED";
    FD1S3AX count_500__i10 (.D(n57[10]), .CK(clk), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_500__i10.GSR = "ENABLED";
    FD1S3AX count_500__i11 (.D(n57[11]), .CK(clk), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_500__i11.GSR = "ENABLED";
    FD1S3AX count_500__i12 (.D(n57[12]), .CK(clk), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_500__i12.GSR = "ENABLED";
    CCU2D count_500_add_4_5 (.A0(count[3]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2764), .COUT(n2765), .S0(n57[3]), .S1(n57[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_500_add_4_5.INIT0 = 16'h7888;
    defparam count_500_add_4_5.INIT1 = 16'h7888;
    defparam count_500_add_4_5.INJECT1_0 = "NO";
    defparam count_500_add_4_5.INJECT1_1 = "NO";
    CCU2D count_500_add_4_3 (.A0(count[1]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2763), .COUT(n2764), .S0(n57[1]), .S1(n57[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_500_add_4_3.INIT0 = 16'h7888;
    defparam count_500_add_4_3.INIT1 = 16'h7888;
    defparam count_500_add_4_3.INJECT1_0 = "NO";
    defparam count_500_add_4_3.INJECT1_1 = "NO";
    CCU2D count_500_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n100[0]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .COUT(n2763), .S1(n57[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_500_add_4_1.INIT0 = 16'hF000;
    defparam count_500_add_4_1.INIT1 = 16'h7777;
    defparam count_500_add_4_1.INJECT1_0 = "NO";
    defparam count_500_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module \PulseIn(BITS=13)_U3 
//

module \PulseIn(BITS=13)_U3  (a1_pw, clk, i_a1_pwm_c, GND_net, a1_rise) /* synthesis syn_module_defined=1 */ ;
    output [12:0]a1_pw;
    input clk;
    input i_a1_pwm_c;
    input GND_net;
    output a1_rise;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(138[7:10])
    
    wire signal, high, o_pw_12__N_220;
    wire [12:0]count;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(66[23:28])
    
    wire signal_sync1, signal_sync0, n2771;
    wire [12:0]n57;
    
    wire n2772, n2770, n2775, n2774, n2773;
    
    LUT4 o_pw_12__I_3_2_lut (.A(signal), .B(high), .Z(o_pw_12__N_220)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(84[7:22])
    defparam o_pw_12__I_3_2_lut.init = 16'h4444;
    FD1P3AX pw_i0_i0 (.D(count[0]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i0.GSR = "ENABLED";
    FD1S3AX signal_sync1_19 (.D(signal_sync0), .CK(clk), .Q(signal_sync1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync1_19.GSR = "ENABLED";
    FD1S3AX signal_20 (.D(signal_sync1), .CK(clk), .Q(signal)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_20.GSR = "ENABLED";
    FD1S3AX high_21 (.D(signal), .CK(clk), .Q(high)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam high_21.GSR = "ENABLED";
    FD1S3AX signal_sync0_18 (.D(i_a1_pwm_c), .CK(clk), .Q(signal_sync0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync0_18.GSR = "ENABLED";
    CCU2D count_499_add_4_5 (.A0(count[3]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2771), .COUT(n2772), .S0(n57[3]), .S1(n57[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_499_add_4_5.INIT0 = 16'h7888;
    defparam count_499_add_4_5.INIT1 = 16'h7888;
    defparam count_499_add_4_5.INJECT1_0 = "NO";
    defparam count_499_add_4_5.INJECT1_1 = "NO";
    FD1S3IX rise_22 (.D(signal), .CK(clk), .CD(high), .Q(a1_rise)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam rise_22.GSR = "ENABLED";
    FD1S3AX count_499__i0 (.D(n57[0]), .CK(clk), .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_499__i0.GSR = "ENABLED";
    FD1P3AX pw_i0_i12 (.D(count[12]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i12.GSR = "ENABLED";
    FD1P3AX pw_i0_i11 (.D(count[11]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i11.GSR = "ENABLED";
    FD1P3AX pw_i0_i10 (.D(count[10]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i10.GSR = "ENABLED";
    FD1P3AX pw_i0_i9 (.D(count[9]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i9.GSR = "ENABLED";
    FD1P3AX pw_i0_i8 (.D(count[8]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i8.GSR = "ENABLED";
    FD1P3AX pw_i0_i7 (.D(count[7]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i7.GSR = "ENABLED";
    FD1P3AX pw_i0_i6 (.D(count[6]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i6.GSR = "ENABLED";
    FD1P3AX pw_i0_i5 (.D(count[5]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i5.GSR = "ENABLED";
    FD1P3AX pw_i0_i4 (.D(count[4]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i4.GSR = "ENABLED";
    FD1P3AX pw_i0_i3 (.D(count[3]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i3.GSR = "ENABLED";
    FD1P3AX pw_i0_i2 (.D(count[2]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i2.GSR = "ENABLED";
    FD1P3AX pw_i0_i1 (.D(count[1]), .SP(o_pw_12__N_220), .CK(clk), .Q(a1_pw[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=220, LSE_RLINE=225 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i1.GSR = "ENABLED";
    CCU2D count_499_add_4_3 (.A0(count[1]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2770), .COUT(n2771), .S0(n57[1]), .S1(n57[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_499_add_4_3.INIT0 = 16'h7888;
    defparam count_499_add_4_3.INIT1 = 16'h7888;
    defparam count_499_add_4_3.INJECT1_0 = "NO";
    defparam count_499_add_4_3.INJECT1_1 = "NO";
    CCU2D count_499_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .COUT(n2770), .S1(n57[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_499_add_4_1.INIT0 = 16'hF000;
    defparam count_499_add_4_1.INIT1 = 16'h7777;
    defparam count_499_add_4_1.INJECT1_0 = "NO";
    defparam count_499_add_4_1.INJECT1_1 = "NO";
    FD1S3AX count_499__i1 (.D(n57[1]), .CK(clk), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_499__i1.GSR = "ENABLED";
    FD1S3AX count_499__i2 (.D(n57[2]), .CK(clk), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_499__i2.GSR = "ENABLED";
    FD1S3AX count_499__i3 (.D(n57[3]), .CK(clk), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_499__i3.GSR = "ENABLED";
    FD1S3AX count_499__i4 (.D(n57[4]), .CK(clk), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_499__i4.GSR = "ENABLED";
    FD1S3AX count_499__i5 (.D(n57[5]), .CK(clk), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_499__i5.GSR = "ENABLED";
    FD1S3AX count_499__i6 (.D(n57[6]), .CK(clk), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_499__i6.GSR = "ENABLED";
    FD1S3AX count_499__i7 (.D(n57[7]), .CK(clk), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_499__i7.GSR = "ENABLED";
    FD1S3AX count_499__i8 (.D(n57[8]), .CK(clk), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_499__i8.GSR = "ENABLED";
    FD1S3AX count_499__i9 (.D(n57[9]), .CK(clk), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_499__i9.GSR = "ENABLED";
    FD1S3AX count_499__i10 (.D(n57[10]), .CK(clk), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_499__i10.GSR = "ENABLED";
    FD1S3AX count_499__i11 (.D(n57[11]), .CK(clk), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_499__i11.GSR = "ENABLED";
    FD1S3AX count_499__i12 (.D(n57[12]), .CK(clk), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_499__i12.GSR = "ENABLED";
    CCU2D count_499_add_4_13 (.A0(count[11]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2775), .S0(n57[11]), .S1(n57[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_499_add_4_13.INIT0 = 16'h7888;
    defparam count_499_add_4_13.INIT1 = 16'h7888;
    defparam count_499_add_4_13.INJECT1_0 = "NO";
    defparam count_499_add_4_13.INJECT1_1 = "NO";
    CCU2D count_499_add_4_11 (.A0(count[9]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2774), .COUT(n2775), .S0(n57[9]), .S1(n57[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_499_add_4_11.INIT0 = 16'h7888;
    defparam count_499_add_4_11.INIT1 = 16'h7888;
    defparam count_499_add_4_11.INJECT1_0 = "NO";
    defparam count_499_add_4_11.INJECT1_1 = "NO";
    CCU2D count_499_add_4_9 (.A0(count[7]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2773), .COUT(n2774), .S0(n57[7]), .S1(n57[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_499_add_4_9.INIT0 = 16'h7888;
    defparam count_499_add_4_9.INIT1 = 16'h7888;
    defparam count_499_add_4_9.INJECT1_0 = "NO";
    defparam count_499_add_4_9.INJECT1_1 = "NO";
    CCU2D count_499_add_4_7 (.A0(count[5]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2772), .COUT(n2773), .S0(n57[5]), .S1(n57[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_499_add_4_7.INIT0 = 16'h7888;
    defparam count_499_add_4_7.INIT1 = 16'h7888;
    defparam count_499_add_4_7.INJECT1_0 = "NO";
    defparam count_499_add_4_7.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module efb
//

module efb (clk, rst_N_18, wb_cyc_i, wb_we_i, GND_net, VCC_net, 
            \wb_adr_i[2] , \wb_adr_i[1] , \wb_adr_i[0] , wb_dat_i, wb_dat_o, 
            wb_ack_o, i2c1_sdaoen, i2c1_sdao, i2c1_scloen, i2c1_sclo, 
            i2c1_sdai, i2c1_scli) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input clk;
    input rst_N_18;
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
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(138[7:10])
    wire i2c1_scli /* synthesis is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/efb.v(30[10:19])
    
    EFB EFBInst_0 (.WBCLKI(clk), .WBRSTI(rst_N_18), .WBCYCI(wb_cyc_i), 
        .WBSTBI(wb_cyc_i), .WBWEI(wb_we_i), .WBADRI0(\wb_adr_i[0] ), .WBADRI1(\wb_adr_i[1] ), 
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
        .I2C1SDAO(i2c1_sdao), .I2C1SDAOEN(i2c1_sdaoen)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=6, LSE_RCOL=3, LSE_LLINE=199, LSE_RLINE=211 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(199[6] 211[3])
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
// Verilog Description of module \PulseOut(BITS=13)_U0 
//

module \PulseOut(BITS=13)_U0  (a0_rise, y0_pw, GND_net, o_y0_pwm_c, 
            clk) /* synthesis syn_module_defined=1 */ ;
    input a0_rise;
    input [12:0]y0_pw;
    input GND_net;
    output o_y0_pwm_c;
    input clk;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(138[7:10])
    
    wire n2756;
    wire [12:0]count;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(110[17:22])
    wire [12:0]n55;
    wire [12:0]n57;
    
    wire n2757, n2758, n24, n20, n3029, n22, n16, n2762, n2761, 
        n2760, n2759;
    
    CCU2D count_503_add_4_3 (.A0(count[0]), .B0(a0_rise), .C0(y0_pw[0]), 
          .D0(n55[0]), .A1(y0_pw[1]), .B1(a0_rise), .C1(count[1]), .D1(GND_net), 
          .CIN(n2756), .COUT(n2757), .S0(n57[0]), .S1(n57[1]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_503_add_4_3.INIT0 = 16'hd1e2;
    defparam count_503_add_4_3.INIT1 = 16'h4b8b;
    defparam count_503_add_4_3.INJECT1_0 = "NO";
    defparam count_503_add_4_3.INJECT1_1 = "NO";
    CCU2D count_503_add_4_5 (.A0(y0_pw[2]), .B0(a0_rise), .C0(count[2]), 
          .D0(GND_net), .A1(y0_pw[3]), .B1(a0_rise), .C1(count[3]), 
          .D1(GND_net), .CIN(n2757), .COUT(n2758), .S0(n57[2]), .S1(n57[3]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_503_add_4_5.INIT0 = 16'h4b8b;
    defparam count_503_add_4_5.INIT1 = 16'h4b8b;
    defparam count_503_add_4_5.INJECT1_0 = "NO";
    defparam count_503_add_4_5.INJECT1_1 = "NO";
    LUT4 count_503_inv_2_i1_1_lut_4_lut (.A(count[7]), .B(n24), .C(n20), 
         .D(count[6]), .Z(n55[0])) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(117[7:12])
    defparam count_503_inv_2_i1_1_lut_4_lut.init = 16'h0001;
    FD1S3AX signal_11 (.D(n3029), .CK(clk), .Q(o_y0_pwm_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=30, LSE_RCOL=3, LSE_LLINE=245, LSE_RLINE=250 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(115[9] 120[5])
    defparam signal_11.GSR = "ENABLED";
    FD1S3AX count_503__i0 (.D(n57[0]), .CK(clk), .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_503__i0.GSR = "ENABLED";
    LUT4 i12_4_lut_rep_11 (.A(count[7]), .B(n24), .C(n20), .D(count[6]), 
         .Z(n3029)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(117[7:12])
    defparam i12_4_lut_rep_11.init = 16'hfffe;
    CCU2D count_503_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(a0_rise), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n2756));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_503_add_4_1.INIT0 = 16'hF000;
    defparam count_503_add_4_1.INIT1 = 16'h0aaa;
    defparam count_503_add_4_1.INJECT1_0 = "NO";
    defparam count_503_add_4_1.INJECT1_1 = "NO";
    LUT4 i9_4_lut (.A(count[1]), .B(count[11]), .C(count[0]), .D(count[2]), 
         .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(117[7:12])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(count[4]), .B(count[9]), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(117[7:12])
    defparam i3_2_lut.init = 16'heeee;
    FD1S3AX count_503__i1 (.D(n57[1]), .CK(clk), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_503__i1.GSR = "ENABLED";
    FD1S3AX count_503__i2 (.D(n57[2]), .CK(clk), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_503__i2.GSR = "ENABLED";
    FD1S3AX count_503__i3 (.D(n57[3]), .CK(clk), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_503__i3.GSR = "ENABLED";
    FD1S3AX count_503__i4 (.D(n57[4]), .CK(clk), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_503__i4.GSR = "ENABLED";
    FD1S3AX count_503__i5 (.D(n57[5]), .CK(clk), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_503__i5.GSR = "ENABLED";
    FD1S3AX count_503__i6 (.D(n57[6]), .CK(clk), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_503__i6.GSR = "ENABLED";
    FD1S3AX count_503__i7 (.D(n57[7]), .CK(clk), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_503__i7.GSR = "ENABLED";
    FD1S3AX count_503__i8 (.D(n57[8]), .CK(clk), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_503__i8.GSR = "ENABLED";
    FD1S3AX count_503__i9 (.D(n57[9]), .CK(clk), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_503__i9.GSR = "ENABLED";
    FD1S3AX count_503__i10 (.D(n57[10]), .CK(clk), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_503__i10.GSR = "ENABLED";
    FD1S3AX count_503__i11 (.D(n57[11]), .CK(clk), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_503__i11.GSR = "ENABLED";
    FD1S3AX count_503__i12 (.D(n57[12]), .CK(clk), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_503__i12.GSR = "ENABLED";
    CCU2D count_503_add_4_15 (.A0(y0_pw[12]), .B0(a0_rise), .C0(count[12]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n2762), .S0(n57[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_503_add_4_15.INIT0 = 16'h4b8b;
    defparam count_503_add_4_15.INIT1 = 16'h0000;
    defparam count_503_add_4_15.INJECT1_0 = "NO";
    defparam count_503_add_4_15.INJECT1_1 = "NO";
    CCU2D count_503_add_4_13 (.A0(y0_pw[10]), .B0(a0_rise), .C0(count[10]), 
          .D0(GND_net), .A1(y0_pw[11]), .B1(a0_rise), .C1(count[11]), 
          .D1(GND_net), .CIN(n2761), .COUT(n2762), .S0(n57[10]), .S1(n57[11]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_503_add_4_13.INIT0 = 16'h4b8b;
    defparam count_503_add_4_13.INIT1 = 16'h4b8b;
    defparam count_503_add_4_13.INJECT1_0 = "NO";
    defparam count_503_add_4_13.INJECT1_1 = "NO";
    CCU2D count_503_add_4_11 (.A0(y0_pw[8]), .B0(a0_rise), .C0(count[8]), 
          .D0(GND_net), .A1(y0_pw[9]), .B1(a0_rise), .C1(count[9]), 
          .D1(GND_net), .CIN(n2760), .COUT(n2761), .S0(n57[8]), .S1(n57[9]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_503_add_4_11.INIT0 = 16'h4b8b;
    defparam count_503_add_4_11.INIT1 = 16'h4b8b;
    defparam count_503_add_4_11.INJECT1_0 = "NO";
    defparam count_503_add_4_11.INJECT1_1 = "NO";
    CCU2D count_503_add_4_9 (.A0(y0_pw[6]), .B0(a0_rise), .C0(count[6]), 
          .D0(GND_net), .A1(y0_pw[7]), .B1(a0_rise), .C1(count[7]), 
          .D1(GND_net), .CIN(n2759), .COUT(n2760), .S0(n57[6]), .S1(n57[7]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_503_add_4_9.INIT0 = 16'h4b8b;
    defparam count_503_add_4_9.INIT1 = 16'h4b8b;
    defparam count_503_add_4_9.INJECT1_0 = "NO";
    defparam count_503_add_4_9.INJECT1_1 = "NO";
    CCU2D count_503_add_4_7 (.A0(y0_pw[4]), .B0(a0_rise), .C0(count[4]), 
          .D0(GND_net), .A1(y0_pw[5]), .B1(a0_rise), .C1(count[5]), 
          .D1(GND_net), .CIN(n2758), .COUT(n2759), .S0(n57[4]), .S1(n57[5]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(118[26:38])
    defparam count_503_add_4_7.INIT0 = 16'h4b8b;
    defparam count_503_add_4_7.INIT1 = 16'h4b8b;
    defparam count_503_add_4_7.INJECT1_0 = "NO";
    defparam count_503_add_4_7.INJECT1_1 = "NO";
    LUT4 i11_4_lut (.A(count[12]), .B(n22), .C(n16), .D(count[5]), .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(117[7:12])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i7_3_lut (.A(count[10]), .B(count[8]), .C(count[3]), .Z(n20)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(117[7:12])
    defparam i7_3_lut.init = 16'hfefe;
    
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
// Verilog Description of module \PulseIn(BITS=13)_U4 
//

module \PulseIn(BITS=13)_U4  (a0_pw, clk, i_a0_pwm_c, a0_rise, GND_net) /* synthesis syn_module_defined=1 */ ;
    output [12:0]a0_pw;
    input clk;
    input i_a0_pwm_c;
    output a0_rise;
    input GND_net;
    
    wire clk /* synthesis SET_AS_NETWORK=clk, is_clock=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(138[7:10])
    
    wire o_pw_12__N_220;
    wire [12:0]count;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(66[23:28])
    
    wire signal_sync1, signal_sync0, signal, high;
    wire [12:0]n57;
    
    wire n2782, n2781, n2780, n2779, n2778, n2777;
    
    FD1P3AX pw_i0_i0 (.D(count[0]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=213, LSE_RLINE=218 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i0.GSR = "ENABLED";
    FD1S3AX signal_sync1_19 (.D(signal_sync0), .CK(clk), .Q(signal_sync1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=213, LSE_RLINE=218 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync1_19.GSR = "ENABLED";
    FD1S3AX signal_20 (.D(signal_sync1), .CK(clk), .Q(signal)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=213, LSE_RLINE=218 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_20.GSR = "ENABLED";
    FD1S3AX high_21 (.D(signal), .CK(clk), .Q(high)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=213, LSE_RLINE=218 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam high_21.GSR = "ENABLED";
    FD1S3AX signal_sync0_18 (.D(i_a0_pwm_c), .CK(clk), .Q(signal_sync0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=213, LSE_RLINE=218 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam signal_sync0_18.GSR = "ENABLED";
    FD1S3IX rise_22 (.D(signal), .CK(clk), .CD(high), .Q(a0_rise)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=213, LSE_RLINE=218 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam rise_22.GSR = "ENABLED";
    FD1S3AX count_498__i0 (.D(n57[0]), .CK(clk), .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_498__i0.GSR = "ENABLED";
    FD1P3AX pw_i0_i12 (.D(count[12]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=213, LSE_RLINE=218 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i12.GSR = "ENABLED";
    FD1P3AX pw_i0_i11 (.D(count[11]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=213, LSE_RLINE=218 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i11.GSR = "ENABLED";
    FD1P3AX pw_i0_i10 (.D(count[10]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=213, LSE_RLINE=218 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i10.GSR = "ENABLED";
    FD1P3AX pw_i0_i9 (.D(count[9]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=213, LSE_RLINE=218 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i9.GSR = "ENABLED";
    FD1P3AX pw_i0_i8 (.D(count[8]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=213, LSE_RLINE=218 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i8.GSR = "ENABLED";
    FD1P3AX pw_i0_i7 (.D(count[7]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=213, LSE_RLINE=218 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i7.GSR = "ENABLED";
    FD1P3AX pw_i0_i6 (.D(count[6]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=213, LSE_RLINE=218 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i6.GSR = "ENABLED";
    FD1P3AX pw_i0_i5 (.D(count[5]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=213, LSE_RLINE=218 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i5.GSR = "ENABLED";
    FD1P3AX pw_i0_i4 (.D(count[4]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=213, LSE_RLINE=218 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i4.GSR = "ENABLED";
    FD1P3AX pw_i0_i3 (.D(count[3]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=213, LSE_RLINE=218 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i3.GSR = "ENABLED";
    FD1P3AX pw_i0_i2 (.D(count[2]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=213, LSE_RLINE=218 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i2.GSR = "ENABLED";
    FD1P3AX pw_i0_i1 (.D(count[1]), .SP(o_pw_12__N_220), .CK(clk), .Q(a0_pw[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=29, LSE_RCOL=3, LSE_LLINE=213, LSE_RLINE=218 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(73[9] 96[5])
    defparam pw_i0_i1.GSR = "ENABLED";
    CCU2D count_498_add_4_13 (.A0(count[11]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2782), .S0(n57[11]), .S1(n57[12]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_498_add_4_13.INIT0 = 16'h7888;
    defparam count_498_add_4_13.INIT1 = 16'h7888;
    defparam count_498_add_4_13.INJECT1_0 = "NO";
    defparam count_498_add_4_13.INJECT1_1 = "NO";
    CCU2D count_498_add_4_11 (.A0(count[9]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2781), .COUT(n2782), .S0(n57[9]), .S1(n57[10]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_498_add_4_11.INIT0 = 16'h7888;
    defparam count_498_add_4_11.INIT1 = 16'h7888;
    defparam count_498_add_4_11.INJECT1_0 = "NO";
    defparam count_498_add_4_11.INJECT1_1 = "NO";
    CCU2D count_498_add_4_9 (.A0(count[7]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2780), .COUT(n2781), .S0(n57[7]), .S1(n57[8]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_498_add_4_9.INIT0 = 16'h7888;
    defparam count_498_add_4_9.INIT1 = 16'h7888;
    defparam count_498_add_4_9.INJECT1_0 = "NO";
    defparam count_498_add_4_9.INJECT1_1 = "NO";
    CCU2D count_498_add_4_7 (.A0(count[5]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2779), .COUT(n2780), .S0(n57[5]), .S1(n57[6]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_498_add_4_7.INIT0 = 16'h7888;
    defparam count_498_add_4_7.INIT1 = 16'h7888;
    defparam count_498_add_4_7.INJECT1_0 = "NO";
    defparam count_498_add_4_7.INJECT1_1 = "NO";
    FD1S3AX count_498__i1 (.D(n57[1]), .CK(clk), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_498__i1.GSR = "ENABLED";
    FD1S3AX count_498__i2 (.D(n57[2]), .CK(clk), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_498__i2.GSR = "ENABLED";
    FD1S3AX count_498__i3 (.D(n57[3]), .CK(clk), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_498__i3.GSR = "ENABLED";
    FD1S3AX count_498__i4 (.D(n57[4]), .CK(clk), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_498__i4.GSR = "ENABLED";
    FD1S3AX count_498__i5 (.D(n57[5]), .CK(clk), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_498__i5.GSR = "ENABLED";
    FD1S3AX count_498__i6 (.D(n57[6]), .CK(clk), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_498__i6.GSR = "ENABLED";
    FD1S3AX count_498__i7 (.D(n57[7]), .CK(clk), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_498__i7.GSR = "ENABLED";
    FD1S3AX count_498__i8 (.D(n57[8]), .CK(clk), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_498__i8.GSR = "ENABLED";
    FD1S3AX count_498__i9 (.D(n57[9]), .CK(clk), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_498__i9.GSR = "ENABLED";
    FD1S3AX count_498__i10 (.D(n57[10]), .CK(clk), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_498__i10.GSR = "ENABLED";
    FD1S3AX count_498__i11 (.D(n57[11]), .CK(clk), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_498__i11.GSR = "ENABLED";
    FD1S3AX count_498__i12 (.D(n57[12]), .CK(clk), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_498__i12.GSR = "ENABLED";
    CCU2D count_498_add_4_5 (.A0(count[3]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2778), .COUT(n2779), .S0(n57[3]), .S1(n57[4]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_498_add_4_5.INIT0 = 16'h7888;
    defparam count_498_add_4_5.INIT1 = 16'h7888;
    defparam count_498_add_4_5.INJECT1_0 = "NO";
    defparam count_498_add_4_5.INJECT1_1 = "NO";
    CCU2D count_498_add_4_3 (.A0(count[1]), .B0(signal), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .CIN(n2777), .COUT(n2778), .S0(n57[1]), .S1(n57[2]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_498_add_4_3.INIT0 = 16'h7888;
    defparam count_498_add_4_3.INIT1 = 16'h7888;
    defparam count_498_add_4_3.INJECT1_0 = "NO";
    defparam count_498_add_4_3.INJECT1_1 = "NO";
    CCU2D count_498_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(signal), .C1(GND_net), .D1(GND_net), 
          .COUT(n2777), .S1(n57[0]));   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(94[13:43])
    defparam count_498_add_4_1.INIT0 = 16'hF000;
    defparam count_498_add_4_1.INIT1 = 16'h7777;
    defparam count_498_add_4_1.INJECT1_0 = "NO";
    defparam count_498_add_4_1.INJECT1_1 = "NO";
    LUT4 o_pw_12__I_3_2_lut (.A(signal), .B(high), .Z(o_pw_12__N_220)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/scott/documents/pulsecontroller/impl1/source/pulsecontroller.v(84[7:22])
    defparam o_pw_12__I_3_2_lut.init = 16'h4444;
    
endmodule
