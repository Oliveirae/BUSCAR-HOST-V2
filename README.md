
............................................

#        COMO INSTALAR 
#     O SCRIPT NO TERMUX

............................................

PASSO 1: Instale o app TERMUX

PASSO 2: Copie e cole os comandos (esteja conectado a internet quando abrir o app pela primeira vez, e durante a instalação dos comandos abaixo)(Se der erro, copie e cole linha por linha)

termux-setup-storage

pkg install curl -y

pkg install wget -y

pkg install nano

apt update && apt upgrade

pkg install git

git clone https://github.com/Oliveirae/BUSCAR-HOST-V2.git

cd BUSCAR-HOST-V2

bash BUSCADOR.sh


OBS: Para abrir o menu caso você precise novamente, use o comando:

cd BUSCAR-HOST-V2

bash BUSCADOR.sh

