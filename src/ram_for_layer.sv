module ram_for_layer(
input logic vaild,
input logic [11:0]raddr,
input logic [7:0]indata[13:0],
input logic clk,
input logic rst_n,
output logic [7:0]rdata,
output logic finish
);

reg [7:0] savedata[195:0] ;

integer j;
always@ (*)
begin
	if(raddr<195)
	rdata = savedata[raddr];
	else 
	rdata=8'd0;
end

reg [4:0]state;
initial
begin
state = 0;

end
always @ (posedge clk or posedge rst_n)
begin
if (rst_n)
	begin
		finish<=0;
		for (j=0; j<=195;j=j+1) begin
        savedata[j] <= 8'b00000000;
		end
		state <=0;
	end
else 
	begin
	if(vaild==1)begin
		case(state)
			0:
			begin
				for (j=0; j<=13;j=j+1) begin
					savedata[j] <= indata[j];
					end
				state<= state +1;
				finish<=0;
			end
			1:
			begin
				for (j=0; j<=13;j=j+1) begin
					savedata[j+14] <= indata[j];
					end
				state<= state +1;
				finish<=0;
			end
			2:
			begin
				for (j=0; j<=13;j=j+1) begin
					savedata[j+28] <= indata[j];
					end
				state<= state +1;
				finish<=0;
			end
			3:
			begin
				for (j=0; j<=13;j=j+1) begin
					savedata[j+42] <= indata[j];
					end
				state<= state +1;
				finish<=0;
			end
			4:
			begin
				for (j=0; j<=13;j=j+1) begin
					savedata[j+56] <= indata[j];
					end
				state<= state +1;
				finish<=0;
			end
			5:
			begin
				for (j=0; j<=13;j=j+1) begin
					savedata[j+70] <= indata[j];
					end
				state<= state +1;
				finish<=0;
			end
			6:
			begin
				for (j=0; j<=13;j=j+1) begin
					savedata[j+84] <= indata[j];
					end
				state<= state +1;
				finish<=0;
			end
			7:
			begin
				for (j=0; j<=13;j=j+1) begin
					savedata[j+98] <= indata[j];
					end
				state<= state +1;
				finish<=0;
			end
			8:
			begin
				for (j=0; j<=13;j=j+1) begin
					savedata[j+112] <= indata[j];
					end
				state<= state +1;
				finish<=0;
			end
			9:
			begin
				for (j=0; j<=13;j=j+1) begin
					savedata[j+126] <= indata[j];
					end
				state<= state +1;
				finish<=0;
			end
			10:
			begin
				for (j=0; j<=13;j=j+1) begin
					savedata[j+140] <= indata[j];
					end
				state<= state +1;
				finish<=0;
			end
			11:
			begin
				for (j=0; j<=13;j=j+1) begin
					savedata[j+154] <= indata[j];
					end
				state<= state +1;
				finish<=0;
			end
			12:
			begin
				for (j=0; j<=13;j=j+1) begin
					savedata[j+168] <= indata[j];
					end
				state<= state +1;
				finish<=0;
			end
			13:
			begin
				for (j=0; j<=13;j=j+1) begin
					savedata[j+182] <= indata[j];
					end
				state<= state +1;
				finish<=0;
			end

			14:
			begin
				state<= 14;
				finish<=1;
			end

		endcase
		end
	end
	
end


endmodule


