


module VGA1(output [9:0] red,green,blue,output [12:0] address,output horiz_sync_out, vert_sync_out,
output video_on, pixel_clock,input inclk0,input [15:0] data);


wire c0;

wire [9:0] pixel_row, pixel_column;



vga_pll V1(.inclk0(inclk0),.c0(c0));
VGA_SYNC V2(.pixel_clock_int(c0),.horiz_sync_out(horiz_sync_out),.vert_sync_out(vert_sync_out),.video_on(video_on),.pixel_clock(pixel_clock),.pixel_row(pixel_row),.pixel_column(pixel_column));
ImageGenerator V3(.red(red),.green(green),.blue(blue),.address(address),.row(pixel_row),.columen(pixel_column),.data(data));








endmodule