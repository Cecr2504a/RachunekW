clc
clear
format longg
Hr=[221.6500 210.0821 214.9079]
a=importdata('57.txt')
AhmL(Hr,a)
uuu=(m*0.001).^(-2)
P=diag(uuu)
X=-inv(A'*P*A)*(A'*P*L)
V=A*X+L
przyr=-[X(3)-X(4) X(1)-X(6) X(3)-X(6) X(1)-X(5) X(6)-Hr(3) X(2)-X(3) X(5)-X(7) X(3)-X(7) X(1)-Hr(1) X(5)-X(6) X(7)-Hr(2) X(4)-X(6) X(2)-X(7) X(1)-X(7)]
Hp=[Hr(1)+przyr(9) Hr(2)+przyr(11) Hr(3)+przyr(5) ]
kont=A'*P*V
kont2=V'*P*V-V'*P*L
[r,n]=size(A)
sigma=sqrt(V'*P*V/(n-r))
Cx=(sigma^2)*(A'*P*A)^(-1)
mH=sqrt(diag(Cx))
Cv=sigma^2*(inv(P)-A*inv(A'*P*A)*A')
Ch=sigma^2*(A*inv(A'*P*A)*A')
D=[1 1 -1 0 0 1 0]
Cu=D*Cx*D'
mcu=sqrt(Cu)
Dw=[0 0 0 0 0 0 0 0 0 1 0 0 -1 1]
Cw=Dw*Ch*Dw'
mcw=sqrt(Cw)