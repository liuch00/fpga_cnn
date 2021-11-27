module mod_top (
    // 时钟、复位
    input  wire clk_100m,           // 100M 输入时钟
    input  wire reset_n,            // 上电复位信号，低有效

    // 开关、LED 等
    input  wire clock_btn,          // 左侧微动开关，推荐作为手动时钟，带消抖电路，按下时为 1
    input  wire reset_btn,          // 右侧微动开关，推荐作为手动复位，带消抖电路，按下时为 1	
	 //四个按钮开关是控制我们要用的
    input  wire [3:0]  touch_btn,   // 四个按钮开关，按下时为 0
	 
	 
	 
    input  wire [15:0] dip_sw,      // 16 位拨码开关，拨到 “ON” 时为 0
    
	 output wire [31:0] leds,        // 32 位 LED 灯，输出 1 时点亮 
    
	 output wire [7: 0] dpy_digit,   // 七段数码管笔段信号
    
	 output wire [7: 0] dpy_segment, // 七段数码管位扫描信号
	
	 
    // // 4MB SRAM 内存
    // inout  wire [31:0] base_ram_data,   // SRAM 数据
    // output wire [19:0] base_ram_addr,   // SRAM 地址
    // output wire [3: 0] base_ram_be_n,   // SRAM 字节使能，低有效。如果不使用字节使能，请保持为0
    // output wire        base_ram_ce_n,   // SRAM 片选，低有效
    // output wire        base_ram_oe_n,   // SRAM 读使能，低有效
    // output wire        base_ram_we_n,   // SRAM 写使能，低有效

    // HDMI 图像输出
    output wire [7: 0] video_red,   // 红色像素，8位
    output wire [7: 0] video_green, // 绿色像素，8位
    output wire [7: 0] video_blue,  // 蓝色像素，8位
    output wire        video_hsync, // 行同步（水平同步）信号
    output wire        video_vsync, // 场同步（垂直同步）信号
    output wire        video_clk,   // 像素时钟输出
    output wire        video_de,     // 行数据有效信号，用于区分消隐区


    // SD 卡（SPI 模式）
    output wire        sd_sclk,     // SPI 时钟
    output wire        sd_mosi,
    input  wire        sd_miso,
    output wire        sd_cs,       // SPI 片选，低有效
    input  wire        sd_cd,       // 卡插入检测，0 表示有卡插入
    input  wire        sd_wp	     // 写保护检测，0 表示写保护状态


);

/* =========== Demo code begin =========== */
wire clk_in = clk_100m;
// PLL 分频演示，从输入产生不同频率的时钟
wire clk_vga;
ip_pll u_ip_pll(
    .inclk0 (clk_in  ),
    .c0     (clk_vga )  // 50MHz 像素时钟
);



logic [7:0]vga_state_set;
logic [7:0]photo_name_set;


assign vga_state_set=dip_sw[7:0];
assign photo_name_set=dip_sw[15:8];







always @(*)begin
case(photo_name_set)
8'b00000000:filename_sd<=filename_0;
8'b10000000:filename_sd<=filename_1;
8'b11000000:filename_sd<=filename_2;
8'b11100000:filename_sd<=filename_3;
8'b11110000:filename_sd<=filename_4;
8'b11111000:filename_sd<=filename_5;
8'b11111100:filename_sd<=filename_6;
8'b11111110:filename_sd<=filename_7;
8'b11111111:filename_sd<=filename_8;
default    :filename_sd<=filename_9;
endcase
end

reg[39:0] filename_0="0.txt";
reg[39:0] filename_1="1.txt";
reg[39:0] filename_2="2.txt";
reg[39:0] filename_3="3.txt";
reg[39:0] filename_4="4.txt";
reg[39:0] filename_5="5.txt";
reg[39:0] filename_6="6.txt";
reg[39:0] filename_7="7.txt";
reg[39:0] filename_8="8.txt";
reg[39:0] filename_9="9.txt";

logic[39:0] filename_sd;

wire       outreq;    // when outreq=1, a byte of file content is read out from outbyte
wire [7:0] outbyte;   // a byte of file content


wire [3:0] sdcardstate;// show the sdcard initialize status
wire [1:0] sdcardtype;// SDv1, SDv2, SDHCv2 or UNKNOWN
wire [2:0] fatstate;// show the fat initialize status
wire [1:0] filesystemtype;// FAT16, FAT32 or UNKNOWN
wire       file_found; // 0=file not found, 1=file found








