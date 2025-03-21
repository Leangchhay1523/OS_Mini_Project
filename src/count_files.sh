#!/bin/bash

source ./log_action.sh

count_files() {
	echo "Enter directory to count files: "
	read dir_path

    log_action "User started counting files in: $dir_path"

    # Check if the directory exists
    if [ ! -d "$dir_path" ]; then  
        echo "The directory does not exist."  
        log_action "Error: The directory does not exist."
        exit 1    
    else
		count=$(find "$dir_path" -type f | wc -l)
		echo "Total files: $count"
		log_action "Count $count files in $dir_path"
	fi	
}