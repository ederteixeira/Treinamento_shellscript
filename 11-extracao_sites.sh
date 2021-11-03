#!/usr/bin/env bash
#
# 11-extracao_site.sh - Extrai cursos do site amigoscode
#
# site: github.com/ederteixeira
# autor: Éder Teixeira
# Manutenção: Éder Teixeira
#
# ------------------------Descrição-------------------------------- #
# Irá extrair os cursos do site https://amigoscode.com/courses
#
# ------------------------Histórico-------------------------------- #
# Histórico:
#     v1.0 02/11/2021 - Éder
#       -Inicio do programa
#
# -------------------------Dependências---------------------------- #
# Instalar o Lynx
[ ! -x "$(which lynx)" ] && sudo apt install lynx -y
#
# -------------------------Variaveis---------------------------- #
ARQ_TITULOS="arquivo.txt"

lynx -source www.amigoscode.com/courses | grep course-listing-title | sed 's/<div.*title="//;s/">//' > arquivo.txt
cat arquivo.txt
