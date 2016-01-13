#!/bin/sh
#
# WeMo Control Script
# 
# rich@netmagi.com
#
# Usage: ./getDeviceIcon IP_ADDRESS
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

curl -0 -A '' -X POST -H 'Accept: ' -H 'Content-type: text/xml; charset="utf-8"' -H "SOAPACTION: \"urn:Belkin:service:basicevent:1#GetDeviceIcon\"" --data '<?xml version="1.0" encoding="utf-8"?><s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/" s:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"><s:Body><u:GetDeviceIcon xmlns:u="urn:Belkin:service:basicevent:1"><GetDeviceIcon>0</GetDeviceIcon></u:GetDeviceIcon></s:Body></s:Envelope>' -s http://$IP:$PORT/upnp/control/basicevent1 |
grep "<DeviceIcon"  | cut -d">" -f2 | cut -d "<" -f1
