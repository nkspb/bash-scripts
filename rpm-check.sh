#!/bin/bash
# rpm-check.sh

#  Query an rpm file for description, listing
#+ and whether it can be installed
#  Save output to file

# Define exit codes
SUCCESS=0
E_NOARGS=65

# Check if argument supplied
if [ -z "$1" ]
then
  echo "Usage `basename $0` rmp-file"
  exit $E_NOARGS
fi

{
  echo "Archive description"
  rpm -qpi $1
  echo
  echo "Archive listing"
  rpm -qpl $1
  echo
  rpm -i --test $1 # Query if file can be installed
  # check exit status of test
  if [ "$?" -eq $SUCCESS ]
  then
    echo "$1 can be installed"
  else
    echo "$1 cannot be installed"
  fi
  echo
} > "$1.test" # Output results to a file

echo "Results of rpm test are in file $1.test"
exit 0
