function ans = counting_sort(arr, k)
  % countingSort : implements the counting sort algorithm
  % INPUT: array of integers between 1 and k
  % OUTPUT: sorted array

  ans = zeros(size(arr)); % result array (sorted array)


  C = zeros(1,k); % array for counting

  % counts the occurs of element i
  for i = 1 : length(arr)
    C(arr(i)) += 1;
  endfor

  % adress calculation
  for j = 2 : k
    C(j) += C(j-1);
  endfor

  for m = length(arr) : -1 : 1
    ans( C( arr(m) ) ) = arr(m);
    C(arr(m)) -= 1;
  endfor

endfunction