┌──(kali㉿kali)-[~/Desktop/shell]
└─$ test 1 -eq 1

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ echo $?
0
----------------------------
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ test 1 -eq 2

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ echo $?
1
----------------------------------
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ test "string" = "string"

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ echo $?
0

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ test "string" = "string1"                                                                 

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ echo $?
1
-----------------------------------
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ test "string" == "string1"                                                         

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ echo $?
1

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ test "string" == "string"                                                                                         

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ echo $?
0
-------------------------------------
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ test 10 -gt 3 -a  4 -lt 8

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ echo $?
0

note -a is && oparation in other programming language
-------------------------------------------------
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ test 10 -gt 3 -a  4 -lt 2

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ echo $?
1
------------------------------
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ test 10 -gt 3 -o  4 -lt 2

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ echo $?
0
note -o is || operation in other programming language
----------------------------------------------
┌──(kali㉿kali)-[~/Desktop/shell] 
└─$ [ 10 -gt 3 ] 
#test 10 -gt 3 is same as [ 10 -gt 3 ]
┌──(kali㉿kali)-[~/Desktop/shell] 
└─$ echo $? 0
---------------------------------
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ [ ! 10 -gt 3 ]

10 is greater tha 3 true but ! make it false

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ echo $?
1
--------------------------------
[[]] # we can use < or > and <= or >= and && and ||
while
[] # -gt. -lt such like option

eg

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ [[ 2 > 5 ]]
┌─[✘][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ echo $?
1
---------------------------------------------
┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ [[ 2 < 5 ]]

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ echo $?
0
-----------------------------------------
┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ [ 2 > 5 ]

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ echo $?
0

this show true but it is false so it donot support so use [[]]
----------------------------------------------------------

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ [[ -n "string" && 1 -eq 1 ]]

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ echo $?
0

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ [[ -n "string" && 1 -eq 2 ]]

┌─[✘][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ echo $?
1

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ [[ -n "string" || 1 -eq 2 ]]

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ echo $?
0

not -n return string is not empty
so "string" it os not empty
------------------------------------
whildcard is * ? []

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ [[ "string" = str* ]]

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ echo $?
0

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ [ "string" = str* ]

┌─[✘][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ echo $?
1
--------------------------------
=~ is used for regex pattern matching

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ [[ "string" =~ str ]]

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ echo $?
0

str is substring of string

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ [[ "string" =~ stwwr ]]

┌─[✘][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ echo $?
1
----------------------------------------------
┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ [[ "string" =~ [a-z]tring ]]

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ echo $?
0

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ [[ "string" =~ [^a-z]tring ]]

^a-z is used when except a-z any thing like number or capital letter
┌─[✘][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ echo $?
1


┌─[✘][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ [[ "1tring" =~ [^a-z]tring ]]

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ echo $?
0
