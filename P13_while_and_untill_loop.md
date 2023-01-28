condition (command ) -> command get executed -> command return exist status code -> 0 (true) non zero(false)

zero exit status code = True
no-zero exit status code = False


note condtion is basically a command

# while loop

while <condition>
do
    statement1
    statement2
    statement3
    ..........
done


((a=1))
while ((a < 10))
do
    echo "the number is: $a"
    ((a=a+1))
done


((a=1))
while [ $a -lt 10 ]
do
    echo "the number is :$a"
    ((a++))
done

# infinite loop

while :
do
    echo "Infinite loop"

done

while true
do
    echo "infinite loop"
done
-----------------------------

# until loop

Condition should be False to execute the body

until <contion>
do
    statement1
    statement2
    statement3
    ..........
done
------------------------

((a=1))
until (( a == 5 ))
do
    echo "$a"
done
--------------------

((a=1))
until [ $A -eq "5" ]
do
    echo "$a"
done
----------------------

# Infinite loop using until loop

until false
do
    echo "In infinite loop"
done
-----------------------------------

#!/bin/bash

USER_MORE="yes"

while [ ${USER_MORE} = "yes" -o ${USER_MORE} = "y" ]
do
        echo "define task here"

        read -p "Do you want to continue again (press y or yes to contnue) : " USER_MORE
        USER_MORE=$(echo ${USER_MORE} | tr [A-Z] [a-z] )
        echo "your input is : ${USER_MODE}"
done
echo "the script execution is completed"

=================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script14_while_loop.sh                      
define task here
Do you want to continue again (press y or yes to contnue) : yes
your input is : 
define task here
Do you want to continue again (press y or yes to contnue) : Yes
your input is : 
define task here
Do you want to continue again (press y or yes to contnue) : YES
your input is : 
define task here
Do you want to continue again (press y or yes to contnue) : no
your input is : 
the script execution is completed
----------------------------------------------------


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

=====================================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script15_until_loop.sh
define task here
Do you want to continue again (press y or yes to contnue) : yes
your input is : 
define task here
Do you want to continue again (press y or yes to contnue) : yes
your input is : 
define task here
Do you want to continue again (press y or yes to contnue) : no
your input is : 
the script execution is completed



