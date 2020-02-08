%Extremely similar to the false position method. The main difference is
%that the secant method does not actually have a defined interval where
%the root lies on. It converges faster than the false position method,
%but it is not always guaranteed to converge.

%INPUTS:
%Function handle f
%x1 = a
%x2 = b
%maximum tolerated error

%OUTPUTS:
%An approximated value for the root of f.

%Written by MatteoRaso

function y = secant(f, a, b, error)
  x = [a, b];
  n = 2;
  while abs(f(x(n))) > error
    x(n + 1) = -f(x(n)) * (x(n) - x(n - 1)) / (f(x(n)) - f(x(n - 1))) + x(n);
    n = n + 1;
    disp(f(x(n)))
  endwhile     
  A = ["The root is approximately ", num2str(x(n))];
  disp(A)
  y = x(n);
endfunction
