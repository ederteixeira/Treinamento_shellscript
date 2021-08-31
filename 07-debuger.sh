#!/usr/bin/env bash
#
# 07-debuger.sh - Exemplo de debug
#
# site: github.com/ederteixeira
# autor: Éder Teixeira
# Manutenção: Éder Teixeira
#
# --------------------------------------------------------------------- #
# Descrição:
# Debugando o código
#
# Exemplos:
# 1-Debug simples:
# Exemplo por parametros:
#   bash -x ./07-debuger.sh -v -s -> Tem uma saída mais simples
#   bash -xv ./07-debuger.sh -v -s -> Tem uma saída completa
# Este tipo de debug é utilizado em códigos mais simples
#
# 2-Debug por parte específica ou linha
#   set -x -> Informa o início
#   set +x -> Informa o fim
# Exemplo por parte:
#   set -x
#   [ "$CHAVE_MAISCULO" -eq 1 ] && USUARIOS=$(echo "$USUARIOS" | tr [a-z] [A-Z])
#   set +x
#
# --------------------------------------------------------------------- #
# Histórico:
#     v1.0 30/08/2021 - Éder
#       -Inicio do exemplo do debug
#     v1.1 30/08/2021 - Éder
#       -Ajustando comentários.
#
# --------------------------------------------------------------------- #
#
#   Testado em:
#   bash 4.4.19
#
# -------------------------- Variáveis -------------------------------- #
USUARIOS=$(cat /etc/passwd | cut -d : -f 1)
MENSAGEM_USU="
  $(basename $0)
  [OPÇÕES]
  -h - Menu de ajuda
  -v - Versão
  -s - Ordernar
  -m - maiúsculo
"
VERSAO="v1.2"
CHAVE_ORDENA=0
CHAVE_MAISCULO=0

# -------------------------- Execução --------------------------------- #
while test -n "$1"
do
  case "$1" in
    -h) echo "$MENSAGEM_USU" && exit 0   ;;
    -v) echo "$VERSAO" && exit 0         ;;
    -s) CHAVE_ORDENA=1                   ;;
    -m) CHAVE_MAISCULO=1                 ;;
     *) echo "Valor inválido" && exit 1  ;;
  esac
  shift
done
set -x
[ "$CHAVE_ORDENA" -eq 1 ] && USUARIOS=$(echo "$USUARIOS" | sort)
[ "$CHAVE_MAISCULO" -eq 1 ] && USUARIOS=$(echo "$USUARIOS" | tr [a-z] [A-Z])
set +x
echo "$USUARIOS"
