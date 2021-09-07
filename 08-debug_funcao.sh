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
KEYDEBUG=0
NDEBUG=0
#
# ------------------------------------------------------------------------ #

# ------------------------------- FUNÇÕES ----------------------------------------- #

Debugando () {
  [ $1 -le $NDEBUG ] && echo "-- Debug: $* --"
}

Soma () {
  local total=0

  for i in $(seq 1 25); do
      Debugando 1 "Entrei com o valor? $i"
      total=$(($total+$i))
      Debugando 2 "Depois de soma:    $total"
  done
}
# ------------------------------------------------------------------------ #
case "$1" in
  -d) [ $2 ] && NDEBUG=$2 ;;
  *) Soma                 ;;
esac

Soma
# ------------------------------------------------------------------------ #