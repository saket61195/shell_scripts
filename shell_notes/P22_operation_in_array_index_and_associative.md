```
#!/bin/bash

echo "Operation on Indexed arrays"
declare -a IND_ARR=( "C" "Linux" "Python" "Shell Scripting" "Ethical Hacking" )

echo ${#IND_ARR[@]}
echo ${#IND_ARR[*]}
echo ${!IND_ARR[@]}
unset IND_ARR[2]
echo ${!IND_ARR[@]}
echo ${IND_ARR[@]}
unset IND_ARR
echo ${IND_ARR[@]}

echo "Operation on Associative Array"
declare -A AS_ARR=( [name]="vikram" [profession]="figuring out" [clinet]="TMNA" )

echo ${#AS_ARR[@]}
echo ${#AS_ARR[*]}
echo ${!AS_ARR[@]}
unset AS_ARR[name]
echo ${!AS_ARR[@]}
echo ${AS_ARR[@]}
unset AS_ARR
echo ${AS_ARR[@]}
==================================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script24_operation_on_array.sh
Operation on Indexed arrays
5
5
0 1 2 3 4
0 1 3 4
C Linux Shell Scripting Ethical Hacking
Operation on Associative Array
3
3
profession clinet name
profession clinet
figuring out TMNA

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script24_operation_on_array.sh
Operation on Indexed arrays
5
5
0 1 2 3 4
0 1 3 4
C Linux Shell Scripting Ethical Hacking

Operation on Associative Array
3
3
profession clinet name
profession clinet
figuring out TMNA


-------------------------------------------------------------------------
#!/bin/bash

echo "Operation on Indexed arrays"
declare -a IND_ARR=( "C" "Linux" "Python" "Shell Scripting" "Ethical Hacking" )

echo ${#IND_ARR[3]}
echo ${IND_ARR[4]/i/o}
echo ${IND_ARR[4]//i/o}
echo ${IND_ARR[@]//i/ok}
IND_ARR+=("java" "perl")
echo ${IND_ARR[@]}
echo ${!IND_ARR[@]}
echo ${IND_ARR[@]:2}
echo ${IND_ARR[@]:2:2}

echo "Operation on Associative Array"
declare -A AS_ARR=( [name]="vikram" [role]="figuring out" [clinet]="TMNA" )

echo ${#AS_ARR[role]}
echo ${AS_ARR[role]//i/p}
echo ${AS_ARR[@]//i/ping}
AS_ARR+=([prof]="student" [hobby]="video")
echo ${AS_ARR[@]}
echo ${!AS_ARR[@]}

=================================================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script25_operation_on_array.sh
Operation on Indexed arrays
15
Ethocal Hacking
Ethocal Hackong
C Loknux Python Shell Scrokptokng Ethokcal Hackokng
C Linux Python Shell Scripting Ethical Hacking java perl
0 1 2 3 4 5 6
Python Shell Scripting Ethical Hacking java perl
Python Shell Scripting
Operation on Associative Array
12
fpgurpng out
fpinggurpingng out TMNA vpingkram
student figuring out TMNA video vikram
prof role clinet hobby name
