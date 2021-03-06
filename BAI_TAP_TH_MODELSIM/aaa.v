
module aaa(An,Bn,Cn1,Sn,Cn);
input An,Bn,Cn1;
output Sn,Cn;
wire y0,y1,y2,y3;
and u1(y1,An,Bn);
and u2(y2,Bn,Cn1);
and u3(y3,An,Cn1);
xor u4(y0,An,Bn);
xor u5(Sn,y0,Cn1);
or u6(Cn,y1,y2,y3);
endmodule
module TB_aaa();
reg An;
reg Bn;
reg Cn1;
wire Sn;
wire Cn;
initial
begin
An = 0;
Bn = 0;
Cn1 =0; 
#100
An = 0;
Bn = 1;
Cn1 =1; 
#100
An = 1;
Bn = 0;
Cn1 =1; 
#100
An = 1;
Bn = 1;
Cn1 =1; 
#100
An = 0;
Bn = 0;
Cn1 =1; 
#600 $finish;
end
aaa D(.An(An),.Bn(Bn),.Cn1(Cn1),.Sn(Sn),.Cn(Cn));
endmodule

