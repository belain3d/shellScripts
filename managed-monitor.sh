#!/bin/bash

read -p "Managed Mode (1) or Monitor Mode(2)? " mode

if [ iwconfig | grep "Managed" ]
then
	echo "Exists"
fi

if [ $mode -eq 1 ]
then
	ifconfig wlan0 down
	iwconfig wlan0 mode managed
	ifconfig wlan0 up
	echo "Switched to Managed Mode."
elif [ $mode -eq 2 ]
then
	ifconfig wlan0 down
	iwconfig wlan0 mode monitor
	ifconfig wlan0 up
	echo "Switched to Monitor Mode."
else
	echo "Invalid Option."
fi

#ifconfig wlan0 down
#iwconfig wlan0 mode managed
#ifconfig wlan0 up

#ifconfig wlan0 down
#iwconfig wlan0 mode monitor
#ifconfig wlan0 up 
