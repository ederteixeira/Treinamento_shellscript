#!/usr/bin/env bash
# barra \ quebra a linha e o comando continua na próxima linha
sudo find /home/eder/Documentos \
       -iname "*.pdf" \
       -user eder    \
       -type f       \
       -size +20M  \
       -exec ls {}   \;
