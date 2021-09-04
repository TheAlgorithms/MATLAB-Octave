%% Ternary Search
% This function ternary searches target value in sorted (in increasing order) array. 
%%First, we compare the key with the element at mid1. If found equal, we return mid1.
%If not, then we compare the key with the element at mid2. If found equal, we return mid2.
%If not, then we check whether the key is less than the element at mid1. If yes, then recur to the first part.
%If not, then we check whether the key is greater than the element at mid2. If yes, then recur to the third part.
%If not, then we recur to the second (middle) part.


% function for ternary search
function returnindex = ternarySearch( array, target, firstIndex , lastIndex)
if(lastIndex >= firstIndex)
    mid1 = firstIndex + fix((lastIndex - firstIndex) / 3);    %calculating mid1
    mid2 = lastIndex - fix((lastIndex - firstIndex)/ 3);      %calculating mid2

    if(array(mid1)== target)
        returnindex = mid1;

    elseif(array(mid2) == target)
        returnindex = mid2;
    elseif(target < array(mid1))

        returnindex = ternarySearch(array,target,firstIndex, mid1-1);
    elseif(target > array(mid2))
        returnindex = ternarySearch(array,target,mid2 + 1, lastIndex);
    else

        returnindex = ternarySearch(array,target,mid1+1,mid2-1);
    end
else
    returnindex = -1;
end
end
