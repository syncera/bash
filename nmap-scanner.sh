#!/usr/bin/env bash
# This script is designed to scan two IPs 
# and then their subnet using nmap and specified flags.
# sincera

weekday=$(date +%u)

if [ $weekday--1 ]
then
  /usr/bin/nmap 10.10.11.254
elif [ $weekday==3 ]; then
  /usr/bin/nmap 10.10.11.253
else
  /usr/bin/nmap 10.10.11.0/24
fi
