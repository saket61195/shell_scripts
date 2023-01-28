#!/bin/bash

read -p "please Enter the username: " USERNAME

id ${USERNAME} &> /dev/null
if [[ $? -eq "0" ]]
then
	echo "The given ${USERNAME} exist in the system"
else
	echo "The user ${USERNAME} doesn't exist int the system"
	echo "User account for ${USERNAME} is created"
	read -s -p "Please write the password for ${USERNAME}: " USER_PASS
	if [ -n "${USER_PASS}" ]
	then
		echo -e "\nCreateing user ${USERNAME}."
		sudo adduser "${USERNAME}" --disabled-password --gecos "" &> /dev/null
		echo "${USERNAME}:${USER_PASS}" |sudo chpasswd
	else
		echo -e "\nThe password should be greater than  zero"
	fi
fi

