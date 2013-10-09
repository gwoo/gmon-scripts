#!/usr/bin/env bash

sar -u 1 5 | tail -1 | awk '{ print "user|"$2"\nnice|"$3"\nsystem|"$4"\nidle|"$5"\n" }'