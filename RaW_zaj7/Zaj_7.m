clc
clear
format longg
A=[  0  0 -1  1  0  0  0;
    -1  0  0  0  0  1  0;
     0  0 -1  0  0  1  0;
    -1  0  0  0  1  0  0;
     0  0  0  0  0 -1  0;
     0 -1  1  0  0  0  0;
     0  0  0  0 -1  0  1;
     0  0 -1  0  0  0  1;
    -1  0  0  0  0  0  0;
     0  0  0  0 -1  1  0;
     0  0  0  0  0  0 -1;
     0  0  0 -1  0  1  0;
     0 -1  0  0  0  0  1;
    -1  0  0  0  0  0  1]
Hr=[221.6500 210.0821 214.9079]
h=[2.192 15.706 5.651 8.538 -8.318 -6.875 2.267 0.753 14.136 7.159 -8.247 3.455 -6.110 10.812]'
L=[ 0 0 0 0 Hr(3) 0 0 0 Hr(1) 0 Hr(2) 0 0 0]'.-h
uuu=([4 5 5 3 6 8 7 8 4 6 6 7 3 3].*e^(-3)).^(-2)
P=diag(uuu)
X=-inv(A'*P*A)*(A'*P*L)
V=A*X+L
kont=A'*P*V
kont2=V'*P*V-V'*P*L
[r,n]=size(A)
sigma=sqrt(V'*P*V/(n-r))
printf("%10.5f\n", X)