function HCF = highest_common_factor (x, y)
%This function searches for highest common factor
% It checks if the smaller number is equal to zero or not, 
% if not the function uses recursion with arguments being the smaller number and the remainder of larger divided by the smaller number 
    if y==0
        HCF = x;
    else 
        HCF = highest_common_factor(y ,rem(x, y));
    end
end

