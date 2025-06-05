#!/bin/bash
#user creation shell script 
# Input from user to check the user avaliable or not
read -p "Enter username: " username
read -p "Enter password: " password
echo "Password: $password"

# Check if the user already exists
if id -u "$username" &> /dev/null; then
  echo "User '$username' already exists."
  exit 1
fi

# add user 
sudo useradd -m -s /bin/bash "$username"
echo "$username:$password" | sudo chpasswd

#show user is created 
echo "User '$username' created successfully."
