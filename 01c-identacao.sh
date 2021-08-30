#!/usr/bin/env bash
PAR=1
if [[ $PAR -gt 0 ]] #valida parametro 0
then
  if [[ $PAR -gt 1 ]] #valida parametro 1
  then
    if [[ $PAR -gt 2 ]] #valida parametro 2
    then
      echo "Olá mundo!"
    fi
  fi
fi
