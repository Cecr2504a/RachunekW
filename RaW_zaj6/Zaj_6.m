clc
clear
format longg
A=[ 1  0;
   -1  1;
    0  1]
Hr=1
h=[1.04 2.05 3.03]'
L=[-Hr;0;-Hr]-h
uuu=[0.02 0.02 0.04].^(-2)
P=diag(uuu)
X=-inv(A'*P*A)*(A'*P*L)
V=A*X+L
kont=A'*P*V
kont2=V'*P*V-V'*P*L
[r,n]=size(A)
sigma=sqrt(V'*P*V/(n-r))
Cx=sigma^2*inv(A'*P*A)
mH=sqrt(diag(Cx))
Cv=sigma^2*(inv(P)-A*inv(A'*P*A)*A')
Ch=sigma^2*(A*inv(A'*P*A)*A')
D=[-1 1]
Cu=D*Cx*D'
u=[h(1)+h(2)+h(3); 
        h(1)-h(2)]
Dw=[0  2;
    2 -1]
Cuw=Dw*Cx*Dw'
Dw2=[1,1,1;
     1,-1,0]
Cuw2=Dw2*Ch*Dw2'