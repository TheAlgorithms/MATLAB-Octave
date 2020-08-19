%Parametric ReLU function
x = -10:0.01:10;
a = input('Enter the value of the slope')
y = @(x) (x).*((x > 0)) + (a*x).*((x < 0)) ;
fplot(y);
xlabel('x');
ylabel('y');
grid on
