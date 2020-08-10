#!/bin/bash -x

cat access.log | awk -F: '{if($2==12) print $0}' | tail -4
