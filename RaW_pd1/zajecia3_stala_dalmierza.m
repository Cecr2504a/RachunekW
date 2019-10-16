clear
clc
load stala_dodawania.mat
format longg
Dp=stala_dodawania(:,1); %wart prawdziwa
Dm=stala_dodawania(:,2); % wart pomierzona
%Dp=Dm(1+s)+k - wzór
A=[Dm ones(size(Dm))];
k=Dm-Dp;
L=-k;
X=-inv(A'*A)*(A'*L)
%K=sum(k)/length(k)
%v=K-k
%z=v*v
%m=sqrt(sum(z)/(length(k)-1))
V=A*X+L
%s=(Dp-K)./Dm-1
%S=sum(s)./length(s)
T=A'*V
R=V'*V
U=V'*L