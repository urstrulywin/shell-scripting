#!/usr/bin/bash

count=1
while [ $count -le 5 ]; do
    echo "Count is $count"
    ((count++))
done

while IFS= read -r line; do
    echo "$line"
done < 08-while-loop.sh

while true; do # infinite loop, : can be used instead of true 
    echo "Running..." # break the loop with Ctrl+C 
    sleep 1
done   