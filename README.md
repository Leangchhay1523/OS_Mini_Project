# Mini Project: File and Directory Management Program
## Project Overview
The **"File and Directory Management Program"** is a bash script that helps users manage files and directories easily. The program is easy to used and work on any system that support bash.

## Key Features
The bash program contains the following features:
1. List all files and sub-directories with detailed information of a given directory or file.
2. Create backups of individual files and entire directories.
   - Ask user input for the location of individual files or directories
   - Ask user input for the location of backup
3. Count the number of files in a directory of a given directory
4. Display disk usage of a given directory.
5. Search for a file by name or extension of a given directory.
6. Compress the given files or directories.
7. Keep a log file of all actions performed by users in a file called script.log in the same directory where you run the program.

## Project Structure
```
Mini_Project/
├── public                # Storing assets
├── src/                  # Storing source codes
│   ├── list_details.sh   # 1. List all files and directories
│   ├── backup.sh         # 2. Backup of individual files and entire directories
│   ├── count_files.sh    # 3. Count number of files in a given directory
│   ├── disk_uasge.sh     # 4. Display disk usage of a given directory
│   ├── search_file.sh    # 5. Search for a given file or directory
│   ├── compress.sh       # 6. Compress a given file or directory
│   ├── user_log.sh       # 7. Store user performance, write script to store user actions in `script.log`
│   ├── script.log        # Log file to store all actions of users
│   └── main.sh           # Main file to run all the scripts
└── README.md             # Project documentation
```

## Getting Started
Ensure that you have git command on your machine
- Git
  - Download it here: [Git](https://git-scm.com/)
  - After downloading, add git to your environment variable [Add Git to Environment Variable](https://www.answerlookup.com/how-add-git-windows-path-environment-variable)
  - Use `git --version` to check if you have git downloaded. If it outputs version of git, then you have it on your machine.
```bash
git version 2.46.2.windows.1
```
### Setup your Workspace
Write the below command in the terminal
- Clone the GitHub repository
```bash
git clone https://github.com/Leangchhay1523/OS_Mini_Project.git
```
- Navigate to the project
```bash
cd OS_Mini_Project
```
- Create your local branch
```bash
git checkout -b branch_name
```
> Branch Name Convention: your_name/your_task
> Example: john/navigation
- Create a new scrpt in ``src`` folder
- Work on your task
  
### Push your work to Main Branch
- Ensure you are on your working branch
```bash
git status
```
- Add your work
```bash
git add .
```
- Commit your message
```bash
git commit -m "Your Message"
```
- Push to main branch
```bash
git push origin your_branch_name
```
- Go to GitHub Repo: https://github.com/Leangchhay1523/OS_Mini_Project.git
- You will see `Compare & Pull Request` option
- Click on it, and fill it your Pull Request Title and Description. Detail about what you have done
- Then `Create Pull Request`
- Ask someone to review and approve your PR