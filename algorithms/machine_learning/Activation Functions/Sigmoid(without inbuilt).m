%sigmoid function without using inbuilt func
x = -10:0.01:10;
a = input('Enter the slope parameter')
y = 1./(1 + exp(-a.*(x)));
plot(x,y);
xlabel('x')
ylabel('y')
grid on
