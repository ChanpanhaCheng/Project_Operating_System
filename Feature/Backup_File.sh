#! /bin/bash
echo "Please input name of the file or directory you want to backup"
read check
if [ -e "$check" ]; then
echo "Pick directroy to store the backup "
read location

if [ ! -d "$location" ]; then
mkdir -p "$location"
fi

cp -r "$check" "$location/"
echo "Back up in "$check" is complete  and store in "$location/$check .""
else
echo "file or directory can not be found"
fi