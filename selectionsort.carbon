# Selection Sort in Carbon

:selectionSort {arr |
    len arr 1 - -> n    # Get the length of the array and store it in n.
    0 -> i             # Initialize i to 0.
    
    (i n) (           # Outer loop: Iterate from i = 0 to n - 1.
        1 + i -> i     # Increment i.
        i n) (
            0 -> minIdx
            i n) (           # Inner loop: Find the index of the minimum element in the unsorted part.
                arr i -> currentMin
                (j i) (       # Nested loop: Iterate from j = i + 1 to n.
                    (j minIdx) (i arr j -> arr minIdx) (i arr j -> arr i)) (
                    arr j -> element
                    element currentMin > -> cmp
                    cmp (currentMin j arr minIdx) (element i arr j -> i arr minIdx) -> minIdx)
            # Swap the minimum element with the first element of the unsorted part.
            i arr minIdx -> i arr i -> arr minIdx -> arr i -> arr
        )
}

