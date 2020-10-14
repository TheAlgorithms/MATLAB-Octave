% function to calculate lcm of two number a and b using gcd of two numbers.

function [ret] =  lcm(a, b)
    if b == 0
       re = a;
       ret=(a*b)/re;    % i.e zero
       
    else
       re = gcd(b, mod(a, b));
       ret=(a*b)/re;
    end
