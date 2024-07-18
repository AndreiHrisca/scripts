#!/bin/bash

# Custom error handling function
handle_error() {
  echo "An error occurred. Exiting..."
  exit 1
}

# Set the error handling function to be called on any error
trap 'handle_error' ERR

# Check if the project path was provided as an argument
if [ $# -eq 0 ]; then
  echo "Please provide the project path as an argument."
  exit 1
fi

# Change to the project directory
cd "$1" || exit 1

# Add all modified files to the staging area
git add .

# Prompt for a commit message
read -p "Please enter a commit message: " commit_message

# Commit with the provided message
git commit -m "$commit_message"
git push origin master

# Print a success message
echo "Commit successful."

