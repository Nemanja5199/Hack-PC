module VGA(output h_sync,v_sync,video_on,pixel_clock_ ,output [9:0] red,blue,grean ,output[15:0] addres,  input clock,input[15:0] data );



wire[9:0] pixel_row,pixel_column;

wire clkp;


vga_pll V1(clock,clkp);

VGA_SYNC V2();

ImageGenerator M1();








endmodule 