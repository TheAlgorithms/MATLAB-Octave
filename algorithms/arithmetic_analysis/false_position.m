%The basic idea behind the false position method is similar to the bisection
%method in that we continuously shrink the interval the root lies on until
%the algorithm converges on the root. Unlike the bisection method, the false
%position method does not halve the interval with each iteration. Instead of
%using the midpoint of a and b to create the new interval, the false position
%method uses the x-intercept of the line connecting f(a) and f(b). This 
%algorithm converges faster than the bisection method.

%INPUTS:
%Function handle f
%endpoint a
%endpoint b
%maximum tolerated error

%OUTPUTS:
%An approximated value for the root of f within the defined interval.

%Written by MatteoRaso

function y = false_position(f, a, b, error)
  if ~(f(a) < 0)
    disp("f(a) must be less than 0")
  elseif ~(f(b) > 0)
    disp("f(b) must be greater than zero")
  else 
    c = 100000;
    while abs(f(c)) > error
      %Formula for the x-intercept
      c = -f(b) * (b - a) / (f(b) - f(a)) + b;
      if f(c) < 0
        a = c;
      else
        b = c;
      endif
      disp(f(c))
    endwhile
    x = ["The root is approximately located at ", num2str(c)];
    disp(x)
    y = c;
  endif
endfunction
