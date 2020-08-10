#!/bin/bash

cat access.log | sort -u | awk '{print $1}' | tail -10
