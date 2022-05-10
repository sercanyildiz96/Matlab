%Soru 1 Sercan YILDIZ 090140334 
clear all; clc;
x=linspace(70,215,100);
b=2:0.1:5;
sum=0;
for j=1:31
for i=1:100    
   sum=sum+(1/100)*x(i)^b(j);
   res=sum^(1/b(j));
end
   plot(b(j),res,'*r');
   hold on
end