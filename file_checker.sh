#!/bin/bash

DIR=$1
if [ ! -d "$DIR" ]; then
  echo "Directory does not exist"
  exit 1
fi

# Find all files with .sh extension
declare -a files
files=$(find $DIR -type f -name "*.sh")
echo "${files}"

# Change all permissions
for i in "${files[@]}"
do
    chmod 100 $i
done