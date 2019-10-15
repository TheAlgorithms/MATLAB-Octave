function p = linear_search(A,t)
%% linear Search
% This function linear searches target value (t) in array A. 
% For this, It sequentially checks each entry of the array until a match is found
% or  or the whole list has been searched.
% If it can find the target returns 1 otherwise 0. 

array_length = length(A);
i = 1;
searchTermination = 0;

while searchTermination == 0 && i < array_length+1
    if A(i) == t
        p = 1;
        searchTermination = 1;
        disp('the target is found in the array')
    else
        i = i+1;
    end
end
if i == array_length+1
    p = 0;
    disp('the target is not found in the array')
end
end
