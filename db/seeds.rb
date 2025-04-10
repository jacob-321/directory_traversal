# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


require 'fileutils'


# Creating directories for 'file_storage' and 'secrets.'

storage_dir = Rails.root.join("file_storage")
FileUtils.mkdir_p(storage_dir)

secrets_dir = Rails.root.join("secrets")
FileUtils.mkdir_p(secrets_dir)



# Files for "file_storage" directory.

File.write(storage_dir.join("list(1).txt"), "This is a new file for listing information since the previous' list information was
too confidential. The previous list has been archived and added to secrets")
File.write(storage_dir.join("reminder.txt"), "REMINDER: Archive passwords and info before making website public for others.")
File.write(storage_dir.join("notes(2).txt"), "Notes for various information. Previous notes have been moved to secrets.")
File.write(storage_dir.join("asdf.txt"), "REMINDER:\n
The secrets directory has been moved out of the file_storage directory for organization purposes.")



# Files for "secrets" directory.

File.write(secrets_dir.join("list.txt"), "This is a new ")
File.write(secrets_dir.join("passwords.txt"),
"Gmail: 1234567890qwerty\n
Youtube: 1234567890qwerty\n
UofM: 1234567890qwertyuiop\n
Twitter: oWOnfgor124$328#5\n
Apple: eongf54#5t5y09885$6
")
File.write(secrets_dir.join("info.txt"), "Social Security Number: 123 45 6789\n
Home Address: 1234 Directory Street")
File.write(secrets_dir.join("notes.txt"), "Be sure to remove 'secrets' directory so nobody can access confidential files.")
File.write(secrets_dir.join("notes(1).txt"), "My UofM username is 'User' and my password is 'qwerty123'")
