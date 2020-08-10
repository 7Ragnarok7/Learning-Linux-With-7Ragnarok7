#!/bin/bash  -x

read -p "Enter a day(1-31): " d
read -p "Enter a month(1-12): " m
read -p "Enter a year: " y

y0=$(( $y - $(( 14 - $m )) / 12 ))
x=$(( $y0 + $y0 / 4 - $y0 / 100 + $y0 / 400 ))
m0=$(( $m + 12 * $(( $(( 14 - $m)) / 12 )) - 2 ))
d0=$(( $(( $d + $x + 31 * $m0 / 12 )) % 7 ))

case $d0 in
	0) echo "It was a Sunday" ;;
	1) echo "It was a Monday" ;;
	2) echo "It was a Tuesday" ;;
	3) echo "It was a Wednesday" ;;
	4) echo "It was a Thursday" ;;
	5) echo "It was a Friday" ;;
	6) echo "It was a Saturday" ;;
esac

