function found_at = jump_search(input_array, search_key)
  % Contributed by   - Harshit Pant, harshitpant83@gmail.com
  
  % input_array - The input array, should be sorted in ascending order.
  %               'input_array' can contain -ve numbers as well as non-integers.
  % search_key  - The value to be searched in the 'input_array'.
  % found_at    - The index at which 'search_key' is found in 'input_array'.
  %               -1 is returned if 'search_key' is not found in 'input_array'.

  array_length = length(input_array);
  found_at = -1; 
  
  block_size = sqrt(array_length); 
  block_size = round(block_size); 
  
  low = 1;
  high = 1 + block_size;

  while input_array(min(high, array_length)) < search_key
      low = high;
      high = high + block_size;
      if low >= array_length
          return;
      endif;
  endwhile;

  while input_array(low) < search_key
      low = low + 1;
      if low > min(high, array_length)
          return;
      endif;
  endwhile;

  if input_array(low) == search_key
      found_at = low;
  endif;

endfunction;


% TEST: 
% Save this file to your local computer, then use the command:
% jump_search([-11.1, -3.3, -1.3, 0.1, 1.5, 3.5, 3.9, 5.5, 7.5, 9.6, 13.7, 21.3, 35.9], 7.5)
% This should return, ans = 9.
% TODO - Transfer this test when automated testing functionality is added to this repository.