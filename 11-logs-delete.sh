#!/bin/bash

source_dir=$1
days=${2:-7}  # Default to 7 days if not provided

usage() {
    echo "Usage: $0 <source_dir> [days]"
    exit 1
}


if [ -z "$source_dir" ]; then
    echo "Source directory is mandatory to delete"
    usage
fi

if [ ! -d "$source_dir" ]; then
    echo "Source directory does not exist"
    usage
fi

files_to_delete=$( find "$source_dir" -type f -name "*.log" -mtime "${days}" )

if [ -z "$files_to_delete" ]; then
    echo "No log files older than $days days found in $source_dir"
else
    echo "Deleting the following log files older than $days days:"
    echo "$files_to_delete"
    rm -f $files_to_delete
    echo "Deletion complete."
fi