#!/bin/bash

add_user(){
echo "inside user addition"
}


del_user(){
echo "inside user deletion"
}

backup(){
echo "inside user backup"
}

PS3="please select the an option: "

declare -a OPTIONS=("add_user" "del_user" "backup" "exit")
select action in "${OPTIONS[@]}"
do
	case ${action} in

		add_user)
			add_user;;
		del_user)
			del_user;;
		backup)
			backup;;
		exit)
			break;;   
	esac
done

echo "program execution completed..."
