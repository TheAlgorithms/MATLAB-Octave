% isPrime: returns true if number is prime otherwise false.
% assumes: number is positive
function y = isPrime(n)
  assert(n >= 0,'n must be >= 0')
  y = true;
  for divisor = 2 : 1 : sqrt(n)
    if (mod(n,divisor) == 0)
      y = false;
      break
    endif
  endfor
  if (n == 0 || n == 1)
    y = false;
  endif
endfunction