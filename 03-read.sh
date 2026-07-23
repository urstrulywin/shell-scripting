#!/bin/bash

read -p "Enter your name: " name

read -s -p "Enter your password: " password 

echo -e "\nHello, $name! Your password is: $password"

read -p "Enter the length of the rectangle: " length

read -p "Enter the width of the rectangle: " width

area=$((length * width))

echo "The area of the rectangle is: $area"
