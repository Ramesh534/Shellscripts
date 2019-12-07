#!/usr/bin/env bash

# This script create a new user on the local system
# you will prompted to enter the Username (login), Person Name, and Password
# The Username, Password, and Host for the account will be displayed

# Make sure the script is being executed with super user privileges

if [[ ${UID} -ne 0 ]];
then
    echo "please run with sudo or as root"
    exit 1
fi

# Get the username (Login)

read -p 'enter the user name: ' USER_NAME
# Get the full username (comment)
read -p 'Enter the full username: ' COMMENT

# get the password

read -p 'Enter the password: ' PASSWORD
# create an account

useradd -c ${COMMENT} -m ${USER_NAME}
# check if the useradd command is succeeded or not
# we don't want to tell the user that an account was created when it hasn't been
if [[ ${?} -ne 0 ]];
then
    echo "account could not be created"
    exit 1
fi
# set the password

echo "${PASSWORD}" | passwd --stdin ${USER_NAME}
# check to see password command is succeeded or not

if [[ ${?} -ne 0 ]];
then
    echo "account cloud not be created"
    exit 1
fi
# force to change password on first login

passwd -e ${USER_NAME}

# Display username, Password, the host where user was created

echo "UserName: "
echo "${USER_NAME}"

echo "Password: "
echo "${PASSWORD}"

echo "Hostname: "
echo "${HOSTNAME}"
