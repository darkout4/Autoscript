#!/bin/bash
clear
slowdns () {
echo -e "\033[1;31m════════════════════════════════════════════════════\033[0m"
tput setaf 7 ; tput setab 4 ; tput bold ; printf '%40s%s%-12s\n' "GERENCIADOR SLOWDNS" ; tput sgr0
echo -e "\033[1;31m════════════════════════════════════════════════════\033[0m"
echo -e "\033[0;36m#===================================================#\033[m"
echo -e "\033[0;36m# .|'''.|'||                '||''|. '|.   '|'.|'''.|#\033[m"
echo -e "\033[0;36m# ||..  ' ||  ... ... ... ...||   || |'|   | ||..  '#\033[m"
echo -e "\033[0;36m#  ''|||. ||.|  '|.||  ||  | ||    ||| '|. |  ''|||.#\033[m"
echo -e "\033[0;36m#.     '||||||   || ||| |||  ||    |||   |||.     '|#\033[m"
echo -e "\033[0;36m#|'....|'.||.'|..|'  |   |  .||...|'.|.   '||'....|'#\033[m"
echo -e "\033[0;36m#---------------------------------------------------#\033[m"
echo -e "\033[0;36m#\033[m \033[0;31mSlowDNS | SANTAI\033[m \033[0;36m#\033[m"
echo -e "\033[0;36m#===================================================#\033[m"
    echo ""
    echo -e "\033[0;36m[01]\033[m | Instalar SlowDNS SSH"
    echo -e "\033[0;36m[02]\033[m | Instalar SlowDNS SSL"
    echo -e "\033[0;36m[03]\033[m | Instalar SlowDNS DROP"
    echo -e "\033[0;36m[04]\033[m | Instalar SlowDNS SOCKS"
    echo -e "\033[0;36m[05]\033[m | Ver informações"
    echo -e "\033[0;36m[06]\033[m | Iniciar SlowDNS"
    echo -e "\033[0;36m[07]\033[m | Reiniciar SlowDNS"
    echo -e "\033[0;36m[08]\033[m | Parar SlowDNS"
    echo -e "\033[0;36m[09]\033[m | Remover SlowDNS"
    echo -e "\033[0;36m[10]\033[m | Atualizar/Reinstalar"
    echo -e "\033[0;36m[11]\033[m | Remover Script"
    echo -e "\033[0;36m[00]\033[m | SAIR"
    echo ""
    echo -ne "\033[0;36mO que deseja fazer?:\0033[m " && read opcao
    case $opcao in
    1) Opcao1 ;;
    2) Opcao2 ;;
    3) Opcao3 ;;
    4) Opcao4 ;;
    5) Opcao5 ;;
    6) Opcao6 ;;
    7) Opcao7 ;;
    8) Opcao8 ;;
    9) Opcao9 ;;
    10) Opcao10 ;;
    11) Opcao11 ;;
    0) Sair ;;
    *) "Calma Barboleta" ; echo ; slowdns ;;
    esac
    }

Opcao1 () {
    clear
    bash /etc/slowdns/slowdns-ssh
}

Opcao2 () {
    clear
    bash /etc/slowdns/slowdns-ssl
}

Opcao3 () {
    clear
    bash /etc/slowdns/slowdns-drop
}

Opcao4 () {
    clear
    bash /etc/slowdns/slowdns-socks
}


Opcao5 () {
    clear
    bash /etc/slowdns/slowdns-info
}

Opcao6 () {
    clear
    bash /etc/slowdns/startdns
}

Opcao7 () {
    clear
    bash /etc/slowdns/restartdns
}

Opcao8 () {
    clear
    bash /etc/slowdns/stopdns
}

Opcao9 () {
     clear
    bash /etc/slowdns/stopdns
    bash /etc/slowdns/remove-slow
}

Opcao10 () {
    clear
    wget https://raw.githubusercontent.com/darkout4/Autoscript/main/Slowdns/update
    chmod +x update
    bash update
}

Opcao11 () {
     clear
    bash /etc/slowdns/remove-slow
    echo -e "\033[0;31mGerenciador SlowDNS removido!\033[0m"
    sleep 2
    rm /bin/slowdns
}

Sair() {
    clear
    exit
}
clear
slowdns
