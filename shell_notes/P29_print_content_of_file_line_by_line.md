```
#!/bin/bash

FILENAME=${1}
IFS=$'\n'
i=1

for line in $(cat ${FILENAME})
do
    echo "line ${i} : ${line}"
    ((i++))
done
=================================================================================
 
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script36_print_content_of_file.sh script1.sh
line 1 : #!/bin/bash
line 2 : ls
line 3 : echo "this is awsome"
line 4 : ls
line 5 : ls -l script.sh
```
-----------------------------------------
```
#!/bin/bash

FILENAME=${1}
IFS=' '
i=1

for line in $(cat ${FILENAME})
do
    echo "line ${i} : ${line}"
    ((i++))
done
=========================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script36_print_content_of_file.sh script1.sh 
line 1 : #!/bin/bash

ls
echo
line 2 : "this
line 3 : is
line 4 : awsome"
ls

ls
line 5 : -l
line 6 : script.sh
```
--------------------------------------------
```
#!/bin/bash


# FILENAME=${1}
# IFS=$'\n'
# i=1

# for line in $(cat ${FILENAME})
# do
#     echo "line ${i} : ${line}"
#     ((i++))
# done

FILENAME1=${1}
FILENAME2=${2}
IFS=$'\n'

for lines_file1 in $(cat ${FILENAME1})
do
    for lines_file2 in $(cat ${FILENAME2})
    do
        if [ ${lines_file1} == ${lines_file2} ]
        then
            echo "common line : ${lines_file1}"
        fi
    done
done
=================================================================

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script36_print_content_of_file.sh script35_IFS.sh script34_IFS.sh
common line : #!/bin/bash
common line : #field splitting
common line : #parameter expansion
common line : #command substitution
common line : #airthmatic expansion
common line : #only work when use quotes " "```
```
-------------------------------------------------
```
#!/bin/bash


# FILENAME=${1}
# IFS=$'\n'
# i=1

# for line in $(cat ${FILENAME})
# do
#     echo "line ${i} : ${line}"
#     ((i++))
# done

FILENAME1=${1}
FILENAME2=${2}
IFS=$'\n'

for lines_file1 in $(cat ${FILENAME1})
do
    echo "f1 : ${lines_file1}"
    for lines_file2 in $(cat ${FILENAME2})
    do
        echo "f2 : ${lines_file2}"

    done
