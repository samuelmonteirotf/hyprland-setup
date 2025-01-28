#!/usr/bin/env bash

#selecionar um wallpaper aleatorio
NEW_WP=$(ls $HOME/Pictures/Wallpapers | shuf -n l)

#Caminho completo do Wallpaper
WALLPAPER="$HOME/Pictures/Wallpapers/$NEW_WP"

#Caminho do arquivo de configuracao
HYPRPAPER_CONF="$HOME/.config/hypr/hyprpaper.conf"

#Limpar o arquivo de configuracao do hyprpaper
echo " " > $HYPRPAPER_CONF

#Mudar o conteudo hyprpapar.conf
echo "preload = $WALLPAPER" >> $HYPRPAPER_CONF
echo "wallpaper = DP-2,$WALLPAPER" >> $HYPRPAPER_CONF
echo "splash = false" >> HYPRPAPER_CONF

#Reiniciar o hyprpaper
killall hyprpaper
hyprpaper &
