module cau5(x,ck,rs,y1,y2,ht);
parameter start=3'b000;
parameter s1=3'b001;
parameter s10=3'b010;
parameter s11=3'b011;
parameter s110=3'b100;
parameter s100=3'b101;
parameter s1001=3'b110;
parameter s1100=3'b111;
input x,ck,rs;
output y1,y2;
output [2:0]ht;
reg[2:0]ht,kt;
reg y1,y2;
always @(*)
begin 
case(ht)
start:if(x)kt=s1;
      else kt=ht;
s1:if(x)kt=s11;
   else kt=s10;
s10:if(x)kt=s1;
    else kt=s100;
s11:if(x)kt=s11;
    else kt=s110;
s110:if(x)kt=s1;
     else kt=s1100;
s100:if(x)kt=s1001;
	  else kt=s10;
s1001:if(x)kt=s11;
      else kt=s10;
s1100:if(x)kt=s1001;
     else kt=start;
default kt=start;
endcase
end
always @(posedge ck or posedge rs)
begin
if(rs==1)
ht<=start;
else ht<=kt;
end
always @(*)
begin
if(ht==s1100) y1=1'b1 ;
else
y1=1'b0;
if(ht==s1001) y2=1'b1;
else
y2=1'b0;
end
endmodule