done
===============================================================

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script37_print_content_of_file.sh script36_print_content_of_file.sh script37_print_content_of_file.sh 
f1 : #!/bin/bash
f2 : #!/bin/bash
f2 : # FILENAME=${1}
f2 : # IFS=$'\n'
f2 : # i=1
f2 : # for line in $(cat ${FILENAME})
f2 : # do
f2 : #     echo "line ${i} : ${line}"
f2 : #     ((i++))
f2 : # done
f2 : FILENAME1=${1}
f2 : FILENAME2=${2}
f2 : IFS=$'\n'
f2 : for lines_file1 in $(cat ${FILENAME1})
f2 : do
f2 :     echo "f1 : ${lines_file1}"
f2 :     for lines_file2 in $(cat ${FILENAME2})
f2 :     do
f2 :         echo "f2 : ${lines_file2}"
f2 :     done
f2 : done
f1 : # FILENAME=${1}
f2 : #!/bin/bash
f2 : # FILENAME=${1}
f2 : # IFS=$'\n'
f2 : # i=1
f2 : # for line in $(cat ${FILENAME})
f2 : # do
f2 : #     echo "line ${i} : ${line}"
f2 : #     ((i++))
f2 : # done
f2 : FILENAME1=${1}
f2 : FILENAME2=${2}
f2 : IFS=$'\n'
f2 : for lines_file1 in $(cat ${FILENAME1})
f2 : do
f2 :     echo "f1 : ${lines_file1}"
f2 :     for lines_file2 in $(cat ${FILENAME2})
f2 :     do
f2 :         echo "f2 : ${lines_file2}"
f2 :     done
f2 : done
f1 : # IFS=$'\n'
f2 : #!/bin/bash
f2 : # FILENAME=${1}
f2 : # IFS=$'\n'
f2 : # i=1
f2 : # for line in $(cat ${FILENAME})
f2 : # do
f2 : #     echo "line ${i} : ${line}"
f2 : #     ((i++))
f2 : # done
f2 : FILENAME1=${1}
f2 : FILENAME2=${2}
f2 : IFS=$'\n'
f2 : for lines_file1 in $(cat ${FILENAME1})
f2 : do
f2 :     echo "f1 : ${lines_file1}"
f2 :     for lines_file2 in $(cat ${FILENAME2})
f2 :     do
f2 :         echo "f2 : ${lines_file2}"
f2 :     done
f2 : done
f1 : # i=1
f2 : #!/bin/bash
f2 : # FILENAME=${1}
f2 : # IFS=$'\n'
f2 : # i=1
f2 : # for line in $(cat ${FILENAME})
f2 : # do
f2 : #     echo "line ${i} : ${line}"
f2 : #     ((i++))
f2 : # done
f2 : FILENAME1=${1}
f2 : FILENAME2=${2}
f2 : IFS=$'\n'
f2 : for lines_file1 in $(cat ${FILENAME1})
f2 : do
f2 :     echo "f1 : ${lines_file1}"
f2 :     for lines_file2 in $(cat ${FILENAME2})
f2 :     do
f2 :         echo "f2 : ${lines_file2}"
f2 :     done
f2 : done
f1 : # for line in $(cat ${FILENAME})
f2 : #!/bin/bash
f2 : # FILENAME=${1}
f2 : # IFS=$'\n'
f2 : # i=1
f2 : # for line in $(cat ${FILENAME})
f2 : # do
f2 : #     echo "line ${i} : ${line}"
f2 : #     ((i++))
f2 : # done
f2 : FILENAME1=${1}
f2 : FILENAME2=${2}
f2 : IFS=$'\n'
f2 : for lines_file1 in $(cat ${FILENAME1})
f2 : do
f2 :     echo "f1 : ${lines_file1}"
f2 :     for lines_file2 in $(cat ${FILENAME2})
f2 :     do
f2 :         echo "f2 : ${lines_file2}"
f2 :     done
f2 : done
f1 : # do
f2 : #!/bin/bash
f2 : # FILENAME=${1}
f2 : # IFS=$'\n'
f2 : # i=1
f2 : # for line in $(cat ${FILENAME})
f2 : # do
f2 : #     echo "line ${i} : ${line}"
f2 : #     ((i++))
f2 : # done
f2 : FILENAME1=${1}
f2 : FILENAME2=${2}
f2 : IFS=$'\n'
f2 : for lines_file1 in $(cat ${FILENAME1})
f2 : do
f2 :     echo "f1 : ${lines_file1}"
f2 :     for lines_file2 in $(cat ${FILENAME2})
f2 :     do
f2 :         echo "f2 : ${lines_file2}"
f2 :     done
f2 : done
f1 : #     echo "line ${i} : ${line}"
f2 : #!/bin/bash
f2 : # FILENAME=${1}
f2 : # IFS=$'\n'
f2 : # i=1
f2 : # for line in $(cat ${FILENAME})
f2 : # do
f2 : #     echo "line ${i} : ${line}"
f2 : #     ((i++))
f2 : # done
f2 : FILENAME1=${1}
f2 : FILENAME2=${2}
f2 : IFS=$'\n'
f2 : for lines_file1 in $(cat ${FILENAME1})
f2 : do
f2 :     echo "f1 : ${lines_file1}"
f2 :     for lines_file2 in $(cat ${FILENAME2})
f2 :     do
f2 :         echo "f2 : ${lines_file2}"
f2 :     done
f2 : done
f1 : #     ((i++))
f2 : #!/bin/bash
f2 : # FILENAME=${1}
f2 : # IFS=$'\n'
f2 : # i=1
f2 : # for line in $(cat ${FILENAME})
f2 : # do
f2 : #     echo "line ${i} : ${line}"
f2 : #     ((i++))
f2 : # done
f2 : FILENAME1=${1}
f2 : FILENAME2=${2}
f2 : IFS=$'\n'
f2 : for lines_file1 in $(cat ${FILENAME1})
f2 : do
f2 :     echo "f1 : ${lines_file1}"
f2 :     for lines_file2 in $(cat ${FILENAME2})
f2 :     do
f2 :         echo "f2 : ${lines_file2}"
f2 :     done
f2 : done
f1 : # done
f2 : #!/bin/bash
f2 : # FILENAME=${1}
f2 : # IFS=$'\n'
f2 : # i=1
f2 : # for line in $(cat ${FILENAME})
f2 : # do
f2 : #     echo "line ${i} : ${line}"
f2 : #     ((i++))
f2 : # done
f2 : FILENAME1=${1}
f2 : FILENAME2=${2}
f2 : IFS=$'\n'
f2 : for lines_file1 in $(cat ${FILENAME1})
f2 : do
f2 :     echo "f1 : ${lines_file1}"
f2 :     for lines_file2 in $(cat ${FILENAME2})
f2 :     do
f2 :         echo "f2 : ${lines_file2}"
f2 :     done
f2 : done
f1 : FILENAME1=${1}
f2 : #!/bin/bash
f2 : # FILENAME=${1}
f2 : # IFS=$'\n'
f2 : # i=1
f2 : # for line in $(cat ${FILENAME})
f2 : # do
f2 : #     echo "line ${i} : ${line}"
f2 : #     ((i++))
f2 : # done
f2 : FILENAME1=${1}
f2 : FILENAME2=${2}
f2 : IFS=$'\n'
f2 : for lines_file1 in $(cat ${FILENAME1})
f2 : do
f2 :     echo "f1 : ${lines_file1}"
f2 :     for lines_file2 in $(cat ${FILENAME2})
f2 :     do
f2 :         echo "f2 : ${lines_file2}"
f2 :     done
f2 : done
f1 : FILENAME2=${2}
f2 : #!/bin/bash
f2 : # FILENAME=${1}
f2 : # IFS=$'\n'
f2 : # i=1
f2 : # for line in $(cat ${FILENAME})
f2 : # do
f2 : #     echo "line ${i} : ${line}"
f2 : #     ((i++))
f2 : # done
f2 : FILENAME1=${1}
f2 : FILENAME2=${2}
f2 : IFS=$'\n'
f2 : for lines_file1 in $(cat ${FILENAME1})
f2 : do
f2 :     echo "f1 : ${lines_file1}"
f2 :     for lines_file2 in $(cat ${FILENAME2})
f2 :     do
f2 :         echo "f2 : ${lines_file2}"
f2 :     done
f2 : done
f1 : IFS=$'\n'
f2 : #!/bin/bash
f2 : # FILENAME=${1}
f2 : # IFS=$'\n'
f2 : # i=1
f2 : # for line in $(cat ${FILENAME})
f2 : # do
f2 : #     echo "line ${i} : ${line}"
f2 : #     ((i++))
f2 : # done
f2 : FILENAME1=${1}
f2 : FILENAME2=${2}
f2 : IFS=$'\n'
f2 : for lines_file1 in $(cat ${FILENAME1})
f2 : do
f2 :     echo "f1 : ${lines_file1}"
f2 :     for lines_file2 in $(cat ${FILENAME2})
f2 :     do
f2 :         echo "f2 : ${lines_file2}"
f2 :     done
f2 : done
f1 : for lines_file1 in $(cat ${FILENAME1})
f2 : #!/bin/bash
f2 : # FILENAME=${1}
f2 : # IFS=$'\n'
f2 : # i=1
f2 : # for line in $(cat ${FILENAME})
f2 : # do
f2 : #     echo "line ${i} : ${line}"
f2 : #     ((i++))
f2 : # done
f2 : FILENAME1=${1}
f2 : FILENAME2=${2}
f2 : IFS=$'\n'
f2 : for lines_file1 in $(cat ${FILENAME1})
f2 : do
f2 :     echo "f1 : ${lines_file1}"
f2 :     for lines_file2 in $(cat ${FILENAME2})
f2 :     do
f2 :         echo "f2 : ${lines_file2}"
f2 :     done
f2 : done
f1 : do
f2 : #!/bin/bash
f2 : # FILENAME=${1}
f2 : # IFS=$'\n'
f2 : # i=1
f2 : # for line in $(cat ${FILENAME})
f2 : # do
f2 : #     echo "line ${i} : ${line}"
f2 : #     ((i++))
f2 : # done
f2 : FILENAME1=${1}
f2 : FILENAME2=${2}
f2 : IFS=$'\n'
f2 : for lines_file1 in $(cat ${FILENAME1})
f2 : do
f2 :     echo "f1 : ${lines_file1}"
f2 :     for lines_file2 in $(cat ${FILENAME2})
f2 :     do
f2 :         echo "f2 : ${lines_file2}"
f2 :     done
f2 : done
f1 :     for lines_file2 in $(cat ${FILENAME2})
f2 : #!/bin/bash
f2 : # FILENAME=${1}
f2 : # IFS=$'\n'
f2 : # i=1
f2 : # for line in $(cat ${FILENAME})
f2 : # do
f2 : #     echo "line ${i} : ${line}"
f2 : #     ((i++))
f2 : # done
f2 : FILENAME1=${1}
f2 : FILENAME2=${2}
f2 : IFS=$'\n'
f2 : for lines_file1 in $(cat ${FILENAME1})
f2 : do
f2 :     echo "f1 : ${lines_file1}"
f2 :     for lines_file2 in $(cat ${FILENAME2})
f2 :     do
f2 :         echo "f2 : ${lines_file2}"
f2 :     done
f2 : done
f1 :     do
f2 : #!/bin/bash
f2 : # FILENAME=${1}
f2 : # IFS=$'\n'
f2 : # i=1
f2 : # for line in $(cat ${FILENAME})
f2 : # do
f2 : #     echo "line ${i} : ${line}"
f2 : #     ((i++))
f2 : # done
f2 : FILENAME1=${1}
f2 : FILENAME2=${2}
f2 : IFS=$'\n'
f2 : for lines_file1 in $(cat ${FILENAME1})
f2 : do
f2 :     echo "f1 : ${lines_file1}"
f2 :     for lines_file2 in $(cat ${FILENAME2})
f2 :     do
f2 :         echo "f2 : ${lines_file2}"
f2 :     done
f2 : done
f1 :         if [ ${lines_file1} == ${lines_file2} ]
f2 : #!/bin/bash
f2 : # FILENAME=${1}
f2 : # IFS=$'\n'
f2 : # i=1
f2 : # for line in $(cat ${FILENAME})
f2 : # do
f2 : #     echo "line ${i} : ${line}"
f2 : #     ((i++))
f2 : # done
f2 : FILENAME1=${1}
f2 : FILENAME2=${2}
f2 : IFS=$'\n'
f2 : for lines_file1 in $(cat ${FILENAME1})
f2 : do
f2 :     echo "f1 : ${lines_file1}"
f2 :     for lines_file2 in $(cat ${FILENAME2})
f2 :     do
f2 :         echo "f2 : ${lines_file2}"
f2 :     done
f2 : done
f1 :         then
f2 : #!/bin/bash
f2 : # FILENAME=${1}
f2 : # IFS=$'\n'
f2 : # i=1
f2 : # for line in $(cat ${FILENAME})
f2 : # do
f2 : #     echo "line ${i} : ${line}"
f2 : #     ((i++))
f2 : # done
f2 : FILENAME1=${1}
f2 : FILENAME2=${2}
f2 : IFS=$'\n'
f2 : for lines_file1 in $(cat ${FILENAME1})
f2 : do
f2 :     echo "f1 : ${lines_file1}"
f2 :     for lines_file2 in $(cat ${FILENAME2})
f2 :     do
f2 :         echo "f2 : ${lines_file2}"
f2 :     done
f2 : done
f1 :             echo "common line : ${lines_file1}"
f2 : #!/bin/bash
f2 : # FILENAME=${1}
f2 : # IFS=$'\n'
f2 : # i=1
f2 : # for line in $(cat ${FILENAME})
f2 : # do
f2 : #     echo "line ${i} : ${line}"
f2 : #     ((i++))
f2 : # done
f2 : FILENAME1=${1}
f2 : FILENAME2=${2}
f2 : IFS=$'\n'
f2 : for lines_file1 in $(cat ${FILENAME1})
f2 : do
f2 :     echo "f1 : ${lines_file1}"
f2 :     for lines_file2 in $(cat ${FILENAME2})
f2 :     do
f2 :         echo "f2 : ${lines_file2}"
f2 :     done
f2 : done
f1 :         fi
f2 : #!/bin/bash
f2 : # FILENAME=${1}
f2 : # IFS=$'\n'
f2 : # i=1
f2 : # for line in $(cat ${FILENAME})
f2 : # do
f2 : #     echo "line ${i} : ${line}"
f2 : #     ((i++))
f2 : # done
f2 : FILENAME1=${1}
f2 : FILENAME2=${2}
f2 : IFS=$'\n'
f2 : for lines_file1 in $(cat ${FILENAME1})
f2 : do
f2 :     echo "f1 : ${lines_file1}"
f2 :     for lines_file2 in $(cat ${FILENAME2})
f2 :     do
f2 :         echo "f2 : ${lines_file2}"
f2 :     done
f2 : done
f1 :     done
f2 : #!/bin/bash
f2 : # FILENAME=${1}
f2 : # IFS=$'\n'
f2 : # i=1
f2 : # for line in $(cat ${FILENAME})
f2 : # do
f2 : #     echo "line ${i} : ${line}"
f2 : #     ((i++))
f2 : # done
f2 : FILENAME1=${1}
f2 : FILENAME2=${2}
f2 : IFS=$'\n'
f2 : for lines_file1 in $(cat ${FILENAME1})
f2 : do
f2 :     echo "f1 : ${lines_file1}"
f2 :     for lines_file2 in $(cat ${FILENAME2})
f2 :     do
f2 :         echo "f2 : ${lines_file2}"
f2 :     done
f2 : done
f1 : done
f2 : #!/bin/bash
f2 : # FILENAME=${1}
f2 : # IFS=$'\n'
f2 : # i=1
f2 : # for line in $(cat ${FILENAME})
f2 : # do
f2 : #     echo "line ${i} : ${line}"
f2 : #     ((i++))
f2 : # done
f2 : FILENAME1=${1}
f2 : FILENAME2=${2}
f2 : IFS=$'\n'
f2 : for lines_file1 in $(cat ${FILENAME1})
f2 : do
f2 :     echo "f1 : ${lines_file1}"
f2 :     for lines_file2 in $(cat ${FILENAME2})
f2 :     do
f2 :         echo "f2 : ${lines_file2}"
f2 :     done
f2 : done

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ 
```