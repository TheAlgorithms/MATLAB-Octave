%% 2's complement of binary no;

function twos_comp = twos_complement_of_binary(bin)
c=0;
temp=bin;
twos_comp=0;
while(temp>0 && rem(temp,10)==0)
    twos_comp=twos_comp*10 + rem(temp,10);
    temp=fix(temp/10);
    c=c+1;
end
if(temp>0)
    twos_comp=twos_comp*10 + rem(temp,10);
    temp=fix(temp/10);
    c=c+1;
end
while(temp>0)
    if(rem(temp,10)==1)
        twos_comp=twos_comp*10 + 0;
    else
        twos_comp=twos_comp*10 + 1;
    end
    temp=fix(temp/10);
    c=c+1;
end

temp=twos_comp;
twos_comp=0;
while(c>0)      %reversing the order;
    twos_comp=twos_comp*10 + rem(temp,10);
    temp=fix(temp/10);
    c=c-1;
end
end

