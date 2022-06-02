module baitap2(ck,rs,bcd0,bcd1,bcd2);
input ck,rs;
output [3:0] bcd2,bcd1,bcd0;
reg [3:0] bcd2,bcd1, bcd0;
always @ (posedge ck)
begin
if (rs == 1)
begin
bcd2 <= 4'b0000;
bcd1 <= 4'b0000;
bcd0 <= 4'b0000;
end
else
begin
bcd0 <= bcd0 + 1;
if (bcd0 == 4'b1001)
begin
bcd0 <= 4'b0000;
bcd1 <= bcd1 + 1;
if (bcd1 == 4'b1001)
begin
bcd0 <= 4'b0000;
bcd1 <= 4'b0000;
bcd2 <= bcd2 + 1;
if (bcd2 == 4'b1001)
begin
bcd0 <= 4'b0000;
bcd1 <= 4'b0000;
bcd2 <= 4'b0000;
end
end
end
end
end
endmodule


module TB_baitap2();
reg ck, rs;
wire [3:0]bcd0,bcd1,bcd2;
initial
begin
ck = 0;
rs = 1;
#100
rs = 0;
#105025
rs = 1;
#105200 $finish;
end
always @(ck)
#50 ck<=~ck;
baitap2 U(.ck(ck),.rs(rs),.bcd0(bcd0),.bcd1(bcd1),.bcd2(bcd2));
endmodule
