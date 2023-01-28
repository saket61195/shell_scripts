#!/bin/bash

select choice in add del backup exit
do
    echo "option selected is ${REPLY}"
    echo "optin selected value is ${choice}"
    if [[ ${choice} == "exit" ]]
    then
        break
    fi
done

echo "outside select statement"
=================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script31_select_statement.sh        
1) add
2) del
3) backup
4) exit
#? 1
option selected is 1
optin selected value is add
#? 3
option selected is 3
optin selected value is backup
#? 4
option selected is 4
optin selected value is exit
outside select statement
---------------------------------------------------------------------------
#!/bin/bash
PS3="Select the option :"

select choice in add del backup exit
do
    echo "option selected is ${REPLY}"
    echo "optin selected value is ${choice}"
    if [[ ${choice} == "exit" ]]
    then
        break
    fi
done

echo "outside select statement"
============================================================

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script32_select_statement_REPLY.sh 
1) add
2) del
3) backup
4) exit
Select the option :3
option selected is 3
optin selected value is backup
Select the option :4
option selected is 4
optin selected value is exit
outside select statement
----------------------------
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
=====================================================================
                                 
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script33_case_statement_select_and_array.sh
1) add_user
2) del_user
3) backup
4) exit
please select the an option: 1
inside user addition
please select the an option: 3
inside user backup
please select the an option: 2
inside user deletion
please select the an option: 4
program execution completed...
                                 