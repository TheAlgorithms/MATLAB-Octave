%%Ex 2 if - elseif - else (This example is self-explanatory. Try to change the given value
% of num1 and observe the outcome.)


num1 = 4;
if (num1 >= 5)
 fprintf('%4i is greater than or equal to 5 \r', num1)
elseif (num1 > 1)
 fprintf('%4i is less than 5 but greater than 1 \r', num1)
elseif (num1 == 1)
 fprintf('%4i equals 1 \r', num1)
elseif (num1 > -3)
 fprintf('%4i is less than 1 but greater than -3 \r', num1)
else
 fprintf('%4i is less than or equal to -3 \r', num1)
end

