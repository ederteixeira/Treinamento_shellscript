#!/usr/bin/env bash
#
# 08-debug_funcao.sh - Exemplo de debug
#
# site: github.com/ederteixeira
# autor: Éder Teixeira
# Manutenção: Éder Teixeira
#
# --------------------------------------------------------------------- #
# Descrição:
# Debugando o código utilizando função
#
# --------------------------------------------------------------------- #
# Histórico:
#     v1.0 30/08/2021 - Éder
#       -Inicio do exemplo do debug por função
#
# --------------------------------------------------------------------- #
#
#   Testado em:
#   bash 4.4.19
#
# ------------------------------- VARIÁVEIS ----------------------------------------- #
CHAVE_DEBUG=0
NIVEL_DEBUG=0
# ------------------------------------------------------------------------ #

# ------------------------------- FUNÇÕES ----------------------------------------- #
Debugar () {
  [ $1 -le $NIVEL_DEBUG ] && echo "Debug $* ------"
}

Soma () {
  local total=0

  for i in $(seq 1 25); do
      Debugar 1 "Entrei no for com o valor: $i"
      total=$(($total+$i))
      Debugar 2 "Depois da soma: $total"
  done
}
# ------------------------------------------------------------------------ #
case "$1" in
  -d) [ $2 ] && NIVEL_DEBUG=$2 ;;
   *) Soma                     ;;
esac

Soma
# ------------------------------------------------------------------------ #
