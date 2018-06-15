#!/bin/bash

while true; do

  status=$(ps -ef | grep "MacOS/Cisco Jabber" | grep -v grep)
  if [[ ! -z $status ]]; then
	   /usr/local/busylight/controller.sh
  elif [[ -z $status ]]; then
	   kill $(ps -ax | grep "osascript" | grep "jabber_busylight.scpt" | awk '{print $1}')
  fi
sleep 1
done
