#!/bin/sh

for value in {1..5}
do
  echo $value
done

for value in {10..0..2} # count down from 10 to 0 in steps of 2
do
  echo $value
done

for ((num = 1; num <= 5; num++))
do
  echo $num
done

for i in hello 1 * 2 goodbye  # * expands to all files in the current directory
do
  echo "Looping ... i is set to $i"
done
