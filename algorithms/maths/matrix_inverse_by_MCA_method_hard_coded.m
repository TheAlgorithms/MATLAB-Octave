"""
A reference link to MCA algorithm: https://demyank.tistory.com/325?category=867920
"""

x = input('Enter 1 for entering the matrix manually, or 2 for generating random matrix :')

if x == 1
    A = input('Enter the square matrix (make sure that it is non-singular):')
    M = zeros(length(A))
    C = zeros(length(A))
elseif x == 2
    m = input('Enter dimension of the random square matrix to calculate inverse: ');
    A = round(5*randn(m));
    M = zeros(m);
    C = zeros(m);
else
    fprintf('wrong entry ')
end

n = length(A);




for i = 1:n
    for j = 1: n
        %slicing the elements of minor matrix
        rows = true(1,n);
        cols = true(1,n);
        rows(i) = false;
        cols(j) = false;
        
        %inserting the elemnts in minors matrix
        M(i,j) = det(A(rows, cols));
        
        %inserting the elements in co-factors matrix
        C(i,j) = (-1)^(i+j)*M(i,j);
    end
end

%calculating the inverse with adjugating matrix
Ainv = C'/det(A);

fprintf('The matrix whose inverse to be computed is :')
A
fprintf('The minors matrix is :')
M
fprintf('The cofactor matrix is: ')
C
fprintf('The Adjugate matrix is: ')
C'
fprintf('The inverse of the matrix is: ')
Ainv

fprintf('Validating the calculated inverse as A*Ainv: ')
A*Ainv

%visual printing

clf

subplot(131)
imagesc(A), axis square, axis off
title('A')

subplot(132)
imagesc(Ainv), axis square, axis off
title('A^-1')

subplot(133)
imagesc(A*Ainv), axis square, axis off
title('A*A^inv')