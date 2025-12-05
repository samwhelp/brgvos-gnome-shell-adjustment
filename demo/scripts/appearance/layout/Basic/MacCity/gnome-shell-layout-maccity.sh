#!/usr/bin/env bash




##
## ## Extension / reset
##

dconf reset -f /org/gnome/shell/extensions/dash-to-panel/
dconf reset -f /org/gnome/shell/extensions/dash-to-dock/




##
## ## Disable Extensions
##

gnome-extensions disable 'mediacontrols@cliffniff.github.com'
gnome-extensions disable 'arcmenu@arcmenu.com'
gnome-extensions disable 'dash-to-panel@jderose9.github.com'
gnome-extensions disable 'tilingshell@ferrarodomenico.com'




##
## ## Enable Extensions
##

gnome-extensions enable 'dash-to-dock@micxgx.gmail.com'
gnome-extensions enable 'logomenu@aryan_k'
gnome-extensions enable 'space-bar@luchrioh'
gnome-extensions enable 'tiling-assistant@leleat-on-github'




##
## ## Window Botton Layout
##

#gsettings set org.gnome.desktop.wm.preferences button-layout "'appmenu:minimize,maximize,close'"

gsettings set org.gnome.desktop.wm.preferences button-layout "'close,minimize,maximize:appmenu'"




##
## ## Extension / dash-to-panel
##

#dconf write /org/gnome/shell/extensions/dash-to-panel/panel-lengths '{"AUO-0x00000000":100,"unknown-unknown":100}'
#dconf write /org/gnome/shell/extensions/dash-to-panel/panel-positions '{"AUO-0x00000000":"TOP","unknown-unknown":"TOP"}'
#dconf write /org/gnome/shell/extensions/dash-to-panel/panel-sizes '{"AUO-0x00000000":48}'




##
## ## Extension / dash-to-panel
##

#dconf write /org/gnome/shell/extensions/dash-to-dock/dock-position "'BOTTOM'"




##
## ## Extension / simple-weather
##

dconf write /org/gnome/shell/extensions/simple-weather/panel-box "'center'"
dconf write /org/gnome/shell/extensions/simple-weather/main-location-index "int64 0"
dconf write /org/gnome/shell/extensions/simple-weather/panel-priority "int64 0"




##
## ## Extension / space-bar
##

dconf write /org/gnome/shell/extensions/space-bar/appearance/active-workspace-text-color "'rgb(255,255,255)'"
dconf write /org/gnome/shell/extensions/space-bar/appearance/inactive-workspace-text-color "'rgb(222,221,218)'"

