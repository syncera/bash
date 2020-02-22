#!/usr/bin/env bash
# This script is designed to perform a reverse DNS lookup
# on all of the hosts in a specified range.
# sincera

net="10.0.12."
for hst in {0..255}
do
  ip="$net$hst"
  nslookup $ip
done
