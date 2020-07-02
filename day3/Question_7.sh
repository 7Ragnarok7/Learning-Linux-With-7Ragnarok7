#!/bin/bash -x

# Needs to be run using "source ./myscript.sh" to run it in the current shell
# as running in normally using ./ opens a new bash subshell and the
# environment variable gets assigned in the child shell

if [ "`echo $usersecret`" != "" ]
then
	echo "usersecret already set"
else
	export usersecret=dH34xJaa23
fi

