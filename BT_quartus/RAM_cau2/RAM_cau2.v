//ram 16x8
// a la so nhi phan4bit vao => mã quá 3 
module RAM_cau2(a,dataOut,addr,CS,WE,clk);
input CS,WE,clk;
input [3:0]a;
input [3:0]addr;
output [7:0]dataOut;
wire [7:0]dataIn;
qua3 u0(a,dataIn);
RAM u1(dataIn,dataOut,addr,CS,WE,clk);
endmodule

module qua3(a,y);
input [3:0]a;
output reg [7:0]y;
always@(a)
begin
case(a)
4'b0000: y = 8'b00000011;
4'b0001: y = 8'b00000100;
4'b0010: y = 8'b00000101;
4'b0011: y = 8'b00000110;
4'b0100: y = 8'b00000111;
4'b0101: y = 8'b00001000;
4'b0110: y = 8'b00001001;
4'b0111: y = 8'b00001010;
4'b1000: y = 8'b00001011;
4'b1001: y = 8'b00001100;
default y = 8'bxxxxxxxx;
endcase
end
endmodule

module RAM(dataIn,dataOut,addr,CS,WE,clk);
input [7:0]dataIn;
output reg [7:0]dataOut;
input [3:0]addr;
input CS,WE,clk;
reg [7:0] sram[15:0];// sram co 15 dia chi, moi dia chi luu dl 8bit
always @(posedge clk)
begin
  if(CS == 1'b1)
  begin
    if(WE == 1'b1)
	    sram[addr] <= dataIn; //ghi du lieu
    else
	    dataOut <= sram[addr]; //doc du lieu
  end
  else dataOut <= 8'bxxxxxxxx;
end
endmodule

module TB_RAM_cau2();
reg [3:0]a;
reg [3:0]addr;
reg CS,WE,clk;
wire [7:0]dataOut;
initial
begin
clk = 0;
a = 0;
addr = 4'b0000;
CS = 0;
WE = 0;
#100
a = 0;
addr = 4'b0000;
CS = 1;
WE = 1;
#100
a = 1;
addr = 4'b0001;
CS = 1;
WE = 1;
#100
a = 2;
addr = 4'b0010;
CS = 1;
WE = 1;
#100
a = 3;
addr = 4'b0011;
CS = 1;
WE = 1;
#100
a = 4;
addr = 4'b0100;
CS = 1;
WE = 1;
#100
a = 5;
addr = 4'b0101;
CS = 1;
WE = 1;
#100
a = 6;
addr = 4'b0110;
CS = 1;
WE = 1;
#100
a = 7;
addr = 4'b0111;
CS = 1;
WE = 1;
#100
a = 8;
addr = 4'b1000;
CS = 1;
WE = 1;
#100
a = 9;
addr = 4'b1001;
CS = 1;
WE = 1;
#100
addr = 4'b0001;
CS = 1;
WE = 0;
#100
addr = 4'b0011;
CS = 1;
WE = 0;
#100
addr = 4'b0101;
CS = 1;
WE = 0;
#100
addr = 4'b0111;
CS = 1;
WE = 0;
#100
addr = 4'b0000;
CS = 0;
WE = 0;
#2000 $finish;
end
always @(clk)
#50 clk<=~clk;
RAM_cau2 U(.a(a),.addr(addr),.CS(CS),.WE(WE),.clk(clk),.dataOut(dataOut));
endmodule