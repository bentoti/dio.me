# 109.1 - Fundamentos de Protocolos da Internet
#
# MODELO OSI
 #FISICA => LINK DE DADOS => REDE => TRANSPORTE => SESSAO => APRESENTACAO => APLICACAO

# MODELO TCP/IP
 #INTERFACE COM A REDE => INTERNET => TRANSPORTE => APLICACAO 
INTERFACE COM A REDE # ENTERNET, TOKEN RING, FRAME RELAY , ATM 
INTERNET # ARP, IP , IGMP, ICMP
TRANSPORTE # TCP, UDP 
APLICACAO # TELNET, FTP, SMTP, DNS, RIP, SNMP
A="1-127" # 126(2
B="128-191"
C="192-223"
D="224-239"
E="240-255"

# Rede Privada 
10.0.0.0/8 
172.16.0.0/12
192.168.0.0/16

# Rede especial 
127.0.0.0/8 (localhost)
127.0.0.1 (IP localhost)
cat /etc/services # para ver pos servicoes e portas 

# 109.2 - Configuração Básica de Rede (Interfaces e Rotas)
#
ifocnfig # vai mostra ips e placar de redes mesmo do (ip addr show)
ifocnfig eth0 192.168.0.1 netmask 255.255.255.0 # troca ip  que esta nommomento na plcar de rede
if down # desativa um placar de rede
ipup # ativa uma placar de rede
ifconfig -a # mostar todas placar ativa e desativada 
route # server para ve as rotas 
route add 8.8.8.8 gw 192.168.0.1 # adicionar uma rota 
route del 8.8.8.8 gw 192.168.0.1 # remover uma rota 
route -n # sem tradução de ip para nomes 
ip addr show # vai mostrar ip e placar de redes 
ip route show # vai mostar todos as rotas substituir nestat -rn e route -n
/etc/sysconfig/network-scripts # diretorio deconfiguraçoes no centos
cat ifcfg-enp2s0 # exemplo placar de rede statiica  
TYPE=Ethernet
PROXY_METHOD=none
BROWSER_ONLY=no
BOOTPROTO=none
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
IPV6INIT=yes
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=yes
IPV6_FAILURE_FATAL=no
IPV6_ADDR_GEN_MODE=eui64
NAME=enp2s0
UUID=0690058b-f667-493f-867e-9a259f5682e8
DEVICE=enp2s0
ONBOOT=yes
IPADDR=45.6.23.7
PREFIX=24
GATEWAY=45.6.23.1
DNS1=45.6.23.1
DNS2=8.8.8.8

cat ifcfg-enp2s0 # exemplo DHCP 
DEVICE=enp2s0
BOOTPROTO="dhcp"
IPV6INIT="yes"
UUID=0690058b-f667-493f-867e-9a259f5682e8
ONBOOT="yes" 

netstat -an | less # vai mostrar todos ip atual na marquinas 
netstat -rn # vai fazer mesmo do( route -n)
echo 1 > /proc/sys/net/ipv4/ip_forward # habilitar temporamente as rotas internas 
vim /etc/sysctl.conf # salva permanente 
# sysctl net.ipv4.ip_forward
net.ipv4.ip_forward = 0
ps -aux | grep dnclient # dnclient tem que esta em execução para roda DHCP
netstat -r  # vai mostrar minha rotas 
netstat -a # mostrar todas a conexao aberta
netstat -ap # vai  mostrar o processo que esta rodado netstat -r
netstat -c 6 -anp # vai fazer um reflaxe a cada 6 segundos
netstat -c 6 -ant # t vai mostar so asa conexao tcp 
nc -vv maxitv.com.br 443 # para conectar na porta 443
getent hosts # vai exebir todas as configuaraçoes dos hosts
dig google.com # vai trazer dns do google ( )

