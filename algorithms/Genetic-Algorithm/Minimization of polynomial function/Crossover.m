function [y1, y2] = Crossover(x1,x2)
    m=randi([1,3]);
    switch m
        case 1
            [y1, y2] = SinglePointCrossover(x1,x2);
        case 2
            [y1, y2] = DoublePointCrossover(x1,x2);
        otherwise
            [y1, y2] = UniformCrossover(x1,x2);
    end
end