#!/bin/bash

SERVICE="apache2"
STATUS=$(systemctl status $SERVICE | awk  "NR==3 {print $2}")

echo ${SERVICE} "IS"  ${STATUS}
echo ${HOSTNAME}
echo ${USER}

