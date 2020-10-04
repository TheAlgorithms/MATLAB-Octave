%% Ex.4 Element-by-element multiplication involving two 1-D arrays or two matrices of the same dimension


a = [2 3 5];
b = [2 4 9];
c = a.*b


%Output:
%      c = 4 12 45

% Remark: The period preceding the mathematical operation, "*", indicates that the
% operation will be performed element-by-element. In this case, the content of c is
% c = [a(1)*b(1) a(2)*b(2) a(3)*b(3)]
% Also, c is automatically assigned as a 1-D array with 3 elements