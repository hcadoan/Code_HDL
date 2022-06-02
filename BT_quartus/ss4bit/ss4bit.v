module ss4bit(A,B,bang,lon,be);
input [3:0]A,B;
output bang,lon,be;
reg bang,lon,be;
always @ (*)
begin
if(A == B)
begin
bang = 1'b1;
lon = 1'b0;
be = 1'b0;
end
if(A > B)
begin
bang = 1'b0;
lon = 1'b1;
be = 1'b0;
end
if(A < B)
begin
bang = 1'b0;
lon = 1'b0;
be = 1'b1;
end
end
endmodule
