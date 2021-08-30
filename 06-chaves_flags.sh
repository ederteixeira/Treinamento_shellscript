#!/usr/bin/env bash
#
# 07-chaveseflags.sh - Extrai usuarios do /etc/passwd
#
# site: github.com/ederteixeira
# autor: Éder Teixeira
# Manutenção: Éder Teixeira
#
# --------------------------------------------------------------------- #
# Descrição:
# Irá extrair usuários do /etc/passwd com possibilidade de por em maiusculo
# e ordem alfabetica
#
# Exemplos:
# 07-chaveseflags.sh -s -m
# Neste exemplo ficará em ordem alfabetica e maiusculo
#
# --------------------------------------------------------------------- #
# Histórico:
#     v1.0 23/08/2021 - Éder
#       -Inicio do programa
#       -Alteração: parametros -s -h -v
#     v1.1 30/08/2021 - Éder
#       -Alteração: Adicionado o case e chaves
#
# --------------------------------------------------------------------- #
#
#   Testado em:
#   bash 4.4.19
#
# -------------------------- Variáveis -------------------------------- #
USUARIOS=$(cat /etc/passwd | cut -d : -f 1)
MENSAGEM_USU="
  $(basename $0) - [OPÇÕES]
  -h - Menu de ajuda
  -v - Versao
  -s - Ordernar
  -m - maiusculo
"
VERSAO="v1.1"
CHAVE_ORDENA=0
CHAVE_MAISCULO=0
#
# ---------------------------- Testes --------------------------------- #
#
#
# --------------------------- Funções --------------------------------- #
#
#
# -------------------------- Execução --------------------------------- #
case "$1" in
  -h) echo "$MENSAGEM_USU" && exit 0   ;;
  -v) echo "$VERSAO" && exit 0         ;;
  -s) CHAVE_ORDENA=1                   ;;
  -m) CHAVE_MAISCULO=1                 ;;
   *) echo "$USUARIOS"                 ;;
esac
[ "$CHAVE_ORDENA" -eq 1 ] && echo "$USUARIOS" | sort
[ "$CHAVE_MAISCULO" -eq 1 ] && echo "$USUARIOS" | tr [a-z] [A-Z]
#
#
