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

// *****************************************************************************
// This file contains a Verilog test bench template that is freely editable to  
// suit user's needs .Comments are provided in each section to help the user    
// fill out necessary details.                                                  
// *****************************************************************************
// Generated on "12/18/2024 16:16:55"
                                                                                
// Verilog Test Bench template for design : DDS
// 
// Simulation tool : ModelSim-Altera (Verilog)
// 

`timescale 1 ns/ 1 ns
module DDS_vlg_tst();
                                         
reg [31:0] B;
reg CLK;
reg [9:0] RANGE;
// wires                                               
wire [9:0]  DAC;
wire DAC_CLK;
reg [6:0] PWM;
// assign statements (if any)                          
DDS i1 (
// port map - connection between master ports and signals/registers   
	.B(B),
	.CLK(CLK),	
	.DAC_CLK(DAC_CLK),
	.RANGE(RANGE),
	.PWM(PWM),
	.DAC(DAC)
);
initial                                                
begin                                                  

 CLK=1'b0;
 B=32'd42949*1;
 RANGE=10'd1; 
 PWM[6:0]=7'd80;                     
end                                                    
always #10 CLK=~CLK;                                               
                                                                      
endmodule

