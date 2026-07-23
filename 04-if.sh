#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <path>"
    exit 1
fi
if [ -d "$1" ]; then
    echo "The path '$1' is a directory."
elif [ -f "$1" ]; then
    echo "The path '$1' is a file."
else
    echo "The path '$1' does not exist."
fi