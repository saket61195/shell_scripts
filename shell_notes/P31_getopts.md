```
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ type -a getopts
getopts is a shell builtin
--------------------------

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ type -a getopt 
getopt is /usr/bin/getopt
getopt is /bin/getopt
-----------------------------


#!/bin/bash

usage(){
echo "usage function"
}

#while getopts "a:b:cd" opt
while getopts ":a:b:cd" opt    #:before a will silent error for gtopts

do
	case $opt in
	a)
		echo "you selected -$opt with argument $OPTARG"
		;;
	b)
		echo "you selected -$opt with argument $OPTARG"
		;;
	c)
		echo "you selected -$opt with argument $OPTARG"
		;;
	d)
		 echo "you selected -$opt with argument $OPTARG"
		;;
	*)
		 echo "invalid option"
		 echo "$opt"
		 usage
	esac
done

=================================================================================

┌──(kali㉿kali)-[~/Desktop/shell]
└─$  ./script40_getopts.sh -a saket     
you selected -a with argument saket

┌──(kali㉿kali)-[~/Desktop/shell]
└─$  ./script40_getopts.sh -b saket
you selected -b with argument saket

┌──(kali㉿kali)-[~/Desktop/shell]
└─$  ./script40_getopts.sh -c saket
you selected -c with argument 

┌──(kali㉿kali)-[~/Desktop/shell]
└─$  ./script40_getopts.sh -d      
you selected -d with argument 

┌──(kali㉿kali)-[~/Desktop/shell]
└─$  ./script40_getopts.sh -b
./script40_getopts.sh: option requires an argument -- b
invalid option
usage function

┌──(kali㉿kali)-[~/Desktop/shell]
└─$  ./script40_getopts.sh -b
invalid option
usage function

┌──(kali㉿kali)-[~/Desktop/shell]
└─$  ./script40_getopts.sh -x
invalid option
usage function

┌──(kali㉿kali)-[~/Desktop/shell]
└─$  ./script40_getopts.sh -x
invalid option
1
usage function
    
┌──(kali㉿kali)-[~/Desktop/shell]
└─$  ./script40_getopts.sh -i
invalid option
1
usage function

┌──(kali㉿kali)-[~/Desktop/shell]
└─$  ./script40_getopts.sh -i
invalid option
?
usage function
```