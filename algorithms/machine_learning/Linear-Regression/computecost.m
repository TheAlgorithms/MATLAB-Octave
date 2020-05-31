function j = computecost(x, Y, Theta)

n = length(Y); % Number of training examples.
 
j = 0;

j = (1 / (2 * n)) * sum(((x * Theta) - Y).^2); 

end