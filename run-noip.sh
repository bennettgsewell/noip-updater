#!/bin/bash

./noip2 -c /config/no-ip2.conf

sleep 10

while pgrep -f "noip2" >/dev/null; do
	sleep 30
done
