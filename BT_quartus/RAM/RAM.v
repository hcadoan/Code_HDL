

module RAM(A,B,dataOut,CS,WE,clk);
input CS,WE,clk;
input [3:0]A,B;
output [4:0]dataOut;
wire [4:0]dataIn;
wire [7:0]addr;
add4bit u1(A,B,dataIn,addr);
RAM_2 u2(dataIn,dataOut,addr,CS,WE,clk);
endmodule

module add4bit(a,b,out,addr);
input [3:0]a,b;
output [4:0]out;
output [7:0]addr;
assign out = a+b;
assign addr = {a,b};
endmodule

module RAM_2(dataIn,dataOut,addr,CS,WE,clk);
input [4:0]dataIn;
output reg [4:0]dataOut;
input [7:0]addr;
input CS,WE,clk;
reg [7:0] sram[255:0];// spam co 32 dia chi, moi dia chi luu dl 5bit
always @(posedge clk)
begin
  if(CS == 1'b1)
  begin
    if(WE == 1'b1)
	    sram[addr] <= dataIn; //ghi du lieu
    else
	    dataOut <= sram[addr]; //doc du lieu
  end
  else dataOut <= 5'bxxxxxxxx;
end
endmodule

module TB_RAM();
reg [3:0]A,B;
reg CS,WE,clk;
wire [4:0]dataOut;
initial
begin
clk = 0;
A = 2;
B = 8;
CS = 0;
WE = 0;
#100
A = 10;
B = 8;
CS = 1;
WE = 1;
#100
A = 5;
B = 7;
CS = 1;
WE = 1;
#100
A = 15;
B = 3;
CS = 1;
WE = 1;
#100
A = 11;
B = 9;
CS = 1;
WE = 1;
#100
A = 11;
B = 9;
CS = 1;
WE = 0;
#600
A = 4;
B = 8;
CS = 1;
WE = 1;
#100
A = 2;
B = 2;
CS = 1;
WE = 1;
#100
A = 2;
B = 2;
CS = 1;
WE = 0;
#200
A = 10;
B = 3;
CS = 0;
WE = 0;
#100
A = 4;
B = 2;
CS = 0;
WE = 0;
#2000 $finish;
end
always @(clk)
#50 clk<=~clk;
RAM U(.A(A),.B(B),.CS(CS),.WE(WE),.clk(clk),.dataOut(dataOut));
endmodule