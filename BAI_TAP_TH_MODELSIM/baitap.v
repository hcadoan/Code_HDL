module baitap(ck,rs,q);
input ck,rs;
output [4:0] q;
reg [4:0] q;
always @ (posedge ck or negedge rs)
begin
if(rs == 0) 
q <= 5'b11000;
else
begin
q <= q - 1;
if(q == 5'b00000)
q <= 5'b11000;
end
end
endmodule

module TB_baitap();
reg ck, rs;
wire [4:0]q;
initial
begin
ck = 0;
rs = 0;
#100
rs = 1;
#4000
rs = 0;
#4025
rs = 1;
#4200 $finish;
end
always @(ck)
#50 ck<=~ck;
baitap U(.ck(ck),.rs(rs),.q(q));
endmodule
