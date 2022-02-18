#!/bin/bash

echo "***Establishing connection with Github***"

hosts="www.techcrunch.com"
ping -c1 $hosts &> /dev/null  
    if [ $? -eq 0 ]
    then 
    echo "Connection Established!"
    else
    echo "Error!"
    fi

