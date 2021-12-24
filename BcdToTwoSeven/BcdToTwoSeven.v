module BcdToTwoSeven (
  input w,x,y,z,
  output reg a,b,c,d,e,f,g,h,i,j,k,l,m,n);
  always @ (w,x,y,z) 
    case({w,x,y,z})
      4'b0000: begin {a,b,c,d,e,f,g} = 7'b0000001; {h,i,j,k,l,m,n} =   7'b1111111; end //0
		4'b0001: begin {a,b,c,d,e,f,g} = 7'b1001111; {h,i,j,k,l,m,n} =   7'b1111111; end//1
		4'b0010: begin {a,b,c,d,e,f,g} = 7'b0010010; {h,i,j,k,l,m,n} =   7'b1111111; end//2
		4'b0011: begin {a,b,c,d,e,f,g} = 7'b0000110; {h,i,j,k,l,m,n} =   7'b1111111; end//3
		4'b0100: begin {a,b,c,d,e,f,g} = 7'b1001100; {h,i,j,k,l,m,n} =   7'b1111111; end//4
		4'b0101: begin {a,b,c,d,e,f,g} = 7'b0100100; {h,i,j,k,l,m,n} =   7'b1111111; end//5
		4'b0110: begin {a,b,c,d,e,f,g} = 7'b0100000; {h,i,j,k,l,m,n} =   7'b1111111; end//6
		4'b0111: begin {a,b,c,d,e,f,g} = 7'b0001111; {h,i,j,k,l,m,n} =   7'b1111111; end//7
		4'b1000: begin {a,b,c,d,e,f,g} =  7'b0000000;  {h,i,j,k,l,m,n} =  7'b1111111;end//8
		4'b1001: begin {a,b,c,d,e,f,g} =  7'b0001100;  {h,i,j,k,l,m,n} =  7'b0100000;end //9
		4'b1010: begin {a,b,c,d,e,f,g} =  7'b0000001;  {h,i,j,k,l,m,n} =  7'b0100000;end//A/10
		4'b1011: begin {a,b,c,d,e,f,g} =  7'b1001111;  {h,i,j,k,l,m,n} =  7'b1001111;end//b/11
		4'b1100: begin {a,b,c,d,e,f,g} =  7'b0010010;  {h,i,j,k,l,m,n} =  7'b1001111;end//C/12
		4'b1101: begin {a,b,c,d,e,f,g} =  7'b0000110;  {h,i,j,k,l,m,n} =  7'b1001111;end//d/13
		4'b1110: begin {a,b,c,d,e,f,g} =  7'b1001100;  {h,i,j,k,l,m,n} =  7'b1001111;end//E/14
		4'b1111: begin {a,b,c,d,e,f,g} =  7'b0100100;  {h,i,j,k,l,m,n} =  7'b1001111;end//F/15
		endcase
		endmodule
