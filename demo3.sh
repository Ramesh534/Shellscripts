#!/usr/bin/env bash
# Display the UID and UserName of the user executing this script
# Display if the user is root user or not

# Display the UID

echo "Your UID is ${UID}"

# only display if the UID does not match to 0
UID_TO_TEST_FOR='0'
if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]];
then
    echo "Your UID does not match to ${UID_TO_TEST_FOR}"
    exit 1
fi

# Display the username
USER_NAME=$(id -un)
# Test if the command is succeeded

if [[ "${?}" -ne 0 ]];
then
    echo "command execution failed"
    exit 1
fi
echo "your username is ${USER_NAME}"
# you can use string test conditional

USER_NAME_TO_TEST_FOR='root'

if [[ "${USER_NAME}" == "${USER_NAME_TO_TEST_FOR}" ]];
then
    echo "your user name matches to ${USER_NAME_TO_TEST_FOR}"
    exit 1
fi
# Test for != (Not equal) for the string


if [[ "${USER_NAME}" != "${USER_NAME_TO_TEST_FOR}" ]];
then
    echo "your user does not match to ${USER_NAME_TO_TEST_FOR}"
    exit 1
fi

exit 0
