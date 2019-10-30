clear
clc
Hr=[100.127;115.430];
hob=[2.370;4.718;-8.224;2.909;-1.810]
A=[1 0 0; -1 1 0;0 1 0; 0 1 -1; 1 0 -1]
z=size(A)(1)-size(A)(2);
L=[-Hr(1)-hob(1);-hob(2);-Hr(2)-hob(3);-hob(4); -hob(5)]
m=[4,4,2,2,4]*0.001;
P=inv(diag(m.^2))
X=-inv(A'*P*A)*(A'*P*L)
V=A*X+L
kont=A'*P*V
t=V'*P*V
o=V'*P*L
sigma=sqrt(V'*P*V/z)
hwyr=hob+V
sumhwyr=sum(hwyr)
h1wyr=X(1)-Hr(1);
h2wyr=X(2)-X(1);
h3wyr=X(2)-Hr(2);
h4wyr=X(2)-X(3);
h5wyr=X(1)-X(3);
hwyrk=[h1wyr;h2wyr;h3wyr;h4wyr;h5wyr]
