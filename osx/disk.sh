#!/usr/bin/env bash
d=`df -k /`
echo "$d" | tail -1 | awk '{ printf "free|%0.0f\nused|%0.0f\n", $4/1024, $3/1024 }'