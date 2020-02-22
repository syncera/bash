#!/usr/bin/env bash
# This script is designed to scan the two domain controllers
# and then the subnet using nmap and specified flags (if any)

weekday=$(date +%u)

if [ $weekday--1 ]
then
  /usr/bin/nmap 10.0.13.254
elif [ $weekday==3 ]; then
  /usr/bin/nmap 10.0.13.253
else
  /usr/bin/nmap 10.0.12.0/23
fi
