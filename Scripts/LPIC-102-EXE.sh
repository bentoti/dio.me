
2 - Quando o comando echo $? imprime 1, qual alternativa é a correta?
 a : É o código de saída do comando executado antes do echo
 b : É o código de saída do comando echo
 c : É o PID do comando echo
 d : É o PID do shell
a

3 - Como a variável COISA pode ser suprimida na execução do script backup.sh ?
 a : set -a COISA=""; ./backup.sh
 b : env -u COISA ./backup.sh
 c : env -i COISA ./backup.sh
 d : unset -v COISA; ./backup.sh
b

4 - Qual expressão em SQL permite filtrar os resultados com base em algum valor de algum campo ?
 a : WHERE
 b : FROM
 c : CASE
 d : LIMIT
a

5 - Qual shellscript é executado toda vez que um shell é executado?
 a : /etc/profile
 b : ~/.bash_profile
 c : ~/.bash_history
 d : ~/.bashrc
d

6 - Qual comando coloca a data atual na variável HOJE ?
 a : HOJE="$((date))"
 b : HOJE="date"
 c : HOJE=date
 d : HOJE="$(date)"
d

7 - Qual script no diretório home do usuário roda toda vez que o usuário loga no sistema?
 a : ~/.bash_profile
 b : ~/.bashrc
 c : /etc/rc.local
 d : /etc/profile
a

8 - Qual query SQL conta as ocorrências do campo Tipo ?
 a : SELECT Tipo, count(*) FROM produto GROUP FROM Tipo
 b : select count(*) (SELECT Tipo FROM produto)
 c : SELECT Tipo, count(*) FROM produto GROUP BY Tipo
 d : COUNT(SELECT Tipo FROM produto)

9 - Qual linha de script testa se existe o arquivo1.txt no diretório corrente?
 a : if [[ $1="arquivo1.txt" ]];then
 b : if [[ -f arquivo1.txt ]];
 c : if [[$FILE is "arquivo1.txt" ]];then
 d : if [[ filename="arquivo1.txt" ]]; then
b

10 - O que o comando seq 1 5 20 produz ?
 a : 1 2 3 4 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
 b : 1 6 11 16
 c : 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
 d : 1 5 10 15
b

11 - Qual a diferença as opções "-f" e "-e" do comando test ?
 a : -f testa se é arquivo. -e testa se é executável
 b : Ambos testam se existem o caminho, mas -f confirma que é um arquivo comum
 c : Nada. Fazem a mesma coisa
 d : -f testa se é arquivo. -e testa se está vazio
b

12 - Qual linha você tem que colocar no início de cada script ?
 a : !#/bin/bash
 b : #/bin/bash
 c : #!/bin/bash
 d : !/bin/bash

13 - Qual palavra falta da expressão SQL: insert into produto ________ (932,"Papel");
 a : name
 b : set
 c : values
 d : table

14 - Qual o propósito do arquivo /etc/profile ?
 a : Contém o nome do shell que será executado
 b : Mensagem de boas vindas
 c : Contém as variáveis ambientais quando os usuários logam no sistema
 d : Configura os parâmetros de segurança do shell

15 - Qual definição abaixo faz com que uma variável fique disponível para os programas e subshell ?
 a : env VAR="alguma coisa"
 b : Nenhuma das respostas
 c : export VAR="alguma coisa"
 d : VAR="algum coisa"

16 - Qual a saída do comando: echo "1 2 3 4 5 6" | while read a b c; do echo resultado: $c $b $a; done
 a : resultado: 3 4 5 6 2 1
 b : resultado: 1 2 3 4 5 6
 c : resultado: 6 5 4
 d : resultado: 3 2 1
a

17 - Qual shell é usado como padrão para prevenir que uma conta entre no sistema de forma interativa?
 a : /bin/false
 b : /bin/nologin
 c : /etc/users.deny
 d : /etc/users.allow
a

18 - O comando echo $$ imprimiu 1491. O que significa o 1491 ?
 a : O PID do shell
 b : Nenhuma das respostas
 c : O PID do último comando digitado
 d : O PID do comando echo
a

19 - Qual expressão resulta no número de registros no SQL: select _______ from produtos;
 a : sizeof
 b : sum(*)
 c : count(*)
 d : rownum
c

20 - O comando a seguir produz qual resultado ? function myfunc { echo $1 $2 ; }; myfunc A B C
 a : A B
 b : B C
 c : C A B
 d : A B C
a

21 - Qual comando imprime a lista de todas as variáveis e funções definidas no shell ?
 a : set
 b : echo $ENV
 c : env -a
 d : env
a

1 - Qual utilitário mostra a resolução da tela no X Window?
 a : startx
 b : xdpyinfo
 c : xdm
 d : X

2 - Qual arquivo especifica o wallpaper do XDM?
 a : /etc/X11/defaults.conf
 b : /etc/X11/Xsetup
 c : /etc/X11/xdm/Defaults
 d : /etc/X11/xdm.conf
b

3 - Leitores de tela, lupas, alto contraste e teclado na tela são exemplos de?
 a : Nenhuma das respostas
 b : Recursos de acessibilidade
 c : Configurações de disponibilidade
 d : Painel de Controle

4 - Qual comando fornece o número de cores do X11 ?
 a : xvideo
 b : xscreen
 c : xwininfo
 d : xcolor
c

5 - Qual gerenciador de janelas veio com o intuito de substituir o KDE?
 a : xdm
 b : lightdm
 c : kwin
 d : gdm

6 - Qual o principal arquivo de configuração do X11 da Xorg ?
 a : xserver.conf
 b : x.conf
 c : xsetup.conf
 d : xorg.conf
d

7 - Qual aplicação pode servir como um leitor de tela para pessoas com deficiência visual?
 a : Leiam
 b : GOK
 c : Hot key
 d : Orca

8 - Qual a função de um leitor de tela?
 a : Ajudar na leitura dinâmica
 b : Ler a configuração do monitor e resolução de tela
 c : Ler a tela para pessoas sem nenhuma ou pouca visão
 d : Ler livros da amazon.com

9 - Qual sessão do xorg.conf define o teclado detectado ?
 a : Keyboard
 b : InputDevice
 c : Device
 d : Nenhuma das respostas
