module cau4(ck,rs,DATA,Y1,Y2,c);
parameter Start = 4'b0000;
parameter S1 = 4'b0001; 
parameter S10 = 4'b0010;
parameter S101 = 4'b0011;
parameter S1011 = 4'b0100;
parameter S0 = 4'b0101;
parameter S01 = 4'b0110;
parameter S010 = 4'b0111;
parameter S0101 = 4'b1000;
input ck,rs,DATA;
output Y1,Y2;
output [3:0] c;
reg Y1,Y2;
reg [3:0] c,n;
always @ (*)
begin
case(c)
Start : if(DATA) n = S1;
       else n = S0;
S1 : if(DATA) n = c;
       else n = S10;
S10 : if(DATA) n = S101;
       else n = S0;
S101 : if(DATA) n = S1011;
       else n = S010;
S1011 : if(DATA) n = S1;
       else n = S10;
S0 : if(DATA) n = S01;
       else n = c;
S01 : if(DATA) n = S1;
       else n = S010;
S010 : if(DATA) n = S0101;
       else n = S0;
S0101 : if(DATA) n = S1011;
       else n = S010;
default n = Start;
endcase
end
always @ (posedge ck or posedge rs)
begin
if(rs == 1)
c <= Start;
else c <= n;
end
always @ (*)
begin
if (c == S1011)
begin
Y1 = 1'b1;
Y2 = 1'b0;
end
else if (c == S0101)
begin
Y1 = 1'b0;
Y2 = 1'b1;
end
else
begin
Y1 = 1'b0;
Y2 = 1'b0;
end
end
endmodule

