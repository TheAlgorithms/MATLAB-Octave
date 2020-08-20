%Softmax function
syms k
x = -10:1:10;
denom = symsum(exp(k),k,-10,10);
y= @(x) (exp(x)/denom);
fplot(y);
xlabel('x');
ylabel('y');
grid on
