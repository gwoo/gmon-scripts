#!/usr/bin/env bash

pids=`ps aux | grep 'httpd' | awk '/sbin/ && !/awk/ {print $2}'`

if [[ -z $pids ]]; then
	echo " |0|http not running"
	exit 0
fi
for pid in $pids
do
echo "$pid|1"
done
exit 0