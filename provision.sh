#!/bin/sh

echo "
########################################################################
       _                     _                _
 _ __ | |__   ___  ___ _ __ | |__   ___  _ __(_) ___
| '_ \| '_ \ / _ \/ __| '_ \| '_ \ / _ \| '__| |/ __|
| |_) | | | | (_) \__ \ |_) | | | | (_) | |  | | (__
| .__/|_| |_|\___/|___/ .__/|_| |_|\___/|_|  |_|\___|
|_|                   |_|


########################################################################
"

if [ ! -e "/home/vagrant/provisioned" ]
then
	# Update and upgrade:
	echo "Updating system..."
	apt-get update > /dev/null 2>&1
	echo "Upgrading system packages..."
	apt-get -y upgrade > /dev/null 2>&1

	# Install system dependencies:
	echo "Installing system dependencies: ... "
	apt-get -y install steamcmd lib32gcc1 lib32stdc++6

	touch /home/vagrant/provisioned
fi

echo
echo "Started rust server at 28015"
echo
