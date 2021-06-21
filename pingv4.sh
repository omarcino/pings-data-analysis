#!/bin/bash
# pings with ipv4 or ipv6 addresses
#-----------------------------------
# Check internet connection every second
#-----------------------------------
# ping header must be changed to
# date time size bytes from ip icmp ttl rtt ms
# ip address === x.x.x.x
host="x.x.x.x"
ipv="ipv4"
# directory path
directory="/your/path/directory/"
ping -O $host | while read pong; do echo "$(date '+%Y-%m-%d %H:%M:%S'): $pong"; done >> $directory/$(date '+%Y-%m-%d').$ipv-$host
  
