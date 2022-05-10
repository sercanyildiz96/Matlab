A=[1 1;2 1];
b=[2;6];


% for i=1:length(A)
%     C=A;
%     C(:,i)=b;
%     x(i)=det(C)/det(A);
% end

% x=A\b;

x=b'/A';

display(x)