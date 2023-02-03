```
# list of for loop

for variable in list
do
    stm1
    stm2
    ....
done

----------------------------

for i in 1 2 3 4 5
do
    echo "user_${i}"
    echo "hi"
done
--------------------------------

foe str in "one" "two" "three"
do 
    echo "${str} is best"
done
-----------------------------------

for i in "hello" 1 "again" 2
do
    echo "${i}"
done
------------------------------------

for i in {1..10}  # it is equivalent to 1 2 3 4 5....10
do
    echo "${i}"
done
--------------------------------
for i in uder{1..10..2} #it is equivalant to user1 user3 user5 ...user9
do
    echo "current user is : ${i}"
done

for i in$(seq 1 10)
do
    echo "${i}"
done
-----------------
┌──(kali㉿kali)-[~]
└─$ seq 1 10                        
1
2
3
4
5
6
7
8
9
10
--------------------------
#!/bin/bash

var=$(seq 1 10)
echo $var
=====================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script11_seq.sh
1 2 3 4 5 6 7 8 9 10
------------------------------

c-style for loop

for((i=1; i<10; i++))
do
echo "${i}"
done

note:
 $(seq 1 10) equivalent to `seq 1 10`  
------------------------------------

infinite for loop

for(( ; ; ))
do
    echo "hi"
done
-----------------------------

neated for loop

for i in file{1..3}
do
    for x in web{0..3}
    do
        echo "is ${i}"
        echo "x ix ${web}"
    done
done
-----------------------------------------
#adding user into the system

  GNU nano 7.1                         script12_user_exist_or_not.sh                                  
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

================================================

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ sudo ./script12_user_exist_or_not.sh
The user user1 exist int the system
The user user2 exist int the system
The user user3 exist int the system
The user user4 exist int the system
The user user5 exist int the system
The user user6 exist int the system
The user user7 exist int the system
The user user8 exist int the system
The user user9 exist int the system
The user user10 exist int the system
The usse user11  doesn't exist in the system
Adding user user11 in the system
The usse user12  doesn't exist in the system
Adding user user12 in the system
The usse user13  doesn't exist in the system
Adding user user13 in the system
The usse user14  doesn't exist in the system
Adding user user14 in the system
The usse user15  doesn't exist in the system
Adding user user15 in the system
                                                                                                      
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ cat /etc/passwd | grep user
user1:x:1003:1003:,,,:/home/user1:/bin/bash
user2:x:1004:1004:,,,:/home/user2:/bin/bash
user3:x:1005:1005::/home/user3:/bin/bash
user4:x:1006:1006:,,,:/home/user4:/bin/bash
user5:x:1007:1007:,,,:/home/user5:/bin/bash
user6:x:1008:1008:,,,:/home/user6:/bin/bash
user7:x:1009:1009:,,,:/home/user7:/bin/bash
user8:x:1010:1010:user8,,,:/home/user8:/bin/bash
user9:x:1011:1011:user9,,,:/home/user9:/bin/bash
user10:x:1012:1012:user10,,,:/home/user10:/bin/bash
user11:x:1013:1013:user11,,,:/home/user11:/bin/bash
user12:x:1014:1014:user12,,,:/home/user12:/bin/bash
user13:x:1015:1015:user13,,,:/home/user13:/bin/bash
user14:x:1016:1016:user14,,,:/home/user14:/bin/bash
user15:x:1017:1017:user15,,,:/home/user15:/bin/bash

---------------------------------------------------
delete users

#!/bin/bash

for USER in user{5..15}
do
        id "${USER}" &> /dev/null
        if [ $? -eq  "0" ]
        then
        deluser "${USER}" --remove-home 
        fi
done

=======================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ sudo ./script13_delete_user.sh
Looking for files to backup/remove ...
Removing files ...
Removing crontab ...
Removing user `user5' ...
Done.
user5 delated succesfully
Looking for files to backup/remove ...
Removing files ...
Removing crontab ...
Removing user `user6' ...
Done.
user6 delated succesfully
Looking for files to backup/remove ...
Removing files ...
Removing crontab ...
Removing user `user7' ...
Done.
user7 delated succesfully
Looking for files to backup/remove ...
Removing files ...
Removing crontab ...
Removing user `user8' ...
Done.
user8 delated succesfully
Looking for files to backup/remove ...
Removing files ...
Removing crontab ...
Removing user `user9' ...
Done.
user9 delated succesfully
Looking for files to backup/remove ...
Removing files ...
Removing crontab ...
Removing user `user10' ...
Done.
user10 delated succesfully
Looking for files to backup/remove ...
Removing files ...
Removing crontab ...
Removing user `user11' ...
Done.
user11 delated succesfully
Looking for files to backup/remove ...
Removing files ...
Removing crontab ...
Removing user `user12' ...
Done.
==================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ cat /etc/passwd | grep user     
user1:x:1003:1003:,,,:/home/user1:/bin/bash
user2:x:1004:1004:,,,:/home/user2:/bin/bash
user3:x:1005:1005::/home/user3:/bin/bash
user4:x:1006:1006:,,,:/home/user4:/bin/bash
----------------------------------------------
```

