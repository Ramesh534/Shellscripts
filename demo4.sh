#!/usr/bin/env bash

# This script create an account on the local system
# You will be prompted for the account name and password

# Ask for the user name

read -p 'Enter the user Name: ' USER_NAME
# Ask for the real username

read -p 'Enter the full name of the user: ' COMMENT

# Ask for the password

read -p 'Enter the password: ' PASSWORD

# create the user

useradd -c "${COMMENT}" -m "${USER_NAME}"

# set the password for the user

echo "${PASSWORD}" | passwd --stdin "${USER_NAME}"
# Force password change on first login

passwd -e ${USER_NAME}
