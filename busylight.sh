#!/bin/bash

color=$1

# quit all running busylight processes

for i in $(ps -ax | grep Workflow | grep bash | awk '{print $1}'); do

    kill -9 $i

done

for i in $(ps -ax | grep node | grep busylight | awk '{print $1}'); do

    kill -9 $i

done

# set busylight color
if [ $color == "green" ]; then

    while true; do
	/usr/local/bin/node /Users/petersro/dev/busylight/green.js
	sleep 20
    done
    
elif [ $color == "red" ]; then

    while true; do
        /usr/local/bin/node /Users/petersro/dev/busylight/red.js
        sleep 20
    done
    
elif [ $color == "yellow" ]; then
    
    while true; do
        /usr/local/bin/node /Users/petersro/dev/busylight/yellow.js
        sleep 20
    done
    
else
    
    while true; do
	/usr/local/bin/busylight $color
	sleep 20
    done
fi
