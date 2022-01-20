#!/bin/bash

# current Git branch
branch=$(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')

# current project name
projectName=$(git config --local remote.origin.url|sed -n 's#.*/\([^.]*\)\.git#\1#p')

echo "Project: $projectName"
echo "Branch: $branch"

git add .

echo "Enter Commit Message:"
echo ""
read msg

git commit -m "$msg"

echo "$msg"

git push

echo "pushed"

fi
