#!/bin/bash

printf "Decimal: %d\nHex: %x\nOctal: %o\n" 100 100 100

printf "%20s %d\n" Mark 305

printf "%0*d\n" 10 5

name="Alice"
age=30
printf "Name: %s\nAge: %d\n" "$name" "$age"   

printf -v result "%s" "shebang" # -v option allows you to store the formatted output in a variable instead of printing it to the console.
echo $result 