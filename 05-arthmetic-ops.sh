#!/bin/bash

a=20
b=20

if [ "$a" -eq "$b" ] 
then
    echo "a = b"
elif [ "$a" -lt "$b" ]; then
    echo "a < b"
else
    echo "a > b"
fi

if [ "$a" -ne "$b" ]; then
    echo "a != b"
fi


if (( a <= b )); then
    echo "a <= b"
fi

if (( a >= b )); then
    echo "$a >= $b"
fi

name="John Doe"

[ "$name" == "John Doe" ]
echo "$?"   # 0 = true, 1 = false