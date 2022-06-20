###############################################################################################################
########## LPIC-1 - Preparatório para os Exames 101 e 102 V5 ATUALIZADO #######################################
###############################################################################################################
#
##############################################################################################################
############################### Seção 3: Tópico 103 Comandos #################################################
##############################################################################################################
#
########### 9. 103.1 - Trabalhar na linha de comando [ Shell Bash, type, alias, chsh ] #######################
echo $SHLVL # verificar a versão do Shell
exit # para saor do shell ou subshell
chsh -h #para verificar a versão do shell em uso 
alias disco_free="df -hT"
cat /proc/cpuinfo ; ls /boot ; mount -a # varios comando e unica linha 
ls -l && cat /etc/passwd # and so vai se execultandso se primeiro estive sucesso 
ls -l  /pro ||  cat /etc/passwd # XOR so vai se execultado se primeiro estiver com erro 
which iptables # vai retorna nome do pacete instalando 
rpm -qf $(which ip) # buscar pocote instalando
grep -i ext4 /boot/config-`uname -r` # vai pesquisar se tem o ext4  no kernal atual
history # vai mostar historico dos comandos 
!11 # vai execulta o comando na linha 11
history -c # para apagar os comandos no buff de memoria 
echo $HISTFILE # vai edicar localizaçã do hostory
echo $HISTFILE
/root/.bash_history
echo $HISTSIZE # quatidade maxima no bauff de memoria
echo $HISTFILESIZE # quatidade maximo mo arquivo HISTORYFILE
#bento
LOCAL="sem export na frente"
export GLOBAL=" COM EXPORT NA FRENTE"
set # server para vizualizar as variavel lobecais e globais 
echo 'valor digitando na tela'
echo "O kernel usado no sistema : $UID" # vai interprerta a varaival
echo -e "debian\ncentos\nopensuse\ncentos\ndebian" > /tmp/distros.txt # o \n vai criar cada nome em uma linha
uname -r #  dados da relase do kernel 
uname -m # arquitetura da marquina 
uname -p #  arquitetura do processador 
uname -n # nome completo da marquina 
uname -a # todos os dados do kernel
#
# ##### Trabalho com linha de Comandos [ man, pwd, whatis,apropos,e whereis]
/usr/share/man # local aonde ficar os arquivos man
which fdisk # vai localizar o camando a parit da variavel PATH
whatis uname # buscar  o atraves da base de dados 
man -f ip # buscar na mase de dados o mesmo do whatis 
apropos ldap #  buscar todos comando com nome ldap
man -k # fazer a mesma funçao do apropos 
whereis # fazer uma buscar do comando espeficos localizando os manuas e binarios 
whereis ip
ip: /usr/sbin/ip /usr/share/man/man8/ip.8.gz
#
cat /etc/group # vai exebir conteudo de um arquivo 
cat < /etc/group # vai realziar a entrada d oarquivo group no cat exebido na tela 
cat -n /etc/login.defs # vai exebir numerado as linhas  com a linha em branco
cat -b /etc/login.defs # numera todas as linha com exeção a linha em branco
nl # usado para numeração das linhas 
wc -l # vai mostra a quatidade de linha 
wc -w # vai mostra a quatidade de palavras 
wc -m # quatidade de caractres 
sort # vai mostra os arquivo em order afabetica
sort -r # vai ordena de tras  para frente 
head /etc/passwd # vai mostra as 10 primeiras linha 
head -n 50 /etc/passwd | nl # vai exebir as 50 primeiras linha 
head -n -50 /etc/passwd | nl # vai exebir as todas as linha com exeção das 50  primeiras linha
cat -n /etc/passwd | head -n -20  # vai exebir as todas as linha com exeção das 50  primeiras linha
tail -n 20 /var/log/messages  # vai exebir as 20 ultimas linha
tail -n -20 /var/log/messages # vai exebir as ultimas linha excerto a 20 linhas
tail -f /var/log/messages #  vai exebir em realtime 
tail -f  -n 30 /var/log/messages #  vai exebir em realtime mas vai mostra so as ultimas 30 linhas
tail -f +15  /var/log/messages #  vai exebir em realtime da 15 linha ate final do arquivo   
uniq  # esse comando suprimir linha repetinda em sequincias
sort /tmp/distros.txt | uniq # melhor forma de usar o uniq  para remover as linha repetindas 
sort /tmp/distros.txt | uniq -d # vai exebir so a linha que e repetida 
sort /tmp/distros.txt | uniq -c  # mostra quantas vez as linha e repitidas
od # e usado para exebir uma arquiv ode texto em outro formantos 
od -tx # vai se exebindo no formato hexadecimal 
paste /etc/group /etc/shadow # vai exebir dois arquiv o lado a lado 
split -l 3 /tmp/distros.txt  /tmp/distros_partes.txt # vai dividir o  o arquivo em cada 3 linhas
cp -v /etc/services /tmp/ # copiar service para tmp 
 md5sum /tmp/services # criar a arquivo md5
8e0abe8547f0411554a35b97447b2fbd  /tmp/services
sha512sum /tmp/services  # criar arquivo sha512sum 
3b1c5f8a12963ab441b73ab171478f80d99d6024fc7a4ed5cc40966fc228a5dceb21eab411c63a6be7f73e84ae857ee178c5f065b534960742934bd558a89a38  /tmp/services 
# COMANDO SED 
sed 's/systemd/BOOT/' /etc/passwd # vai substuir a palavra SYSTEMD POR BOOT  so vai funcionar por linha 
sed '|root|ADMIN|' /etc/passwd # funcionar da mesmo formar que com / 
sed 's/systemd/BOOT/2' /etc/passwd # so vai trocar a segunda palavra d cada linha 
sed 's|nologin|SHELL INVALIDO|g' /etc/passwd | head # o g no final vai trocar todas as ocorrencias 
sed -i 's|nologin|SHELL INVALIDO|g' /etc/passwd | head # vai trocar no arquivo orginal no root 
# COMANDO TR 
echo /etc/passwd | tr 'a-z' 'A-Z' # vai trocar tudo de misculo para maisculo 
echo 'texto simples' | tr '[:lower:]' '[:upper:]'
# COMANDO CUT 
cut -d':' -f 1,3 passwd # so vai exebir a primeira e terceira coluna 
cut -d':' -f 1,3,6,7 passwd # exebindo a coluna 1,3,6,7 
cut -c1-6 /tmp/passwd # so vai exebir do 1 a 6 caracter
# ARQUIVOS DE TEXTO COMPRIMINDO TAR
xzcat protocolos.txt.xz # exebir Arquivo XZ 
zcat protocolos.txt.gz # exebir arquivo GZ  
bzcat protocolos.txt.bz2 # exibir BZ2
# COMANDO FILE 
file /dev/sda # vai edeitificar os tipo do sistema de arquivo
#COMANDO CD  
cd /usr/share/man # server para navegação de diretorios 
cd . # DIRETORIO ATUAL
cd .. # DIRETORIO COM UM NIVEL ACIMA 
cd ~ # fazer referncia ao diretorio home do usuarios 
cd ~bento # vai para diretorio bento se tiver no sistema 
cd - # vai para diretorio anteriomente 
# COMANDO LS 
ls # sem opcçao diretorio atual 
ls -l # vai mostar com detalhes do arquivo
-rw-r--r-- 1 bento bento      53 jun 15 16:09  dns.sh 
ls -lh # mostra no formato mas humano 






 







