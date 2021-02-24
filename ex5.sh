#!/bin/sh

if [ $# -ne 1 ]
then
  echo "Aucun fichier en argument"
  exit 1
fi

FILE=$1

if [ -e "$FILE" ]; then
  echo "File Exists"
  if [ -f "$FILE" ]; then
    echo "File exists and it's a file"
    elif [ -x "$FILE" ]; then
      echo "Executable"
  elif [ -d "$FILE" ]; then
    echo "File exists and it's a directory"
else
  echo "File doesn't exist"
fi
