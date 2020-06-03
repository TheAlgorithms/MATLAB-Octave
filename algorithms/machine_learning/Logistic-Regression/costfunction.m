function [j, Grad] = costfunction(Theta, X, Y)

n = length(Y); 

j = 0;

j = (1/n)*(-Y'* log(Sigmoid(X * Theta)) - (1 - Y)'* log(1 - Sigmoid(X * Theta))); % See the sigmoid function. 

Grad = zeros(size(Theta));

Grad_ = (1 / n) * ((Sigmoid(X * Theta) - Y)' * X);

Grad = Grad_';

end