#!/bin/bash

# Function to list files and directories
list_files() {
    if [ -d "$1" ]; then
        echo "Listing files and directories in: $1"
        ls -l "$1"
    else
        echo "Error: Directory '$1' not found!"
    fi
}
