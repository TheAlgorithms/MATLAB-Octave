%% The while loop


x = 3;
while (x < 100)
 x = x*3;
end
x


% Output:
%      x = 243
% Remark: One can think of a while loop as a combination of a for loop and an if
% statement. Here, the looping will keep going indefinitely as long as the condition,
% (x < 100), is satisfied. Therefore, the value of x progresses from 3, 9, 27, 81, to 243
% when the loop is terminated.