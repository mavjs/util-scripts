#!/bin/sh
if [ "$#" -ne 2 ]; then
    echo "Error: url not supplied."
    echo "Usage: $0  \"redirect times\" \"url\""
    exit 1
fi
`wget --max-redirect=$1 $2 | grep -v "Location"`
