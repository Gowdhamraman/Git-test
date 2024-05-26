#!/bin/bash

# Check if filename is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 filename"
    exit 1
fi

filename="$1"

# Check if the file exists
if [ ! -f "$filename" ]; then
    echo "File '$filename' not found."
    exit 1
fi
#copy the file

cp -r "$filename" "${filename}.bak"

# Use sed to process the file from the 5th line onwards
sed -i '5,${
    /welcome/{
        s/give/learning/g
    }
}' "$filename"

echo "Replacement completed successfully."
