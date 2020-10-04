%%Ex. 1 The if command

num1 = 7;
if (num1 > 5)
 fprintf('%4u is greater than 5 \r', num1)
else
 fprintf('%4u is less than or equal to 5 \r', num1)
end


%Output:
%             7 is greater than 5
%             Same program, but change first line to "num1 = 3;"

%Output:
%       3 is less than or equal to 5
%    Remark: In this program, if (num1 > 5) (num1 is greater than 5) is true, the statement
% "fprintf('%4u is greater than 5 \r', num1)" is executed. Otherwise, the statement
%  "fprintf('%4u is less than or equal to 5 \r', num1)" is executed.