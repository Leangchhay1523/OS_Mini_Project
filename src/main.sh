#!/bin/bash

source ./log_action.sh
source ./list_details.sh
source ./backup.sh
source ./count_files.sh
source ./disk_usage.sh
source ./search_file.sh
source ./compress.sh

while true; do
    clear
    echo "==== Welcome to the File & Directory Tool ===="
    echo "1) List files and sub-directories"
    echo "2) Backup"
    echo "3) Count Files"
    echo "4) Disk Usage"
    echo "5) Search Files"
    echo "6) Compress"
    echo "7) Exit"

    echo "Choose an option: "
    read user_choice

    case $user_choice in 
        1) 
            echo "Listing files and sub-directories"
            list_files        
            # Pause
            echo "Press Enter..."
            read
            ;;
        2) 
            echo "Creating backup"
            backup
            # Pause
            echo "Press Enter..."
            read
            ;;
        3) 
            echo "Counting files"
            count_files
            # Pause
            echo "Press Enter..."
            read
            ;;
        4) 
            echo "Displaying disk usage"
            disk_usage
            # Pause
            echo "Press Enter..."
            read
            ;;
        5) 
            echo "Searching files"
            search_file
            # Pause
            echo "Press Enter..."
            read
            ;;
        6) 
            echo "Compressing files or directories"
            compress
            # Pause
            echo "Press Enter..."
            read
            ;;
        7) 
            echo "Exiting...."
            break
            ;;
        *) 
            echo "Invalid option. Try Again."
            ;;
    esac
done
