#!/bin/bash

# echo "$1"

read -p "First cd to the folder and create '$1' in github, and press enter..." -n1 -s

echo "# $1" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/milkywayg/$1.git
git push -u origin master
 
echo "Done."
















