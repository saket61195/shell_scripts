exampele here document
```
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ tr [:lower:] [:upper:] <<END      
heredoc> this is good                      
heredoc> day                        
heredoc> my name is 
heredoc> noob                                        
heredoc> END 
THIS IS GOOD 
DAY
MY NAME IS 
NOOB
-------------------------------------
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ bc << END
heredoc> 2*9
heredoc> 5+2
heredoc> END 
18
7
-----------------------------------

here string

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ bc <<< 2*9      
18
```
     