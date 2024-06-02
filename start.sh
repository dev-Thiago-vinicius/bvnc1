#!/bin/bash

# Atualizar e instalar XFCE e VNC server
apt-get update
apt-get install -y xfce4 xfce4-goodies tightvncserver

# Configurar VNC
mkdir -p ~/.vnc
echo "startxfce4 &" > ~/.vnc/xstartup
chmod +x ~/.vnc/xstartup

# Definir a senha do VNC
echo -e "thi28vini\nsenha_do_vnc\nn" | vncpasswd

# Iniciar o VNC server
vncserver :1 -geometry 1280x800 -depth 24 -dpi 96

# Manter o container ativo
tail -f /dev/null
