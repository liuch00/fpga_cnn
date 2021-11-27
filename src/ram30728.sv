module ram30728(
	input  logic   clk, rst_n,
	input logic 	wreq,
	input logic	[7:0] wchar,
	output logic outvaid,
	output logic [7:0] outnum[7:0],
	output logic finish,
	input logic [11:0]raddr,
	output logic [23:0]rdata
	);

reg [7:0]regbyte[3071:0];
integer j;
logic [9:0]numofblock;
logic [11:0] add;


initial
begin
	add=0;
	finish=0;
end

always @(*)
begin
	if(raddr<1024)begin
rdata = {regbyte[raddr],regbyte[raddr+12'd1024],regbyte[raddr+12'd2048]};
 end
else begin rdata=24'd0;end 
end


always @(posedge clk or posedge rst_n)
begin
	if(rst_n)begin
		for(j=0;j<3072;j=j+1)
			regbyte[j]<=8'b00000000;
		add<=0;
		numofblock<=0;
		finish<=0;
	end
	else begin
		if(finish==1)begin
		if(numofblock < 384)begin
			for(j=0;j<8;j=j+1)
				outnum[j]<=regbyte[j+numofblock*8];
			numofblock <=  numofblock+1;
			outvaid<=1;
		end
		else begin
			 numofblock <= numofblock;
			 outvaid<=0;
		end
			
	
		end else begin
		if(wreq)
			begin
			if(add<3072)
			begin
				regbyte[add]<= wchar;
				add <=add+1;
				finish <= 0;
			end
			else begin
				add<=add;
				finish <= 1;
			end
		end
	end
	end
end


endmodule 