#!/usr/bin/env bash
free=$(( $(vm_stat | awk '/ free/ {gsub(/\./, "", $3); print $3}') * 4096 / 1048576))
inactive=$(( $(vm_stat | awk '/ inactive/ {gsub(/\./, "", $3); print $3}') * 4096 / 1048576))
active=$(( $(vm_stat | awk '/ active/ {gsub(/\./, "", $3); print $3}') * 4096 / 1048576))
speculative=$(( $(vm_stat | awk '/ speculative/ {gsub(/\./, "", $3); print $3}') * 4096 / 1048576))
wired=$(( $(vm_stat | awk '/wired/ {gsub(/\./, "", $4); print $4}') * 4096 / 1048576))
total=$(($free+$inactive+$active+$speculative+$wired))

echo "free|$(($free + $inactive))"
echo "used|$(($active+$speculative+$wired))"
echo "total|$total"