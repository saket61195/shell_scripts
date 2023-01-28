
#!/bin/bash

user_add(){
echo "inside user addition"
}


user_del(){
echo "inside user deletion"
}

user_backup(){
echo "inside user backup"
}

OPERATION=${1}

case ${OPERATION} in

[aA]dd*)
	echo "code to add user"
	;;
del*)
	echo "code to delete user"
	;;
back*)
	echo "code to take backup"
	;;
*)
	echo "default code always match"
	;;    #not mendetory to use double colon at the last case other case mendatory
esac

echo "out side case statement"

====================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script30_case_statement.sh jfjj
default code always match
out side case statement
