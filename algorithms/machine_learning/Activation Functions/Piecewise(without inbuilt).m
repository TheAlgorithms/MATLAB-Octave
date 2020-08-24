%piecewise function without using inbuilt func
y = @(x) (1).*((x >= 1/2)) + (x).*((-1/2<x) & (x < 1/2)) + (0).*((x<=-1/2));
x = -10:0.01:10;
fplot(y);
xlabel('x');
ylabel('y');
grid on
