function [r, theta] = topolar(x,y)
%% Converts cartesian coordinates to polar.
r = sqrt(x^2 + y^2);

if x >= 0
    theta = atan(y/x);
else
    theta = atan(y/x) + pi;
end

 theta = theta*(180/pi);
 disp('Hypotenus')
 disp(r)
 disp('theta')
 disp(theta)
end
