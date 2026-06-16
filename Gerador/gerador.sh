#!/usr/bin/env bash

[[ $# -ne 1 ]] && echo "Uso: exec quantidade_caracteres" && exit 1

quantidade_caracteres=$1

strM="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
strm="abcdefghijklmnopqrstuvwxyz"
strE="!@#$%%&*()><;:.,}{[]+-"
strN="1234567890"

senha=""

for (( i=0; i<quantidade_caracteres; i++ )); do

    tipo_caractere=$(( (RANDOM % 4) + 1 ))
    
    case ${tipo_caractere} in
        (1) senha+="${strM:$((RANDOM % ${#strM})):1}" ;;
        (2) senha+="${strm:$((RANDOM % ${#strm})):1}" ;;
        (3) senha+="${strE:$((RANDOM % ${#strE})):1}" ;;
        (4) senha+="${strN:$((RANDOM % ${#strN})):1}" ;;
    esac
done

echo "$senha" | tee -a lista_de_senhas.txt
