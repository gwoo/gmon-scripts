#!/usr/bin/env bash
n=`nproc`
d=`sar -P ALL 1 1 | tail -$(($n + 1)) | head -n 1 | sed '/^$/d'`
echo "$d" | awk '{ print $2".user|"$3"\n"$2".nice|"$4"\n"$2".system|"$5"\n"$2".iowait|"$6"\n"$2".idle|"$8}'
