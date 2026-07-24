#!/bin/bash

usage() {
    echo "Usage: $0 -u username [-g greeting]"
    exit 1
}

greeting="Hello"
username=""
while getopts ":u:g:" opt; do
    case $opt in
        u) username="$OPTARG" ;;
        g) greeting="$OPTARG" ;;
        \?) echo "Invalid option: -$OPTARG"
            usage ;;
        :) echo "Option -$OPTARG needs an argument"
            usage ;;
    esac
done

# Check mandatory argument
if [ -z "$username" ]; then
    echo "Error: username is mandatory"
    usage
fi

echo "$greeting, $username!"