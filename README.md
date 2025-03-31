# Project: Operating System  
## File and Directory Management Program  

### 📌 Overview  
This Bash script allows users to efficiently manage files and directories.  
It includes multiple functions for handling files and directories, along with a logging system to track user actions.  

---

## ⚙️ Features  
✅ **List Files and Directories**  
   - Displays all files and subdirectories in a specified directory.  

✅ **Create Backups**  
   - Copies the specified file or directory to another location.  

✅ **Count Files in a Directory**  
   - Counts the total number of files in a specified directory.  

✅ **Display Disk Usage**  
   - Shows the total memory usage of a directory.  

✅ **Search for Files**  
   - Searches for files by name or extension and displays their paths.  

✅ **Compress Files**  
   - Compresses a specified file or directory into a `.tar.gz` archive.  

✅ **Log User Actions**  
   - Stores all user actions in `script.log` for tracking and debugging.  

---

## 🛠 Installation  
 
1. Run the following command in your terminal:  
    ```bash
    git clone <repo-url>

2. In terminal
- To write bash file:
    ```bash
    nano file_manager.sh

- To excecute:
    ```bash
    chmod +x file_manager.sh

- To run: 
    ```bash
    ./file_manager.sh

- You will need to create some files and directory for testing.
    ```bash
    touch test.txt
    echo "Test file" > test.txt
    mkdir backup
    touch test1.txt && touch test2.txt



