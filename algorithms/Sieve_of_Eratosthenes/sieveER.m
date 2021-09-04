% sieveEr: returns a vector with prime numbers from 2 up to N
% assumes: N >= 2
function  y = sieveER(N)
  % precondition
  assert(N >= 2,"N must be >= 2")
  tmp = [false,true(1,N-1)]; % indexed by all numbers from 2 up to N
  
  % labels all composite number with false
  for i = 2 : 1 : sqrt(N)
    if (tmp(i))
      for j = i^2 : i : N
        tmp(j) = false;
      endfor
    endif
  endfor
  
  % fills up all prime numbers in vector y
  y = find(tmp);
  
endfunction
