#!/usr/bin/env bash
#
# This script generate the random password for the each user specified on command line
# Display what the user typed on the command line

echo " You executed this command:  ${0}"

# Display the path and Filename of the script

echo "Path of the script $(dirname ${0}) and file name of the script $(basename ${0}) "
# Tell them how many arguments they are passed in
#(Inside of the script they are parameters, Outside they are arguments

NUMBER_OF_PARAMETERS="${#}"
echo "you supplied ${NUMBER_OF_PARAMETERS} as arguments on command line "

# Make sure that at lear they supply one argument.


if [[ "${@}" -lt 1 ]];
then
    echo "Usage: ${0} USER_NAME [USER_NAME]..."
    exit 1
fi
# Generate and display a password for each parameters.

for USER_NAME in "${@}"
do
    PASSWORD=$(date +%s%n | sha256sum | head -c48)
    echo "$USER_NAME: $PASSWORD"
done