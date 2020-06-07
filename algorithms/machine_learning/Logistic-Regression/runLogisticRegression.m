clear; close all; clc;

Data = load('data.txt');
x = Data(:, [1, 2]); Y = Data(:, 3);

fprintf(['Plotting data with + indicating (Y = 1) examples and o ' ...
         'indicating (Y = 0) examples.\n']);

plotdata(x, Y);
 
hold on;

xlabel('Exam 1 score');
ylabel('Exam 2 score');

legend('Admitted', 'Not admitted');
hold off;

fprintf('\nProgram paused, press enter to continue.\n');
pause;

[m, n] = size(x);

X = [ones(m, 1) x];

Initial_Theta = zeros(n + 1, 1);

[Cost, Grad] = costfunction(Initial_Theta, X, Y);

fprintf('Cost at initial theta (zeros): %f\n', Cost);
fprintf('Expected cost (approx): 0.693\n');
fprintf('Gradient at initial theta (zeros): \n');
fprintf(' %f \n', Grad);
fprintf('Expected gradients (approx):\n -0.1000\n -12.0092\n -11.2628\n');

Test_Theta = [-24; 0.2; 0.2];
[Cost, Grad] = costfunction(Test_Theta, X, Y);

fprintf('\nCost at test theta: %f\n', Cost);
fprintf('Expected cost (approx): 0.218\n');
fprintf('Gradient at test theta: \n');
fprintf(' %f \n', Grad);
fprintf('Expected gradients (approx):\n 0.043\n 2.566\n 2.647\n');

fprintf('\nProgram paused, press enter to continue.\n');
pause;

Options = optimset('GradObj', 'on', 'MaxIter', 400);
 
[Theta, Cost] = ...
	fminunc(@(t)(costfunction(t, X, Y)), Initial_Theta, Options);

fprintf('Cost at theta found by fminunc: %f\n', Cost);
fprintf('Expected cost (approx): 0.203\n');
fprintf('theta: \n');
fprintf(' %f \n', Theta);
fprintf('Expected theta (approx):\n');
fprintf(' -25.161\n 0.206\n 0.201\n');

plotdecisionboundary(Theta, X, Y);
 
hold on;

xlabel('Exam 1 score');
ylabel('Exam 2 score');

legend('Admitted', 'Not admitted');
hold off;

fprintf('\nProgram paused, press enter to continue.\n');
pause; 

Prob = Sigmoid([1 45 85] * Theta);
fprintf(['For a student with scores 45 and 85, we predict an admission ' ...
         'probability of %f\n'], Prob);
fprintf('Expected value: 0.775 +/- 0.002\n\n');

P = Predict(Theta, X);

fprintf('Train accuracy: %f\n', mean(double(P == Y)) * 100);
fprintf('Expected accuracy (approx): 89.0\n');
fprintf('\n');