// rom 16x4
// co 16 dia chi(addr co 4 bit), du lieu 4 bit

module ROM(dataOut,addr,cs,rd,clk);
output reg [3:0]dataOut;
input [3:0]addr;
input cs,rd,clk;
reg [3:0] rom[15:0];
initial
begin
rom[4'b0000] = 4'b1111;
rom[4'b0001] = 4'b1110;
rom[4'b0010] = 4'b1101;
rom[4'b0011] = 4'b1100;
rom[4'b0100] = 4'b1011;
rom[4'b0101] = 4'b1010;
rom[4'b0110] = 4'b1001;
rom[4'b0111] = 4'b1000;
rom[4'b1000] = 4'b0111;
rom[4'b1001] = 4'b0110;
rom[4'b1010] = 4'b0101;
rom[4'b1011] = 4'b0100;
rom[4'b1100] = 4'b0011;
rom[4'b1101] = 4'b0010;
rom[4'b1110] = 4'b0001;
rom[4'b1111] = 4'b0000;
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
  else dataOut = 4'bxxxx;
end
endmodule

module TB_ROM();
reg [3:0]addr;
reg cs,rd,clk;
wire [3:0]dataOut;
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
