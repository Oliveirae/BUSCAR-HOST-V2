#!bin/bash
#Criado em: 23/04/2020
#by: ∅LÏVEÏRÆ
clear
while :
do
clear
echo -e "\e[1;33m"
echo "+----------------------------------+"
echo -e "   + PAINEL DE HOST HTTP & SSH +     \e[1;32mV= 2.2\e[1;36m Por ∅LÏVEÏRÆ"
echo -e "\e[1;33m+----------------------------------+"
echo ""
echo -e "\e[1;31m[1]\e[1;32m BUSCAR HOST & SSL         \e[1;31m[11]\e[1;32m CRIAR CONTA SSH"
echo -e "\e[1;31m[2]\e[1;32m MOSTRAR STATUS DA HOST    \e[1;31m[12]\e[1;32m ESTABILIZAR PING"
echo -e "\e[1;31m[3]\e[1;32m SALVAR HOSTS ENCONTRADAS  \e[1;31m[13]\e[1;32m MANUAL DO USUARIO"
echo -e "\e[1;31m[4]\e[1;32m EDITAR HOSTS SALVAS       \e[1;31m[14]\e[1;32m CREDITOS AO CRIADOR"
echo -e "\e[1;31m[5]\e[1;32m GERADOR DE PAYLOAD        \e[1;31m[A]\e[1;32m CONFIG SISTEMA"
echo -e "\e[1;31m[6]\e[1;32m GERADOR DE ROTATE         \e[1;31m[B]\e[1;32m REINICIAR"
echo -e "\e[1;31m[7]\e[1;32m VER WEB E PORTAS          \e[1;31m[0]\e[1;32m SAIR"
echo -e "\e[1;31m[8]\e[1;32m VER PROXY HOST & WEB"
echo -e "\e[1;31m[9]\e[1;32m RASTREADOR DE IP"
echo -e "\e[1;31m[10]\e[1;32m ESCANER DE PORTAS"
echo ""
echo -e "\e[1;33mO que você deseja fazer?"
#echo -e "\e[1;31m"
echo -n "Digite o número da opção: "
read opcion
#lista de menu
echo -e "\e[0m"
case $opcion in
A)clear
bash .update.sh
;;
B)clear
echo ""
echo -e "\e[1;36mREINICIANDO..."
sleep 3
bash BUSCADOR.sh
;;
1)echo ""
echo -n "HOST: ";
read HOST
bash .scan.sh $HOST
echo ""
echo -e "\e[0m";
echo -e "\e[1;31mClique em ENTER para limpar...\e[0m";
read foo
;;
2)clear
echo -e "Checando status de Hosts salvas na opção 3 ou 4..."
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
echo -e "\e[1;32m";
echo ""
echo ""
echo ""
echo -e "ATENÇÃO!"
echo ""
echo -e "Cique: CTRL + X + Y + ENTER para salvar e fechar o editor"
sleep 2
echo ""
echo ""
echo -e "Iniciando Editor..."
echo ""
sleep 2
nano lista-host.txt
;;
5)clear
bash .gerador.sh
;;
6)clear
echo -e "\e[1;32m";
echo ""
echo ""
echo "GERADOR DE ROTATE INICIADO"
sleep 1
clear
bash .rotate.sh
;;
7)echo ""
echo -ne "\e[1;31m DOMINIO/SITE/IP: ";
read MAIN
echo -ne "\e[1;31m PORTA 22,443,80,8080 etc: ";
read RTS
sleep 2
echo -e "\e[1;32m";
nmap -p $RTS $MAIN
read foo
;;
8)echo -ne "\e[1;31mSITE WEB/IP: ";
read WEB
echo ""
echo -e "\e[1;32m"
curl https://api.hackertarget.com/geoip/?q=$WEB
read foo
;;
9)clear
echo -e "\e[1;32mSistema de rastreamento iniciado...";             sleep 2
echo ""
echo -e "Digite o IP que deseja rastrear..."
bash ._
read foo
;;
10)clear
echo ""
echo -e "\e[1;32mESCANEADOR DE PORTAS INICIADO..."
sleep 2
echo ""
echo -e "\e[1;36mDigite o IP do servidor, a PORTA MINIMA e a PORTA MAXIMA:"
echo ""
sleep 0.5
python3 scanner.py
read foo
;;
11)clear
echo ""
echo -e "\e[1;32mPAINEL SHH INICIADO..."
sleep 2
echo ""
echo "Abrindo sistema de criação de contas..."
echo ""
sleep 1
echo -e "\e[1;36mPara fechar o painel, clique Q + ENTER"
echo ""
sleep 1
echo -e "\e[1;31mPara voltar ao menu inicial, clique em ENTER..."
echo ""
sleep 3
lynx http://www.createssh.com/ssl/
read foo
;;
12)clear
echo ""
echo -e "\e[1;36mESTABILIZADOR DE PING INICIADO..."
sleep 2
echo ""
echo -ne "\e[1;32mDigite o tamanho do MS: ";
read MAIN
echo ""
echo -ne "\e[1;32mDigite o IP da rede: ";
read RTS
echo ""
sleep 1
echo -e "\e[1;31mClique em CTRL + C para parar o estabilizador"
echo ""
echo -e "\e[1;36mMINIMIZE O APP E TESTE A SUA CONEXÃO..."
echo ""
sleep 1
echo -e "\e[1;31m"
ping -s $MAIN $RTS
;;
13)clear
echo -e "\e[1;32mLeia tudo para o uso correto do Script>"
sleep 2
cat manual.txt
read foo
;;
14)clear
echo ""
echo -e "\e[1;33mCREDITO AO CRIADOR\e[0m"
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
read foo
;;
#Fin del menu/in the end
0)clear
exit 0
;;
#error
*)clear
echo -e "Comando Inválido..."
sleep 1
esac
done
