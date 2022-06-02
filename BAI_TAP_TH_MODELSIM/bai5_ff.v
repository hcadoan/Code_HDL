
module bai5_ff(ck,rs,q);
input ck,rs;
output [4:0]q;
reg [4:0]q;
always @ (negedge ck)
begin
if (rs == 1'b1)
q <= 5'b00000;
else
begin
q <= q + 1;
if(q >= 5'b10100)
q <= 5'b00000;
end
end
endmodule

// model testbench //
module TB_bai5_ff();
reg ck, rs;
wire [4:0]q;
initial
begin
ck = 1;
rs = 1;
#100
rs = 0;
#2025
rs = 1;
#2500 $finish;
end
always @(ck)
#50 ck<=~ck;
bai5_ff U(.ck(ck),.rs(rs),.q(q));
endmodule