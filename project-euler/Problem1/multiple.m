% filters all multiple of 3 and 5
% if number is a multiple of 3 or 5 it returns number otherwise
% it returns 0
function retval = multiple (number)
  assert(number >= 0,"number must be >= 0")
  if ((mod(number,3) == 0) || (mod(number,5) == 0))
    retval = number;
  else
    retval = 0;
  endif
endfunction



