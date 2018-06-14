#!/bin/bash

: <<TESTVARIABLES
${HOSTNAME?}${USER?}${MAIL?} # print error if one of vars not set
TESTVARIABLES

exit $?
