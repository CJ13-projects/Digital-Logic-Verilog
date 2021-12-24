module triscFSM1(SysClock,StartStop,INC,CLR,JMP,LDA,STA,ADD,C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16);
input SysClock,StartStop,INC,CLR,JMP,LDA,STA,ADD;
output reg C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16;
reg[4:0] state,nextstate;
parameter A=5'b00000,B=5'b00001,C=5'b00010,D=5'b00011,E=5'b00100,F=5'b00101,G=5'b00110,H=5'b00111,I=5'b01000,
J=5'b01001,K=5'b01010,L=5'b01011,M=5'b01100,N=5'b01101,O=5'b01110,P=5'b01111,Q=5'b10000,R=5'b10001,S=5'b10010,T=5'b10011,U=5'b10100,V=5'b10101;
always @(negedge SysClock, negedge StartStop)
if(StartStop==1'b0)state<=A;else state<=nextstate;
always@(state,INC,CLR,JMP,LDA,STA,ADD)
case(state)
A: begin { C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16}=16'b1000000000000000; nextstate=B;end
B: begin { C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16}=16'b0000000000000000; nextstate=C;end
C: begin { C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16}=16'b0000100000000000; nextstate=D;end
D: begin { C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16}=16'b0000100000000000; nextstate=E;end
E: begin { C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16}=16'b0010001000000000; 
        if(INC) nextstate =F; else if (CLR) nextstate= G;else if (JMP) nextstate= H; else if (LDA) nextstate=I;
		  else if (ADD) nextstate=P;else if (STA) nextstate=M; end 
F: begin { C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16}=16'b0000000010000000; nextstate=B;end
G: begin { C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16}=16'b0000000100000000; nextstate=B;end
H: begin { C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16}=16'b0100000000000000; nextstate=B;end
I: begin { C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16}=16'b0001000000000000; nextstate=J;end
J: begin { C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16}=16'b0001100000000000; nextstate=K;end
K: begin { C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16}=16'b0001100000000000; nextstate=L;end
L: begin { C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16}=16'b0000000000100000; nextstate=B;end
M: begin { C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16}=16'b0001110000000000; nextstate=N;end
N: begin { C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16}=16'b0001110000000000; nextstate=O;end
O: begin { C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16}=16'b0001110000000000; nextstate=B;end
P: begin { C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16}=16'b0001000000000000; nextstate=Q;end

Q: begin { C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16}=16'b0001100000000000; nextstate=R;end
R: begin { C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16}=16'b0001100000000000; nextstate=S;end
S: begin { C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16}=16'b0000000000000000; nextstate=T;end
T: begin { C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16}=16'b0000000000000001; nextstate=U;end
U: begin { C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16}=16'b0000000000010000; nextstate=V;end
V: begin { C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16}=16'b0000000000001000; nextstate=B;end
 default: 
   begin { C0,C1,C2,C3,C4,C5,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16}=16'b0000000000000000;nextstate=A; end
 endcase
 endmodule
 