% 090140334 Sercan YILDIZ question 1
x1(1) = 1/3;
x1(2) = 1/12;
for i = 1:58
    x1(i+2) = 2.25*x1(i+1) - 0.5*x1(i);
end
semilogx(x1);
hold on
x2=zeros(1,60);
for i=1:60
    x2(i)=(4^(1+i))/3;
end
semilogx(x2);
legend('Given equation', 'exact solution');
distance = (sum((x1-x2).^2))^0.5;
fprintf('Distance between two vectors is %s\n',distance);