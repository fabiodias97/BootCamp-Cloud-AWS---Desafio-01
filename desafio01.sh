#!/bin/bash

echo "Criando Diretórios..."

mkdir /publica
mkdir /adm
mkdir /vendas

echo "Criando Grupos de Usuários..."

groupadd GRP_ADM
groupadd GRP_VENDAS

echo "Criando os Usuários..."

useradd Fábio -m -s /bin/bash -p $(openssl passwd -crypt Senha321) -G GRP_ADM
useradd Maria -m -s /bin/bash -p $(openssl passwd -crypt Senha321) -G GRP_ADM

useradd Debora -m -s /bin/bash -p $(openssl passwd -crypt Senha321) -G GRP_VENDAS
useradd Roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha321) -G GRP_VENDAS

echo "Especificando permissões dos Diretótios..."

chown root:GRP_ADM /adm
chown root:GRP_VENDAS /vendas

chmod 770 /adm
chmod 770 /vendas
chmod 777 /publica

echo "Script criado!"
