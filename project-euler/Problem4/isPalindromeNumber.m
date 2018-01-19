% isPalindromeNumber: returns true if the given number are a palindrome 
%                     otherwise false.
% assumes: the given number is positive
function ans = isPalindromeNumber(number)
  % precondition
  assert(number >= 0,'number must be positive')
  ans = false;
  strNumber = num2str(number); % convert the given number to character array
  if (strNumber == flip(strNumber))
    ans = true;
  endif
endfunction