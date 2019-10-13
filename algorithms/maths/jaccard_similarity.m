function p = jaccard_similarity(A,B)
%% jaccard similarity
% This function calculates jaccard similarity index of inputs arrays A and
% B. The formula to find the Index is (number of entries in both sets) / (number of entries in either set) * 100
% The higher the percentage, the more similar the two arrays. 
% For this, each of input arrays is modified by removing its same entries
% (except on them), then number of common entries between two new arrays is
% calculated by comparing them. 

modified_A = unique(A);
modified_B = unique(B);

length_mA = length(modified_A);
length_mB = length(modified_B);
common_number = 0;                    %initialize the number of common entries 

if length_mA <= length_mB
    X = modified_A;
    Y = modified_B;
else
    X = modified_B;
    Y = modified_A;
end

for i = 1:length(X)
    for j = 1:length(Y)
        if X(i) == Y(j)
           common_number = common_number + 1;
        end
    end
end

total_number = length_mA + length_mB - common_number;
p = (common_number/total_number)*100;
end
