#!/bin/bash

mac=$(hciconfig hci0 | awk '/BD Address: /{print $3}')
if [ "$mac" != NULL ] ; then
	a="MY_ADDRESS"
	b="\"$mac\""
	sed -i -e "s/\($a = \).*/\1$b/" server/server.py
fi
echo "MAC address is updated: $mac"
