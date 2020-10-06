%% Shree Dharacharya Formula
% aX^2 + bX + c = 0
function [x1,x2] = shreeDharacharyaFormula(a,b,c)
    % calculates the roots of a quadratic equation.
    d = b^2 - 4*a*c;

    if d < 0
        disp('Imaginary roots');

    else
        x1 = (-b + d^(1/2))/(2*a);
    
        x2 = (-b - d^(1/2))/(2*a);
    end

end
