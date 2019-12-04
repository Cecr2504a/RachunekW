clc
clear
format longg
P=[1250.180 2409.86]
a=importdata('dane.txt')
[po,bo]=size(a);
n=0
while n<po
  n=n+1
  X(n)=a(n,1)
  Y(n)=a(n,2)
  d(n)=a(n,3)
  m(n)=a(n,4)
end
n2=0
while n2<po
  n2=n2+1
  A(n2,1)=-cos(atan((Y(n2)-P(2))/(X(n2)-P(1))))
  A(n2,2)=-sin(atan((Y(n2)-P(2))/(X(n2)-P(1))))
  L(n2)=d(n2)-(sqrt(((X(n2)-P(2))^2)+(Y(n2)-P(1))^2))
end
uuu=(m*0.001).^(-2)
P=diag(uuu)