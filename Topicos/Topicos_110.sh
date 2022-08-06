find / -user root -perm +4000 -type f  -exec ls -lha {} \; 2> /dev/null # para verifcar aqruivo que tem permição root 
ss -atun # vai exebir todas as portas aberta 
fuser -v 3308/tcp # vai exebir o processo que esta usad oa porta 3308
fuser -v /bin/bash # vai mostrar os usuarios que esta usado bash
lsof -i # vai exebir os arquivo que esta  cedo usado 
nmap -A 45.6.23.7 # realizar umas varedura com ams detalhes
last # vai exebir todos os logins com sucesso 
last -f /var/log/btmp # os login que tever erro 
rpm -va # vai comparar as asinauturas nos arquivos instalandos 
cat /proc/*/stat | awk '{print $1 $2}' # exebir todos os programar que esta usado na marquina 
ulimit -a # server para certa configuraçã ode hadaewre 
systemctl cat sssd-ssh.socket # para verificar um arquivo execultaveis 
netstat -tunap #  para verifcar os as portas

# 110.3 - Criptografia (GnuPG) 
gpg --list-key # server para lista minha chaves 
gpg --gen-key # criar a chave privada 
gpg -a -o Antonio.bento --export 68299DEA156C051A706B124D11FA29100E846790 # server para  exporta a chave publica
gpg --import bento.lv # para importa chave publica do usuarios 
