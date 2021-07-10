function found_at = jump_search(input_array, search_key)
  % Contributed by - Harshit Pant, harshitpant83@gmail.com
  % Reference - https://en.wikipedia.org/wiki/Jump_search
  
  % input_array - Holds the array in which the 'search_key' is to be searched.
  %               It should be sorted in ascending order.
  %               It can contain -ve numbers as well as non-integers.
  % search_key  - The value to be searched in the 'input_array'.
  % found_at    - The index at which 'search_key' is found in 'input_array'.
  %               -1 is returned if 'search_key' is not found in 'input_array'.

  array_length = length(input_array);
  found_at = -1; 
  
  % Finding the optimum block_size to be jumped.
  block_size = sqrt(array_length); 
  block_size = round(block_size); 
  
  % low and high denote the lower 
  % and upper bound of a certain block.
  low = 1;
  high = 1 + block_size;

  % Finding the block where the 'search_key' is present
  % if low >= array_length, the 'search_key' is not found 
  % in the 'input_array', thus, -1 is returned.
  while input_array(min(high, array_length)) < search_key
      low = high;
      high = high + block_size;
      if low >= array_length
          return;
      endif;
  endwhile;

  % Now that the required block is found,
  % running a linear search within the block 
  % to find the 'search_key'
  while input_array(low) < search_key
      low = low + 1;
      if low > min(high, array_length)
          return;
      endif;
  endwhile;

  % Checks if the 'search_key' was found within
  % the block. If found, the index is returned.
  % If not -1 is returned.
  if input_array(low) == search_key
      found_at = low;
  endif;

endfunction;

% TEST: 
% jump_search([-11.1, -3.3, -1.3, 0.1, 1.5, 3.5, 3.9,...
% 5.5, 7.5, 9.6, 13.7, 21.3, 35.9], 7.5) == 9
