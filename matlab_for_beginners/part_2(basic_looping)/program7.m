%% Ex. 7 More complicated use of loop and index


b = [2 5 7 4 9 8 3];
c = [2 3 5 7];
sum1 = 0;
for k = 1:4
 sum1 = sum1+b(c(k));
end
sum1
%Output:
%       24
% Remark: This program performs the summation of
% sum1 = b(c(1))+b(c(2))+b(c(3))+b(c(4))
%      = b(2)+b(3)+b(5)+b(7)
%       = 5+7+9+3
%       = 24