%linear function without using inbuilt func
x = -10:0.01:10;
m = input('Enter the slope');
y = zeros(size(x));
y = m*x;
plot(x,y);
xlabel('x');
ylabel('y');
grid on
