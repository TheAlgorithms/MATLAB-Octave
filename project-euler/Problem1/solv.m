% generate a vector of all numbers between 1 and 999
numbers = 1:1:999;

% applyes the filter-function 'multiples' on the  'numbers' vector
listMultiples = arrayfun(@multiple,numbers);

% adds up all multiples
printf("The sum is %d\n", (sum(listMultiples)))
