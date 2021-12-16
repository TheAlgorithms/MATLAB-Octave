% This is a pure Matlab implementation of the bogosort algorithm,
% also known as permutation sort, stupid sort, slowsort, shotgun sort, or monkey sort.
% Bogosort generates random permutations until it guesses the correct one.
% More info on: https://en.wikipedia.org/wiki/Bogosort
%
% Example-Run: bogo_sort([2,5,-10,22,48,2])


function collection = bogo_sort(collection)
    while is_sorted(collection) == 0
        collection = collection(randperm(length(collection)));
    end
end
function is_sorted_bool = is_sorted(collection)
    is_sorted_bool = 1;
    if length(collection) < 2
         return 
    end
    for i = 1: (length(collection)-1)
        if collection(i) > collection(i + 1)
            is_sorted_bool = 0;
            return 
        end
    end
end