#!/bin/bash +x

original=`cat original/original-file.sh`
updated=`cat updated/updated-file.sh`
if [ "$original" != "$updated" ]
then
	cp -r original original-backup/
	cp updated/updated-file.sh original/original-file.sh
else
	echo Already Updated.
fi

