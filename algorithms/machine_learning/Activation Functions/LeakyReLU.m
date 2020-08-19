%Leaky ReLU function
x = -10:0.01:10;
y = @(x) (x).*((x > 0)) + (0.01 * x).*((x < 0)) ;
fplot(y);
xlabel('x');
ylabel('y');
grid on
