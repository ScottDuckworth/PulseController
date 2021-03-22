// EFB I2C: Registers
`define EFB_I2C_CR     8'h40
`define EFB_I2C_CMDR   8'h41
`define EFB_I2C_BLOR   8'h42
`define EFB_I2C_BHIR   8'h43
`define EFB_I2C_TXDR   8'h44
`define EFB_I2C_SR     8'h45
`define EFB_I2C_GCDR   8'h46
`define EFB_I2C_RXDR   8'h47
`define EFB_I2C_IRQSR  8'h48
`define EFB_I2C_IRQENR 8'h49
// EFB I2C: Control Register Bit Masks
`define EFB_I2C_CR_I2CEN_BIT     3'o7
`define EFB_I2C_CR_GCEN_BIT      3'o6
`define EFB_I2C_CR_WKUPEN_BIT    3'o5
`define EFB_I2C_CR_I2CEN_MASK    (8'h01 << `EFB_I2C_CR_I2CEN_BIT)
`define EFB_I2C_CR_GCEN_MASK     (8'h01 << `EFB_I2C_CR_GCEN_BIT)
`define EFB_I2C_CR_WKUPEN_MASK   (8'h01 << `EFB_I2C_CR_WKUPEN_BIT)
// EFB I2C: Command Register Bit Masks 
`define EFB_I2C_CMDR_STA_BIT     3'o7
`define EFB_I2C_CMDR_STO_BIT     3'o6
`define EFB_I2C_CMDR_RD_BIT      3'o5
`define EFB_I2C_CMDR_WR_BIT      3'o4
`define EFB_I2C_CMDR_NACK_BIT    3'o3
`define EFB_I2C_CMDR_CKSDIS_BIT  3'o2
`define EFB_I2C_CMDR_STA_MASK    (8'h01 << `EFB_I2C_CMDR_STA_BIT)
`define EFB_I2C_CMDR_STO_MASK    (8'h01 << `EFB_I2C_CMDR_STO_BIT)
`define EFB_I2C_CMDR_RD_MASK     (8'h01 << `EFB_I2C_CMDR_RD_BIT)
`define EFB_I2C_CMDR_WR_MASK     (8'h01 << `EFB_I2C_CMDR_WR_BIT)
`define EFB_I2C_CMDR_NACK_MASK   (8'h01 << `EFB_I2C_CMDR_NACK_BIT)
`define EFB_I2C_CMDR_CKSDIS_MASK (8'h01 << `EFB_I2C_CMDR_CKSDIS_BIT)
// EFB I2C: Status Register Bit Masks
`define EFB_I2C_SR_TIP_BIT       3'o7
`define EFB_I2C_SR_BUSY_BIT      3'o6
`define EFB_I2C_SR_RARC_BIT      3'o5
`define EFB_I2C_SR_SRW_BIT       3'o4
`define EFB_I2C_SR_ARBL_BIT      3'o3
`define EFB_I2C_SR_TRRDY_BIT     3'o2
`define EFB_I2C_SR_TROE_BIT      3'o1
`define EFB_I2C_SR_HGC_BIT       3'o0
`define EFB_I2C_SR_TIP_MASK      (8'h01 << EFB_I2C_SR_TIP_BIT)
`define EFB_I2C_SR_BUSY_MASK     (8'h01 << EFB_I2C_SR_BUSY_BIT)
`define EFB_I2C_SR_RARC_MASK     (8'h01 << EFB_I2C_SR_RARC_BIT)
`define EFB_I2C_SR_SRW_MASK      (8'h01 << EFB_I2C_SR_SRW_BIT)
`define EFB_I2C_SR_ARBL_MASK     (8'h01 << EFB_I2C_SR_ARBL_BIT)
`define EFB_I2C_SR_TRRDY_MASK    (8'h01 << EFB_I2C_SR_TRRDY_BIT)
`define EFB_I2C_SR_TROE_MASK     (8'h01 << EFB_I2C_SR_TROE_BIT)
`define EFB_I2C_SR_HGC_MASK      (8'h01 << EFB_I2C_SR_HGC_BIT)

`define CLK_MULTIPLIER_100  302


module PulseIn #(
	parameter BITS = 16,
	parameter STALE_BITS = BITS,
	parameter STALE_THRESHOLD = 0
)(
	input wire clk,                // Clock
	input wire i_signal,           // Input signal
	output wire [BITS-1:0] o_pw,  // Pulse width
	output wire o_rise,            // Rising edge detected
	output wire o_stale            // Pulse is stale
);

	reg signal_sync0, signal_sync1, signal, high, rise, stale;
	reg [STALE_BITS-1:0] count;
	reg [BITS-1:0] pw = 0;
	
	assign o_pw    = pw;
	assign o_rise  = rise;
	assign o_stale = stale;

	always @(posedge clk) begin
		// Metastability synchronization.
		signal_sync0 <= i_signal;
		signal_sync1 <= signal_sync0;
		signal <= signal_sync1;
		
		// Indicates if signal was high at the last clock cycle.
		high <= signal;
		// Report rising edges.
		rise <= signal && !high;
		// Save pw on falling edge.
		if (!signal && high) pw <= count;
		// Increment count.
		if (STALE_THRESHOLD) begin  // Staleness is being tracked.
			// Reset count on rising edge. Continue counting after signal is low.
			count <= (signal && !high ? 1'b0 : count) + 1'b1;
			if (count > STALE_THRESHOLD) stale <= 1'b1;
			if (signal ^ high)           stale <= 1'b0;
		end
		else begin  // Staleness is not being tracked.
			// Reset count when signal is low.
			count <= (signal ? count : 1'b0) + 1'b1;
		end
	end

endmodule


module PulseOut #(
	parameter BITS = 16
)(
	input wire clk,               // Clock
	input wire [BITS-1:0] i_pw,  // Pulse width
	input wire i_pulse,           // Pulse period
	output wire o_signal          // Output signal
);

	reg [BITS-1:0] count, pw;
	reg signal;
	
	assign o_signal = signal;

	always @(posedge clk) begin
		if (i_pulse) begin
			pw    <= i_pw;
			count <= 1'b0;
		end
		else if (count < pw) begin
			signal <= pw ? 1'b1 : 1'b0;
			count  <= count + 1'b1;
		end
		else begin
			signal <= 1'b0;
		end
	end

endmodule

module PulseController(
	inout wire scl,
	inout wire sda,
	input wire rst,
	input wire i_a0_pwm,
	input wire i_a1_pwm,
	input wire i_a2_pwm,
	input wire i_a3_pwm,
	input wire i_a4_pwm,
	output wire o_select_indicator,
	output wire o_y0_pwm,
	output wire o_y1_pwm
);

	wire clk;

	// WISHBONE interface
	reg         wb_cyc_i;  // bus cycle asserted high by master (user logic code)
	reg         wb_we_i;   // write enable (low=read, high=write)
	reg  [7:0] wb_adr_i;  // EFB register address
	reg  [7:0] wb_dat_i;  // data input
	wire [7:0] wb_dat_o;  // data output
	wire        wb_ack_o;  // acknowledge signal asserted high by the EFB


	localparam
		PWM_BITS = 13,
		pulse_switch_threshold =   1_500 * `CLK_MULTIPLIER_100 / 100,
		pulse_stale_threshold  = 100_000 * `CLK_MULTIPLIER_100 / 100;
	
	localparam
		state_init            = 4'd0,
		state_i2c_enable      = 4'd1,
		state_i2c_cksdis      = 4'd2,
		state_i2c_busy        = 4'd3,
		state_i2c_trrdy       = 4'd4,
		state_i2c_srw         = 4'd5,
		state_i2c_read        = 4'd6,
		state_i2c_read_trrdy  = 4'd7,
		state_i2c_write       = 4'd8,
		state_i2c_write_trrdy = 4'd9,
		state_i2c_nack        = 4'd10,
		state_i2c_stop        = 4'd11;
	
	// FSM state. Valid states are any of the state_* values.
	reg [3:0] state = state_init;
	// A counter used by some states in the FSM.
	reg [2:0] count = 1'b0;
	// Buffered data for I2C read/write.
	reg [PWM_BITS-1:0] i2c_pw0, i2c_pw1;

	// Asserted for one clock cycle at the rising edge of the PWM signals.
	wire a0_rise, a1_rise;
	// The pulse width (measured in clk cycles) of the A input channels (received via PWM).
	wire [PWM_BITS-1:0] a0_pw, a1_pw, a2_pw, a3_pw, a4_pw;
	// The pulse width (measured in clk cycles) of the B input channels (received via I2C).
	reg  [PWM_BITS-1:0] b0_pw, b1_pw;
	// The pulse width (measured in clk cycles) of the Y output channels.
	reg  [PWM_BITS-1:0] y0_pw, y1_pw;
	
	// Logical aliases.
	assign a2_on = a2_pw >= pulse_switch_threshold;
	assign a3_on = a3_pw >= pulse_switch_threshold;
	assign a4_on = a4_pw >= pulse_switch_threshold;
	assign select_on = a2_on;
	assign o_select_indicator = select_on;


	OSCH #(
		.NOM_FREQ("3.02")
	) internal_oscillator (
		.STDBY(1'b0), 
		.OSC(clk)
	);

	efb efb (
		.wb_clk_i(clk),
		.wb_rst_i(~rst),
		.wb_dat_i(wb_dat_i),
		.wb_stb_i(wb_cyc_i),
		.wb_cyc_i(wb_cyc_i),
		.wb_adr_i(wb_adr_i),
		.wb_we_i(wb_we_i),
		.wb_dat_o(wb_dat_o), 
		.wb_ack_o(wb_ack_o),      
		.i2c1_scl(scl),
		.i2c1_sda(sda)
	);
	
	PulseIn #(.BITS(PWM_BITS)) a0_pulsein (
		.clk(clk),
		.i_signal(i_a0_pwm),
		.o_pw(a0_pw),
		.o_rise(a0_rise)
	);

	PulseIn #(.BITS(PWM_BITS)) a1_pulsein (
		.clk(clk),
		.i_signal(i_a1_pwm),
		.o_pw(a1_pw),
		.o_rise(a1_rise)
	);

	PulseIn #(.BITS(PWM_BITS)) a2_pulsein (
		.clk(clk),
		.i_signal(i_a2_pwm),
		.o_pw(a2_pw)
	);
	
	PulseIn #(.BITS(PWM_BITS)) a3_pulsein (
		.clk(clk),
		.i_signal(i_a3_pwm),
		.o_pw(a3_pw)
	);
	
	PulseIn #(.BITS(PWM_BITS)) a4_pulsein (
		.clk(clk),
		.i_signal(i_a4_pwm),
		.o_pw(a4_pw)
	);
	
	PulseOut #(.BITS(PWM_BITS)) y0_pulseout (
		.clk(clk),
		.i_pw(y0_pw),
		.i_pulse(a0_rise),
		.o_signal(o_y0_pwm)
	);
	
	PulseOut #(.BITS(PWM_BITS)) y1_pulseout (
		.clk(clk),
		.i_pw(y1_pw),
		.i_pulse(a1_rise),
		.o_signal(o_y1_pwm)
	);
	
	always @(posedge clk) begin
		if (select_on) begin
			y0_pw <= b0_pw;
			y1_pw <= b1_pw;
		end
		else begin
			y0_pw <= a0_pw;
			y1_pw <= a1_pw;
		end
	end
	
	// State machine
	always @(posedge clk) begin
		case (state)
			state_init: begin
				// Wait at least 1us before sending commands to the EFB.
				count <= count + 1'b1;
				if (count == 3'b111) state <= state_i2c_enable;
			end
			
			state_i2c_enable: begin
				wb_cyc_i <= 1'b1;
				wb_we_i  <= 1'b1;
				wb_adr_i <= `EFB_I2C_CR;
				wb_dat_i <= `EFB_I2C_CR_I2CEN_MASK;
				
				if (wb_ack_o && wb_cyc_i) begin
					wb_cyc_i <= 1'b0;
					state    <= state_i2c_cksdis;
				end
			end
			
			state_i2c_cksdis: begin
				wb_cyc_i <= 1'b1;
				wb_we_i  <= 1'b1;
				wb_adr_i <= `EFB_I2C_CMDR;
				wb_dat_i <= `EFB_I2C_CMDR_CKSDIS_MASK;
				
				if (wb_ack_o && wb_cyc_i) begin
					wb_cyc_i <= 1'b0;
					state    <= state_i2c_busy;
				end
			end
			
			state_i2c_busy: begin
				wb_cyc_i <= 1'b1;
				wb_we_i  <= 1'b0;
				wb_adr_i <= `EFB_I2C_SR;
				
				if (wb_ack_o && wb_cyc_i) begin
					wb_cyc_i <= 1'b0;
					if (~wb_dat_o[`EFB_I2C_SR_BUSY_BIT]) begin
						state <= state_i2c_trrdy;
					end
				end
			end
			
			state_i2c_trrdy: begin
				wb_cyc_i <= 1'b1;
				wb_we_i  <= 1'b0;
				wb_adr_i <= `EFB_I2C_SR;
				
				if (wb_ack_o && wb_cyc_i) begin
					wb_cyc_i <= 1'b0;
					if (wb_dat_o[`EFB_I2C_SR_TRRDY_BIT]) begin
						state <= state_i2c_srw;
					end
				end
			end
			
			state_i2c_srw: begin
				wb_cyc_i <= 1'b1;
				wb_we_i  <= 1'b0;
				wb_adr_i <= `EFB_I2C_SR;

				if (wb_ack_o && wb_cyc_i) begin
					wb_cyc_i <= 1'b0;
					count <= 1'b0;
					state <= wb_dat_o[`EFB_I2C_SR_SRW_BIT] ? state_i2c_read : state_i2c_write;
				end
			end
			
			state_i2c_read: begin
				wb_cyc_i <= 1'b1;
				wb_we_i  <= 1'b1;
				wb_adr_i <= `EFB_I2C_TXDR;
				case (count)
					0: begin
						wb_dat_i <= {a4_on, a3_on, a2_on};
						i2c_pw0 <= a0_pw;
						i2c_pw1 <= a1_pw;
					end
					1: wb_dat_i <= i2c_pw0[PWM_BITS-1:8];
					2: wb_dat_i <= i2c_pw0[7:0];
					3: wb_dat_i <= i2c_pw1[PWM_BITS-1:8];
					4: wb_dat_i <= i2c_pw1[7:0];
				endcase
				
				if (wb_ack_o && wb_cyc_i) begin
					wb_cyc_i <= 1'b0;
					count <= count + 1'b1;
					state <= count == 4 ? state_i2c_nack : state_i2c_read_trrdy;
				end
			end
			
			state_i2c_read_trrdy: begin
				wb_cyc_i <= 1'b1;
				wb_we_i  <= 1'b0;
				wb_adr_i <= `EFB_I2C_SR;
				
				if (wb_ack_o && wb_cyc_i) begin
					wb_cyc_i <= 1'b0;
					if (wb_dat_o[`EFB_I2C_SR_TRRDY_BIT]) state <= state_i2c_read;
				end
			end
			
			state_i2c_write: begin
				wb_cyc_i <= 1'b1;
				wb_we_i  <= 1'b0;
				wb_adr_i <= `EFB_I2C_RXDR;
				case (count)
					0: i2c_pw0[PWM_BITS-1:8] <= wb_dat_o;
					1: i2c_pw0[7:0]          <= wb_dat_o;
					2: i2c_pw1[PWM_BITS-1:8] <= wb_dat_o;
					3: begin
						b0_pw <= i2c_pw0;
						b1_pw <= {i2c_pw1[PWM_BITS-1:8], wb_dat_o};
					end
				endcase
				
				if (wb_ack_o && wb_cyc_i) begin
					wb_cyc_i <= 1'b0;
					count <= count + 1'b1;
					state <= count == 3 ? state_i2c_stop : state_i2c_write_trrdy;
				end
			end
			
			state_i2c_write_trrdy: begin
				wb_cyc_i <= 1'b1;
				wb_we_i  <= 1'b0;
				wb_adr_i <= `EFB_I2C_SR;
				
				if (wb_ack_o && wb_cyc_i) begin
					wb_cyc_i <= 1'b0;
					if (wb_dat_o[`EFB_I2C_SR_TRRDY_BIT]) state <= state_i2c_write;
				end
			end
			
			state_i2c_nack: begin
				wb_cyc_i <= 1'b1;
				wb_we_i  <= 1'b1;
				wb_adr_i <= `EFB_I2C_CMDR;
				wb_dat_i <= `EFB_I2C_CMDR_CKSDIS_MASK | `EFB_I2C_CMDR_NACK_MASK;
				
				if (wb_ack_o && wb_cyc_i) begin
					wb_cyc_i <= 1'b0;
					state <= state_i2c_stop;
				end
			end
			
			state_i2c_stop: begin
				wb_cyc_i <= 1'b1;
				wb_we_i  <= 1'b0;
				wb_adr_i <= `EFB_I2C_SR;
				
				if (wb_ack_o && wb_cyc_i) begin
					wb_cyc_i <= 1'b0;
					if (~wb_dat_o[`EFB_I2C_SR_BUSY_BIT]) begin
						state <= state_i2c_cksdis;
					end
				end
			end
		endcase
		
		if (~rst) begin
			state <= state_init;
			count <= 1'b0;
		end
	end

endmodule
