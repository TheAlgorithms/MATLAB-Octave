%ReLU6 function
x = -10:0.01:10;
y = x;
y(x<0) = 0;
y(x>=6) = 6;
plot(x,y);
xlabel('x');
ylabel('y');
grid on
