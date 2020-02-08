%The bisection method for finding the root of a function.
%f(a) is < 0 and f(b) > 0. By the intermediate value theorem,
%there exists a number c in between a and b such that f(c) = 0.
%In other words, there is always a root in between f(a) and f(b).
%The bisection method takes the midpoint between a and b and evaluates
%the value of the function at the midpoint. If it is less than 0,
%a is assigned the midpoint. If it is greater than 0, b is assigned the
%midpoint. With each iteration, the interval the root lies in is halved,
%guaranteeing that the algorithm will converge towards the root.

%INPUTS:
%Function handle f
%endpoint a
%endpoint b
%maximum tolerated error

%OUTPUTS:
%An approximated value for the root of f within the defined interval.

%Written by MatteoRaso

function y = bisection(f, a, b, error)
  %Making sure that the user didn't input invalid endpoints.
  if ~(f(a) < 0)
    disp("f(a) must be less than 0")
  elseif ~(f(b) > 0)
    disp("f(b) must be greater than 0")
  else 
    c = 1e9;
    %Loops until we reach an acceptable approximation.
    while abs(f(c)) > error
      c = (a + b) / 2;
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
