#!/bin/bash

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt senha123) -GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt senha123) -GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt senha123) -GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senha123) -GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senha123) -GRP_VEN 
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt senha123) -GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt senha123) -GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha123) -GRP_SEC

chown server:GRP_ADM /adm
chown server:GRP_VEN /ven
chown server:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

