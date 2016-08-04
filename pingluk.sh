#!/bin/bash
sleep 2
cat <<!
-----------------

  PingLuk v.1

   by Derxs

-----------------
!
sleep 2
if [ "$1" == "" ];
then
echo "[!] Erro! Faltou o endereço IP do seu roteador!"
echo "[+] Exemplo de uso: $0 192.168.1"
else
for host in {1..254};do
ping -w1 -c1 $1.$host | grep "64 bytes from" | cut -d " " -f4 | sed 's/.$/ Está na rede./'
done
fi
