clear all
clc

%% Prime Factors
% This code gets user input number, calculates and displays its prime factors.
% For this, first it determines prime numbers which are less than or equal to
% user input number. Then if the input is dividable by that prime number,
% it becomes one of input's prime factors.

%% Request user input
prompt = 'Input your number: ';
n = input(prompt);

%%
counter = 0; % initialize number of prime factors

if n <= 1
    disp('input must be positive integer greater than 1')
else if floor(n)~= n 
       disp('input must be positive integer') 
    else
        for i = 2:1:n
            if i == 2
               isprime = 1;
            else 
            half_i = floor(i/2)+1;
            j = 2;
            while j <= half_i         %lines 16 to 30 check if i is prime or not.
                  residual = mod(i,j); 
                 if residual == 0
                    isprime = 0;
                    break
                 else if j == half_i
                         isprime = 1;
                         break
                     else
                         j=j+1;
                     end
                 end
            end
            end
            if isprime == 1 && mod(n,i) == 0
                   counter=counter+1;
                   f(counter) = i;         % prime factors of n will be storing 
            end
        end
    end
end

disp('Prime factors of input number are: ')
disp(f)
