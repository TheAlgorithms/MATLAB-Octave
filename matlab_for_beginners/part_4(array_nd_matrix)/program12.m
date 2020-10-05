%% Ex. 12 Solving a system of linear equation


A = [4 1 2; 0 3 1; 0 1 2];
b = [17 ; 19 ; 13];
x = inv(A)*b


%Output:
%      x = 1
%          5
%          4


% An alternative to Ex. 12
% A = [4 1 2; 0 3 1; 0 1 2];
% b = [17 ; 19 ; 13];
% x = A\b
% The output is the same as Ex. 39. Here, A\b is essentially inv(A)*b. (The "\" is called
% "back divide" in Matlab documentations.)