// For input and output definitions of this module, see sd_file_reader.sv
sd_file_reader #(
    // file to read, ignore Upper and Lower Case
                                        // For example, if you want to read a file named HeLLo123.txt in the SD card,
                                        // the parameter here can be hello123.TXT, HELLO123.txt or HEllo123.Txt
    
    .SPI_CLK_DIV    ( 50           )  // SD spi_clk freq = clk freq/(2*SPI_CLK_DIV)
                                        // modify SPI_CLK_DIV to change the SPI speed
                                        // for example, when clk=50MHz, SPI_CLK_DIV=50,then spi_clk=50MHz/(2*50)=500kHz
                                        // 500kHz is a typical SPI speed for SDcard
) sd_file_reader_inst(
	.FILE_NAME      (filename_sd),
    .clk            ( clk_vga	       ),
    .rst_n          ( reset_btn      ),
    
    .spi_miso       ( sd_miso    	 ),
    .spi_mosi       ( sd_mosi    	 ),
    .spi_clk        ( sd_sclk    	 ),
    .spi_cs_n       ( sd_cs		    ),
    
    .sdcardtype     ( sdcardtype     ),
    .filesystemtype ( filesystemtype ),
    .sdcardstate    ( sdcardstate    ),
    .fatstate       ( fatstate       ),
    .file_found     ( file_found     ),
    
    .outreq         ( outreq         ),
    .outbyte        ( outbyte        )
);



logic photo_trans_vaid;
logic photo_finish;
logic [11:0]photo_raddr;
logic [23:0] photo_data;

logic [7:0] photo_trans_data[7:0];


ram30728 ram30728_u(
.clk(clk_vga), 
.rst_n(reset_btn),
.wreq(outreq),
.wchar(outbyte),
.outvaid(photo_trans_vaid),
.outnum(photo_trans_data),
.finish(photo_finish),
.raddr(photo_raddr),
.rdata(photo_data)
);




logic layer_output_vaid;
logic layer_output_finish;
logic [11:0]layer_raddr;
logic [7:0] layer_data;

logic [7:0] layer_trans_data[13:0];

logic [8:0]photo_trans_num_cnt;
logic ans_valid;
logic [3:0]class_ans; 


