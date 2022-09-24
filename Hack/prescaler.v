module prescaler(
	input Clock,
	input [16:0] pre_set,
	output reg Clock_RAM,
	output reg Clock_CPU
    );
reg [32:0] internal_count_RAM,internal_count_CPU;
reg [24:0] pre_setting;
initial Clock_RAM=0;
initial Clock_CPU=0;
initial internal_count_RAM=0;
initial internal_count_CPU={pre_set,8'b00000000};
always @(posedge Clock) begin
	pre_setting = {pre_set,8'b00000000};
	internal_count_RAM <=  internal_count_RAM+1'b1;
	internal_count_CPU <=  internal_count_CPU+1'b1;
	if(internal_count_RAM >= pre_setting)//10 miliona
	begin
		internal_count_RAM <= 0;
		Clock_RAM <= ~Clock_RAM;
	end
	if(internal_count_CPU >= (pre_setting<<1))//20 miliona
	begin
		internal_count_CPU <= 0;
		Clock_CPU <= ~Clock_CPU;
	end
end

endmodule 