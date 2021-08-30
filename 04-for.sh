#!/usr/bin/env bash
echo "$0"
for (( i = 1; i <= 5; i++ )); do
  echo "$i"
done
echo "------------- "
echo "              "

for i in $(seq 5)
do
  echo $i
done

echo "------------- "
echo "              "

HEROIS=(
'SPIDERMAN'
'HULK'
'BATMAN'
'SUPERMAN'
'THOR'
)
for i in "${HEROIS[@]}"
do
  echo "$i"
done
