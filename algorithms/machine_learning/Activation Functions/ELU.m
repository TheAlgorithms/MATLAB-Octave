%ELU function
x = -10:0.01:10;
a = input('Enter the parameter');
y = @(x) (a*(exp(x)-1)).*((x < 0)) + (x).*((x > 0)) ;
fplot(y);
xlabel('x');
ylabel('y');
grid on
