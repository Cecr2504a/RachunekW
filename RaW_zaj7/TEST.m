a=importdata('Test.txt')
b=strrep(a,',','.')
c=cell2mat(cellfun(@str2num,b,'un',0))
[po,bo]=size(c)
A=[]
n=0
while n<po
   n=n+1
   if c(n,1)<100
     kol=c(n,1)
     A(n,kol)=-1
   end
   if c(n,1)>100
     wyn(n,1)=0
   end
   if c(n,2)<100
     kol2=c(n,2)
     wyn(kol2,2)=1
   end
   if c(n,2)>100
     wyn(n,2)=0
   end
end
