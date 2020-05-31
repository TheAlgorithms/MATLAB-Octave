% This file runs univariate linear regression to predict profits of food trucks based on previous

% actual values of profits in $10,000s in various cities with populations in 10,000s respectively. 

clear ; close all; clc ;

fprintf('Plotting data\n');

data = load('data_.txt');
x = data(:, 1); Y = data(:, 2);
n = length(Y); % Number of training examples.

plotdata(x, Y);

fprintf('Program paused, press enter to continue\n');

pause;

x = [ones(n, 1), data(:,1)]; 
Theta = zeros(2, 1);

noi = 1500;   % Number of iterations in gradient descent. 
Alpha = 0.01; % Learning rate.

fprintf('Testing the cost function\n')

j = computecost(x, Y, Theta);
fprintf('With Theta = [0 ; 0]\nCost computed = %f\n', j);
fprintf('Expected cost value (approx) 32.07\n');

j = computecost(x, Y, [-1 ; 2]);
fprintf('With theta = [-1 ; 2]\nCost computed = %f\n', j);
fprintf('Expected cost value (approx) 54.24\n');

fprintf('Program paused, press enter to continue\n');

pause;

fprintf('Running gradient descent\n');

Theta = gradientdescent(x, Y, Theta, Alpha, noi);

fprintf('Theta found by gradient descent\n');
fprintf('%f\n', Theta);
fprintf('Expected Theta vector (approx)\n');
fprintf(' -3.6303\n  1.1664\n\n');

hold on;                                                           % To plot hypothesis on data. 

plot(x(:, 2), x * Theta, '-');
legend('Training data', 'Linear regression');

predict1 = [1, 3.5] * Theta;
fprintf('For population = 35,000, we predict a profit of %f\n',...
    predict1*10000);

predict2 = [1, 7] * Theta;
fprintf('For population = 70,000, we predict a profit of %f\n',...
    predict2*10000);