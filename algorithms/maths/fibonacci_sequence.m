%% Fibonacci Sequence
function [f] = fibo(n);
% n terms of Fibonacci sequence will be calculate and shown
f = zeros(n,1);  % vector with n arrays
f(1) = 0;
f(2) = 1;
for k = 3:n
    f(k) = f(k-1) + f(k-2);
end
disp([num2str(n), ' terms of Fibonacci sequence:']);
disp(f(1:n));
end
