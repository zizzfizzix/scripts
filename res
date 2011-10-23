#!/bin/bash
# script to restart given app/service

exec 1>/dev/null
exec 2>&1

if [[ $1 == 'rc' ]]; then
	sudo rc.d restart $2
else
	killall $1 && $1 &
fi
