%% Ternary Search
% This function ternary searches target value in sorted (in increasing order) array. 
%%First, we compare the key with the element at mid1. If found equal, we return mid1.
%If not, then we compare the key with the element at mid2. If found equal, we return mid2.
%If not, then we check whether the key is less than the element at mid1. If yes, then recur to the first part.
%If not, then we check whether the key is greater than the element at mid2. If yes, then recur to the third part.
%If not, then we recur to the second (middle) part.


% function for ternary search
function [numComparisons, returnindex ] = ternarySearch( array, target, firstIndex , lastIndex)
numComparisons = 0;
lastIndex = length(array);
firstIndex = 1;

mid1 = firstIndex + (lastIndex - 1) / 3;    %calculating mid1
mid2 = lastIndex - (lastIndex - 1)/ 3;      %calculating mid1
xmid1 = 0;
xmid2 = 0;

if(array(mid1)== target)
    xmid1 = mid1;
    
elseif(array(mid2) == target)
    xmid2 = mid2;
elseif(target > array(mid1))

    ternarySearch(array,mid2+1,lastIndex, target);
elseif(target < array(mid1))
    ternarySearch(array,firstIndex,mid1 - 1, target);
else
  
    ternarySearch(array,mid1+1,mid2-1,target);
end
end
