#!/usr/bin/env bash
# This script is designed to scan the two domain controllers
# and then the subnet using nmap and specified flags (if any)
# sincera

weekday=$(date +%u)

if [ $weekday--1 ]
then
  /usr/bin/nmap 10.10.10.200
elif [ $weekday==3 ]; then
  /usr/bin/nmap 10.10.10.201
else
  /usr/bin/nmap 10.10.10.0/23
fi
