#!/bin/bash

# Function to display disk usage
disk_usage() {
    if [ -d "$1" ]; then
        echo "Disk usage of $1:"
        du -sh "$1"
    else
        echo "Error: Directory '$1' not found!"
    fi
}
