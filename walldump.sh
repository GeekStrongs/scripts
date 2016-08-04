#!/bin/bash
sleep 2
cat <<!
------------------

  Wire Dump v.1

    by Derxs
------------------
!
sleep 2
clear
Menu(){
cat <<!
-------------------------------------
1) Proteger a rede de um ataque DDoS
2) Proteger de Backdoors Padrões
3) Proteger as portas WhatsApp
4) Status de FireWall
5) Resetar FireWall
0) Sair
-------------------------------------
!
echo -n "Qual a opção desejada ? "
read opcao
case $opcao in
	1)sh_DoS;;
	2)sh_Bdo;;
	3)sh_Wta;;
	4)sh_Sta;;
	5)sh_Res;;
	0)sh_Sai;;
	*) echo "Opção inválida!";sleep 1;clear;Menu;;
esac
}
sh_DoS(){
	sleep 1
	echo "[+] Aguarde..."
	sleep 2
	sudo iptables -A INPUT -P tcp -m tcp --dport 80 -m limit --limit 25/min --limit-burst 100 -j ACCEPT
	echo "[*] Concluído!"
	sleep 2
	clear
	Menu
}
sh_Bdo(){
	sleep 1
	echo "[+] Aguarde..."
	sudo iptables -A INPUT -p tcp -m tcp --dport 4444 -j DROP
	echo "[*] Concluído!"
	sleep 1
	clear
	Menu
}
sh_Wta(){
	sleep 1
	echo "[+] Aguarde..."
	sleep 2
	sudo iptables -A INPUT -p tcp -m tcp --dport 5222 -j DROP
	echo "[*] Concluído!"
	sleep 2
	clear
	Menu
}
sh_Sta(){
	sleep 1
	sudo iptables -L
	sleep 4
	clear
	Menu
}
sh_Res(){
	sleep 1
	echo "[+] Resetando configurações..."
	sleep 2
	sudo iptables -F
	echo "[*] Concluído!"
	sleep 2
	clear
	Menu
}
sh_Sai(){
	sleep 1
	exit
}
Menu
