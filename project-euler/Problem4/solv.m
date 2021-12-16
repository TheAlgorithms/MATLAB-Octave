product = 0;
maxPalindrome = 0; % saves the current max palindrome number.
for number1 = 999 : -1 : 100
  for number2 = 999 : -1 : 100
    product = number1 * number2;  % builds the new product
    
    % make sure product is a palindrome number.
    if (product > maxPalindrome && isPalindromeNumber(product))
      maxPalindrome = product;
    endif
  endfor
endfor

printf("The greates palindrome number is %d\n",maxPalindrome);