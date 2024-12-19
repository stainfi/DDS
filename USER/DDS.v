// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Full Version"
// CREATED		"Thu Dec 19 05:23:51 2024"

module DDS(
	CLK,
	B,
	PWM,
	RANGE,
	DAC_CLK,
	DAC
);


input wire	CLK;
input wire	[31:0] B;
input wire	[6:0] PWM;
input wire	[9:0] RANGE;
output wire	DAC_CLK;
output wire	[9:0] DAC;

wire	[31:0] A;
wire	[31:0] SYNTHESIZED_WIRE_0;
wire	[9:0] SYNTHESIZED_WIRE_1;
wire	[9:0] SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;

assign	DAC_CLK = CLK;
assign	SYNTHESIZED_WIRE_3 = 1;




DFF32	b2v_inst(
	.clock(CLK),
	.data(SYNTHESIZED_WIRE_0),
	.q(A));


ADDER32	b2v_inst1(
	.clock(CLK),
	.dataa(A),
	.datab(B),
	.result(SYNTHESIZED_WIRE_0));


DIV10	b2v_inst2(
	.clock(CLK),
	.denom(RANGE),
	.numer(SYNTHESIZED_WIRE_1),
	.quotient(DAC)
	);


sin_rom	b2v_inst5(
	.inclock(CLK),
	.address(SYNTHESIZED_WIRE_2),
	.q(SYNTHESIZED_WIRE_1));


add_off	b2v_inst6(
	.clk(CLK),
	.en(SYNTHESIZED_WIRE_3),
	.adder(A[31:22]),
	.pwm(PWM),
	.data_off(SYNTHESIZED_WIRE_2));
	defparam	b2v_inst6.dath = 10'b1000000000;




endmodule
