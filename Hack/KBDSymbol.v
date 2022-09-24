

module KBDS(output [7:0] ascii_code, input clck,reset,ps2d,ps2c);





wire [7:0] key_code ; 
wire kb_buf_empty ;
wire rd_key_code;

assign rd_key_code = ~kb_buf_empty;

kb_code K1(clck,reset,ps2d,ps2c,rd_key_code,key_code,kb_buf_empty);


key2ascii K2(key_code,ascii_code);







endmodule