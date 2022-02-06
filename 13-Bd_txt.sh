#!/bin/bash
#
# arquivo: 13-bd_txt.sh
# autor: Éder Teixeira
# Manutenção: Éder Teixeira
# Site: https://github.com/ederteixeira/
# --------------------------------------------------------------------- #
# Descrição:
# Exemplo de utilização de arquivo de banco de dados
# --------------------------------------------------------------------- #
# Histórico:
#     v1.0 03/02/2022 - Éder
#       -Inicio do programa
# --------------------------------------------------------------------- #
#   Testado em:
#   bash 4.4.20(1)
# -------------------------- Variáveis -------------------------------- #
ARQ_BD="13-bd.txt"
AZUL="\033[34;1m"
ROXO="\033[35;1m"
# ---------------------------- Testes --------------------------------- #
[ ! -e "$ARQ_BD" ] && echo "Arquivo não exite" && exit 1
[ ! -r "$ARQ_BD" ] && echo "Arquivo sem permissão de escrita." && exit 1
[ ! -w "$ARQ_BD" ] && echo "Arquivo sem permissão de leitura." && exit 1
# --------------------------- Funções --------------------------------- #
MostraUsuarioTela () {
        local id="$(echo $1 | cut -d : -f 1)"
        local nome="$(echo $1 | cut -d : -f 2)"
        local email="$(echo $1 | cut -d : -f 3)"

        echo -e "${AZUL}ID: ${ROXO}$id"
        echo -e "${AZUL}Nome: ${ROXO}$nome"
        echo -e "${AZUL}Email: ${ROXO}$email"
}

ListarUsuarios () {
    while read -r linha
    do
        [ "$(echo $linha | cut -c1)" = "#" ] && continue
        [ ! "$linha" ] && continue
        MostraUsuarioTela "$linha"
    done < "$ARQ_BD"
}
# -------------------------- Execução --------------------------------- #
