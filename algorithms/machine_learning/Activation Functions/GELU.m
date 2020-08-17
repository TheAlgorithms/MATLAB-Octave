%GELU function
x = -10:0.01:10;
y = (1/2*x).*(1+tanh(sqrt(2/pi)*(x+0.044715*power(x,3))));
plot(x,y);
xlabel('x');
ylabel('y');
grid on
