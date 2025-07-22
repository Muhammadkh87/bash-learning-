#!/bin/bash

# Ask user for the file name
read -p "Enter the file name to check: " filename

# Check if the file exists
if [ -e "$filename" ]; then
    echo "File '$filename' exists."

    # Check permissions
    [ -r "$filename" ] && echo "It is readable." || echo "It is not readable."
    [ -w "$filename" ] && echo "It is writable." || echo "It is not writable."
    [ -x "$filename" ] && echo "It is executable." || echo "It is not executable."
else
    echo "File '$filename' does not exist."
fi

