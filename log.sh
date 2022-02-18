#!/bin/bash

# supply credntials to push on github
echo "***Updating history to local***\n"
history >> history.txt

echo "***Updating history to local***\n"

#***add->commit->push->Username-Password***"

git add .

echo "add commit message"
read message
git commit -m "$message"

echo " INPUT <branch_name>"
read branch_name
git push --set-upstream origin $branch_name

    if [ $? -eq 0 ]
    then 
    echo "***Changes Pushed***"
    else
    echo "***Error!***"
    fi

