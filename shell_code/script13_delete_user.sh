#!/bin/bash

for USER in user{5..15}
do
	id "${USER}" &> /dev/null
	if [ $? -eq  "0" ]
	then
	deluser "${USER}" --remove-home 
	fi
done

