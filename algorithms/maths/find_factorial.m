%% Factorial
function [f] = find_factorial(n)
% calculate the factorial of a positive integer n
% factorial(n)can be used directly as a default function of Matlab

integerTest= ~mod(n,1); %it returns 0 if value is not an integer.
if integerTest== 0 || n < 0;   % checking n to be positive & integer 
    disp('Error! your number muss be positive and integer');
else
    f = 1;
    for i = 1:n
        f = f*i;
    end
    disp(['factorial of ',num2str(n),' is: ',num2str(f)]);
end
end

