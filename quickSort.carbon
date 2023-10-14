package quicksort;

on partition(data, low, high)
    set pivot to data[high]
    set i to (low - 1)
    repeat with j from low to (high - 1)
        if data[j] <= pivot
            set i to (i + 1)
            swap data[i] and data[j]
        end if
    end repeat
    swap data[i + 1] and data[high]
    return (i + 1)
end partition

on quickSort(data, low, high)
    if low < high
        set pivotIndex to partition(data, low, high)
        call quickSort(data, low, (pivotIndex - 1))
        call quickSort(data, (pivotIndex + 1), high)
    end if
end quickSort

on main
    set data to {5, 2, 9, 3, 4, 6}
    set n to count of data
    call quickSort(data, 1, n)
    
    put "Sorted Array: "
    repeat with i from 1 to n
        put data[i]
    end repeat
end main


call main
