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
ls -la # mostra o com a opção A os arquivos ocultos 
# COMANDO TOUCH
touch /tmp/arquivo.txt # server para criar um arquivo em branco 
touch -m /etc/group # vai alterar data e hora para hora atual 
#COMANDO MV 
mv -v # server para usar modo debug
mv -vf # vai usar modo forcado
# COMANDO CP 
cp -b # criar uma backup do arquivo se ja tive um como mesmo nome 
cp -a # presevar as propriedade do arquivo 

# COMANDO MKDIR
mkdir -v # exibir modo vebose
mkdir -p # criar subediretorios 
rm -v -p # vai mostar ok estava fazendo
rm -f    # vai força a remoção do arquivo
rm -vR   # R remover um  diretorio 
rmdir   # a finalizadade e de remove so diretorio vazio 
# COMANDO FIND
find /etc/ -name 'yum.conf' # vai buscar tudo com nome yum.conf
find /etc/ -name '*.Conf'   # vai buscar tudo com o final .Conf
find /etc/ -iname '*.conf'  # como i minsulo vai eliminar case censertive
find /etc/ -cmin -1 arqui.txt # vai buscar arquivos que esteve  status alterado antes de um minutos 
find /etc/ -cmin +2  #  vai buscar arquivo que estive status alterado a 2 minutos 
find /etc/ ctime -2 # a  menos de  2 dias 
find /etc/ ctime +3 # arquivos foi alterado a 72 dias 
find /etc/  -atime 2 # arquivo que foi acessando a 24 horas 
find . -nmim 10 # arquiv oque foi alterado a 10 minutos 
find . -nmim -10 # arquivo que foi alterado antes de 10 minutos

# COMANDO PARA COMPATAÇÃ ODE ARQUIVOS 
tar -cvpf backup-config.logs.tar /etc/ /var/log # (C) = criar (V) = modo vebose (p)= presever os piviligres (F) = minusculo para especifcar nome do arquivo 
tar tf backup-config.log.tar  #(t) server para vrificar se realmente foi copiando nao e possivel comprir diretorios somente arquivos 
tar xfv backup-config.logs.tar  -C /tmp/ # -C server para especifcar diretorio destino 
ls -lhd /tmp/{etc,var/log}
gzip backup-config.logs.tar  # comprimdo com gzip 
gzip -c backup-config.log.tar > backup-config.log.tar.gz
gzip -d backup-config.logs.tar # descomprimdo arquivo gzip 
gunzip  backup-config.logs.tar # descomprimir o arquivo se passa opçao
bzip2 backup-config.logs.tar # comprimindo arquivo bzip2
gzip -k backup-config.log.tar # comprimir arquivo mantedo o orginal com bzip2
bunzip2 backup-config.logs.tar.bz2 # descompactado bzip2
xz backup-config.logs.tar # comprimdo com xz 
xz -k backup-config.logs.tar # comprindo madedo o original 
unxz xz, tar -xvf backup-config.logs.tar.xz # descomprimdo xz
# COMANDO DD
dd if=/dev/zero of=imagem.iso bs=1M count=1024 # criar um arquivo de 1M a e copair 1024 vez
dd if=/dev/sda  of=hd.mbr bs=512 count=1 # copiando a NBR do disco  os primeiro 512bytes um copiar
# COMANDO CPIO 
ls | cpio -ov > $OLDPWD 
# CARACTERE CORIGAS
 ls -l *.txt , ls -l /dev/tty*  # substuir um o uma cadeia de caractere 
ls  /dev/loop?  # so substuir um caracter em espefico 
mkdir {dir1,dir2,dir3,dir4,dir5} # server para criar um comando em lista
ls [1-15] # vai contar do 1 a 15 
ls [!1-15]# var exibir tudo menos de 1 a 15
ls [¹-15] # var exibir tudo menos de 1 a 15
# RELEDICIONAMENTO DE LINKS 
cat /etc/group > /tmp/group.copiar , cat /etc/group 1> /tmp/group.copiar # > saida padrao vai apagar os dados artigo adiconar novos 
cat /etc/group >> /tmp/group.copiar , cat /etc/group 1>> /tmp/group.copiar # vai  adicionar novo arquivo na final do texto 
#COMANDO XARGS 
find /usr/sbin -iname 'x*' | xargs ls 

