module kiemtra(y,a,b,e);
	input [7:0]a,b;
	input e;
	output [2:0]y;
	wire [22:0]d;
	sosanh1bit s1(d[0],d[1],d[2],a[7],b[7],e);
	sosanh1bit s2(d[3],d[4],d[5],a[6],b[6],d[1]);
	sosanh1bit s3(d[6],d[7],d[8],a[5],b[5],d[4]);
	sosanh1bit s4(d[9],d[10],d[11],a[4],b[4],d[7]);
	sosanh1bit s5(d[12],d[13],d[14],a[3],b[3],d[10]);
	sosanh1bit s6(d[15],d[16],d[17],a[2],b[2],d[13]);
	sosanh1bit s7(d[18],d[19],d[20],a[1],b[1],d[16]);
	sosanh1bit s8(d[21],y[1],d[22],a[0],b[0],d[19]);
	or or1(y[2],d[0],d[3],d[6],d[9],d[12],d[15],d[18],d[21]);
	or or2(y[0],d[2],d[5],d[8],d[11],d[14],d[17],d[20],d[22]);
endmodule
module sosanh1bit(y0,y1,y2,a,b,e);
	input a,b,e;
	output y0,y1,y2;
	assign y0 = ~a & b & e;
	assign y1 = (a ~^ b) & e;
	assign y2= a & ~b & e;
endmodule
module bt_baitap12();
	reg [7:0]a,b;
	reg e;
	wire [2:0]y;
	initial
	begin
	
	a = 8'b10000000;
	b = 8'b00000000;
	e = 1;
	#50
	a = 8'b00000001;
	b = 8'b11000000;
	e = 1;
	#50
	a = 8'hff;
	b = 8'hff;
	e = 1;
	#50
	
	#500 $finish;
	end
	baitap12 bt(.a(a),.b(b),.e(e),.y(y));
endmodule
