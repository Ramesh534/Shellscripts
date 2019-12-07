#!/usr/bin/env bash
# Display the UID and Username of the user executing this script
# Display the user is root user or not

# Display the UID

echo "Your UID is ${UID}"

# Display the username

echo "your username is ${USERNAME}"

# Display if root user or not
if [[ "${UID}" -eq 0 ]];
then
    echo 'you are root';
   else
    echo 'you are not root';
fi
