#!/usr/bin/env bash

[[ $# -ne 2 ]] && echo "Uso: script string arquivo" && exit 1

string=$1
arquivo=$2

printf '%s\n' "${string}"{1..155}{a..z} >> "$arquivo"