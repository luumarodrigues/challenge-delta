#!/bin/bash
set -e

Listar() {
    echo "----------------------------------------"
    echo "   Selecionado: Listar pacotes          "
    echo "----------------------------------------"
    echo ""
    curl --request GET --url http://localhost/packages
    echo ""
    echo ""
    echo "Tecle enter para voltar ao menu"
    read -rsn1
    clear
    Menu
}

Criar(){
    echo "----------------------------------------"
    echo "   Selecionado: Criar novo pacote       "
    echo "----------------------------------------"
    echo "Digite o nome do pacote: "
    read resposta
    curl --request POST --url http://localhost/packages --header 'Content-type: text/plain' --data "$resposta"
    echo ""
    echo ""
    echo "Pacote criado com sucesso! :)"
    echo ""
    echo "Tecle enter para voltar ao menu"
    read -rsn1
    clear
    Menu

}

Deletar(){
    echo "----------------------------------------"
    echo "   Selecionado: Deletar pacote          "
    echo "----------------------------------------"
    echo ""
    echo "Digite o id do pacote que deseja deletar: "
    read id
    curl --request DELETE --url "http://localhost/packages/${id}"
    echo ""
    echo "Tecle enter para voltar ao menu"
    read -rsn1
    clear
    Menu
}

Sair(){
    exit
}

Menu(){
    echo "----------------------------------------"
    echo "     Gerenciamento de pacotes           "
    echo "----------------------------------------"
    echo "1. Listar pacotes"
    echo "2. Criar novo pacote"
    echo "3. Deletar pacote"
    echo "4. Sair"
    echo "Escolha uma opção: "
    read op
    clear

    case $op in 

        1) Listar ;;

        2) Criar ;;

        3) Deletar ;;

        4) Sair ;;

        *) echo "Ops, opção inválida!!" ; echo"";  echo "Tecle enter para voltar ao menu" ; read -rsn1 ; clear ; Menu

    esac
}

Menu