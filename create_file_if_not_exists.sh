#!/bin/bash

filename="testfile"
# Create a file if it doesn't exist

if [ -e "$filename" ]; then
  # make a backup copy if file exists
  echo "File $filename exists."; cp $filename $filename.bak
else
  echo "File $filename not found."; touch $filename
fi

echo "File test complete." 
