% 090140334 Sercan YILDIZ question 3
x = 1:0.2:5;
y = [-1.945, -1.253, -1.14, -1.087, -0.76, -0.682, -0.424, -0.012, -0.19, 0.452, 0.337, 0.764, 0.532, 1.073, 1.286, 1.502, 1.582, 1.993, 2.473, 2.503, 2.322];
sumx = sum(x);
sumx2 = sum(x.^2);
sumx3 = sum(x.^3);
sumx4 = sum(x.^4);
sumy = sum(y);
sumxy = sum(x.*y);
sumx2y = sum((x.^2).*y);
A1 = [length(x), sumx; sumx, sumx2];
A2 = [length(x), sumx, sumx2; sumx, sumx2, sumx3; sumx2, sumx3, sumx4];
b1 = [sumy; sumxy];
b2 = [sumy; sumxy; sumx2y];
z1 = A1\b1;
z2 = A2\b2;
xnew = 1:0.01:5;
ynew1 = z1(1) + z1(2)*xnew;
ynew2 = z2(1) + z2(2)*xnew + z2(3)*(xnew.^2);
plot(x,y,'*k',xnew,ynew1,'r',xnew,ynew2,'g')
title('Least Square')
xlabel('x values')
ylabel('y values')
legend('Given points', 'First order polynomial', 'Second order polynomial')
xnew1 = 3.5;
ynew11 = z1(1) + z1(2)*xnew1;
ynew22 = z2(1) + z2(2)*xnew1 + z2(3)*(xnew1.^2);
fprintf('For given x=3.5\n First order polynomial result is %s\n Second order polynomial result is %s\n',ynew11,ynew22);