#!/usr/bin/env bash

<< 'comentario'
* Comparação de Strings

var1 = var2 - Retorna verdadeiro se as Strings forem iguais.
var1 != var2 - Retorna falso se as Strings não forem iguais.
-n var1 - Retorna verdadeiro se a String não é nula.
-z var1 - Retorna verdadeiro se a String é nula.


* Comparação Numérica

expressao1 -eq expressao2 - Retorna verdadeiro se os valores são iguais.
expressao1 -ne expressao2 - Retorna verdadeiro se os valores não são iguais.
expressao1 -gt expressao2 - Retorna verdadeiro se a expressao1 é maior que a expressao2.
expressao1 -ge expressao2 - Retorna verdadeiro se a expressao1 é maior ou igual a expressao2.
expressao1 -lt expressao2 - Retorna verdadeiro se a expressao1 é menor que a expressao2.
expressao1 -le expressao2 - Retorna verdadeiro se a expressao1 é menor ou igual a expressao2.
! expressao1 - Nega o resultado da expressao1 (inverte o resultado).

* Condicionais de arquivos

-d file - Retorna se for um diretório.
-e file - Retorna verdadeiro se o arquivo existir.
-f file - Retorna verdadeiro se o arquivo existir (-f é mais usado porque é mais portável).
-g file - Retorna verdadeiro se o GID estiver habilitado no arquivo.
-r file - Retorna verdadeiro se o arquivo tiver permissão de leitura.
-s file - Retorna verdadeiro se o arquivo tiver um tamanho diferente de zero.
-u - Retorna verdadeiro se o UID estiver habilitado no arquivo.
-w - Retorna verdadeiro se o arquivo tiver permissão de escrita.
-x - Reteorna verdadeiro se o arquivo tiver permissão de execução.

comentario