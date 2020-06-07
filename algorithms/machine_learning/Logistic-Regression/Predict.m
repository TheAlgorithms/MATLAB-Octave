function P = Predict(Theta, X)

n = size(X, 1); 

P = zeros(n, 1);

for i = 1 : n,

    if Sigmoid(X * Theta)(i) >= 0.5

        P(i) = 1; 

    end

end

end