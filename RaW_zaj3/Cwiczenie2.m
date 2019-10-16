clear
clc
format longg 
load polynomial_x_regression.dat
P=diag(p);
A=[x.^4 x.^3 x.^2 x ones(size(x))];
L=-y;
X=-inv(A'*P*A)*(A'*P*L)
V=A*X+L
