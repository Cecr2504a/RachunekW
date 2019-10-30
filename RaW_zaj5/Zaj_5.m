clc
clear
format longg
A=[  1  0  0;
    -1  1  0;
     0  1  0;
     0  1 -1;
     1  0 -1]
przyr=[2.370,4.718,-8.224,2.909,-1.810]
Hr1=100,127
Hr2=115,430
L=[Hr1+przyr(1),Hr1+przyr(2),Hr1+przyr(3),Hr1+przyr(4),Hr1+przyr(5)]'
m=[4,4,2,2,4]
mu=[1/m(1)^2,1/m(2)^2,1/m(3)^2,1/m(4)^2,1/m(5)^2]
P=diag(mu)
X=-inv(A'*P*A)*(A'*P*L)
V=A*X+L
kont=A'*P*V
t=V'*P*V
o=V'*P*L
hwyr=[L(1)+V(1),L(2)+V(2),L(3)+V(3),L(4)+V(4),L(5)+V(5)]


