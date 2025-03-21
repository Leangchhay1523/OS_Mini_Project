#!/bin/bash

source ./log_action.sh

backup() {
	echo "Enter file/directory to backup: "
	read source_path

    log_action "User started backup for: $source_path"

    if [ ! -e "$source_path" ]; then  
        echo "The file/directory does not exist."
        log_action "The file/directory does not exist."
        exit 1
    fi 

	echo "Enter backup destination: "
	read backup_path
    
    if [ ! -d "$backup_path" ]; then
        mkdir -p "$backup_path"  # Create the backup directory if it doesn’t exist
        log_action "Created backup directory: $backup_path"
    fi

    cp -r "$source_path" "$backup_path/"
    echo "Backup completed to $backup_path"
    log_action "Backup completed for $source_path to $backup_path"
}