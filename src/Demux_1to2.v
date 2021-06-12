//Verilog HDL for "HDL_Lab_vhdlp1", "Demux_1to2" "functional"

module Demux_1to2(out0, out1, in, s, rst);
	input s, rst;
 	input [7:0] in;
 	output reg [7:0] out0, out1;
  
	always @(rst or in or s) begin
  		if(!rst) begin
   			out0 <= 0;
   			out1 <= 0;
  		end 
  		else begin
   			if(s==0) out0 <= in;
   			if(s==1) out1 <= in;
  		end
 	end 
endmodule 

