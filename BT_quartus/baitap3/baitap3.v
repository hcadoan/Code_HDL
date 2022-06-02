module baitap3(ck,rs,led1,led2);
input ck,rs;
output [7:0]led1,led2;
wire [3:0]q;
dem u1(ck,rs,q);
giaima_np u2(q,led2,led1);
endmodule

module dem(ck,rs,q);
input ck,rs;
output [3:0] q;
reg [3:0] q;
always @ (posedge ck or negedge rs)
begin
if(rs == 0) 
q <= 4'b0000;
else
begin
q <= q + 1;
if(q == 4'b1111)
q <= 4'b0000;
end
end
endmodule

module giaima_np(q,y1,y2);
input [3:0]q;
output reg [7:0]y1,y2;
always @ (*)
begin
case(q)
4'b0000:
begin
y1 = 8'hC0;
y2 = 8'hC0;
end
4'b0001:
begin
y1 = 8'hF9;
y2 = 8'hC0;
end
4'b0010:
begin
y1 = 8'hA4;
y2 = 8'hC0;
end
4'b0011:
begin
y1 = 8'hB0;
y2 = 8'hC0;
end
4'b0100:
begin
y1 = 8'h99;
y2 = 8'hC0;
end
4'b0101:
begin
y1 = 8'h92;
y2 = 8'hC0;
end
4'b0110:
begin
y1 = 8'h82;
y2 = 8'hC0;
end
4'b0111:
begin
y1 = 8'hF8;
y2 = 8'hC0;
end
4'b1000:
begin
y1 = 8'h80;
y2 = 8'hC0;
end
4'b1001:
begin
y1 = 8'h90;
y2 = 8'hC0;
end
4'b1010:
begin
y1 = 8'hC0;
y2 = 8'hF9;
end
4'b1011:
begin
y1 = 8'hF9;
y2 = 8'hF9;
end
4'b1100:
begin
y1 = 8'hA4;
y2 = 8'hF9;
end
4'b1101:
begin
y1 = 8'hB0;
y2 = 8'hF9;
end
4'b1110:
begin
y1 = 8'h99;
y2 = 8'hF9;
end
4'b1111:
begin
y1 = 8'h92;
y2 = 8'hF9;
end
endcase
end
endmodule

module TB_baitap3();
reg ck, rs;
wire [7:0]led1,led2;
initial
begin
ck = 0;
rs = 0;
#100
rs = 1;
#10000
rs = 0;
#10250
rs = 1;
#10400 $finish;
end
always @(ck)
#50 ck<=~ck;
baitap3 U(.ck(ck),.rs(rs),.led1(led1),.led2(led2));
endmodule