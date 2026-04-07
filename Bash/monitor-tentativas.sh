#!/usr/bin/env bash

valido=true
tentativas=1
readonly senha=senha123

while [ $valido ]
do
read -p "Digite a senha: " entrada
if [ $entrada = $senha ]; then
echo "Acesso permitido"
break
fi
if [ $tentativas -eq 3 ]; then
echo "Acesso bloqueado"
break
fi
((tentativas++))
done
