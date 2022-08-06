########################################################
########### Tópico 105: Shells e scripting #############
########################################################
#   105.1 - Customização e Uso do Shell (Shells, Variáveis, Configurações, e Sourcing) 


#
#  106.1 - Instalação e Configuração do X11 (X Windows, Desktops, e Xorg)
#
yum groupinstall "X Window System" "Desktop" "Desktop Platform" # instalação do X Window
X -configure # para configurar 
xwininfo # o terminal aceitar omause como porteiro
xdpyinfo  # vai trazer varias infomaçoes do X server
xhost # para habilitar e versão remota do X window 
export DISPLAY=:0.0 # exporta a variaveil display 
#
# 106.2 - Configure o Display Manager
#
cd /etc/lightdm # gereciando de modo grafico ligrdm 
ssh -Y bento@45.6.23.3 -p2225 # acesso SSH 
export DISPLAY # 
export DISPLAY="127.0.01:10.0" # para ver no meu terminal 
VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-6.1.34.vbox-extpack # instalar  exterso do virtualbox modo terminal 
####
#  107.1 - Gerenciamento de Usuários e Grupos (UIDs, GIDs e Password)
###
