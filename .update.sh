echo -e "\e[1;33m"
echo "+----------------------------------+"
echo -e "   + PAINEL DE HOST HTTP & SSH +     \e[1;32mV= 2.2\e[1;36m Por ∅LIVEÏRÆ"
echo -e "\e[1;33m+----------------------------------+"
echo ""
echo -e "\e[1;31m[1]\e[1;32m ATUALIZAR SCRIPT"
echo -e "\e[1;31m[2]\e[1;32m INSTALAR PROGRAMAS BASICOS"
echo -e "\e[1;31m[3]\e[1;32m VOLTAR"
echo ""
echo -e "\e[1;33mO que você deseja fazer?"
#echo -e "\e[1;31m"
echo -n "Digite o número da opção: "
read opcion
#lista de menu
echo -e "\e[0m"
case $opcion in
1)echo ""
echo -e "\e[1;36mATUALIZANDO, POR FAVOR AGUARDE..."
echo ""
sleep 2
git clone https://github.com/Oliveirae/BUSCAR-HOST-V2.git
echo ""
echo -e "\e[1;32mScript Atualizado com Sucesso!"
sleep 2
bash .update.sh
read foo
;;
2)echo ""
echo -e "\e[1;36mATENÇÃO!"
sleep 1
echo ""
echo -e "\e[1;36mOS PROGRAMAS PYTHON, BASH, PKG, APT E OUTROS SERÃO INSTALADOS PARA O FUNCIONAMENTO NORMAL DO SCRIPT..."
sleep 4
echo -e "\e[1;36ESTEJA CONECTADO A INTERNET PARA O DOWNLOAD DE ATUALIZAÇÃO DOS PROGRAMAS"
echo ""
echo ""
sleep 2
echo -e "\e[1;32mINSTALANDO:"
echo ""
sleep 2
termux-setup-storage
apt update && apt upgrade
pkg install git
pkg install curl
pkg install wget
pkg install nano
pkg install lynx
pkg install python2
apt-get install curl
apt-get install wget
apt-get install nmap
pip install --upgrade pip
pkg install nmap -y
echo ""
echo -e "\e[1;32mConcluido!"
sleep 2
clear
bash .update.sh
read foo
;;
3)bash BUSCADOR.sh
;;
#error
*)clear
echo -e "Comando Inválido..."
sleep 1
bash .update.sh
esac
