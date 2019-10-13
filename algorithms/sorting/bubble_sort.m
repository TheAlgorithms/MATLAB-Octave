%% Bubble sort algorithm:
function list = bubble_sort(list)
% function to sort vector 'list' with using the 'Bubble sort' algorithm
% INPUT: 'list' array
% OUTPUT: sorted array
changed = true;
count = numel(list);
while(changed)
    changed = false;
    count = count - 1;
    for index = (1:count)
        if(list(index) > list(index+1))
            list([index index+1]) = list([index+1 index]); %swap
            changed = true;
        end
        
    end
end
end

