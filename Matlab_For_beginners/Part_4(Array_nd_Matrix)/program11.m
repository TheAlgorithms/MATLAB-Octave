%% Ex. 11 Another example for the usage of index for a matrix


A = [3 5; 2 4];
norm1 = 0;
for m = 1:2
for n = 1:2
 norm1 = norm1+A(m,n)^2;
end
end
norm1 = sqrt(norm1)


%Output:
%    norm1 = 7.348
% Remark: This program calculates the Euclidean norm of the A matrix