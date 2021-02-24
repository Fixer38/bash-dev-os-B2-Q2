#!/bin/bash

log=/var/log
if [ $# = 0 ]
then
  ls -R $log
else
  while getopts ":al:" opt; do
    case ${opt} in
      a)
        for file in $:ls -R $log
        do
          cat $log/$file
        done
        ;;
      l)
        file=$OPTARG
        if [ -e /var/log/$file ]
        then
          cat /var/log/$file
        else
          echo "Fichier de log inconnu"
        fi
        ;;
      *)
        echo "Unknown Option"
        ;;
    esac
  done
fi
