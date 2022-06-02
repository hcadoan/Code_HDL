module fsm1011(ck,rs,x,y);
parameter start = 3'b000;
parameter s1 = 3'b001;
parameter s10 = 3'b010;
parameter s101 = 3'b011;
parameter s1011 = 3'b100;
input ck,rs,x;
output y;
reg y;
reg [2:0]current_state,next_state;
always @ (*)
begin
case(current_state)
start : if(x) next_state = s1;
        else  next_state = current_state;
s1 : if(!x) next_state = s10;
     else  next_state = current_state;
s10 : if(x) next_state = s101;
      else  next_state = start;
s101 : if(x) next_state = s1011;
       else  next_state = s10;
s1011 : if(x) next_state = s1;
        else  next_state = s10;
default next_state = start;
endcase
end
always @ (posedge ck)
begin
if(rs == 1) current_state <= start;
else current_state <= next_state;
end
always @ (*)
begin
if(current_state == s1011) y = 1'b1;
else y = 1'b0;
end
endmodule

   
		 