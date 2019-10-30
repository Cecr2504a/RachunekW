clear
clc
Hr=1.00
h1ob=1.04
h2ob=2.05
h3ob=3.03
A=[1 0; -1 1;0 1]
z=size(A)(1)-size(A)(2)
L=[-Hr-h1ob;-h2ob;-Hr-h3ob]
% wagi
m1=0.02
m2=0.02
m3=0.04
m=[1/m1^2,1/m2^2,1/m3^2]
P=diag(m)
X=-inv(A'*P*A)*(A'*P*L) %estymator wektora niewiadomych
% poprawka
V=A*X+L
% Kontrole
kont=A'*P*V
% tu mo¿na zrobiæ tak abs(VTPV-(LTPAX+LTPL))<0.06
t=V'*P*V
o=V'*P*L
sigma=sqrt(V'*P*V/z) %sigma>1, wagi za du¿e sigma<1, wagi za ma³e
% H wyrównane hwyr=hob+v
h1wyr=h1ob+V(1)
h2wyr=h2ob+V(2)
h3wyr=h3ob+V(3)
% 3 test hwyrb-hwyra=H3 itp

