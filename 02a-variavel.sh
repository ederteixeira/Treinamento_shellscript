#!/bin/bash
NOME="EDER TEIXEIRA"
echo "$NOME"

NUM1=4
NUM2=3
echo $((NUM1+NUM2)) #soma
echo $((NUM1-NUM2)) #subtracao
echo $((NUM1*NUM2)) #multiplicacao
echo $((NUM1/NUM2)) #divisao
echo $((NUM1%NUM2)) #modulo
echo $((NUM1^NUM2)) #potencia

SAIDA="$(sudo cat /etc/passwd | grep eder)"
echo "$SAIDA"
