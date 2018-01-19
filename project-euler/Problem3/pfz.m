% pfz: returns the prime factorization of that number.
% assumes: number is positive
% uses: function isPrime
function y = pfz(number)
  assert(number >= 0,'number must be positive')
  y = []; % collects all prime factors
  tmp = number; % saves temporary the argument
  for divisor = 2 : 1 : sqrt(number)
    if (isPrime(divisor))
      while (mod(number,divisor) == 0)
        y = [y divisor];
        number = idivide(number,divisor); % integer division
      endwhile
      number = tmp;
    endif
  endfor
endfunction