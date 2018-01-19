% solves the problem 2
% uses function fib of file 'fib.m'

currentFib = 0;
sum = 0;  % for adding up
i = 0;  % for the i-th fibonacci number
while (currentFib < 4e+06)
  currentFib = fib(i);
  if (mod(currentFib,2) == 0)
    sum += currentFib;
  endif
  i += 1;
endwhile

printf("The sum is %d\n",sum);