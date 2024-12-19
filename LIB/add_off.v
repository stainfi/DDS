module add_off(
 clk,
 adder,
 pwm,
 en,
 data_off
 );
input clk;
input [9:0] adder;
input [6:0] pwm;
output reg [9:0] data_off;
reg [15:0] offset;
input en;
parameter dath=10'd512;
//parameter offset=10'd308;
//initial begin
//		if(pwm>=50)	offset=dath*(pwm-7'd50)/10'd50;
//		else offset=dath*(7'd50-pwm)/10'd50;
//		end
always @(posedge clk)
	begin		
		if(en)
		 begin
		   if(pwm>7'd50)
			  begin offset=dath*(pwm-7'd50)/10'd50;
					  if(adder<dath)
				       data_off[9:0]<=adder[9:0]+offset[9:0];
			        else data_off[9:0]<=adder[9:0];
		     end			  
		   else 
			if(pwm<7'd50)
		     begin offset=dath*(7'd50-pwm)/10'd50;
					  if(adder<dath)
						  data_off[9:0]<=adder[9:0];
					  else data_off[9:0]<=adder[9:0]-offset[9:0];
			  end
			else  data_off[9:0]<=adder[9:0];
		 end			
	 end  	
endmodule

 