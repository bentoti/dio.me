#!/bin/bash
#LINK PROJETO NGINX USADO HTTPS: https://mw1.maxitv.com.br/ 
echo "install os utlilitarios do yum "
#
sudo yum install yum-utils -y
#
echo "Adicionar o repositirio do nginx"
#
touch /etc/yum.repos.d/nginx.repo
cat << EOF > /etc/yum.repos.d/nginx.repo
\[nginx-stable]
\name=nginx stable repo
\baseurl=http://nginx.org/packages/centos/$releasever/$basearch/
\gpgcheck=1
\enabled=1
\gpgkey=https://nginx.org/keys/nginx_signing.key
\module_hotfixes=true
\
\[nginx-mainline]
\name=nginx mainline repo
\baseurl=http://nginx.org/packages/mainline/centos/$releasever/$basearch/
\gpgcheck=1
\enabled=0
\gpgkey=https://nginx.org/keys/nginx_signing.key
\module_hotfixes=true
EOF
echo "habilitar o repositorio mainline"
#
sudo yum-config-manager --enable nginx-mainline -y
# 
echo "instalando o nginx"
sudo yum install nginx -y 


