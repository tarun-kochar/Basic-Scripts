#!/bin/bash

git init

echo "enter repo url"
read url
git remote add origin $url

echo "enter filename"
read file
git add $file

echo "email ?"
read email
git config --global user.email $email

echo "username ?"
read username
git config --global user.name "$username