#!/bin/bash

#colors for styles
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
GREEN='\033[0;32m'
NC='\033[0m' #No Color

# current Git branch
branch=$(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')

# current project name
projectName=$(git config --local remote.origin.url|sed -n 's#.*/\([^.]*\)\.git#\1#p')

echo "What dou you want to do?"
echo "for pushin a project, press 1"
echo "for pulling a project, press 2"
echo "for changing to another branch, press 3"

read number

if [[ $number -eq 1 ]]
then
  echo "Project: ${BLUE}$projectName${NC}"
echo "Branch: ${PURPLE}$branch${NC}"

git add .

echo "Enter Commit Message:"
echo ""
read msg

git commit -m "$msg"

echo "$msg"

git push

echo "${GREEN}pushed"

elif [[ $number -eq 2 ]]
then
  echo "The variable is equal to 2."
elif [[ $number -eq 3 ]]
then
  echo "The variable is 3."
else 
    echo "select a valid number"
fi