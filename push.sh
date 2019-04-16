#!/bin/bash

echo "Staging files to commit"
git add .
echo "All files added"
git status 
read -p "Enter a commit message: " message;
git commit -m "$message"
echo "Commited!"
git push origin master
echo "Pushed!"
