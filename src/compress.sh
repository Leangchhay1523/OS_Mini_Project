#!/bin/bash

source ./log_action.sh

compress() {
    echo "Enter file or directory to compress: "
	read target

    log_action "User started compression for: $target"
    
    echo "Enter output filename (no extension): "
	read output

    if [ ! -e "$target" ]; then  
        echo "The file/directory does not exist." 
        log_action "Error: The file/directory does not exist." 
        exit 1  
    else
        zip -r "${output}.zip" "$target"
		echo "Compressed to $output.zip completed."
		log_action "Compressed $target to $output.zip completed."
    fi
}