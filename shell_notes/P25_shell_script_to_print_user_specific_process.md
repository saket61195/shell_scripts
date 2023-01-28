#!/bin/bash

function user_proc() 
{
UN=${1}  
id ${UN} &> /dev/null
if [ "$?" -eq "0" ]
then
        ps -u ${UN} -o user,pid,ppid,cmd,%mem,%cpu --sort -%cpu

else
        echo "the user ${UN} doest not exist in the system"
fi
} 
USER_NAME=$1
user_proc ${USER_NAME}

==============================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script29_print_user_specific_process.sh kali
USER         PID    PPID CMD                         %MEM %CPU
kali        6952       1 /usr/bin/qterminal           4.1  0.7
kali        1426    1281 xfwm4                        4.0  0.5
kali        1477    1462 /usr/lib/x86_64-linux-gnu/x  1.3  0.4
kali        1377    1375 /usr/bin/VBoxClient --draga  0.1  0.4
........
                                                 
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script29_print_user_specific_process.sh user2
USER         PID    PPID CMD                         %MEM %CPU
user2      13593   13568 -bash                        0.1  0.0
                                                                                