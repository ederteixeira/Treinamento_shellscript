#!/bin/bash

echo "WHILE 1 -eq"
CONT1=0
while [  $CONT1 -eq 0 ]; do
      echo "$CONT1";
      let CONT1=CONT1+1;
done

echo "WHILE 2 -ne"
CONT2=0
while [ $CONT2 -ne 5 ]
do
  echo "$CONT2";
  let CONT2=CONT2+1;
done

echo "WHILE 3 -gt"

CONT3=5
while [ $CONT3 -gt 0 ]
do
  echo "$CONT3";
  let CONT3=CONT3-1;
done

echo "WHILE 4 -ge"
CONT4=5
while [ $CONT4 -ge 0 ]
do
  echo "$CONT4";
  let CONT4=CONT4-1;
done

echo "WHILE 5 -lt"
CONT5=0
while [ $CONT5 -lt 5 ]
do
  echo "$CONT5";
  let CONT5=CONT5+1;
done

echo "WHILE 6 -le"
CONT6=0
while [ $CONT6 -le 5 ]
do
  echo "$CONT6";
  let CONT6=CONT6+1;
done

echo "WHILE ! negação"
VAR1=0
VAR2=0
while [ ! $VAR1 != $VAR2 ]
do
   echo "Diferentes";
   let VAR1=VAR1+1;
done

echo "While com if"
VAR1=5
while [[ "$VAR1" -gt 0 ]]
do
  echo "$VAR1"
  if [[ "$VAR1" -eq 3 ]]
  then
    echo "Igual a 3"
    break
  fi
  let VAR1=VAR1-1
done
