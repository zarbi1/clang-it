#!/bin/bash

#First let's detecte that we do not have more than 2 arguments
if [ $# -gt 2 ]; then
	echo "Error: Too many arguments. Usage: clang-it.sh <source-dir> <extentions-regex>"
	exit 1
fi

#Now let's detect that we have at least 1 argument
if [ $# -lt 1 ]; then
	echo "Error: Too few arguments. Usage: clang-it.sh <source-dir> <extentions-regex>"
	exit 1
fi

#Now let's detect that the first argument is a directory
if [ ! -d "$1" ]; then
	echo "Error: First argument is not a directory. Usage: clang-it.sh <source-dir> <extentions-regex>"
	exit 1
fi

regex_active=0
if [ $# -eq 2 ]; then
	regex_active=1
fi

#Go throught all the files in the directory and execute the clang-format command on files that respects the regex do not clang format clang-it.sh
if [ "$regex_active" -eq 1 ]; then
	for file in $(find $1 -type f -name "$2"); do
		clang-format -i $file
	done
else
	for file in $(find $1 -type f); do
		clang-format -i $file
	done
fi

echo "Clanged all the files in $1"
