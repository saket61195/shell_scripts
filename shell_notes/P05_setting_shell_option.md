```bash 
┌──(kali㉿kali)-[~]
└─$ set -o
noaliases             off
aliasfuncdef          off
allexport             off
noalwayslastprompt    off
alwaystoend           off
appendcreate          off
noappendhistory       off
autocd                on
autocontinue          off
noautolist            off
noautomenu            off
autonamedirs          off
noautoparamkeys       off
noautoparamslash      off
autopushd             off
noautoremoveslash     off
autoresume            off
nobadpattern          off
nobanghist            off
nobareglobqual        off
bashautolist          off
bashrematch           off
nobeep                off
nobgnice              off
braceccl              off
bsdecho               off
nocaseglob            off
nocasematch           off
casepaths             off
cbases                off
cdablevars            off
cdsilent              off
chasedots             off
chaselinks            off
nocheckjobs           off
nocheckrunningjobs    off
noclobber             off
clobberempty          off
combiningchars        off
completealiases       off
completeinword        off
continueonerror       off
correct               off
correctall            off
cprecedences          off
cshjunkiehistory      off
cshjunkieloops        off
cshjunkiequotes       off
cshnullcmd            off
cshnullglob           off
nodebugbeforecmd      off
dvorak                off
emacs                 off
noequals              off
errexit               off
errreturn             off
noevallineno          off
noexec                off
extendedglob          off
extendedhistory       off
noflowcontrol         off
forcefloat            off
nofunctionargzero     off
noglob                off
noglobalexport        off
noglobalrcs           off
globassign            off
globcomplete          off
globdots              off
globstarshort         off
globsubst             off
nohashcmds            off
nohashdirs            off
hashexecutablesonly   off
nohashlistall         off
histallowclobber      off
nohistbeep            off
histexpiredupsfirst   on
histfcntllock         off
histfindnodups        off
histignorealldups     off
histignoredups        on
histignorespace       on
histlexwords          off
histnofunctions       off
histnostore           off
histreduceblanks      off
nohistsavebycopy      off
histsavenodups        off
histsubstpattern      off
histverify            on
nohup                 off
ignorebraces          off
ignoreclosebraces     off
ignoreeof             off
incappendhistory      off
incappendhistorytime  off
interactive           on
interactivecomments   on
ksharrays             off
kshautoload           off
kshglob               off
kshoptionprint        off
kshtypeset            off
kshzerosubscript      off
nolistambiguous       off
nolistbeep            off
listpacked            off
listrowsfirst         off
nolisttypes           off
localloops            off
localoptions          off
localpatterns         off
localtraps            off
login                 off
longlistjobs          off
magicequalsubst       on
mailwarning           off
markdirs              off
menucomplete          off
monitor               on
nomultibyte           off
nomultifuncdef        off
nomultios             off
nonomatch             on
nonotify              off
nullglob              off
numericglobsort       on
octalzeroes           off
overstrike            off
pathdirs              off
pathscript            off
pipefail              off
posixaliases          off
posixargzero          off
posixbuiltins         off
posixcd               off
posixidentifiers      off
posixjobs             off
posixstrings          off
posixtraps            off
printeightbit         off
printexitvalue        off
privileged            off
promptbang            off
nopromptcr            off
nopromptpercent       off
nopromptsp            off
promptsubst           on
pushdignoredups       off
pushdminus            off
pushdsilent           off
pushdtohome           off
rcexpandparam         off
rcquotes              off
norcs                 off
recexact              off
rematchpcre           off
restricted            off
rmstarsilent          off
rmstarwait            off
sharehistory          off
shfileexpansion       off
shglob                off
shinstdin             on
shnullcmd             off
shoptionletters       off
noshortloops          off
shortrepeat           off
shwordsplit           off
singlecommand         off
singlelinezle         off
sourcetrace           off
sunkeyboardhack       off
transientrprompt      off
trapsasync            off
typesetsilent         off
typesettounset        off
nounset               off
verbose               off
vi                    off
warncreateglobal      off
warnnestedvar         off
xtrace                off
zle                   on

```

```bash
┌──(kali㉿kali)-[~]
└─$  set -o | grep history
noappendhistory       off
cshjunkiehistory      off
extendedhistory       off
incappendhistory      off
incappendhistorytime  off
sharehistory          off
```


```bash
┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ set -o | grep history
history        	on

set -o history    -> on
set +o history    -> off

┌──(kali㉿kali)-[~/Desktop]
└─$ bash
┌──(kali㉿kali)-[~/Desktop]
└─$ set -o |grep history
history         on

┌──(kali㉿kali)-[~/Desktop]
└─$ set +o history                              

┌──(kali㉿kali)-[~/Desktop]
└─$ set -o |grep history                     
history         off

┌──(kali㉿kali)-[~/Desktop]
└─$ set -o history

┌──(kali㉿kali)-[~/Desktop]
└─$ set -o |grep history
history         on
```


---------------------------------------------

