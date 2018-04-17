#!/bin/bash

# find executable files ending in calc
# in /bin and /usr/bin directories

for file in /{,usr/}bin/*calc
do
  if [ -x "$file" ] # -x file exists and exec perm granted
  then
    echo $file
  fi
done
