```
var=" this   is the first statement"

echo ${var}
echo "###########"

echo "${var}"
echo "###########"
echo "this is the \n great day"
echo "###########"
echo -E "this is \n default echo command"
echo "###########" 
echo -e "this is \ngreat day"
echo "###########" 
echo -n "great" # it will not terminate to new line
echo "############"
echo "not great"

======================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script18_echo_statement.sh
this is the first statement
###########
 this   is the first statement
###########
this is the \n great day
###########
this is \n default echo command
###########
this is 
great day
###########
great############
not great
-------------------------------------------
-E is default
-e for \n or \t
-n is used to print without newline
