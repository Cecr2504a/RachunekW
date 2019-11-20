a=importdata('Test.txt')
b=strrep(a,',','.')
c=cell2mat(cellfun(@str2num,b,'un',0))
[po,bo]=size(c);
A=zeros(po,1);
n=0;
while n<po;
   n=n+1;
   if c(n,1)<100;
     kol=c(n,1);
     A(n,kol)=-1;
   end
   if c(n,2)<100;
     kol2=c(n,2);
     A(n,kol2)=1;
   end
end
A
h=c(:,3)
m=c(:,4)
