#!/bin/bash
#
# 09-addcolors.sh - Exemplo de exibição com cores
#
# site: github.com/ederteixeira
# autor: Éder Teixeira
# Manutenção: Éder Teixeira
#
# --------------------------------------------------------------------- #
# Descrição:
# Adicionando cores ao código.
#
# Exemplos:
# Código:
#   > echo -e "\033[**;*m***"
#   >> \033[ -> Nomenclatura obrigatória.
#   >> **    -> Cor a ser adicionada (ver tabela de cores).
#   >> *     -> Estilização (Exemplo Negrito).
#   >> ***   -> Texto/variável a ser exibido.
#
# --------------------------------------------------------------------- #
# Histórico:
#     v1.0 07/09/2021 - Éder
#       -Inicio do exemplo do debug
#
# --------------------------------------------------------------------- #
#
#   Testado em:
#   bash 4.4.19
#
# -------------------------- Variáveis -------------------------------- #
echo "Informe o texto: "
read USER
echo "
    [Menu: ]
    Informe o numero da cor escolhida:
    1 - Preto
    2 - Vermelho
    3 - Verde
    4 - Amarelo
    5 - Azul
    6 - Roxo
    7 - Ciano
    8 - Cinza Claro
    "
read NUMCOR

case "$NUMCOR" in
    1) echo -e "\033[30;1;5m$USER";;
    2) echo -e "\033[31;1;5m$USER";;
    3) echo -e "\033[32;1;5m$USER";;
    4) echo -e "\033[33;1;5m$USER";;
    5) echo -e "\033[34;1;5m$USER";;
    6) echo -e "\033[35;1;5m$USER";;
    7) echo -e "\033[36;1;5m$USER";;
    8) echo -e "\033[37;1;5m$USER";;
    *) echo -e "Valor inválido!!!";;
esac