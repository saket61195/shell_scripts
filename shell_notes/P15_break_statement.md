```
# break statement
### break statement -> terminate the loop

for i in {1..5}
do
    if ((1=3))
    then
    echo "loop break"
    break
    fi
echo "i is ${i}"
done
--------------------------------------------
# without break

#!/bin/bash

USER_INP="yes"
while [ ${USER_INP} = "yes" ]  #encloing loop -- 2
do
        for i in {1..5}   #enclosing  loop -- 1
        do
                if ((i==3))
                then
                        echo "loop break"
                #break
                fi
        echo "i is ${i}"
        done

        echo "innner loop completed "
        read -p "Do you want to continue : " USER_INP
done
echo "Script execution completed"
====================================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script16_break_statement.sh
i is 1
i is 2
loop break
i is 3
i is 4
i is 5
innner loop completed 
Do you want to continue : yes
i is 1
i is 2
loop break
i is 3
i is 4
i is 5
innner loop completed 
Do you want to continue : no
Script execution completed
---------------------------------------------
# with break

#!/bin/bash

USER_INP="yes"
while [ ${USER_INP} = "yes" ]  #encloing loop -- 2
do
        for i in {1..5}   #enclosing  loop -- 1
        do
                if ((i==3))
                then
                        echo "loop break"
                break
                fi
        echo "i is ${i}"
        done

        echo "innner loop completed "
        read -p "Do you want to continue : " USER_INP
done
echo "Script execution completed"
=============================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script16_break_statement.sh
i is 1
i is 2
loop break
innner loop completed 
Do you want to continue : yes
i is 1
i is 2
loop break
innner loop completed 
Do you want to continue : no
Script execution completed
---------------------------------------------
# break n concept
by default break is equal to break 1
so depends on enclosing loop use break

#!/bin/bash

USER_INP="yes"
while [ ${USER_INP} = "yes" ]  #encloing loop -- 2
do
        for i in {1..5}   #enclosing  loop -- 1
        do
                if ((i==3))
                then
                        echo "loop break"
                break 1
                fi
        echo "i is ${i}"
        done

        echo "innner loop completed "
        read -p "Do you want to continue : " USER_INP
done
echo "Script execution completed"
==============================================

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script16_break_statement.sh        
i is 1
i is 2
loop break
innner loop completed 
Do you want to continue : yes
i is 1
i is 2
loop break
innner loop completed 
Do you want to continue : no
Script execution completed
-----------------------------
# break n another example

#!/bin/bash

USER_INP="yes"
while [ ${USER_INP} = "yes" ]  #encloing loop -- 2
do
        for i in {1..5}   #enclosing  loop -- 1
        do
                if ((i==3))
                then
                        echo "loop break"
                break 2
                fi
        echo "i is ${i}"
        done

        echo "innner loop completed "
        read -p "Do you want to continue : " USER_INP
done
echo "Script execution completed"
===========================

└─$ ./script16_break_statement.sh
i is 1
i is 2
loop break
Script execution completed
----------------------------------------
