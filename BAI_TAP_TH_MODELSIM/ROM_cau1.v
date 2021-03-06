// rom 16x8
// co 16 dia chi(addr co 4 bit), du lieu 4 bit
// doc gia tri qua 3 c?a so 4bit ra dataOut

module ROM_cau1(dataOut,addr,cs,rd,clk);
output reg [7:0]dataOut;
input [3:0]addr;
input cs,rd,clk;
reg [7:0] rom[15:0];
initial
begin
rom[4'b0000] = 8'b00000011;
rom[4'b0001] = 8'b00000100;
rom[4'b0010] = 8'b00000101;
rom[4'b0011] = 8'b00000110;
rom[4'b0100] = 8'b00000111;
rom[4'b0101] = 8'b00001000;
rom[4'b0110] = 8'b00001001;
rom[4'b0111] = 8'b00001010;
rom[4'b1000] = 8'b00001011;
rom[4'b1001] = 8'b00001100;
rom[4'b1010] = 8'bxxxxxxxx;
rom[4'b1011] = 8'bxxxxxxxx;
rom[4'b1100] = 8'bxxxxxxxx;
rom[4'b1101] = 8'bxxxxxxxx;
rom[4'b1110] = 8'bxxxxxxxx;
rom[4'b1111] = 8'bxxxxxxxx;
end
always @(posedge clk)
begin
  if(cs == 1'b1)
  begin
     if(rd == 1'b1)
	     dataOut <= rom[addr];
     else 
        dataOut <= dataOut;	  
  end
  else dataOut = 8'bxxxxxxxx;
end
endmodule

module TB_ROM_cau1();
reg [3:0]addr;
reg cs,rd,clk;
wire [7:0]dataOut;
initial
begin
clk = 0;
addr = 4'b0000;
cs = 0;
rd = 0;
#100
addr = 4'b0010;
cs = 1;
rd = 1;
#100
addr = 4'b0100;
cs = 1;
rd = 1;
#100
addr = 4'b0110;
cs = 1;
rd = 1;
#100
addr = 4'b1000;
cs = 1;
rd = 1;
#100
addr = 4'b0000;
cs = 1;
rd = 0;
#400
addr = 4'b0000;
cs = 1;
rd = 1;
#100
addr = 4'b0001;
cs = 1;
rd = 1;
#100
addr = 4'b0000;
cs = 0;
rd = 0;
#100
addr = 4'b0000;
cs = 0;
rd = 1;
#1500 $finish;
end
always @(clk)
#50 clk<=~clk;
ROM_cau1 U(.addr(addr),.cs(cs),.rd(rd),.clk(clk),.dataOut(dataOut));
endmodule
