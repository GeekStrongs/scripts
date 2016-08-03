#!/bin/bash
#Script básico para limpeza de logs no seu sistema Linux!
#Versão: 1.0
sleep 2
cat <<!
------------------

    ReXlog v1

    by Derxs

------------------
!
sleep 2
echo "[+] Limpando logs do sistema..."
	sudo rm -rf /var/log/*.log*
        sudo rm -rf /var/log/apache2/*.log*
        sudo rm -rf /var/log/chkrootkit/*.log*
        sudo rm -rf /var/log/exim4/*.log*
        sudo rm -rf /var/log/fsck/*.log*
        sudo rm -rf /var/log/mitmf/*.log*
        sudo rm -rf /var/log/mitmf/dnschef/*.log*
        sudo rm -rf /var/log/mitmf/responder/*.log*
        sudo rm -rf /var/log/postgresql/*.log*
        sudo rm -rf /var/log/apt/*.log*
        sudo rm -rf /var/log/i2p/*.log*
        sudo rm -rf /var/log/lightdm/*.log*
        sudo rm -rf /var/log/mysql/*.log*
        sudo rm -rf /var/log/samba/*.log*
        sudo rm -rf /var/log/tor/*.log*
        sudo rm -rf /var/log/firebird/*.log*
        sudo rm -rf /var/log/installer/*.log*
        sudo rm -rf /var/log/polipo/*.log*
        sudo rm -rf /var/log/stunnel4/*log*
sleep 2
echo "[+] Concluído!"
