module cau5(ck,rs,A,B,C,D,E);
parameter tat = 4'b0000;
parameter S0 = 4'b0001;
parameter S1 = 4'b0010;
parameter S2 = 4'b0011;
parameter S3 = 4'b0100;
parameter S4 = 4'b0101;
parameter S5 = 4'b0110;
parameter S6 = 4'b0111;
parameter S7 = 4'b1000;
parameter S8 = 4'b1001;
parameter S9 = 4'b1010;
parameter S10 = 4'b1011;
parameter S11 = 4'b1100;
input ck,rs;
output [7:0] A,B,C,D,E;
reg [7:0] A,B,C,D,E;
reg [3:0] c,n;
always @ (*)
begin
case(c)
tat : n = S0;
S0 : n = S1;
S1 : n = S2;
S2 : n = S3;
S3 : n = S4;
S4 : n = S5;
S5 : n = S6;
S6 : n = S7;
S7 : n = S8;
S8 : n = S9;
S9 : n = S10;
S10 : n = S11;
S11 : n = tat;
default n = tat;
endcase
end
always @ (posedge ck)
begin
if(rs == 1)
c = tat;
else c = n;
end
always @ (*)
begin
case(c)
tat :  
begin
A = 8'h00; B = 8'h00; C = 8'h00; 
D = 8'h00; E = 8'h00;
end
S0 :  
begin
A = 8'h5B; B = 8'h00; C = 8'h00; 
D = 8'h00; E = 8'h00;
end
S1 :  
begin
A = 8'h79; B = 8'h5B; C = 8'h00; 
D = 8'h00; E = 8'h00;
end
S2 :  
begin
A = 8'h5E; B = 8'h79; C = 8'h5B; 
D = 8'h00; E = 8'h00;
end
S3 :  
begin
A = 8'h40; B = 8'h5E; C = 8'h79; 
D = 8'h5B; E = 8'h00;
end
S4 :  
begin
A = 8'h77; B = 8'h40; C = 8'h5E; 
D = 8'h79; E = 8'h5B;
end
S5 :  
begin
A = 8'h3D; B = 8'h77; C = 8'h40; 
D = 8'h5E; E = 8'h79;
end
S6 :  
begin
A = 8'h73; B = 8'h3D; C = 8'h77; 
D = 8'h40; E = 8'h5E;
end
S7 :  
begin
A = 8'h71; B = 8'h73; C = 8'h3D; 
D = 8'h77; E = 8'h40;
end
S8 :  
begin
A = 8'h00; B = 8'h71; C = 8'h73; 
D = 8'h3D; E = 8'h77;
end
S9 :  
begin
A = 8'h00; B = 8'h00; C = 8'h71; 
D = 8'h73; E = 8'h3D;
end
S10 :  
begin
A = 8'h00; B = 8'h00; C = 8'h00; 
D = 8'h71; E = 8'h73;
end
S11 :  
begin
A = 8'h00; B = 8'h00; C = 8'h00; 
D = 8'h00; E = 8'h71;
end
endcase
end
endmodule
