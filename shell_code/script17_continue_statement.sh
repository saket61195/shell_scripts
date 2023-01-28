#!/bin/bash

USER_INP="yes"
while [ ${USER_INP} = "yes" ]  #encloing loop -- 2
do
	for i in {1..5}   #enclosing  loop -- 1
	do
		if ((i==3))
		then
			echo "loop break"
			read -p "Do you want to continue : " USER_INP
		continue 2
		fi
	echo "i is ${i}"
	done

	echo "innner loop completed "
done
echo "Script execution completed"

