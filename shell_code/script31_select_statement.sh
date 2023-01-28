#!/bin/bash

select choice in add del backup exit
do
    echo "option selected is ${REPLY}"
    echo "optin selected value is ${choice}"
    if [[ ${choice} == "exit" ]]
    then
        break
    fi
done

echo "outside select statement"