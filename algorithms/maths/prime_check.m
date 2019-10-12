function p = prime_check(n)
%% Prime Check
% Tis function checks wheather the input number is prime of not.
% For this, it checks if the input number is dividable by numbers less than
% its half+1. 
% If number is dividable by one of these numbers function displays "not
% prime number" and returns 0 as output, otherwise it displays "prime
% number" and returns 1 as output.

if n <= 0
    disp('input must be positive integer')
else if floor(n)~= n 
       disp('input must be positive integer') 
    else if n == 2
            disp([num2str(n), ' is prime number'])
            p = 1;
        else
            half_n = floor(n/2)+1;
            i = 2;
           while i <= half_n
                 residual = mod(n,i); 
                 if residual == 0
                    disp([num2str(n), ' is not prime number'])
                    p = 0;
                    break
                 else if i == half_n
                         disp([num2str(n), ' is prime number'])
                         p = 1;
                         break
                     else
                         i=i+1;
                     end
                 end
           end
        end
    end
end
