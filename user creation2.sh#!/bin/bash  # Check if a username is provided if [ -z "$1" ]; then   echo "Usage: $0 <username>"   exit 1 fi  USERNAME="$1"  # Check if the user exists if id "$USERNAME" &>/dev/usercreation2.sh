#!/bin/bash

# Check if a user is avalible
if [ -z "$1" ]; then
  echo "Usage: $0 <username>"
  exit 1
fi

USERNAME="$1"

# Check if the user exists
if id "$USERNAME" &>/dev/null; then
  echo "User '$USERNAME' already exists."
else
  echo "User '$USERNAME' does not exist. Creating user..."
  sudo useradd "$USERNAME"

  # Check if user creation was successful
  if [ $? -eq 0 ]; then
    echo "User '$USERNAME' has been successfully created."
  else
    echo "Failed to create user '$USERNAME'. You might need sudo privileges."
    exit 1
  fi
fi
