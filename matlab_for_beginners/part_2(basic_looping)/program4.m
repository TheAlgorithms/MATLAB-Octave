%% Ex.4 Treatment of array within a loop


b = [3 8 9 4 7 5];
sum1 = 0;
for k = 1:4
 sum1 = sum1+b(k);
end
sum1


%Output:
  %       24
  
  % Remark: This program performs the summation of sum1 = b(1)+b(2)+b(3)+b(4) =
% 3+8+9+4 = 24