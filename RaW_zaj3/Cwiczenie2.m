clear
clc
format longg 
load polynomial_x_regression.dat
P=diag(p);
A=[x ones(size(x))];
L=-y;
X=-inv(A'*P*A)*(A'*P*L)
V=A*X+L
sprawdz