#=====================================================================================================================#
#=========COLOCAR AQUI DEPOIS OS QUE TEM QUE SER INSTALADO COM OS PROGRAMAS ABAIXO E DEMAIS CONFIGURAÇÕES=============#
#=====================================================================================================================#

## copiar arquivos bashrc para pasta principal antes de começar tudo.
## criar link direto para a pasta Compartilhament_Vms depois de iniciado o git e feito o git clone
## ln -s ~/Git_MarioMarcos/comando_dia_a_dia/Compartilhamento_VMs/ ~/Área\ de\ Trabalho/



# --------------------------------------------------------------------------- #
# ---INSTALAÇÃO DE PROGRAMAS E CONFIGURAÇÕES EM MÁQUINA NOVA MÁRIO MARCOS ----#
# --------------------------------------------------------------------------- #
#!/usr/bin/env bash

# ---------------------------------------------------------------------- #
#--------------------------------VARIÁVEIS-------------------------------#
# ---------------------------------------------------------------------- #


#PPA_GIT="ppa:git-core/ppa"
PPA_GRAPHICS_DRIVERS="ppa:graphics-drivers/ppa"

URL_GOOGLE_CHROME="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
URL_4K_VIDEO_DOWNLOADER="https://dl.4kdownload.com/app/4kvideodownloader_4.9.2-1_amd64.deb"

DIRETORIO_DOWNLOADS="$HOME/Downloads/programas"

PROGRAMAS_PARA_INSTALAR=(
  #mint-meta-codecs
  #virtualbox
  #nemo-dropbox
  #steam-installer
  #steam-devices
  #steam:i386
  #indicator-keylock
  #indicator-keylock-elementary
  #ukuu --verifcar porque não funcinou e ver se não tm snap ou ppa
  #whatsapp-webapp - verificar porque não deu certo
  #ovpnserpro - verificar porque nao deu certo
  #wdtokentool-icp - verfiicar porque não deu certo
  #gparted
whatsapp-desktop 
copyq
#remmina
vim 
grub-customizer
)

# ---------------------------------------------------------------------- #
#--------------------------------REQUISITOS------------------------------#
# ---------------------------------------------------------------------- #
## Removendo travas eventuais do apt ##
sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock


## Adicionando/Confirmando arquitetura de 32 bits ##
sudo dpkg --add-architecture i386


## Atualizando o repositório ##
sudo apt update -y


## Adicionando repositórios de terceiros e suporte a Snap (Drivers Nvidia e GIT)##
sudo apt-add-repository "$PPA_GRAPHICS_DRIVERS" -y
##sudo apt-add-repository "$PPA_GIT" -y

# ---------------------------------------------------------------------- #
#-----------------------------------EXECUÇÃO-----------------------------#
# ---------------------------------------------------------------------- #
## Atualizando o repositório depois da adição de novos repositórios ##
sudo apt update -y


## Download e instalaçao de programas externos ##
mkdir "$DIRETORIO_DOWNLOADS"
wget -c "$URL_GOOGLE_CHROME"       -P "$DIRETORIO_DOWNLOADS"
wget -c "$URL_4K_VIDEO_DOWNLOADER" -P "$DIRETORIO_DOWNLOADS"


## Instalando pacotes .deb baixados na sessão anterior ##
sudo dpkg -i $DIRETORIO_DOWNLOADS/*.deb

# Instalar programas no apt
for nome_do_programa in ${PROGRAMAS_PARA_INSTALAR[@]}; do
  if ! dpkg -l | grep -q $nome_do_programa; then # Só instala se já não estiver instalado
    apt install "$nome_do_programa" -y
  else
    echo "[INSTALADO] - $nome_do_programa"
  fi
done

## Instalando GIT
## sudo apt-get install git-all

## Instalando pacotes Snap ##

## sudo apt-get install snapd

##sudo snap install slack --classic
##sudo snap install code --classic
sudo snap install docker

# ---------------------------------------------------------------------- #
#-----------------------------PÓS-INSTALAÇÃO-----------------------------#
# ---------------------------------------------------------------------- #
## Finalização, atualização e limpeza##
sudo apt update && sudo apt dist-upgrade -y
sudo apt autoclean
sudo apt autoremove -y
#clear
echo Repositorio Atualizado.
echo Sistema Atualizado.
echo Programas instalados.
# ---------------------------------------------------------------------- #
#------------------------------------FIM---------------------------------#
# ---------------------------------------------------------------------- #
echo Pressione Enter para Continuar
read #pausa
exit
