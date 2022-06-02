module bcd3digit(ck,rs,bcd2,bcd1,bcd0);
input ck, rs;
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
bcd1 <= 4'b0000;
bcd2 <= bcd2 + 1;
if (bcd2 == 4'b0001)
bcd2 <= 4'b0000;
if (bcd1 == 4'b0010)
bcd1 <= 4'b0000;
if (bcd0 == 4'b0011)
bcd0 <= 4'b0000;
end
end
end
end
endmodule
