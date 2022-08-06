#!/bin/bash

echo "Criando diretorios..."
mkdir -p  {publico,adm,ven,sec}

echo "Criando grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Craindo Usuarios..."
# usuarios grupo GRP_ADM
useradd  bento1 -c  "BENTO 1" -s /bin/bash -m -p $(openssl passwd  -crypt Senha123) -G GRP_ADM
useradd  bento2 -c  "BENTO 2" -s /bin/bash -m -p $(openssl passwd  -crypt Senha123) -G GRP_ADM
useradd  bento3 -c  "BENTO 3" -s /bin/bash -m -p $(openssl passwd  -crypt Senha123) -G GRP_ADM
# usuarios do grupo GRP_VEN
useradd  bento4 -c  "BENTO 4" -s /bin/bash -m -p $(openssl passwd  -crypt Senha123) -G GRP_VEN
useradd  bento5 -c  "BENTO 5" -s /bin/bash -m -p $(openssl passwd  -crypt Senha123) -G GRP_VEN
useradd  bento6 -c  "BENTO 6" -s /bin/bash -m -p $(openssl passwd  -crypt Senha123) -G GRP_VEN
# usuarios do grupo GRP_SEC
useradd  bento7 -c  "BENTO 7" -s /bin/bash -m -p $(openssl passwd  -crypt Senha123) -G GRP_SEC
useradd  bento8 -c  "BENTO 8" -s /bin/bash -m -p $(openssl passwd  -crypt Senha123) -G GRP_SEC
useradd  bento9 -c  "BENTO 9" -s /bin/bash -m -p $(openssl passwd  -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretorios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 770 /publico

echo "Fim..."