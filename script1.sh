!/bin/bash

echo "Aprendendo a usar scripts:"

echo "Criação de diretórios:"

mkdir /publico
mkdir /adm
mkdir /sec
mkdir /ven

echo "Criação de grupos:"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Agora criando usuarios de adm:"

useradd carlos -m -s /bin/bash -p 1234 -G GRP_ADM
useradd maria -m -s /bin/bash -p 1234 -G GRP_ADM
useradd joao -m -s /bin/bash -p 1234 -G GRP_ADM

echo "*nota*: Aprendi a adicionar o usuario ja com a senha com uma colinha na aula"


echo "Decidi colocar os usuarios acima no seu respectivo grupo porém"
echo "Deu erro e tive que utilizar o método do professor também."

echo "Agora criando usuarios de ven:"

useradd debora -m -s /bin/bash -p 1234 -G GRP_VEN
useradd sebastiana -m -s /bin/bash - 1234 -G GRP_VEN
useradd roberto -m -s /bin/bash -1234 -G GRP_VEN

echo "Por fim os usuarios do grupo sec:"

useradd josefina -m -s /bin/bash -p 1234 -G GRP_SEC
useradd amanda -m -s /bin/bash -p 1234 -G GRP_SEC
useradd rogerio -m -s /bin/bash -p 1234 -G GRP_SEC

echo "Agora irei arrumar as permissões de cada diretório:"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Antes eu tinha colocado só o chmod na aula vi que precisava também do chown"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Acabou finally"
