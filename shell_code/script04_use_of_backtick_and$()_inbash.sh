#!/bin/bash

var=`ls -ls`
SERVICE=$(systemctl status apache2)

echo $var
echo $SERVICE

