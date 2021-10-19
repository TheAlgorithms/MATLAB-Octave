function HCF = highest_common_factor (x, y)
%This function searches for highest common factor
%It first checks if any of the numbers equal to zero, if so the non zero number is the HCF
%If the numbers are different, you minus the bigger number by the smaller one and this is done by recursion. 
    if y==0
        HCF = x;
    else 
        HCF = highest_common_factor(y ,rem(x, y));
    end
end

