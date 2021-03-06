module bcd_mod60(ck,rs,bcd1,bcd0);
input ck, rs;
output [3:0] bcd1,bcd0;
reg [3:0] bcd1, bcd0;
always @ (posedge ck)
begin
if (rs == 1)
begin
bcd1 <= 4'b0110;
bcd0 <= 4'b0000;
bcd0 <= 4'b1001;
end
else
begin
bcd0 <= bcd0 - 1;
if (bcd0 == 4'b0000)
begin
bcd1 <= bcd1 - 1;
if (bcd1 == 4'b0000)
bcd1 <= 4'b0110;
end
end
end
endmodule
