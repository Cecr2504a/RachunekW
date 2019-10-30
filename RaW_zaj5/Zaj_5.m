clc
clear
format longg
A=[  1  0  0;
    -1  1  0;
     0  1  0;
     0  1 -1;
     1  0 -1]
przyr=[2.370,4.718,-8.224,2.909,-1.810]
Hr=[100.127,115.430]
L=-[Hr(1)+przyr(1),przyr(2),Hr(2)+przyr(3),przyr(4),przyr(5)]'
m=[0.004,0.004,0.002,0.002,0.004]
mu=[1/m(1)^2,1/m(2)^2,1/m(3)^2,1/m(4)^2,1/m(5)^2]
P=diag(mu)
X=-inv(A'*P*A)*(A'*P*L)
V=A*X+L
kont=A'*P*V
kont2=V'*P*V-V'*P*L
przyrwyr=[X(1)-Hr(1),X(2)-X(1),X(2)-Hr(2),X(2)-X(3),X(1)-X(3)]
Hp=[Hr(1)+przyrwyr(1),Hr(2)+przyrwyr(3),Hr(2)+przyrwyr(3)-przyrwyr(4)]

