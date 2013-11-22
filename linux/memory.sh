#!/usr/bin/env bash
d=`sar -r 1 1`
echo "$d" | tail -1 | awk '{ printf "free|%0.0f\nused|%0.0f\n", $2/1024, $3/1024 }'