function [y1, y2] = SinglePointCrossover(x1,x2)
    nVar = numel(x1);
    j = randi([1, nVar-1]);
    y1 = [x1(1:j) x2(j+1:end)];
    y2 = [x2(1:j) x1(j+1:end)];
end