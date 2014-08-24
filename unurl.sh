#!/bin/bash

if [ "$#" -ne 1 ];
then
    echo "Error: no URL supplied."
    echo "Usage: $0 \"url\"."
    exit 1
fi
echo `python -c "import urllib2; print urllib2.unquote('$1')"`
