#!/bin/bash

release_file=/etc/os-release

if grep -q "arch" $release_file
then
	# The host is based on Arch, run the pacman update command
	sudo pacman -Syu
	echo "Update is done, now exiting..."
fi

if grep -q "debian" $release_file || grep -q "ubuntu" $release_file
then
	#The host is based on Debian
	# Run the apt version of the command
	sudo apt update
	sudo apt dist-upgrade
	echo "Update is done, now exiting..."
fi
