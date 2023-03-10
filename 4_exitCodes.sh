#!/bin/bash

package=notexist

sudo apt install $package >> package_install_results.log

if [ $? == 0 ]
then
	echo "The installation of $package was successful."
	echo "The new command can be found here:"
	which $package
else
	echo "$package failed to install." >> package_install_failure.log
fi
