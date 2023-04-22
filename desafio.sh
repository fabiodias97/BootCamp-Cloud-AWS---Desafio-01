#!/bin/bash

echo "Criando Diretórios..."

mkdir /publica
mkdir /adm
mkdir /vendas

echo "Criando Grupos de Usuários..."

groupadd GRP_ADM
groupadd GRP_VENDAS

echo "Criando Usuários..."


useradd Fabio -m -s /bin/bash -p $(openssl passwd -crypt Senha321)
useradd Maria -m -s /bin/bash -p $(openssl passwd -crypt Senha321)

useradd Debora -m -s /bin/bash -p $(openssl passwd -crypt Senha321)
useradd Roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha321)

echo "Especificando Permissões dos Diretórios..."

shown root:GRP_ADM /adm
shown root:GRP_VENDAS /vendas

chmod 770 /adm
chmod 770 /vendas
chmod 777 /publica

echo "Script Criado com sucesso!"

