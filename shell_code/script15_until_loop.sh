#!/bin/bash

USER_MORE="yes"

until [ ${USER_MORE} = "no" -o ${USER_MORE} = "no" ]
do
	echo "define task here"

	read -p "Do you want to continue again (press y or yes to contnue) : " USER_MORE
	USER_MORE=$(echo ${USER_MORE} | tr [A-Z] [a-z] )
	echo "your input is : ${USER_MODE}"
done
echo "the script execution is completed"

# tr [A-z] [a-z] is used to convert uppercase to lowercase

