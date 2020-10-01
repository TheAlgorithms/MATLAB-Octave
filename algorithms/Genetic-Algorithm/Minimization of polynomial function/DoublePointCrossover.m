function [y1,y2] = DoublePointCrossover(x1,x2)
    nVar = numel(x1);
    
    q = randperm(nVar);
    j1 = min(q(1),q(2));
    j2 = max(q(1),q(2));
    
    y1 = [x1(1:j1) x2(j1+1:j2) x1(j2+1:end)];
    y2 = [x2(1:j1) x1(j1+1:j2) x2(j2+1:end)];
    
end