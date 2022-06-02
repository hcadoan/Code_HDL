module counter_4bit(s,ck,rs,q);
input s,ck,rs;
output [3:0]q;
reg [3:0]q;
always @ (posedge ck or posedge rs)
begin
  if(rs == 1)
  q = 4'b0000;
  else q <= q+1;
end
end


	 