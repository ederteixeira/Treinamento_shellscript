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
# -------------------------- Variáveis -------------------------------- #
#
# -------------------------- Função --------------------------------- #
Soma () {
  local total=0
  for i in $(seq 1 25); do
    total=$(($total+$i))
  done
  echo $total
}
# -------------------------- Execução --------------------------------- #
#
Soma
