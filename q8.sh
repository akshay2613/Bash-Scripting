#!/bin/sh
crontab $1

if [ $? -eq 0 ]; then
	echo YES
else 
	echo NO
fi
