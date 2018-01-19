% fib: returns the n-th fibonacci number
% indexing begings by 0
% assumes: number is positive
function y = fib(n)
assert(n >= 0,'n must be >= 0')
n0 = 1; % init values for the fibonacci sequence
n1 = 2;
tmp = 0;
for i = 1 : 1 : n
  tmp = n1;
  n1 = n1 + n0;
  n0 = tmp;
endfor
y = n0;
endfunction