 ```
``` GNU nano 7.1                              script8_if_else.sh                                        
#!/bin/bash

read -p "please Enter the username: " USERNAME

id ${USERNAME}
if [[ $? -eq "0" ]]
then
        echo "The given ${USERNAME} exist int the system"
else
        echo "The user ${USERNAME} doesn't exist int the system"
fi

================================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script8_if_else.sh                         
please Enter the username: kali
uid=1000(kali) gid=1000(kali) groups=1000(kali),4(adm),20(dialout),24(cdrom),25(floppy),27(sudo),29(audio),30(dip),44(video),46(plugdev),109(netdev),119(wireshark),122(bluetooth),134(scanner),142(vboxsf),143(kaboxer)
The given kali exist int the system

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script8_if_else.sh
please Enter the username: saket
uid=1001(saket) gid=1001(saket) groups=1001(saket)
The given saket exist int the system

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script8_if_else.sh
please Enter the username: roahn
id: ‘roahn’: no such user
The user roahn doesn't exist int the system

--------------------------------------------------------------------
  GNU nano 7.1                              script8_if_else.sh                                        
#!/bin/bash

read -p "please Enter the username: " USERNAME

id ${USERNAME} &> /dev/null
if [[ $? -eq "0" ]]
then
        echo "The given ${USERNAME} exist int the system"
else
        echo "The user ${USERNAME} doesn't exist int the system"
fi

=====================================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script8_if_else.sh
please Enter the username: saket
The given saket exist int the system

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script8_if_else.sh
please Enter the username: mohan
The user mohan doesn't exist int the system

-------------------------------------------------------------

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ sudo adduser user1             
[sudo] password for kali: 
Adding user `user1' ...
Adding new group `user1' (1003) ...
Adding new user `user1' (1003) with group `user1 (1003)' ...
Creating home directory `/home/user1' ...
Copying files from `/etc/skel' ...
New password: 
Retype new password: 
passwd: password updated successfully
Changing the user information for user1
Enter the new value, or press ENTER for the default
        Full Name []: 
        Room Number []: 
        Work Phone []: 
        Home Phone []: 
        Other []: 
Is the information correct? [Y/n] 
Adding new user `user1' to supplemental / extra groups `users' ...
Adding user `user1' to group `users' ...
 
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ cat /etc/passwd | grep user
user1:x:1003:1003:,,,:/home/user1:/bin/bash

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ 

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ sudo adduser --disabled-password user2
Adding user `user2' ...
Adding new group `user2' (1004) ...
Adding new user `user2' (1004) with group `user2 (1004)' ...
Creating home directory `/home/user2' ...
Copying files from `/etc/skel' ...
Changing the user information for user2
Enter the new value, or press ENTER for the default
        Full Name []: 
        Room Number []: 
        Work Phone []: 
        Home Phone []: 
        Other []: 
Is the information correct? [Y/n] 
Adding new user `user2' to supplemental / extra groups `users' ...
Adding user `user2' to group `users' ...

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ cat /etc/passwd | grep user
user1:x:1003:1003:,,,:/home/user1:/bin/bash
user2:x:1004:1004:,,,:/home/user2:/bin/bash

---------------------------------------------
--gecos "user3name 43 000 nothong"
it is used for  Full Name []: 
        Room Number []: 
        Work Phone []: 
        Home Phone []: 
        Other []: 
  

 &> /dev/null
 it will print no output but user will create successfully useful while writing script

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ sudo adduser --disabled-password user3 --gecos "user3name 43 000 nothong" &> /dev/null



┌──(kali㉿kali)-[~/Desktop/shell]
└─$ cat /etc/passwd | grep user                                                           
user1:x:1003:1003:,,,:/home/user1:/bin/bash
user2:x:1004:1004:,,,:/home/user2:/bin/bash
user3:x:1005:1005::/home/user3:/bin/bash
---------------------------
to set password

└─$ sudo chpasswd
user2:user2
^C


ctrl + c it will set password user2 for user2
same operation we can use in user3
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ su -l user2  
Password: 
┌──(user2㉿kali)-[~]
└─$       

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ sudo chpasswd              
user3:user3
^C

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ su -l user3  
Password: 
┌──(user3㉿kali)-[~]
└─$                    

--------------------------------------------------------------

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ echo "user5:user5" | sudo chpasswd     

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ su -l user5                                   
Password: 
┌──(user5㉿kali)-[~]
└─$                  
-------------------------------------------------------------------------



  GNU nano 7.1                    script8_if_else_user_accout_creation.sh   

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
                echo "${USERNAME}:${USER_PASS}" | sudo chpasswd
        else
                echo -e "\nThe password should be greater than  zero"
        fi
fi


┌──(kali㉿kali)-[~/Desktop/shell]
└─$ sudo ./script8_if_else_user_accout_creation.sh
please Enter the username: user6
The user user6 doesn't exist int the system
User account for user6 is created
Please write the password for user6: 
Createing user user6.


once sudo used in
 sudo adduser "${USERNAME}" --disabled-password --gecos "" &> /dev/null
                echo "${USERNAME}:${USER_PASS}" | sudo chpasswd

no need to write sudo while executing                      
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script8_if_else_user_accout_creation.sh
please Enter the username: user7
The user user7 doesn't exist int the system
User account for user7 is created
Please write the password for user7: 
Createing user user7.
---------------------------------------------
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ cat /etc/passwd | grep user                     
user1:x:1003:1003:,,,:/home/user1:/bin/bash
user2:x:1004:1004:,,,:/home/user2:/bin/bash
user3:x:1005:1005::/home/user3:/bin/bash
user4:x:1006:1006:,,,:/home/user4:/bin/bash
user5:x:1007:1007:,,,:/home/user5:/bin/bash
user6:x:1008:1008:,,,:/home/user6:/bin/bash
user7:x:1009:1009:,,,:/home/user7:/bin/bash

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ 
----------------------------------------------
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ true                             

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ echo $?                           
0

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ false                                                         

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ echo $?
1

