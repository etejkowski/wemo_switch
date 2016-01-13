#!/bin/sh
#
# WeMo Control Script
# 
# rich@netmagi.com
#
# Usage: ./getSwitchPort IP_ADDRESS
#
#

IP=$1

for PTEST in 49154 49152 49153 49155
   do
      PORTTEST=$(curl -s -m 3 $IP:$PTEST | grep "404")
      if [ "$PORTTEST" != "" ]; then
         PORT=$PTEST
         break
      fi
    done

   if [ $PORT = 0 ]; then
      echo "Cannot find a port"
      exit
   fi

   echo $PORT
