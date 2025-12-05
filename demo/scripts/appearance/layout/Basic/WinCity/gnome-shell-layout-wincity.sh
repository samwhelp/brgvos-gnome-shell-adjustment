#!/usr/bin/env bash




##
## ## Extension / reset
##

dconf reset -f /org/gnome/shell/extensions/dash-to-panel/
dconf reset -f /org/gnome/shell/extensions/dash-to-dock/




##
## ## Disable Extensions
##

gnome-extensions disable 'dash-to-dock@micxgx.gmail.com'
gnome-extensions disable 'logomenu@aryan_k'
gnome-extensions disable 'space-bar@luchrioh'
gnome-extensions disable 'tiling-assistant@leleat-on-github'




##
## ## Enable Extensions
##

gnome-extensions enable 'mediacontrols@cliffniff.github.com'
gnome-extensions enable 'arcmenu@arcmenu.com'
gnome-extensions enable 'dash-to-panel@jderose9.github.com'
gnome-extensions enable 'tilingshell@ferrarodomenico.com'




##
## ## Window Botton Layout
##

gsettings set org.gnome.desktop.wm.preferences button-layout "'appmenu:minimize,maximize,close'"




##
## ## Extension / dash-to-panel
##

#dconf write /org/gnome/shell/extensions/dash-to-panel/panel-lengths '{"AUO-0x00000000":70,"unknown-unknown":70}'
#dconf write /org/gnome/shell/extensions/dash-to-panel/panel-positions "'{}'"
#dconf write /org/gnome/shell/extensions/dash-to-panel/panel-sizes '{"AUO-0x00000000":48}'




##
## ## Extension / dash-to-dock
##

#dconf write /org/gnome/shell/extensions/dash-to-dock/dock-position "'TOP'"




##
## ## Extension / simple-weather
##

dconf write /org/gnome/shell/extensions/simple-weather/panel-box "'left'"
dconf write /org/gnome/shell/extensions/simple-weather/main-location-index "int64 0"

