%A MATLAB/Octave implementation of the insertion sort algorithm.
%The basic premise is that the program checks whether two neighbouring elements
%in an array are in order and sorts them. It does length(array) number of
% passes. For further details and pseudocode, refer to
%https://en.wikipedia.org/wiki/Insertion_sort
%Note that this function differs slightly from the pseudocode because of
%how MATLAB/Octave arrays start at index 1.
%Note: this function is for educational purposes only.
%You will want to use the built-in sort function for actual coding,
%as it is much more efficent.
function y = insertion_sort(array)
  i = 1;
  %Assigning the length to a variable should make the program slightly faster.
  len = length(array);
  while i < len + 1
    j = i;
    while j > 1 && array(j - 1) > array(j)
      %Swapping array(j - 1) and array(j)
      temp = array(j - 1);
      array(j - 1) = array(j);
      array(j) = temp;
      j = j - 1;
    endwhile
    i = i + 1;
  endwhile
  y = array;
endfunction
