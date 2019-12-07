#!/usr/bin/env bash
# This script generate the random password

# Random number as a password
PASSWORD="${RANDOM}"
echo "${PASSWORD}"

# three Random numbers together

PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "${PASSWORD}"

# Use the current data/time as the basis for the password

PASSWORD=$(date +%s)
echo "${PASSWORD}"

# use the nano seconds to act as a randomization

PASSWORD=$(date +%s%N)

echo "$PASSWORD"

# a better password

PASSWORD=$(date +%s%N${RANDOM} | sha256sum | head -c48 )
echo "$PASSWORD"

# append special character to the password

SPECIAL_CHARACTER=$(echo "!@#$%^&*()_+" | fold -w1 | shuf | head -c1 )
echo "${SPECIAL_CHARACTER}${PASSWORD}"