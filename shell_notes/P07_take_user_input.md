nano script7.sh

  GNU nano 7.1                                  script7.sh *                                          

read -d ':' -p "enter sentence and press ':' to terminate "  test
echo ${test}


read -s -p "enter sentence  "  test1
echo $test1

# -s used to hide the sentence while typing once you finish typing and press enter it willl show
unset SERVICE
echo $SERVICE
var="i am not ok"
readonly var
echo ${var}
var="i am ok"
echo "var"
# you cannot unset readonly variable

=======================================
apache2
apache2 IS Active: inactive (dead)
##############
apache2
apache2 IS Active: inactive (dead)
#########
enter service_name apache2
apache2 IS Active: inactive (dead)
enter sentence and press ':' to terminate apache2
:apache2
enter sentence  

i am not ok
./script7.sh: line 36: var: readonly variable
var
