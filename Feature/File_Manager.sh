#!/bin/bash

# Source all the function files
source ./List_Files.sh
source ./Backup_File.sh
source ./Count_Files.sh
source ./Disk_Usage.sh
source ./Search_File.sh
source ./Compress.sh
source ./Log_action.sh

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
