#!/bin/bash


#The whole idea of this script is to keep the track of employee's day to day work.
#when user runs the script, it will send the login time(uptime)
# to the github under history branch with all the terminal history.
# This may be used to track the efficiency of that employee.


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