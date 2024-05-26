#!/bin/bash

# URL to check
URL="https://guvi.in"

# Get the HTTP status code
HTTP_CODE=$(curl -o /dev/null -s -w "%{http_code}\n" "$URL")

# Print the HTTP status code
echo "HTTP status code: $HTTP_CODE"

# Check if the request was successful
if [ "$HTTP_CODE" -eq 200 ]; then
    echo "Success: The request was successful."
else
    echo "Failure: The request failed with status code $HTTP_CODE."
fi

