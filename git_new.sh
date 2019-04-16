#!/bin/bash

echo "Initialising a new repository."
git init
echo "Staging files to commit"
git add .
echo "All files added"
git status 
read -p "Enter a commit message: " message;
git commit -m "$message"
echo "Create a new repository on GitHub"
read -p "Enter the name of the newly created git repository: " name;
git remote add origin https://github.com/Erikishiru/$name.git
echo "Added remote origin"
git push origin master 

