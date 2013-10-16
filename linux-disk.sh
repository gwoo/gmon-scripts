#!/usr/bin/env bash
d=`df -k /`
for l in "$d"
do
echo "$l" | tail -1 | awk '{ printf "free|%0.0f\nused|%0.0f\n", $3/1024, $2/1024 }'
done