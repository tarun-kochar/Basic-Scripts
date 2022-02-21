#!/bin/bash

# getting memory detials of user
free -h >> history.txt

# uptime
"uptime" >> history.txt
uptime >> history.txt

# supply credntials to push on github
echo "***Updating history to local and pushing changes to github***\n"
history >> history.txt



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

echo "***********************" >> history.txt