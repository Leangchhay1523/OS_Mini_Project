#!/bin/bash

source ./log_action.sh

disk_usage(){
	echo "Enter directory to check disk usage: "
	read directory_path

    log_action "User started checking disk usage for: $directory_path"

    if [ ! -d "$directory_path" ]; then  
        echo "The directory does not exist."  
        log_action "Error: The directory does not exist."
        exit 1  
    else
		du -sh "$directory_path"
		log_action "Disk usage checked for $directory_path"
	fi
}