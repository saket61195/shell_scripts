```
#!/bin/bash

# saclar variable which can store one value at a time
NAME="userrr1"


#arrays 
# two type of arry indexed array and assocate arrays

#indexed array
declare -a USER_NAME  #it is not mandatory to write this line to declare array

USER_NAME=( "user1" "user2" 3 4 "user5" )

echo ${USER_NAME}
echo $USER_NAME

echo "printing array:"
echo ${USER_NAME[0]}
echo ${USER_NAME[1]}

echo "print all element"
echo ${USER_NAME[@]}
echo ${USER_NAME[*]}


echo "printing array in reverse order:"
echo ${USER_NAME[-1]}
echo ${USER_NAME[-2]}

USER_NAME=( $(seq 50 100))
echo ${USER_NAME}
echo $USER_NAME

echo "printing array:"
echo ${USER_NAME[0]}
echo ${USER_NAME[1]}
echo ${USER_NAME[2]}
echo ${USER_NAME[3]}
echo ${USER_NAME[4]}
echo ${USER_NAME[5]} 
# it will not print because there is no 5th index int the array



echo "printing array in reverse order:"
echo ${USER_NAME[-1]}
echo ${USER_NAME[-2]}



USER_NAME[0]="USER1"
USER_NAME[1]="USER2"
echo ${USER_NAME[0]}
echo ${USER_NAME[1]}

#anoteher way to declare array
declare -a USER_NAME1=( "ussssssssssser1" "user2" 3 4 "user5" )
echo ${USER_NAME1[0]}

-----------------------------------------------------------------------------------

#associative array

declare -A UN #it is mandatory to write this
# (captical A) means associate array

UN=( [user1]="user1.com" [user2]="user2.com" [user3]="user3.com" )
echo ${UN[user1]}
echo ${UN[user2]}
echo ${UN[user3]}

echo "printing all element at once"
echo ${UN[@]}
echo ${UN[*]}

echo
echo ${UN}
# in index array it print while associate array not print
UN[user1]="mr.com or miss.com"
UN[user15]="hello word"
echo ${UN[user1]}
echo ${UN[user15]}



# declare -A UN=( [user1]="user1.com" [user2]="user2.com" [user3]="user3.com" )
#another way to declare array

```