#!bin/bash
#Criado em: 23/04/2020
#by: ∅LÏVEÏRÆ
#Instalação concluida
#MESSAGE: INICIANDO SISTEMA>
clear
while :
do
#menu banner
clear
echo -e "\e[1;33m"
echo "+----------------------------------+"
echo "  + BUSCADOR DE HOST HTTP & SSL +  "
echo "+----------------------------------+"
echo -e "\e[1;32mV= 2.0\e[1;36m Por ∅LÏVEÏRÆ"
echo ""
echo -e "\e[1;31m[1]\e[1;32m BUSCAR HOST & SSL"
echo -e "\e[1;31m[2]\e[1;32m MOSTRAR STATUS DA HOST"
echo -e "\e[1;31m[3]\e[1;32m SALVAR HOSTS ENCONTRADAS"
echo -e "\e[1;31m[4]\e[1;32m GERAR PAYLOAD"
echo -e "\e[1;31m[5]\e[1;32m VER WEB E PORTAS"
echo -e "\e[1;31m[6]\e[1;32m VER PROXY HOST & WEB"
echo -e "\e[1;31m[7]\e[1;32m RASTREADOR DE IP"
echo -e "\e[1;31m[8]\e[1;32m MANUAL DE USUÁRIO"
echo -e "\e[1;31m[9]\e[1;32m CRÉDITOS DO CRIADOR"
echo -e "\e[1;31m[0]\e[1;32m SAIR"
echo ""
echo -e "\e[1;33mO que você deseja fazer?"
#echo -e "\e[1;31m"
echo -n "Digite o número da opção: "
read opcion
#lista de menu
echo -e "\e[0m"
case $opcion in
1)echo ""
echo -n "HOST: ";
read HOST;
bash .scan.sh $HOST
echo ""
echo -e "\e[0m";
echo -e "\e[1;31mClique em ENTER para limpar...\e[0m";
read foo
;;
2)clear
echo -e "Checando status de Hosts salvas na opção 3...";
echo -e "Por favor aguarde..."
echo ""
bash .status.sh
echo ""
echo -e "\e[1;31mClique em ENTER para voltar ao menu inicial...\e[0m"
read foo
;;
3)echo ""
echo -e "\e[1;33mDigite a Host que você deseja checar\e[0m";
echo -e "\e[1;31mClique em CTRL + C para salvar e sair\e[0m";
echo -e "\e[1;36mHOST: \e[0m";
cat>lista-host.txt
;;
4)clear
bash .payloads
read foo;
;;
5)echo ""
echo -ne "\e[1;31m DOMAIN(IP/WEB): ";
read MAIN
echo -ne "\e[1;31m PORTS(22,53,443,80,8799,8080):  ";
read RTS
sleep 2
echo -e "\e[1;32m";
nmap -p $RTS $MAIN
read foo
;;
6)echo -ne "\e[1;31mSITE WEB/IP: ";
read WEB
echo ""
echo -e "\e[1;32m"
curl https://api.hackertarget.com/geoip/?q=$WEB
read foo
;;
7)clear
echo -e "\e[1;32mSistema de rastreamento iniciado...";             sleep 2
echo ""
echo -e "Digite o IP que deseja rastrear..."
bash ._
read foo
;;
8)clear
echo -e "\e[1;32mLeia tudo para o uso correto do Script>"
sleep 2
cat manual.txt
read foo
;;
9)echo ""
echo -e "\e[1;33mCREDITO AO CRIADOR\e[0m"
clear
echo ""
echo -e "\e[1;31m© 2018-2020 ∅LÏVEÏRÆ"
echo "Todos os direitos reservados "
echo -e "\e[1;32m"
echo "TELEGRAM: https://t.me/OliveiraWS "
echo "TELEGRAM BOT: https://t.me/oliveirae_bot "
echo "CANAL: https://t.me/vivoficial "
echo ""
echo "BEM VINDO AO PROJETO ∅LÏVEÏRÆ "
echo ""
echo -e "\e[1;31mMENSAGEM:\e[0m"
echo ""
echo -e "\e[1;36mQue a luz do Sol da sabedoria, ilumine a nossa vã ignorância...\e[0m"
echo ""
read foo;
;;
#Fin del menu/in the end
0)clear
exit 0;;
#error
*)clear
echo "Comando Inválido...";
sleep 1
;;
esac
done

