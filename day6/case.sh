#!/bin/bash -x

for filename in $(ls)
do
	#Take extension available in filename
	ext=${filename##*\.}
	case "$ext" in
		java) echo "$filename : Java source file" ;;
		o) echo "$filename : object file" ;;
		sh) echo "$filename : shell script file" ;;
		txt) echo "$filename : text file" ;;
		*) echo "$filename : not processed" ;;
	esac
done
