%Soru 2 Sercan YILDIZ 090140334
clear all; clc;
sum=0;
error=1;
x=0.5;
n=0;
while abs(error)>0.0001
    sumold=sum;
    sum=sum+((-1)^n*factorial(2*n).*x.^(2*n+1))./(4^n*(factorial(n)^2)*(2*n+1));
    error=(sum-sumold)/sum;
    n=n+1;
    plot(n,abs(error),'*r');
    axis([2 7 0 0.05]);
    hold on;
end
sum
error=abs(error)
n