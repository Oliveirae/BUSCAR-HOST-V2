echo -e "\e[1;36m";
echo "Hosts que estão salvas para criação da rotate:"
sleep 3
echo -e "\e[1;32m";
cat lista-host.txt
echo ""
sleep 1
echo -e "\e[1;31mGerando carga..."
sleep 3
echo ""
hosts=$(mapfile < lista-host.txt;echo ${MAPFILE[@]} | tr ' ' ';')
echo -e "\e[1;36mCarga rotate gerada com sucesso:\e[1;32m[rotate=$hosts]"
echo ""
echo ""
echo ""
echo -e "\e[1;31mClique em ENTER para voltat ao menu inicial..."
read foo
