#!/bin/bash

# Function to create a backup
backup() {
    echo "Enter the file/directory to backup:"
    read source
    echo "Enter the destination for the backup:"
    read destination

    if [ -e "$source" ]; then
        cp -r "$source" "$destination"
        echo "Backup completed!"
    else
        echo "Error: '$source' not found!"
    fi
}
