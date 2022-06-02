//thi?t k? RAM 256x8
//=> có 256 dia chi (addr co 8bit), du lieu 8 bit

module RAM1(dataIn,dataOut,addr,CS,WE,clk);
input [7:0]dataIn;
output reg [7:0]dataOut;
input [7:0]addr;
input CS,WE,clk;
reg [7:0] sram[255:0];// spam co 256 dia chi, moi dia chi luu dl 8bit
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

module TB_RAM1();
reg [7:0]dataIn;
reg [7:0]addr;
reg CS,WE,clk;
wire [7:0]dataOut;
initial
begin
clk = 1'b0;
dataIn = 0;
addr = 8'h80;
CS = 0;
WE = 0;
#100
dataIn = 8'b01100001;
addr = 8'h80;
CS = 1;
WE = 1;
#100
dataIn = 8'b01100010;
addr = 8'h81;
CS = 1;
WE = 1;
#100
dataIn = 8'b01100011;
addr = 8'h82;
CS = 1;
WE = 1;
#100
dataIn = 8'b01100100;
addr = 8'h83;
CS = 1;
WE = 1;
#100
dataIn = 8'b01100101;
addr = 8'h84;
CS = 1;
WE = 1;
#100
dataIn = 8'b01100110;
addr = 8'h85;
CS = 1;
WE = 1;
#100
dataIn = 8'b01100111;
addr = 8'h86;
CS = 1;
WE = 1;
#100
dataIn = 8'b01101000;
addr = 8'h87;
CS = 1;
WE = 1;
#100
dataIn = 8'b01101000;
addr = 8'h81;
CS = 1;
WE = 0;
#200
dataIn = 8'b01101000;
addr = 8'h83;
CS = 1;
WE = 0;
#100
dataIn = 8'b01101000;
addr = 8'h85;
CS = 1;
WE = 0;
#100
dataIn = 8'b01101000;
addr = 8'h87;
CS = 1;
WE = 0;
#100
dataIn = 8'b01100101;
addr = 8'h84;
CS = 0;
WE = 0;
#100
dataIn = 8'b01100110;
addr = 8'h85;
CS = 0;
WE = 0;
#100
dataIn = 8'b01100111;
addr = 8'h86;
CS = 0;
WE = 0;
#100
dataIn = 8'b01101000;
addr = 8'h87;
CS = 0;
WE = 0;
#2500 $finish;
end
always @(clk)
#50 clk<=~clk;
RAM1 U(.dataIn(dataIn),.addr(addr),.CS(CS),.WE(WE),.clk(clk),.dataOut(dataOut));
endmodule
