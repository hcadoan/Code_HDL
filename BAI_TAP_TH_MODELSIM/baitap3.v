module baitap3(ck,rs,led1,led2);
input ck,rs;
output [7:0]led1,led2;
wire [3:0]q1,q2;
dem u1(ck,rs,q1,q2);
giaima_bcd u2(q2,led1);
giaima_bcd u3(q1,led2);
endmodule

module dem(ck,rs,bcd0,bcd1);
input ck, rs;
output [3:0] bcd0,bcd1;
reg [3:0] bcd0,bcd1;
always @ (posedge ck)
begin
if (rs == 1)
begin
bcd1 <= 4'b0001;
bcd0 <= 4'b0101;
end
else
begin
bcd0 <= bcd0 - 1;
if (bcd0 == 4'b0000)
begin
bcd1 <= bcd1 - 1;
bcd0 <= 4'b1001;
end
if(bcd0 == 4'b0000 && bcd1 == 4'b0000)
begin
bcd1 <= 4'b0001;
bcd0 <= 4'b0101;
end
end
end
endmodule

module giaima_bcd(bcd,y);
input [3:0]bcd;
output reg [7:0]y;
always @ (*)
begin
case(bcd)
4'b0000 : y = 8'hC0;
4'b0001 : y = 8'hF9;
4'b0010 : y = 8'hA4;
4'b0011 : y = 8'hB0;
4'b0100 : y = 8'h99;
4'b0101 : y = 8'h92;
4'b0110 : y = 8'h82;
4'b0111 : y = 8'hF8;
4'b1000 : y = 8'h80;
4'b1001 : y = 8'h90;
endcase
end
endmodule

module TB_baitap3();
reg ck, rs;
wire [7:0]led1,led2;
initial
begin
ck = 0;
rs = 1;
#100
rs = 0;
#5025
rs = 1;
#5200 $finish;
end
always @(ck)
#50 ck<=~ck;
baitap3 U(.ck(ck),.rs(rs),.led1(led1),.led2(led2));
endmodule
