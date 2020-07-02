#!/bin/bash -x
read -p "Enter the first number: " x
read -p "Enter the second number: " y
z=$(( $x + $y ))
echo $z
