#!/bin/bash

# get status

status=$(osascript /Users/petersro/git/personal/busylight_mac/busylight/jabber_busylight.scpt)

if [[ $status == "Available" ]]; then
  /usr/local/busylight/busylight.sh green &
elif [[ $status == "Away" ]]; then
  /usr/local/busylight/busylight.sh yellow &
elif [[ $status == "On a call" ]]; then
  /usr/local/busylight/busylight.sh red &
elif [[ $status == "Do Not Disturb" ]]; then
  /usr/local/busylight/busylight.sh red &
elif [[ $status == "Meeting" ]]; then
  /usr/local/busylight/busylight.sh red &
fi
