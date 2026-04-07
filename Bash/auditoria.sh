#!/usr/bin/env bash

echo  "----------------INFORMAÇÔES---------------"
echo ""

echo -n "Nome de usuário: "
whoami
echo ""

echo -n "Nome da máquina: "
hostname
echo ""

echo -n "Tempo de atividade: "
uptime -p
echo ""

echo -n "Versão do Kernel: "
uname -rms
echo ""

echo "--------------------------------------------"
