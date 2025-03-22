#!/bin/bash

source ./log_action.sh

search_file(){
	echo "Enter the directory path:"  
    read -r directory  

    log_action "User started searching for files in: $directory"

    if [ ! -d "$directory" ]; then  
        echo "Directory does not exist."  
        log_action "Error: Directory does not exist."
        exit 1  
    fi 
	
	echo "Enter filename or extension to search (e.g., *.txt) : "
	read -r pattern 

	find "$directory" -type f -iname "*$pattern*" 
    log_action "Search completed for pattern: $pattern in $directory"
}