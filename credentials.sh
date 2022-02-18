#!/bin/bash

# supply credntials to push on github

echo "add->commit->push->Username-Password"

git add .

echo "add commit message"
read message
git commit -m "message"

echo " INPUT <branch_name>"
read branch_name
git push --set-upstream origin branch_name

#suppling credentials
tarun-kochar
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

    if [ $? -eq 0 ]
    then 
    echo "***Changes Pushed***"
    else
    echo "***Error!***"
    fi