# CRIAR E MONITORA 
ps # so vai exebir os processo do usuari
ps ua # vai exebir os processo  de todos os processo de todos usuarios 
ps aux # vai mostar processo que nao foi iniciando pelo terminal
ps -faux # exebir os processo e forma de arvores com detalhes 
pstree # exebir em formator de arvores 
pstree -p # exebir os ID 
top techa z # mudar a cor
top techa M # lista por processo usado mas memoria
top techa P # lista por processo usado mas processando
top p 1  # processo com pid 1 
top -u bento # para selecionar por usuarios 
pgrep mumudvb # exebir todos os processo mumudvb nao precisar digitat numero do processo completo 
pidof mumudvb # exebir numero de processo ams tem que digita no processo completo 
kill  -l # vai mostrar todos os sinais 
kill -l
 1) SIGHUP       2) SIGINT       3) SIGQUIT      4) SIGILL       5) SIGTRAP
 6) SIGABRT      7) SIGBUS       8) SIGFPE       9) SIGKILL     10) SIGUSR1
11) SIGSEGV     12) SIGUSR2     13) SIGPIPE     14) SIGALRM     15) SIGTERM
16) SIGSTKFLT   17) SIGCHLD     18) SIGCONT     19) SIGSTOP     20) SIGTSTP
21) SIGTTIN     22) SIGTTOU     23) SIGURG      24) SIGXCPU     25) SIGXFSZ
26) SIGVTALRM   27) SIGPROF     28) SIGWINCH    29) SIGIO       30) SIGPWR
31) SIGSYS      34) SIGRTMIN    35) SIGRTMIN+1  36) SIGRTMIN+2  37) SIGRTMIN+3
38) SIGRTMIN+4  39) SIGRTMIN+5  40) SIGRTMIN+6  41) SIGRTMIN+7  42) SIGRTMIN+8
43) SIGRTMIN+9  44) SIGRTMIN+10 45) SIGRTMIN+11 46) SIGRTMIN+12 47) SIGRTMIN+13
48) SIGRTMIN+14 49) SIGRTMIN+15 50) SIGRTMAX-14 51) SIGRTMAX-13 52) SIGRTMAX-12
53) SIGRTMAX-11 54) SIGRTMAX-10 55) SIGRTMAX-9  56) SIGRTMAX-8  57) SIGRTMAX-7
58) SIGRTMAX-6  59) SIGRTMAX-5  60) SIGRTMAX-4  61) SIGRTMAX-3  62) SIGRTMAX-2
63) SIGRTMAX-1  64) SIGRTMAX

kill -stop ou -19 4999 # para o processo 
kill -cont ou -18 4999 # vai iniciar processo que estava parado 
kill 4228  # vai ecerrar o processo 
kill -9 4228 # server para matar o processo
kill -9 ${pgrep firefox} # pgrep vai encotrar o id e matar o processo do firefox
ctrl +c # vai enviar o sinal 2) SIGINT
1) SIGHUP # server para releer o processo 
kill -hup ou 1094 # vai releer os processso
kilall firefox # tem que digitar nome completo para finalizar
pkill firef # server para finalizar um  processo usado parte de um comando
ps -u bento u # primeiro para mostrar usuarios segundo para mostra a coluna
# COMANDO FREE 
free # exebir os valores de memoria em klbyt por padraão 
free -m # exebir os valores em mgabytes 
 #COMANDO  UPTIME 
 uptime # 1,29 ultimo 5 minutos 1,45 ultimos 10 minutos 1,51 ultimos 15 minutos 
 16:21:02 up 4 days, 10:13,  1 user,  load average: 1,29, 1,45, 1,51
 # COMANDO ESCREEN 
 screen # crtl + a + d => sair da secção do screen
 screen -ls # vai lista as telas em execução 
 screen -r  #  vai conctar na secção que esta em execução 
 screen -r 3767685 # no caso de varias secção tem que colocar o id da secçao 
 screen ctrl + a + c # para abrir um nova seção 
 screen ctrl + a + t # tela alterior 
 screen ctrl + a + n # prox janela 
 screen ctrl + a + k # fecha uma janela 
 screen ctrl + a + / # para fechar escreen 
# COMANDO WATCH 
watch iptables -nvL # por padrao ele mostar a cada 2 segundos 
watch -n20 cat /proc/net/dev # execultar a cada 20 segundo 
# CAMANDO TMUX
tmux ctrl + b + c # para abrir um nova seção 
 tmux ctrl + b + t # tela alterior 
 tmux ctrl + b + n # prox janela 
 tmux ctrl + b + k # fecha uma janela 
 tmux ctrl + b + / # para fechar escreen 
 tmux ctrl + b + '' # para remera a janelas
 






 







