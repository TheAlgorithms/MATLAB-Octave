function found_at = jump_search(arr, value)
  % Contributed by   - Harshit Pant, harshitpant83@gmail.com
  
  % arr       - The input array, should be sorted in ascending order.
  %             'arr' can contain -ve numbers as well as non-integers.
  % value     - The value to be searched in the array.
  % found_at  - The index at which 'value' is found in 'arr'.
  %             -1 is returned if 'value' is not found in 'arr'.

  n = length(arr);
  found_at = -1; 
  
  % 'm' holds the block size
  m = sqrt(n); 
  m = round(m); 
  low = 1;
  high = 1 + m;

  while arr(min(high, n)) < value
      low = high;
      high = high + m;
      if low >= n
          return;
      endif;
  endwhile;

  while arr(low) < value
      low = low + 1;
      if low > min(high, n)
          return;
      endif;
  endwhile;

  if arr(low) == value
      found_at = low;
  endif;

endfunction;


% TEST: 
% Save this file to your local computer, then use the command:
% jump_search([-11.1, -3.3, -1.3, 0.1, 1.5, 3.5, 3.9, 5.5, 7.5, 9.6, 13.7, 21.3, 35.9], 7.5)
% This should return, ans = 9.
% TODO - Transfer this test when automated testing functionality is added to this repository.