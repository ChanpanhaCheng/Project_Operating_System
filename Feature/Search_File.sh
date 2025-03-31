#!/bin/bash

# Function to search for a file
search_file() {
    echo "Enter file name or extension to search:"
    read pattern
    result=$(find . -name "*$pattern*")

    if [ -n "$result" ]; then
        echo "$result"
    else
        echo "Error: No files found matching '$pattern'!"
    fi
}
