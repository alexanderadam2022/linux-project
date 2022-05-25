#!/bin/bash
echo "This script will add a new user"
read -p "Please enter the real name of the person: " hostname
read -p "Please enter  a username for the person: " username
sudo useradd $username

if [[ $? -eq 0 ]]
then
echo   "user $username is created successfully "
else
echo "user $username is not created successfully. Try again "
fi
echo "This script will create a password for the user"
read -s -p "Please enter a new password for this user: " password
sudo passwd $username
if [[ $? -eq 0 ]]
then
echo   "password for $username is saved successfully "
else
echo "password for $username is not saved successfully Try again "
fi

echo "A user account for $hostname was created succesfully."
echo "Login username for $hostname is $username and the password is $password"






