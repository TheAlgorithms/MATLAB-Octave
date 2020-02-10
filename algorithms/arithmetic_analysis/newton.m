%Newton's method is one of the fastest algorithms to converge on a root.
%It does not require you to provide any endpoints, but it does require for
%you to provide the derivative of the function. It is faster than the secant
%method, but is also not guaranteed to converge.

%INPUTS:
%function handle f
%function handle df for the derivative of f
%initial x-value
%maximum tolerated error

%OUTPUTS:
%An approximated value for the root of f.

%Written by MatteoRaso

function y = newton(f, df, x, error)
  while abs(f(x)) > error
    x = x - f(x) / df(x);
    disp(f(x))
  endwhile
  A = ["The root is approximately located at ", num2str(x)];
  disp(A)
  y = x;
endfunction
