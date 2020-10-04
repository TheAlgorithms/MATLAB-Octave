function y = isPalindrome(inputWord)
    % Return 1 if input string is a palindrome; 0 otherwise. 
    
    % Gets the length of the input word.
    inputLength = length(inputWord);

    % Number of pairs to compare.
    lastIndex = floor( inputLength / 2);
    y=1;
    % for every pair of letters in the word check if they match
    for i = 1 : lastIndex
        if inputWord(i) ~= inputWord(end + (1 - i))
            y = 0;
        end
    end
    
end
