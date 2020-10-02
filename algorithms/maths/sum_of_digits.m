%% Sum of digits

function sum = sum_of_digits(number)
%if someone input a negative no then it will make it positive
if(number<0)    
    number=(-1)*number;
end %end of "if"
sum=0;
while(number>0)
    sum=sum+rem(number,10);
    number=fix(number/10);
end     % end for "while"
end     %end of 


