#! /bin/bash
echo "Hello Dear wanna see files and sub-directories from directory or file"

echo "Input your choice: "
 # shellcheck disable=SC2162
 read choice



if [ -e "$choice" ];  then
    # shellcheck disable=SC1009
    # if [ -f "$choice" ]; then
    # ls -lth "$choice"
    
    # elif [ -d "$choice" ]; then
    ls -lth "$choice"
   
    # else 
    # echo "$choice is kinda other file type."
    # fi 
else 
    echo "$choice can not be found."
    fi