% pfz: returns the prime factorization of that number.
% assumes: number is positive
function y = pfz(number)
  assert(number >= 0,'number must be positive')
  y = []; % collects all prime factors
  divisor = 2;
  while (divisor <= sqrt(number))
    while (mod(number,divisor) == 0)
      y = [y divisor];
      number /= divisor; % integer division
    endwhile
    divisor += 1;
  endwhile
  if (number > 1)
    y = [y number];
  endif
endfunction