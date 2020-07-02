#!/bin/bash -x

cat access.log | sort -u | awk -F: '{if($2==12) print $0}' | awk -F"\"" '{print $3}' | tail -4
