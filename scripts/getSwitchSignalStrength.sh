#!/bin/sh
#
# WeMo Control Script
# 
# rich@netmagi.com
#
# Usage: ./wemo_control IP_ADDRESS ON/OFF/GETSTATE/GETSIGNALSTRENGTH/GETFRIENDLYNAME
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

curl -0 -A '' -X POST -H 'Accept: ' -H 'Content-type: text/xml; charset="utf-8"' -H "SOAPACTION: \"urn:Belkin:service:basicevent:1#GetSignalStrength\"" --data '<?xml version="1.0" encoding="utf-8"?><s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/" s:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/"><s:Body><u:GetSignalStrength xmlns:u="urn:Belkin:service:basicevent:1"><GetSignalStrength>0</GetSignalStrength></u:GetSignalStrength></s:Body></s:Envelope>' -s http://$IP:$PORT/upnp/control/basicevent1 |
grep "<SignalStrength"  | cut -d">" -f2 | cut -d "<" -f1
