function [y1 , y2] = UniformCrossover(x1,x2)
    alpha  =randi([0,1], size(x1));
    
    y1 = alpha.*x1 + (1-alpha).*x2;
    y2 = alpha.*x2 + (1-alpha).*x1;
    
end