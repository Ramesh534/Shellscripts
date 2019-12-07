#!/usr/bin/env bash
#This script display varies information on screen

# Display Hello world
echo 'hello world'

# assign a value to a variable

WORD='script'

#Display that value using the variable

echo "$WORD"

# Display the variable with hardcoded text

echo "This is a shell $WORD"

# Display the content of the variable using alternative syntax

echo "This is a shell ${WORD}"

# append text to variable

echo "${WORD}ing is fun!"

# show how NOT to append text to a variable
# This does not work
echo "$WORDinf is fun!"

# creating a new variable
ENDING='ed'

#combine two variable
echo "This is ${WORD}${ENDING}"

# changing the value stored in the ENDING variable (Reassignment)

ENDING='ing'
echo "${WORD}${ENDING} is fun!"