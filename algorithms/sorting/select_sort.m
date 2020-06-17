%% Octave implementation for selection sort  
function arrayToSort = select_sort(arrayToSort)
    for i=1:length(arrayToSort)
%%smallest element in the unsorted list
        minimum_index=i;
            for j=i+1:length(arrayToSort)
                if (arrayToSort(j) < arrayToSort(minimun_index))
                    minimun_index=j;
                endif
            endfor    
%%replace the element with the minimun value of the unsorted array
        arrayToSort([i minimun_index]) = arrayToSort([minimun_index i]);
    endfor
endfunction