#!/usr/bin/env bash

# Exemplo: ^ - Início da linha
grep "^m" /etc/passwd

echo " "
# Exemplo: $ - Fim da linha
grep "h$" /etc/passwd
echo " "

# Exemplo: . - Caractere curinga
grep "^.e" /etc/passwd
echo " "

# Exemplo: + - Dígito anterior deve aparecer uma vez ou mais
egrep "^s+" /etc/passwd
echo " "

# Exemplo: | - Operador "ou"
egrep "root|systemd" /etc/passwd
echo " "

# Exemplo: * - Letra "*" zero ou mais vezes
egrep "^z*" /etc/passwd
echo ""
# Exemplo:  [^] - Caracteres negada
grep "^m[^a]" /etc/passwd
echo ""

# Exemplo: {,} - O dígito anterior deve aparecer na quantidade indicada
egrep "^.{90,}$" /etc/passwd
echo ""