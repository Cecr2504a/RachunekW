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
kont=A'*P*V
kont2=V'*P*V-V'*P*L
[r,n]=size(A)
sigma=sqrt(V'*P*V/(n-r))
