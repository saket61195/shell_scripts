#!/bin/bash

read -p "please Enter the username: " USERNAME

id ${USERNAME} &> /dev/null
if [[ $? -eq "0" ]]
then
	echo "The given ${USERNAME} exist int the system"
else
	echo "The user ${USERNAME} doesn't exist int the system"
fi

