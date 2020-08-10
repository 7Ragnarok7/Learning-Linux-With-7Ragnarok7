#!/bin/bash -x

echo $(( $(( RANDOM % 6 + 1 )) + $(( RANDOM % 6 + 1 )) ))
