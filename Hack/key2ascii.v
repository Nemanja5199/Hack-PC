// Code your design here
module key2ascii 
( 
input wire [7:0] key_code , 
output reg [7:0] ascii_code 
); 
always @* 
case (key_code)
8'h45: ascii_code = 8'h30; 
8'h16: ascii_code = 8'h31; 
8'h1e: ascii_code = 8'h32; 
8'h26: ascii_code = 8'h33; 
8'h25: ascii_code = 8'h34; 
8'h2e: ascii_code = 8'h35;
8'h36: ascii_code = 8'h36;
8'h3d: ascii_code = 8'h37;
8'h3e: ascii_code = 8'h38; 
8'h46: ascii_code = 8'h39;

8'h1c: ascii_code = 8'h41;
8'h32: ascii_code = 8'h42;
8'h21: ascii_code = 8'h43;
8'h23: ascii_code = 8'h44;
8'h24: ascii_code = 8'h45;
8'h2b: ascii_code = 8'h46;
8'h34: ascii_code = 8'h47;
8'h33: ascii_code = 8'h48;
8'h43: ascii_code = 8'h49;
8'h3b: ascii_code = 8'h4a;
8'h42: ascii_code = 8'h4b;
8'h4b: ascii_code = 8'h4c;
8'h3b: ascii_code = 8'h4d;
8'h31: ascii_code = 8'h4e;
8'h44: ascii_code = 8'h4f;
8'h4d: ascii_code = 8'h50;
8'h15: ascii_code = 8'h51;
8'h2d: ascii_code = 8'h52;
8'h1b: ascii_code = 8'h53;
8'h2c: ascii_code = 8'h54;
8'h3c: ascii_code = 8'h55;
8'h2a: ascii_code = 8'h56;
8'h1d: ascii_code = 8'h57;
8'h22: ascii_code = 8'h58;
8'h35: ascii_code = 8'h59;
8'h1a: ascii_code = 8'h5a;

8'h0e: ascii_code = 8'h60;
8'h4e: ascii_code = 8'h2d;
8'h55: ascii_code = 8'h3d;
8'h54: ascii_code = 8'h5b;
8'h5b: ascii_code = 8'h5c;
8'h4c: ascii_code = 8'h3b;
8'h52: ascii_code = 8'h27;
8'h41: ascii_code = 8'h2c;
8'h49: ascii_code = 8'h2e;
8'h4a: ascii_code = 8'h2f;

8'h29: ascii_code = 8'h20;
8'h5a: ascii_code = 8'h0d;
8'h66: ascii_code = 8'h08;
default: ascii_code = 8'h2a;
endcase

endmodule
 
 
