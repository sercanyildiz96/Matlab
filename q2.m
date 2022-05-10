% 090140334 Sercan YILDIZ question 2
A=round(255*rand(150,150));
for a = 0:255
    counter = 0;
    for i = 1:150
        for j = 1:150
            if A(i,j) == a
                counter=counter+1;
            end
        end
    end
    plot(a,counter,'*r')
    hold on
end
title('Random number occurrence counter')
xlabel('Random values between 0 and 255')
ylabel('How many times a random number occurred')