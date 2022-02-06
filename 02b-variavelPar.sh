#!/bin/bash

echo "$0"
: '
Roda o parametro no terminal informando o arquivo e o valor, exemplo:
./02-variavelPar.sh 2 3 4
'

echo "Parametros: 1: $1"
echo "Parametros: 2: $2"
echo "Parametros: 3: $3"

echo "Quantidade de Parametros: $#"

echo "Saída ultimo Parametros: $?"

echo "PID: $$"

echo "Nome script: $0"
