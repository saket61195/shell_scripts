```
# without continue statement

  GNU nano 7.1                        script17_continue_statement.sh                                  
#!/bin/bash

USER_INP="yes"
while [ ${USER_INP} = "yes" ]  #encloing loop -- 2
do
        for i in {1..5}   #enclosing  loop -- 1
        do
                if ((i==3))
                then
                        echo "loop break"
                #continue
                fi
        echo "i is ${i}"
        done

        echo "innner loop completed "
        read -p "Do you want to continue : " USER_INP
done
echo "Script execution completed"

===============================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script17_continue_statement.sh
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
------------------------------------
#!/bin/bash

USER_INP="yes"
while [ ${USER_INP} = "yes" ]  #encloing loop -- 2
do
        for i in {1..5}   #enclosing  loop -- 1
        do
                if ((i==3))
                then
                        echo "loop break"
                continue
                fi
        echo "i is ${i}"
        done

        echo "innner loop completed "
        read -p "Do you want to continue : " USER_INP
done
echo "Script execution completed"
===================================================

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script17_continue_statement.sh 
i is 1
i is 2
loop break
i is 4
i is 5
innner loop completed 
Do you want to continue : yes
i is 1
i is 2
loop break
i is 4
i is 5
innner loop completed 
Do you want to continue : no
Script execution completed
--------------------------------------------
# continue n

#!/bin/bash

USER_INP="yes"
while [ ${USER_INP} = "yes" ]  #encloing loop -- 2
do
        for i in {1..5}   #enclosing  loop -- 1
        do
                if ((i==3))
                then
                        echo "loop break"
                continue 1
                fi
        echo "i is ${i}"
        done

        echo "innner loop completed "
        read -p "Do you want to continue : " USER_INP
done
echo "Script execution completed"
===================================================

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script17_continue_statement.sh 
i is 1
i is 2
loop break
i is 4
i is 5
innner loop completed 
Do you want to continue : yes
i is 1
i is 2
loop break
i is 4
i is 5
innner loop completed 
Do you want to continue : no
Script execution completed
----------------------------------------------

#!/bin/bash

USER_INP="yes"
while [ ${USER_INP} = "yes" ]  #encloing loop -- 2
do
        for i in {1..5}   #enclosing  loop -- 1
        do
                if ((i==3))
                then
                        echo "loop break"
                continue 2
                fi
        echo "i is ${i}"
        done

        echo "innner loop completed "
        read -p "Do you want to continue : " USER_INP
done
echo "Script execution completed"

===================================
it will be infinite loop to fix this move read statement
---------------------------------

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
==========================================

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script17_continue_statement.sh
i is 1
i is 2
loop break
Do you want to continue : yes
i is 1
i is 2
loop break
Do you want to continue : no
Script execution completed
--------------------------------------

note: if we write continue 15 but it will consider as 2 because of 2 loop enclosing 