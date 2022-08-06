# 108.1 Chrony
yum list chrony  
yum install Chrony
systemctl status chronyd
systemctl enable chronyd
systemctl start chronyd
ss -tlup # para ver ok esta roadand no momento
vim /etc/chrony.conf # Arquivo de configuraçoes 
Chronyc  server para entrar no terminal do chrony
 tracking # vai mostar os dados do servidor ntp 
 makestep # para ajusta a hora agora 
 #  108.1 - Manter o Horário do Sistema (Hardware Clock, System Clock, e NTP)
date # sempre vai mostra o software clock 
date 05301641 # forma para mudar a hora dia mes e horas  
hwclock # hadware clock 
hwclock -s # vai salva com a hora da marquina 
hwclock -w # para ajusta o relogio da bios 
yum install ntp # servicos ntp 
ntpq # bash ntp
peers # mostra os server ntp
ntpdate -q a.ntp.maxi.tv.br # buscar um servidor

# 108.1 - Timedatectl
timedatectl status # verifcar como esta agora
timedatectl set-timezone "America/Sao_Paulo" # modar timezone
timedatectl set-ntp true # habilitar ntpd

# 108.2 - Sistema de Log

#108.2 - System Journal  
cd /run/log/journal # aonde ficar os executaveis do journal arquivo binario
vim /run/log/journal # arquivo de configuraçoes 
systemd-tmpfiles --create --prefix /home/bento/journal/ # criar o arquivo de log
 mount | grep run 
tmpfs on /run type tmpfs (rw,nosuid,nodev,mode=755)
tmpfs on /run/snapd/ns type tmpfs (rw,nosuid,nodev,mode=755)
nsfs on /run/snapd/ns/tvheadend.mnt type nsfs (rw)
tmpfs on /run/user/1000 type tmpfs (rw,nosuid,nodev,relatime,size=1529784k,mode=700,uid=1000,gid=1000)
journalctl -r # mostra os log de traz para frente 
journalctl -e # vai mostra as ultima informaçoes 
journalctl -xe # vai mostra so em modo de texto a ultima informaçoes 
journalctl -fu chronyd # vai mostrar as inforamloes que nem o tail -f  u e para mostra unit de programa
journalctl -o json-pretty # vai mostra de modo json
journalctl --list-boots # vai lista todos os boots da marquina 

# 108.3 - Mail Transfer Agent (MTA)
apt -y install sendmail # install senmail 
apt -y install mailx # aplacativo de email 



