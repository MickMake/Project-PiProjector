#!/bin/bash
# 
# 
# PiProjector control script
#	- Another MickMake project.
#	- YouTube	- https://youtube.com/MickMake
#	- Website	- https://mickmake.com/
#	- Twitter	- https://twitter.com/MickMakes
#	- Facebook	- https://facebook.com/MickMakes
#	- GitHub	- https://github.com/mickmake
# 
# This script has several functions:
# PiProjectorControl.sh [setup | init]
#	- Initialize the GPIOs on the Pi for the DLP2000EVM control lines.
#	- Add this to your /etc/rc.local script.
# 
# PiProjectorControl.sh [enable | on]
#	- Turn on the DLP200EVM display.
# 
# PiProjectorControl.sh [disable | off]
#	- Turn off the DLP200EVM display.
# 


dlp_setup()
{
	# HOST_PRESENTZ from DLP2000EVM
	echo 27 > /sys/class/gpio/export
	echo out > /sys/class/gpio/gpio27/direction
	echo 0 > /sys/class/gpio/gpio27/value

	# PROJ_ON from DLP2000EVM
	echo 22 > /sys/class/gpio/export
	echo out > /sys/class/gpio/gpio22/direction
	echo 0 > /sys/class/gpio/gpio22/value

	# INIT_DONE from DLP2000EVM
	echo 26 > /sys/class/gpio/export
	echo in > /sys/class/gpio/gpio26/direction

	# GPIO5 from DLP2000EVM
	echo 25 > /sys/class/gpio/export
	echo in > /sys/class/gpio/gpio25/direction

	sleep 1		# Just until INIT_DONE interrupt is implemented.
}

dlp_on()
{
	echo 1 > /sys/class/gpio/gpio27/value
	echo 1 > /sys/class/gpio/gpio22/value

	sleep 1		# Just until INIT_DONE interrupt is implemented.

	i2cset -y 3 0x1b 0x0c 0x00 0x00 0x00 0x15 i
	i2cset -y 3 0x1b 0x0b 0x00 0x00 0x00 0x00 i
}

dlp_off()
{
	echo 0 > /sys/class/gpio/gpio22/value
	echo 0 > /sys/class/gpio/gpio27/value
}


case $1 in
	'init'|'setup')
		dlp_setup
		;;

	'enable'|'on')
		dlp_on
		;;

	'disable'|'off')
		dlp_off
		;;
esac

