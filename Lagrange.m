prompt='Enter x variables\n';
xvector=input(prompt);
prompt='Enter values for each x variable\n';
fx=input(prompt);
while length(xvector)~=length(fx)
     fprintf('Given number of x variables and number of values must be same.\n');
     prompt='To change x press 1. To change values press 2. To change both press 3.\n';
     a=0;
     while a~=1 && a~=2 && a~=3  
         prompt='To change x press 1. To change values press 2. To change both press 3.\n';
         a=input(prompt); 
         if a==1
             prompt='Enter x variables\n';
             xvector=input(prompt);
         elseif a==2
             prompt='Enter values for each x variables\n';
             fx=input(prompt);
         elseif a==3
             prompt='Enter x variables\n';
             xvector=input(prompt);
             prompt='Enter values for each x variable\n';
             fx=input(prompt);
         end
     end
end
n=length(xvector);
syms x;
sum=0;

for i = 1:n
    L(i) =  prod(x - xvector([1:i-1 i+1:n]))/prod(xvector(i) - xvector([1:i-1 i+1:n]));
end

for i = n:-1:1    
    sum=sum+L(i)*fx(i);
end
fprintf('Lagrange polynomial is: %s\n',sum);