```bash
┌──(kali㉿kali)-[~/Desktop]
└─$ set -o | grep his
histexpand      on
history         on

┌──(kali㉿kali)-[~/Desktop]
└─$ !!
set -o | grep his
histexpand      on
history         on

┌──(kali㉿kali)-[~/Desktop]
└─$ set +o histexpand 

┌──(kali㉿kali)-[~/Desktop]
└─$ set -o | grep his
histexpand      off
history         on

┌──(kali㉿kali)-[~/Desktop]
└─$ !!
!!: command not found

┌──(kali㉿kali)-[~/Desktop]
└─$ set -o histexpand 

┌──(kali㉿kali)-[~/Desktop]
└─$ set -o | grep his
histexpand      on
history         on

┌──(kali㉿kali)-[~/Desktop]
└─$ !!
set -o | grep his
histexpand      on
history         on
```

----------------------------------
```shell
┌──(kali㉿kali)-[~/Desktop]
└─$ set -o | grep brace
braceexpand     on

┌──(kali㉿kali)-[~/Desktop]
└─$ echo {1..15}
1 2 3 4 5 6 7 8 9 10 11 12 13 14 15

┌──(kali㉿kali)-[~/Desktop]
└─$ echo {a..z}
a b c d e f g h i j k l m n o p q r s t u v w x y z

┌──(kali㉿kali)-[~/Desktop]
└─$ echo {abc,def}23
abc23 def23

┌──(kali㉿kali)-[~/Desktop]
└─$ echo file{1..5}
file1 file2 file3 file4 file5

┌──(kali㉿kali)-[~/Desktop]
└─$ echo {1..3}{a..d}
1a 1b 1c 1d 2a 2b 2c 2d 3a 3b 3c 3d
```

---------------------------------
```shell
┌──(kali㉿kali)-[~/Desktop]
└─$ touch file{1..4}.txt

┌──(kali㉿kali)-[~/Desktop]
└─$ ls
file1.txt  file2.txt  file3.txt  file4.txt  kali.txt

┌──(kali㉿kali)-[~/Desktop]
└─$ ls file[12].txt
file1.txt  file2.txt

┌──(kali㉿kali)-[~/Desktop]
└─$ ls file[1..2].txt

file1.txt  file2.txt
┌──(kali㉿kali)-[~/Desktop]
└─$ ls file[123].txt          
file1.txt  file2.txt  file3.txt


setting  noglob  to on it will not work funtionality
```

-------------------------------------------------------
```
┌──(kali㉿kali)-[~/Desktop]
└─$ set -o | grep noclobber
noclobber       off    

┌──(kali㉿kali)-[~/Desktop]         
└─$ echo "this is file" > file10.txt

┌──(kali㉿kali)-[~/Desktop]
└─$ ls                
file10.txt  file1.txt  file2.txt  file3.txt  file4.txt  kali.txt 

┌──(kali㉿kali)-[~/Desktop]
└─$ ls > file1.txt  
    
┌──(kali㉿kali)-[~/Desktop]           
└─$ cat file1.txt 
file10.txt
file1.txt
file2.txt
file3.txt
file4.txt
kali.txt

to stop this functionlity set to noclobber on
```

-----------------------------------------------

```bash
┌──(kali㉿kali)-[~/Desktop]
└─$ wert="ls -l"

┌──(kali㉿kali)-[~/Desktop]
└─$ env |grep wert

┌──(kali㉿kali)-[~/Desktop]
└─$ set -o | grep allex
allexport       off

┌──(kali㉿kali)-[~/Desktop]
└─$ set -o allexport

┌──(kali㉿kali)-[~/Desktop]
└─$ asssd="ls"

┌──(kali㉿kali)-[~/Desktop]
└─$ env | grep asssd
asssd=ls

┌──(kali㉿kali)-[~/Desktop]
└─$ 
```
-------------------------------------------------------------

```bash
┌──(kali㉿kali)-[~/Desktop]
└─$ set -o | grep notify
notify          off

┌──(kali㉿kali)-[~/Desktop]
└─$ set -o | grep notify
notify          off

┌──(kali㉿kali)-[~/Desktop]
└─$ sleep 2 &
[1] 44003

┌──(kali㉿kali)-[~/Desktop]
└─$ ls
file10.txt  file1.txt  file2.txt  file3.txt  file4.txt  kali.txt
[1]+  Done                    sleep 2

┌──(kali㉿kali)-[~/Desktop]
└─$ set -o notify

┌──(kali㉿kali)-[~/Desktop]
└─$ sleep 2 &
[1] 44151

┌──(kali㉿kali)-[~/Desktop]
└─$ [1]+  Done sleep2

it will automatically notify
```

--------------------------------
```
┌──(kali㉿kali)-[~/Desktop]
└─$ set -o | grep ignore
ignoreeof       off

if you put it on
CTRL + D WILL NOT WORK IT MEAN TERMINAL NOT CLOSE
exit command is used to close
```


---------------------------------

whatever you did it is local not permanent
to make permanet
write into bashrc

