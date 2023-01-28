#!/bin/bash

#field splitting
#parameter expansion
#command substitution
#airthmatic expansion
#only work when use quotes " "

# IFS="@"
IFS=$'\n'
echo $*
echo $@
echo "$*"
echo "$@"
