#!/bin/bash
declare -a USER_NAMES

USER_NAMES=("user1" "user2" "user3" "user4" "user5")

TO_PATH=/home/kali/Desktop/shell
for USER in "${USER_NAMES[@]}"
do
	echo "Backup of ${USER}"
	id "${USER}" &> /dev/null
	EC=$?
	if [ "${EC}" -eq 0 ]
	then
		echo "User ${USER} exist in the system"
		#USER_HOME=$(awk -F ':'  '$1=="${USER}" {print $6}' /etc/passwd )
		USER_HOME=$(awk -F ':' -v user="${USER}" '$1==user {print $6}' /etc/passwd)
		echo "the path for  home directory for ${USER} is ${USER_HOME}"
		DIR=$( dirname "${USER_HOME}")
		BASE=$( basename "${USER_HOME}")
		echo "Dir is ${DIR} ... Base is ${BASE}"
		tar  -Pczf ${TO_PATH}/${USER}.tar.gz  /home/${BASE}
	else
		 echo "User ${USER} doesn't exist in the system"
	fi
done

