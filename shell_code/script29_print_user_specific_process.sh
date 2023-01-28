#!/bin/bash

function user_proc()
{
UN=${1}
id ${UN} &> /dev/null
if [ "$?" -eq "0" ]
then
	ps -u ${UN} -o user,pid,ppid,cmd,%mem,%cpu --sort -%cpu

else
	echo "the user ${UN} doest not exist in the system"
fi
}
USER_NAME=$1
user_proc ${USER_NAME}
