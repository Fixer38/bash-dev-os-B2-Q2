#!/bin/bash

IFS=';'

while getopts ":hs:o:" opt; do
  case ${opt} in
    h)
      echo "Les noms d'utilisateur et mdp dans le fichier doivent être séparés par un délimiteur et mis ligne par ligne"
      ;;
    s)
      IFS=$OPTARG
      ;;
    o)
      file=$OPTARG
      ;;
    *)
      echo "Unknown option"
      ;;
  esac
done

if [ $(id -u) -eq 0 ]; then
  if [ -f "$file" ]; then
    while read line; do
      read -a strarr <<< "$line"
      user=${strarr[0]}
      password=${strarr[1]}
      encryptedpassword=$(perl -e 'print crypt($ARGV[0], "password")', $password)
      useradd -m -p "$encryptedpassword" "$user"
      [ $? -eq 0 ] && echo "User has been added" || echo "Failed to add user"
    done < $file
  fi
else
  echo "You're not root"
fi
