# Project_Operating_System

# File and Directory Management Program

## Overview  
This Bash script allows users to manage files and directories efficiently.
There are some of its functions which allow users to manage it on directory/file and a script which track user action.  

## Features  
- List files and directories  
    When input directory, it will display all files and directory in the input file.
- Create backups  
    This feature will create the copy of the input content into another file. 
- Count files in a directory 
    It will count the number of directory/file in the folder.
- Display disk usage  
    This funtion will display the number of memory of the directory.
- Search for files  
    You can search any file and it will display the path of the file.
- Compress files  
    It will compress the directory.
- Log user actions  
    Script.log store all the actions of user commands.

## Installation  
1. Clone the repository:  
   ```bash
   git clone <repo-url>

2. In terminal:
    ```bash
    nano file_manager.sh

3. You will need to create some files and directory for testing.
    ```bash
    touch test.txt
    echo "Test file" > test.txt
    mkdir backup
    touch test1.txt && touch test2.txt
