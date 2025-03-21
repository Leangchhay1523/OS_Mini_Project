#!/bin/bash

source ./log_action.sh

list_files(){
	echo "Enter the directory path:" 
    read path  

    log_action "User started listing details for: $path"

	if [[ -d "$path" ]]; then
		ls -l "$path"
		log_action "Listed details of directory: $path"
	else
		  echo "The directory path is invalid" 
            log_action "Error: Invalid directory path: $path"
	fi
}