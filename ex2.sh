#!/bin/bash

for var in "$@"
do
  case $var in
    "robert")
      echo "bonjour robert"
      ;;

    "test")
      echo "Attention ceci est un compte test"
      ;;
    
    "root")
      echo "Bienvenue administrateur"
      ;;

    *)
      echo "Erreur nom inconnu"
      exit 1
  esac
done
