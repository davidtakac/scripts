#!/bin/bash

#first argument is name or id of device to toggle (name is constant, id dynamic)
device=$1
#prints 0 or 1 if it's located at end of "Device Enabled" line
state=$(xinput list-props "$device" | grep "Device Enabled" | grep -o "[01]$")
#toggle device state
if [ "$state" = "0" ]
then
	xinput enable "$device"
else
	xinput disable "$device"
fi

