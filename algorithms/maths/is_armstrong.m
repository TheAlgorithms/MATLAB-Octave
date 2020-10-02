%% Armstrong no

function n= is_armstrong(num)
if(num<0)
    n=0; %as negative no can't be armstrong
end
sum=0;
temp=num;
while(temp>0)
    sum=sum*10 + rem(temp,10);
    temp=fix(temp/10);
end
if(sum==num)
    n=1;    % the no is armstrong
else
    n=0;    % the no is not armstrong
end
end
