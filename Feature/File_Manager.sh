#!/bin/bash

log_file="script.log"

# Function to list files and directories
list_files() {
    if [ -d "$1" ]; then
        echo "Listing files and directories in: $1"
        ls -l "$1"
    else
        echo "Error: Directory '$1' not found!"
    fi
}

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

# Function to count files
count_files() {
    if [ -d "$1" ]; then
        echo "Number of files in $1:"
        find "$1" -type f | wc -l
    else
        echo "Error: Directory '$1' not found!"
    fi
}

# Function to display disk usage
disk_usage() {
    if [ -d "$1" ]; then
        echo "Disk usage of $1:"
        du -sh "$1"
    else
        echo "Error: Directory '$1' not found!"
    fi
}

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

# Function to log actions
log_action() {
    echo "$(date): $1" >> "$log_file"
}

# Main menu
while true; do
    echo "1. List Files"
    echo "2. Backup"
    echo "3. Count Files"
    echo "4. Disk Usage"
    echo "5. Search File"
    echo "6. Compress"
    echo "7. Exit"
    read -p "Choose an option: " choice

    case $choice in
        1) read -p "Enter directory: " dir; list_files "$dir"; log_action "Listed files in $dir" ;;
        2) backup; log_action "Created backup" ;;
        3) read -p "Enter directory: " dir; count_files "$dir"; log_action "Counted files in $dir" ;;
        4) read -p "Enter directory: " dir; disk_usage "$dir"; log_action "Checked disk usage of $dir" ;;
        5) search_file; log_action "Searched for a file" ;;
        6) compress; log_action "Compressed a file/directory" ;;
        7) echo "Exiting..."; break ;;
        *) echo "Invalid option, try again!" ;;
    esac
done
