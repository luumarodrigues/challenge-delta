#!/bin/bash
set -e

    echo "Realizando Build e deploy..."

    sudo docker-compose build
    if [ $? = 0 ]
        then
            echo "----------------------------------------"
            echo "     Deploy realizado com sucesso!      "
            echo "----------------------------------------"
        else
            echo "Erro, tente novamente!"
    fi
    sudo docker-compose up -d
    if [ $? = 0 ]
        then
            clear
            echo "----------------------------------------"
            echo "     Deploy realizado com sucesso!      "
            echo "----------------------------------------"
        else
            echo "Erro, tente novamente!"
    fi
