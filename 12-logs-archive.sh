#!/bin/bash

source_dir=$1
dest_dir=$2
days=${3:-7}  # Default to 7 days if not provided

usage() {
    echo "Usage: $0 <source_dir> <dest_dir> [days]"
    exit 1
}

if [ -z "$source_dir" ] || [ -z "$dest_dir" ]; then
    echo "Source and destination directories are mandatory to archive"
    usage
fi

if [ ! -d "$source_dir" ]; then
    echo "Source directory does not exist"
    usage
fi

if [ ! -d "$dest_dir" ]; then
    echo "Destination directory does not exist"
    usage
fi

files_to_archive=$(find "$source_dir" -type f -name "*.log" -mtime "+${days}")

if [ -z "$files_to_archive" ]; then
    echo "No log files older than $days days found in $source_dir"
    exit 0
fi

echo "Found the following log files older than $days days:"
echo "$files_to_archive"

timestamp=$(date +%Y-%m-%d-%H-%M-%S)
archive_file="$dest_dir/logs-archive-$timestamp.tar.gz"

if tar -czvf "$archive_file" $files_to_archive; then
    echo "Archival successful: $archive_file"
    echo "Deleting original files..."
    while IFS= read -r file; do
        if rm -- "$file"; then
            echo "  Deleted: $file"
        else
            echo "  WARNING: failed to delete $file"
        fi
    done <<< "$files_to_archive"
    echo "Archiving complete."
else
    echo "ERROR: Archival failed, original files left in place"
    exit 1
fi