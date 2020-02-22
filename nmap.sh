#!/usr/bin/env bash
#sincera

if [ "#1" != "" ]
then
  targetfile=$1
  reportdir="/var/log/nmap"
  for target in $(cat $targetfile)
  do
      echo "Scanning $target .."
        /usr/bin/nmap -oN $reportdir/$target.nmap -sS -sU -T4 -A -v -PE -PP -PS80,443, -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" $target >>
        $reportdir/$target.nmap 2>$1
      done
    else
      echo "You did not provide any command line options. Usage: $Program [file]"
      echo
    echo
fi
