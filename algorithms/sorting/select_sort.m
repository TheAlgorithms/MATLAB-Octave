%% Octave implementation for selection sort  
function arrayToSort = select_sort(arrayToSort)
    for i=1:length(arrayToSort)
%%smallest element in the unsorted list
        minimum_index=i;
            for j=i+1:length(arrayToSort)
                if (arrayToSort(j) < arrayToSort(minimum_index))
                    minimum_index=j;
                endif
            endfor    
%%replace the element with the minimum value of the unsorted array
        arrayToSort([i minimum_index]) = arrayToSort([minimum_index i]);
    endfor
endfunction