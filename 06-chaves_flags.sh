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
#       -Alteração:
#
# --------------------------------------------------------------------- #
#
#   Testado em:
#   bash 4.4.19
#
# -------------------------- Variáveis -------------------------------- #
USUARIOS=$(cat /etc/passwd | cut -d : -f 1)
MENSAGEM_USU="
  $0 - [OPÇÕES]
  -h - Menu de ajuda
  -v - Versao
  -s - Ordernar
"
VERSAO="v1.0"
#
# ---------------------------- Testes --------------------------------- #
#
#
# --------------------------- Funções --------------------------------- #
#
#
# -------------------------- Execução --------------------------------- #
if [ "$1" = "-h" ];then
  echo "$MENSAGEM_USU" && exit 0
fi
if [ "$1" = "-v" ]; then
  echo "$VERSAO" && exit 0
fi
if [ "$1" = "-s" ]; then
  echo "$USUARIOS" | sort && exit 0
fi
echo "$USUARIOS"
#
#
