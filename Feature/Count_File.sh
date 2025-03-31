#!/bin/bash

# Function to count files
count_files() {
    if [ -d "$1" ]; then
        echo "Number of files in $1:"
        find "$1" -type f | wc -l
    else
        echo "Error: Directory '$1' not found!"
    fi
}
