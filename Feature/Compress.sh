#!/bin/bash

# Function to compress files
compress() {
    echo "Enter file/directory to compress:"
    read target

    if [ -e "$target" ]; then
        tar -czvf "$target.tar.gz" "$target"
        echo "Compression completed!"
    else
        echo "Error: '$target' not found!"
    fi
}
