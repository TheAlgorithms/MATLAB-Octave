function y = Mutate(x,mu,sigma)
    flag = rand(size(x)) < mu;
    r = rand(size(x));
    y=x;
    y(flag) = x(flag) + sigma*r(flag);
end