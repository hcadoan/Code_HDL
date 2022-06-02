// rom 16x8
// co 16 dia chi(addr co 4 bit), du lieu 4 bit


module ROM(dataOut,addr,cs,rd,clk);
output reg [7:0]dataOut;
input [3:0]addr;
input cs,rd,clk;
reg [7:0] rom[15:0];
initial
begin
rom[4'b0000] = 8'b00000000;
rom[4'b0001] = 8'b00000001;
rom[4'b0010] = 8'b00000100;
rom[4'b0011] = 8'b00001001;
rom[4'b0100] = 8'b00010000;
rom[4'b0101] = 8'b00011001;
rom[4'b0110] = 8'b00100100;
rom[4'b0111] = 8'b00110001;
rom[4'b1000] = 8'b01000000;
rom[4'b1001] = 8'b01010001;
rom[4'b1010] = 8'b01100100;
rom[4'b1011] = 8'b01111001;
rom[4'b1100] = 8'b10010000;
rom[4'b1101] = 8'b10101001;
rom[4'b1110] = 8'b11000100;
rom[4'b1111] = 8'b11100001;
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

module TB_ROM();
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
addr = 4'b0000;
cs = 1;
rd = 1;
#100
addr = 4'b0001;
cs = 1;
rd = 1;
#100
addr = 4'b0010;
cs = 1;
rd = 1;
#100
addr = 4'b0011;
cs = 1;
rd = 1;
#100
addr = 4'b0100;
cs = 1;
rd = 1;
#100
addr = 4'b0000;
cs = 1;
rd = 0;
#100
addr = 4'b0001;
cs = 1;
rd = 0;
#100
addr = 4'b0010;
cs = 1;
rd = 0;
#100
addr = 4'b0011;
cs = 1;
rd = 0;
#100
addr = 4'b0100;
cs = 1;
rd = 0;
#100
addr = 4'b0000;
cs = 1;
rd = 1;
#100
addr = 4'b0101;
cs = 1;
rd = 1;
#100
addr = 4'b0000;
cs = 1;
rd = 1;
#500
addr = 4'b0000;
cs = 0;
rd = 0;
#100
addr = 4'b0101;
cs = 0;
rd = 0;
#100
addr = 4'b0000;
cs = 0;
rd = 0;
#2500 $finish;
end
always @(clk)
#50 clk<=~clk;
ROM U(.addr(addr),.cs(cs),.rd(rd),.clk(clk),.dataOut(dataOut));
endmodule