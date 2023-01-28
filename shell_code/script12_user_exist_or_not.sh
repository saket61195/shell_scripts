#!/bin/bash

for USER in user{1..15}
do
	id "${USER}" &> /dev/null
	USER_EXIT=$?
	if [ "${USER_EXIT}" -eq "0" ]
	then
	echo "The user ${USER} exist int the system"
	else
	echo "The usse ${USER}  doesn't exist in the system"
	echo "Adding user ${USER} in the system"
	adduser "${USER}" --disabled-password --gecos "${USER}" &> /dev/null
	echo "${USER}:${USER}_@123" | chpasswd &> /dev/null
	fi
done

