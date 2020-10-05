%% Ex 3 An application - determine whether a given year is a leap year (try to change the
% given value of nyear and observe the outcome)


nyear = 1975;
if (mod(nyear, 400) == 0)
 fprintf('%6u is a leap year', nyear)
elseif (mod(nyear,4) == 0) & (mod(nyear,100) ~= 0)
 fprintf('%6u is a leap year', nyear)
else
 fprintf('%6u is not a leap year', nyear)
end

% Output:
 %     1975 is not a leap year
% Remarks:
%  (1) In the elseif command (4th line), "&" means "AND". Both statements
% "(mod(nyaer,4) == 0)" and "(mod(nyear,100) ~= 0)" have to be true for Matlab to
% execute the command, "fprintf('%6u is a leap year', nyear)". Also commonly used in an
% if statement is "|" (a vertical line), which means "OR".
% (2) The symbols "~=" in line 4 means "NOT EQUAL TO". There are 6 commonly used
% expressions to compare two numbers in an if command:
% A > B A is greater than B
% A < B A is less than B
% A >= B A is greater than or equal to B
% A <= B A is less than or equal to B
% A == B A equals B
% A ~= B A does not equal B
%(3) The "mod(A,B)" function returns the remainder of A divided by B. For example,
% mod(7,2) = 1, mod(10,4) = 2, and mod(25,5) = 0. If A is divisible by B, mod(A,B) = 0.
% This is a very useful function in many applications related to numerical methods