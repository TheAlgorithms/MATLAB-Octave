% sieveEr: returns a vector with prime numbers from 2 up to N
% assumes: N >= 2
function  y = sieveER(N)
  % precondition
  assert(N >= 2,"N must be >= 2")
  tmp = 2:1:N; % all numbers from 2 up to N
  y = []; % the answer
  
  % labels all composite number with 0
  for i = 1 : 1 : length(tmp)
    for j = i+1 : 1 : length(tmp)
      if (mod(tmp(j),tmp(i)) == 0)
        tmp(j) = 0;
      endif
    endfor
  endfor
  
  % fills up all prime numbers in vector y
  for i = 1 : 1 : length(tmp)
    if (tmp(i) ~= 0)
    y = [y tmp(i)];
    endif
  endfor
  
endfunction
