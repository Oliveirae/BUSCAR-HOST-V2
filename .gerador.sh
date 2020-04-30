#!Bin/bash

clear
echo -e "\e[1;33m"
echo "+----------------------------------+"
echo -e  "   + PAINEL DE HOST HTTP & SSH +     \e[1;32mV= 2.2\e[1;36m Por ∅LÏVEÏRÆ"
echo -e "\e[1;33m+----------------------------------+"
echo ""
echo -e "\e[1;31m[1]\e[1;32m GERAR PAYLOAD PARA HTTP/SSH"
echo -e "\e[1;31m[2]\e[1;32m GERAR PAYLOAD PARA O TLS TUNNEL"
echo -e "\e[1;31m[3]\e[1;32m VOLTAR"
echo ""
echo -e "\e[1;33mO que você deseja fazer?"
#echo -e "\e[1;31m"
echo -n "Digite o número da opção: "
read opcion
#lista de menu
echo -e "\e[0m"
case $opcion in
1)clear
echo ""
bash .payloads.sh
;;
2)clear
echo ""
bash .tunnel.sh
;;
3)clear
bash BUSCADOR.sh
read foo
;;
#error
*)clear
echo -e "Comando Inválido..."
sleep 1
bash .gerador.sh
esac
