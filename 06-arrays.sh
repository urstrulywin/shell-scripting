#! /usr/bin/bash

declare -a arr
arr[0]="x"
arr[1]="y"
echo "All elements: ${arr[@]}"

arr=(a b c)
echo "Number of elements: ${#arr[@]}"
echo "All elements: ${arr[@]}" 
echo "Second element: ${arr[1]}"

arr+=("d")
echo "Elements after adding 'd': ${arr[@]}"

unset arr[1]
echo "Elements after removing index 1: ${arr[@]}" 
echo "Indices of remaining elements: ${!arr[@]}"     # 0 2   (index 1 is gone, so keys aren't contiguous)
echo "Accessing deleted index 1: ${arr[1]}"   # empty, since index 1 was removed

arr+=("e" "f")
echo "Elements after adding 'e' and 'f': ${arr[@]}"
echo "Indices of remaining elements: ${!arr[@]}"     # 0 2   (index 1 is gone, so keys aren't contiguous)

arr=("hello" "hi")
echo "All elements: ${arr[@]}"
echo "Length of first element: ${#arr[0]}"

arr=(a b c d e f)
echo "All elements: ${arr[@]}"
echo "Elements from index 1 to 3: ${arr[@]:1:3}"  # b c d   (start at index 1, take 3 elements)
echo "Elements from index 2 to the end: ${arr[@]:2}"    # c d e f (start at index 2, take the rest)