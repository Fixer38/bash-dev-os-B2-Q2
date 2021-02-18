#!/bin/bash

while getopts "abc" opt; do
  case ${opt} in
    a)
      echo "option a"
      ;;
    b)
      echo "option b"
      ;;
    c)
      echo "option c"
      ;;
    \?)
      echo "aucune option valide"
      exit 1
  esac
done
shift $((OPTIND -1))
