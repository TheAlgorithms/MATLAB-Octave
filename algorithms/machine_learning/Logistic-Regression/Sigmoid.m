function G = Sigmoid(Z)
 
G = zeros(size(Z));

a = size(Z);

for i = 1 : a(1, 1),

    for j = 1 : a(1, 2),

        G(i, j) = 1 / (1 + e.^-Z(i, j));

    end

end

end