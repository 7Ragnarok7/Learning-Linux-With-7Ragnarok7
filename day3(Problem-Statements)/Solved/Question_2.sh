#!/bin/bash -x

for file in `ls *.txt`
do
   foldername=`echo $file | awk -F . '{print $1}'`
   if [ -d $foldername ]
   then
   	echo $foldername already exists, hence file not copied.
   else
      mkdir $foldername && cp $file $foldername
      echo $file copied to $foldername
   fi
done
