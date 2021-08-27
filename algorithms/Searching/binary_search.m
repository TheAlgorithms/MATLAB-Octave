function p = binary_search(A,t)
%% Binary Search
% This function binary searches target value (t) in sorted (in increasing order) array A. 
% Binary search compares the target value to the middle element of the
% array. If they are not equal, it determines the half part of array in which the taget might be existed,
% then changes the search range from left or right to half array range and
% repeat searching for this new range. 
% If target can be found in array, this function returns its index.
% If target can not be found in array, it displays "target is not found in
% array"

array_length = length(A);
counter = 0;                                      % number of iteration in searching algorithm
L_SearchRange = 1;                                %initial search range
R_SearchRange = array_length;

while counter <= floor(log2(array_length))+1       %maximum iteration needed to find the target
mid = (L_SearchRange + R_SearchRange)/2;

if t == A(floor(mid))
    p = floor(mid);
    break
else if t > A(floor(mid))
        L_SearchRange = floor(mid)+1;
    else 
        R_SearchRange = floor(mid)-1;
        if R_SearchRange == 0            %to stop searching when t is less than the minimum value of array
           counter = counter +1;         
        end
    end 
 counter = counter+1; 
end
end
if counter > floor(log2(array_length))+1
    disp('target is not found in aray')
end
end
