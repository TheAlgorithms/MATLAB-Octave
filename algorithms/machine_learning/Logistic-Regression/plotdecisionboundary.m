function plotdecisionboundary(Theta, X, Y)

plotdata(X(:,2:3), Y);

hold on;

if size(X, 2) <= 3
    
    plot_X = [min(X(:,2))-2,  max(X(:,2))+2];

    plot_Y = (-1./Theta(3)).*(Theta(2).*plot_X + Theta(1));

    plot(plot_X, plot_Y);
    
    legend('Admitted', 'Not admitted', 'Decision Boundary');
    
    axis([30, 100, 30, 100]);

else
    
    U = linspace(-1, 1.5, 50);
    
    V = linspace(-1, 1.5, 50);

    Z = zeros(length(U), length(V));
    
    for i = 1:length(U)
        
        for j = 1:length(V)
            
            Z(i,j) = mapFeature(U(i), V(j))*Theta;
        
        end
    
    end
    
    Z = Z'; 

end

hold off;

end