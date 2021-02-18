#!/bin/sh

FILE=$1

if [ -f "$FILE" ]; then
  echo "File exists and it's a file"
elif [ -d "$FILE" ]; then
  echo "File exists and it's a directory"
elif [ -x "$FILE" ]; then
  echo "Executable"
else
  echo "File doesn't exist"
fi
