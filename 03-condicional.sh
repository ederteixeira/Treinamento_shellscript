#!/usr/bin/env bash
echo "Script condicional *** $0  ***"

VAR1="5"
VAR2="5"
VAR3="10"

if [[ "$VAR1" = "$VAR2" ]]; then
  echo "Iguais 1"
fi

if [[ "$VAR1" = "$VAR2" ]]
then
  echo "Iguais 2"
fi

if test "$VAR1" = "$VAR2"
then
  echo "Iguais 3"
fi

[ "$VAR1" = "$VAR2" ] && echo "iguais 4"

if [[ "$VAR1" = "$VAR3" ]]; then
  echo "Iguais 5"
else
  echo "Diferentes 1"
fi

[ "$VAR1" = "$VAR3" ] && echo "Iguais 6" || echo "Diferentes 2"
