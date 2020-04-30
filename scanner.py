##################################################################
#Autor:RedBullDog                                               #
#Data:29/12/2017                                                 #
#Descrição:Script para scannear portas abertas em servidores     #
##################################################################
from socket import *
from datetime import datetime

def Buscador(arquivo):
    dt = DataLog()
    #input de ip e portas que deseja vascular
    ip = str(input("Digite o IP do servidor:"))
    print("   ")
    start = int(input("Digite a porta inicial:"))
    print("   ")
    end=int(input("Digite a porta final:"))

    #Escrevendo logs
    arquivo.write("{} IP do Servidor: {}\n".format(dt,ip))
    arquivo.write("{} Porta inicial: {}\n".format(dt,start))
    arquivo.write("{} Porta final: {}\n".format(dt,end))

    print("   ")
    print("Scanning ip {}".format(ip))
    for port in range(start,end):
        print("Teste Port"+str(port)+"....")
        s=socket(AF_INET, SOCK_STREAM)
        s.settimeout(5)
        if(s.connect_ex((ip,port))==0):
            print("port", port, "is open")
            dt1 = DataLog()
            arquivo.write("{} Porta Aberta {}\n".format(dt1,port))
        s.close()

#função para escrever log
def WriteLog():
    msg="Scanneamento completo, pressione ENTER para voltar ao menu inicial..."
    try:
        arquivo = open("ScannerPort.log","w")
        Buscador(arquivo)
        arquivo.close()
    except:
        msg="Erro!!! Verifique que você digitou informações ou se o servidor está on-line"
    finally:
        print(msg)

#função para gerar data dos eventos
def DataLog():
    data = datetime.now()
    tamanho = len(str(data)) - 7
    data2 = str(data)
    
    return data2[0:tamanho]

def Letreiro():
    print("<---------------------------------->")
    print("<--------SCANNER-DE-PORTAS--------->")
    print("<---------------------------------->")
    print("   ")

Letreiro()
WriteLog()
