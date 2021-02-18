#!/bin/bash


while getopts ":al:" opt; do
  case ${opt} in
    a)
      for file in /var/log/*.log /var/log/**/*.log
      do
        cat $file
      done
      ;;
    l)
      file=$OPTARG
      cat "/var/log/$file"
      ;;
    *)
      echo "Unknown Option"
      ;;
  esac
done

for file in /var/log/*.log /var/log/**/*.log
  do
    echo $file
  done
