prompt='Enter the number of equations\n';
n=input(prompt);
prompt='Enter matrix A for the equation Ax=b\n';
A=input(prompt);
 while length(A)~=n
     prompt='Given number of equations and length of A must be the same\n Enter A\n';
     A=input(prompt);
 end
prompt='Enter b for the equation Ax=b\n';
b=input(prompt);
while length(b)~=n
     prompt='Given number of equations and length of b must be the same\n Enter b\n';
     b=input(prompt);
end
prompt='Enter an initial x vector\n';
x=input(prompt);
while length(x)~=n
     prompt='Given number of equations and length of x must be the same\n Enter x\n';
     x=input(prompt);
end

prompt='Enter iteration number\n';
itn=input(prompt);
for i=1:itn
    for j=1:n
        x(j) = (b(j) - sum(A(j,[1:j-1 j+1:n]) .* x([1:j-1 j+1:n]))) ./ A(j,j);
    end
end
display(x);