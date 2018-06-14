#!/bin/bash

# Show current time and date, logged in users and system uptime
current_date=$(date)
logged_in_users=$(who)
system_uptime=$(uptime)

cat << _EOF_ > log.txt
Current date is $current_date
Logged in users: $logged_in_users
System uptime: $system_uptime
_EOF_

exit 0

