%%Ex. 6 Formatted output
a = 3;
b = a*a;
c = a*a*a;
d = sqrt(a);
fprintf('%4u square equals %4u \r', a, b)
fprintf('%4u cube equals %4u \r', a, c)
fprintf('The square root of %2u is %6.4f \r', a, d)


%Output:  3 square equals 9
        % 3 cube equals 27
        % The square root of 3 is 1.7321