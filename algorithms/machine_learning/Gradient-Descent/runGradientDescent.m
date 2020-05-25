% This script will pass sample parameters to gradient descent function and get Theta.

% I have used data consisting of populations as variables and profits as target values.

% Navigate to directory where you keep these three files on octave cli and then execute.  

data = load('data_.txt');

Y = data(:, 2); % Y is a column vector with all entries in second column of data matrix.

n = length(Y);  

x = [ones(n, 1), data(:,1)]; % x is the matrix with first column as ones and second data. 

Theta = zeros(2, 1); % Initial Theta vector with both theta values set to zero (column).  

Alpha = 0.01; 

noi = 1500;

Theta = gradientdescent(x, Y, Theta, Alpha, noi);

fprintf('New theta vector is below:\n');

fprintf('%f\n', Theta);

fprintf('Expected Theta vector (approx)\n');

fprintf(' -3.6303\n 1.1664\n\n');