function ans = multiple(x, m)

  % multiple : checks whether the first number is 
  % divisible through the second number.
  % INPUTS: The inputs must be integers.
  % OUTPUT: Is a boolean value 0 or 1.
  % THROWS: Throws a assertion error if the inputs invalid.

  assert((x == round(x) && m == round(m)), "The inputs must be integers")

  if m == 0 
    ans = (x == 0);
  else
    ans = (mod(x,m) == 0);
  end

endfunction