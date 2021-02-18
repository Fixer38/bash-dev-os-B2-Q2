#!/bin/bash

IFS=':'

file="/etc/passwd"
while read line; do
  readarray -d : -t strarr <<< "$line"
  if [ ${strarr[2]} -gt 500 ]
  then
    echo "Username: ${strarr[0]}"
    echo "Shell: ${strarr[5]}"
  fi
done < $file
