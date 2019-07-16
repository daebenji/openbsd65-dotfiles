#!/bin/bash

if [ -f ~/Pictures/Background/bg.jpg ]
then
	feh --bg-scale ~/Pictures/Background/bg.jpg &
fi


while xsetroot -name "`date` `uptime | sed 's/.*,//'`"
do
  sleep 1
done &
exec dwm