assign leds[7:0]=photo_name_set;
assign leds[19:16]=sdcardstate;  
//assign leds[4:1]= {2'b00  ,    sdcardtype};// 0=Unknown, 1=SDv1.1 , 2=SDv2 , 3=SDHCv2
//assign leds[7:5]= fatstate;
assign leds[11:8]= {2'b00  ,filesystemtype}; // 0=Unknown, 1=invalid, 2=FAT16, 3=FAT32
assign leds[15:12]={3'b000 ,    file_found} ; // 0=file not found, 1=file found

assign leds[30] = layer_output_finish;
assign leds[31] = photo_finish;
assign leds[29] = photo_trans_vaid;
assign leds[28] = layer_output_vaid;
assign leds[27] = ans_valid;
assign leds[26:24] =class_ans;



ram_for_layer ram_for_layer_u(
.vaild(layer_output_vaid),
.indata(layer_trans_data) ,
.raddr(layer_raddr),
.clk(clk_vga),
.rst_n(reset_btn),
.rdata(layer_data),
.finish(layer_output_finish)
);

  ClassificationNet ClassificationNet_u(
  .io_input_valid(photo_trans_vaid),
  .io_input_payload_0(photo_trans_data[0]),
  .io_input_payload_1(photo_trans_data[1]),
  .io_input_payload_2(photo_trans_data[2]),
  .io_input_payload_3(photo_trans_data[3]),
  .io_input_payload_4(photo_trans_data[4]),
  .io_input_payload_5(photo_trans_data[5]),
  .io_input_payload_6(photo_trans_data[6]),
  .io_input_payload_7(photo_trans_data[7]),
  .io_layer1_rgb_valid(layer_output_vaid),
  .io_layer1_rgb_payload_0(layer_trans_data[0]),
  .io_layer1_rgb_payload_1(layer_trans_data[1]),
  .io_layer1_rgb_payload_2(layer_trans_data[2]),
  .io_layer1_rgb_payload_3(layer_trans_data[3]),
  .io_layer1_rgb_payload_4(layer_trans_data[4]),
  .io_layer1_rgb_payload_5(layer_trans_data[5]),
  .io_layer1_rgb_payload_6(layer_trans_data[6]),
  .io_layer1_rgb_payload_7(layer_trans_data[7]),
  .io_layer1_rgb_payload_8(layer_trans_data[8]),
  .io_layer1_rgb_payload_9(layer_trans_data[9]),
  .io_layer1_rgb_payload_10(layer_trans_data[10]),
  .io_layer1_rgb_payload_11(layer_trans_data[11]),
  .io_layer1_rgb_payload_12(layer_trans_data[12]),
  .io_layer1_rgb_payload_13(layer_trans_data[13]),
  .io_ans_valid(ans_valid),
  .io_ans_payload(class_ans),
  .io_cnt_in(photo_trans_num_cnt),
  .clk(clk_vga),
  .reset(reset_btn)
  );



//// 七段数码管扫描演示
reg [31: 0] number=100;
always @(posedge clk_vga) begin
    if(ans_valid==1)begin
        number=class_ans;
    end 
        
end

dpy_scan u_dpy_scan (
   .clk     (clk_in      ),
   .number  (number      ),
   .dp      (7'b0        ),
   .digit   (dpy_digit   ),
   .segment (dpy_segment )
);





logic [3:0] vga_state;
assign leds[23:20] = vga_state;






// 图像输出演示，分辨率 800x600@75Hz，像素时钟为 50MHz，显示渐变色彩条
logic [11:0] hdata;  // 当前横坐标
logic [11:0] vdata;  // 当前纵坐标


logic [7:0]red;
logic [7:0]green;
logic [7:0]blue;





always @(*) begin
    if(vga_state_set==1&&photo_finish==1)
     vga_state<=1;
    else if(vga_state_set==2&&layer_output_finish==1)
     vga_state<=2;
     else 
      vga_state<=0;
end
//
//always @(*) begin
//case(vga_state)
////初始状态
//0:   begin
//red = vdata < 200 ? hdata[8:1] : 0;
//green = vdata >= 200 && vdata < 400 ? hdata[8:1] : 80;
//blue = vdata >= 400 ? hdata[8:1] : 160;
//end 
////图片显示
//1: begin 
//if(hdata<512&&vdata<512)begin
//photo_raddr=(vdata>>4)*32+(hdata>>4);
//blue =photo_data[7:0];
//green=photo_data[15:8];
//red =photo_data[23:16];
//end else begin
//
//blue =8'd0;
//green=8'd0;
//red =8'd0;
//end
//end 
//
////隐藏层显示
//2: begin 
//    if(hdata<448&&vdata<448)begin
//layer_raddr=(vdata>>5)*14+(hdata>>5);
//red =  layer_data;
//green=  layer_data;
//blue =  layer_data;
//    end else begin
//
//blue =8'd0;
//green=8'd0;
//red =8'd0;
//end
//end 
//endcase
//end
//
logic [31:0] x_13;
logic [31:0] y_20;
always @(clk_vga) begin
case(vga_state)
//初始状态
0:   begin
x_13=13*vdata;
y_20=20*hdata;

if (((hdata>100&&hdata<270)&&((vdata>200&&vdata<232)||(vdata>368&&vdata<400)))||(hdata>100&&hdata<132&&vdata<368&&vdata>232))begin
   red = hdata[8:1];
   green=hdata[8:1];
   blue = 200;
end else if ((200<vdata&&vdata<400)&&((((hdata<550&&hdata>520)||(hdata<680&&hdata>650)||(y_20>x_13+7800&&y_20<x_13+8400)))||((hdata<350&&hdata>320)||(hdata<480&&hdata>450)||(y_20>x_13+3800&&y_20<x_13+4400)))) begin
    red = 200;
    green =hdata[8:1];
    blue = hdata[8:1];;
	 end else begin
red = 8'd214;
green= 8'd213;
blue = 8'd183;
end
end 
//图片显示
1: begin 
if(hdata<632&&vdata<552&&119<hdata&&39<vdata)begin
photo_raddr=((vdata-40)>>4)*32+((hdata-120)>>4);
blue =photo_data[7:0];
green=photo_data[15:8];
red =photo_data[23:16];
end else begin

blue =8'd233;
green=8'd231;
red =8'd190;
end
end 

//隐藏层显示
2: begin 
    if(hdata<618&&vdata<518&&169<hdata&&69<vdata)begin
layer_raddr=((vdata-70)>>5)*14+((hdata-170)>>5);
red =  layer_data;
green=  layer_data;
blue =  layer_data;
    end else begin

blue =8'd158;
green=8'd173;
red =8'd236;
end
end 
endcase
end

assign video_red=red;
assign video_blue=blue;
assign video_green=green;


assign video_clk = clk_vga;
vga #(12, 800, 856, 976, 1040, 600, 637, 643, 666, 1, 1) vga800x600at75 (
    .clk(clk_vga), 
    .hdata(hdata), //横坐标
    .vdata(vdata), //纵坐标
    .hsync(video_hsync),
    .vsync(video_vsync),
    .data_enable(video_de)
);
/* =========== Demo code end =========== */

endmodule






