module cau3(ck,rs,S,load,data,out);
input ck,rs,S,load;
input [3:0] data;
output [3:0] out;
reg [3:0] out;
always @ (posedge ck)
begin
if(rs == 1) 
out <= 4'b0000;
else
begin
if (load == 1)
out <= data;
else
begin
case(S)
1'b1: out <= out + 1'b1;
1'b0: out <= out - 1'b1;
endcase
end
end
end
endmodule

