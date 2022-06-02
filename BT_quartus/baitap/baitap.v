module baitap(SW0,HEX2,HEX1,HEX0);
input [8:0]SW0;
output [7:0]HEX2,HEX1,HEX0;
wire [3:0]x1,x2,x3;
giaima_nhiphan u1(SW0,x1,x2,x3);
giaima_BCD u2(x1,HEX2);
giaima_BCD u3(x2,HEX1);
giaima_BCD u4(x3,HEX0);
endmodule

module giaima_nhiphan(n,BCD2,BCD1,BCD0);
input [8:0]n;
output reg [3:0]BCD2,BCD1,BCD0;
always @ (*)
begin
if(n >= 9'b000001010)
begin
BCD2 <= 4'b0000;
BCD1 <= 4'b0001;
BCD0 <= n[3:0]-4'b1010;
if(n >= 9'b000010101)
begin
BCD2 <= 4'b0000;
BCD1 <= 4'b0010;
BCD0 <= n[3:0]-4'b0101;
if(n >= 9'b000011110)
begin
BCD2 <= 4'b0000;
BCD1 <= 4'b0011;
BCD0 <= n[3:0]-4'b1110;
if(n >= 9'b000101000)
begin
BCD2 <= 4'b0000;
BCD1 <= 4'b0100;
BCD0 <= n[3:0]-4'b1000;
if(n >= 9'b000110010)
begin
BCD2 <= 4'b0000;
BCD1 <= 4'b0101;
BCD0 <= n[3:0]-4'b0010;
if(n >= 9'b000111100)
begin
BCD2 <= 4'b0000;
BCD1 <= 4'b0110;
BCD0 <= n[3:0]-4'b1100;
if(n >= 9'b001000110)
begin
BCD2 <= 4'b0000;
BCD1 <= 4'b0111;
BCD0 <= n[3:0]-4'b0110;
if(n >= 9'b001010000)
begin
BCD2 <= 4'b0000;
BCD1 <= 4'b1000;
BCD0 <= n[3:0];
if(n >= 9'b001011010)
begin
BCD2 <= 4'b0000;
BCD1 <= 4'b1001;
BCD0 <= n[3:0]-4'b1010;
if(n >= 9'b001100100)
begin
BCD2 <= 4'b0001;
BCD1 <= 4'b0000;
BCD0 <= n[3:0]-4'b0100;
if(n >= 9'b001101110)
begin
BCD2 <= 4'b0001;
BCD1 <= 4'b0001;
BCD0 <= n[3:0]-4'b1110;
if(n >= 9'b001111000)
begin
BCD2 <= 4'b0001;
BCD1 <= 4'b0010;
BCD0 <= n[3:0]-4'b1000;
if(n >= 9'b010000010)
begin
BCD2 <= 4'b0001;
BCD1 <= 4'b0011;
BCD0 <= n[3:0]-4'b0010;
if(n >= 9'b010001100)
begin
BCD2 <= 4'b0001;
BCD1 <= 4'b0100;
BCD0 <= n[3:0]-4'b1100;
if(n >= 9'b010010110)
begin
BCD2 <= 4'b0001;
BCD1 <= 4'b0101;
BCD0 <= n[3:0]-4'b0110;
if(n >= 9'b010100000)
begin
BCD2 <= 4'b0001;
BCD1 <= 4'b0110;
BCD0 <= n[3:0];
if(n >= 9'b010101010)
begin
BCD2 <= 4'b0001;
BCD1 <= 4'b0111;
BCD0 <= n[3:0]-4'b1010;
if(n >= 9'b010110100)
begin
BCD2 <= 4'b0001;
BCD1 <= 4'b1000;
BCD0 <= n[3:0]-4'b0100;
if(n >= 9'b010111110)
begin
BCD2 <= 4'b0001;
BCD1 <= 4'b1001;
BCD0 <= n[3:0]-4'b1110;
if(n >= 9'b011001000)
begin
BCD2 <= 4'b0010;
BCD1 <= 4'b0000;
BCD0 <= n[3:0]-4'b1000;
if(n >= 9'b011010010)
begin
BCD2 <= 4'b0010;
BCD1 <= 4'b0001;
BCD0 <= n[3:0]-4'b0010;
if(n >= 9'b011011100)
begin
BCD2 <= 4'b0010;
BCD1 <= 4'b0010;
BCD0 <= n[3:0]-4'b1100;
if(n >= 9'b011100110)
begin
BCD2 <= 4'b0010;
BCD1 <= 4'b0011;
BCD0 <= n[3:0]-4'b0110;
if(n >= 9'b011110000)
begin
BCD2 <= 4'b0010;
BCD1 <= 4'b0100;
BCD0 <= n[3:0];
if(n >= 9'b011111010)
begin
BCD2 <= 4'b0010;
BCD1 <= 4'b0101;
BCD0 <= n[3:0]-4'b1010;
if(n >= 9'b100000100)
begin
BCD2 <= 4'b0010;
BCD1 <= 4'b0110;
BCD0 <= n[3:0]-4'b0100;
if(n >= 9'b100001110)
begin
BCD2 <= 4'b0010;
BCD1 <= 4'b0111;
BCD0 <= n[3:0]-4'b1110;
if(n >= 9'b100011000)
begin
BCD2 <= 4'b0010;
BCD1 <= 4'b1000;
BCD0 <= n[3:0]-4'b1000;
if(n >= 9'b100100010)
begin
BCD2 <= 4'b0010;
BCD1 <= 4'b1001;
BCD0 <= n[3:0]-4'b0010;
if(n >= 9'b100101100)
begin
BCD2 <= 4'b0011;
BCD1 <= 4'b0000;
BCD0 <= n[3:0]-4'b1100;
if(n >= 9'b100110110)
begin
BCD2 <= 4'b0011;
BCD1 <= 4'b0001;
BCD0 <= n[3:0]-4'b0110;
if(n >= 9'b101000000)
begin
BCD2 <= 4'b0011;
BCD1 <= 4'b0010;
BCD0 <= n[3:0];
if(n >= 9'b101001010)
begin
BCD2 <= 4'b0011;
BCD1 <= 4'b0011;
BCD0 <= n[3:0]-4'b1010;
if(n >= 9'b101010100)
begin
BCD2 <= 4'b0011;
BCD1 <= 4'b0100;
BCD0 <= n[3:0]-4'b0100;
if(n >= 9'b101011110)
begin
BCD2 <= 4'b0011;
BCD1 <= 4'b0101;
BCD0 <= n[3:0]-4'b1110;
if(n >= 9'b101101000)
begin
BCD2 <= 4'b0011;
BCD1 <= 4'b0110;
BCD0 <= n[3:0]-4'b1000;
if(n >= 9'b101110010)
begin
BCD2 <= 4'b0011;
BCD1 <= 4'b0111;
BCD0 <= n[3:0]-4'b0010;
if(n >= 9'b101111100)
begin
BCD2 <= 4'b0011;
BCD1 <= 4'b1000;
BCD0 <= n[3:0]-4'b1100;
if(n >= 9'b110000110)
begin
BCD2 <= 4'b0011;
BCD1 <= 4'b1001;
BCD0 <= n[3:0]-4'b0110;
if(n >= 9'b110010000)
begin
BCD2 <= 4'b0100;
BCD1 <= 4'b0000;
BCD0 <= n[3:0];
if(n >= 9'b110011010)
begin
BCD2 <= 4'b0100;
BCD1 <= 4'b0001;
BCD0 <= n[3:0]-4'b1010;
if(n >= 9'b110100100)
begin
BCD2 <= 4'b0100;
BCD1 <= 4'b0010;
BCD0 <= n[3:0]-4'b0100;
if(n >= 9'b110101110)
begin
BCD2 <= 4'b0100;
BCD1 <= 4'b0011;
BCD0 <= n[3:0]-4'b1110;
if(n >= 9'b110111000)
begin
BCD2 <= 4'b0100;
BCD1 <= 4'b0100;
BCD0 <= n[3:0]-4'b1000;
if(n >= 9'b111000010)
begin
BCD2 <= 4'b0100;
BCD1 <= 4'b0101;
BCD0 <= n[3:0]-4'b0010;
if(n >= 9'b111001100)
begin
BCD2 <= 4'b0100;
BCD1 <= 4'b0110;
BCD0 <= n[3:0]-4'b1100;
if(n >= 9'b111010110)
begin
BCD2 <= 4'b0100;
BCD1 <= 4'b0111;
BCD0 <= n[3:0]-4'b0110;
if(n >= 9'b111100000)
begin
BCD2 <= 4'b0100;
BCD1 <= 4'b1000;
BCD0 <= n[3:0];
if(n >= 9'b111101010)
begin
BCD2 <= 4'b0100;
BCD1 <= 4'b1001;
BCD0 <= n[3:0]-4'b1010;
if(n >= 9'b111110100)
begin
BCD2 <= 4'b0101;
BCD1 <= 4'b0000;
BCD0 <= n[3:0]-4'b0100;
if(n >= 9'b111111110)
begin
BCD2 <= 4'b0101;
BCD1 <= 4'b0001;
BCD0 <= n[3:0]-4'b1110;
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
end
else
begin
BCD2 <= 4'b0000;
BCD1 <= 4'b0000;
BCD0 <= n[3:0];
end
end
endmodule

module giaima_BCD(x,HEX);
input [3:0]x;
output reg [7:0]HEX;
always @ (*)
begin
case(x)
4'B0000: HEX = 8'hC0;
4'B0001: HEX = 8'hF9;
4'B0010: HEX = 8'hA4;
4'B0011: HEX = 8'hB0;
4'B0100: HEX = 8'h99;
4'B0101: HEX = 8'h92;
4'B0110: HEX = 8'h82;
4'B0111: HEX = 8'hF8;
4'B1000: HEX = 8'h80;
4'B1001: HEX = 8'h90;
default HEX = 8'hC0;
endcase
end
endmodule

module TB_CAU7_HDL();
reg [8:0]SW0;
wire [7:0]HEX2,HEX1,HEX0;
initial
begin
SW0 = 0;
#100
SW0 = 9;
#100
SW0 = 35;
#100
SW0 = 83;
#100
SW0 = 127;
#100
SW0 = 510;
#600 $finish;
end
baitap U(.SW0(SW0),.HEX2(HEX2),.HEX1(HEX1),.HEX0(HEX0));
endmodule