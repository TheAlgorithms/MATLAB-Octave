% This function demonstrates gradient descent in case of linear regression with one variable.

% Theta is a column vector with two elements which this function returns after modifying it.

% This function receives the feature vector x, vector of actual target variables Y, Theta

% containing initial values of theta_0 and theta_1, learning rate Alpha, number of iterations

% noi.

function Theta = gradientdescent(x, Y, Theta, Alpha, noi)

    n = length(Y); % Number of training examples. 

    for i = 1:noi 

        theta_1 = Theta(1) - Alpha * (1 / n) * sum(((x * Theta) - Y) .* x(:, 1)); % Temporary variable to simultaneously update theta_0 but i have used 1 to

                                                                                  % avoid confusion since indexing in MATLAB/Octave starts from 1.

        theta_2 = Theta(2) - Alpha * (1 / n) * sum(((x * Theta) - Y) .* x(:, 2)); % Temporary variable to simultaneously update theta_1.

        Theta(1) = theta_1; % Assigning first temporary value to update first actual value simultaneously.  
    
        Theta(2) = theta_2; % Assigning second temporary value to update second actual value simultaneously. 

    end

end