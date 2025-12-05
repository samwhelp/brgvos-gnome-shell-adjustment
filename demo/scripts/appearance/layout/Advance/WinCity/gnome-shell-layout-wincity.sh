#!/usr/bin/env bash




##
## ## Gnome Shell / Extensions / just disable
##

mod_gnome_shell_extensions_just_disable () {

	gnome-extensions disable 'logomenu@aryan_k'
	gnome-extensions disable 'space-bar@luchrioh'
	gnome-extensions disable 'tiling-assistant@leleat-on-github'

	return 0
}



##
## ## Gnome Shell / Extensions / just enable
##

mod_gnome_shell_extensions_just_enable () {

	gnome-extensions enable 'mediacontrols@cliffniff.github.com'
	gnome-extensions enable 'arcmenu@arcmenu.com'
	gnome-extensions enable 'tilingshell@ferrarodomenico.com'

	return 0
}




##
## ## Gnome Shell / Extension / dash-to-panel / disable
##

mod_gnome_shell_extension_disable_dash_to_panel () {

	mod_gnome_shell_extension_disable_prerun_dash_to_panel
	mod_gnome_shell_extension_disable_dorun_dash_to_panel
	mod_gnome_shell_extension_disable_postrun_dash_to_panel

	return 0
}

mod_gnome_shell_extension_disable_prerun_dash_to_panel () {

	return 0
}

mod_gnome_shell_extension_disable_dorun_dash_to_panel () {

	gnome-extensions disable 'dash-to-panel@jderose9.github.com'

	return 0
}

mod_gnome_shell_extension_disable_postrun_dash_to_panel () {

	return 0
}




##
## ## Gnome Shell / Extension / dash-to-panel / enable
##

mod_gnome_shell_extension_enable_dash_to_panel () {

	mod_gnome_shell_extension_enable_prerun_dash_to_panel
	mod_gnome_shell_extension_enable_dorun_dash_to_panel
	mod_gnome_shell_extension_enable_postrun_dash_to_panel

	return 0
}

mod_gnome_shell_extension_enable_prerun_dash_to_panel () {

	mod_gnome_shell_extension_reset_for_dash_to_panel

	return 0
}

mod_gnome_shell_extension_enable_dorun_dash_to_panel () {

	gnome-extensions enable 'dash-to-panel@jderose9.github.com'

	return 0
}

mod_gnome_shell_extension_enable_postrun_dash_to_panel () {


	mod_gnome_shell_extension_config_for_dash_to_panel

	return 0
}




##
## ## Gnome Shell / Extension / dash-to-panel / config
##

mod_gnome_shell_extension_reset_for_dash_to_panel () {

	dconf reset -f /org/gnome/shell/extensions/dash-to-panel/

}

mod_gnome_shell_extension_config_for_dash_to_panel () {

	#mod_gnome_shell_extension_config_for_dash_to_panel_via_gsettings

	mod_gnome_shell_extension_config_for_dash_to_panel_via_dconf
	
	return 0
}


mod_gnome_shell_extension_config_for_dash_to_panel_via_gsettings () {

	return 0
}


mod_gnome_shell_extension_config_for_dash_to_panel_via_dconf () {


	##
	## ## Adjust for [Window / Close] (conflict `Super+q`)
	##


	dconf write /org/gnome/shell/extensions/dash-to-panel/shortcut "['<Super>0']"
	dconf write /org/gnome/shell/extensions/dash-to-panel/shortcut-text "'<Super>0'"


	return 0
}




##
## ## Gnome Shell / Extension / dash-to-dock / disable
##

mod_gnome_shell_extension_disable_dash_to_dock () {

	mod_gnome_shell_extension_disable_prerun_dash_to_dock
	mod_gnome_shell_extension_disable_dorun_dash_to_dock
	mod_gnome_shell_extension_disable_postrun_dash_to_dock

	return 0
}

mod_gnome_shell_extension_disable_prerun_dash_to_dock () {

	return 0
}

mod_gnome_shell_extension_disable_dorun_dash_to_dock () {
	
	gnome-extensions disable 'dash-to-dock@micxgx.gmail.com'

	return 0
}

mod_gnome_shell_extension_disable_postrun_dash_to_dock () {

	mod_gnome_shell_extension_config_for_dash_to_dock

	return 0
}




##
## ## Gnome Shell / Extension / dash-to-dock / enable
##

mod_gnome_shell_extension_enable_dash_to_dock () {

	mod_gnome_shell_extension_enable_prerun_dash_to_dock
	mod_gnome_shell_extension_enable_dorun_dash_to_dock
	mod_gnome_shell_extension_enable_postrun_dash_to_dock

	return 0
}

mod_gnome_shell_extension_enable_prerun_dash_to_dock () {

	mod_gnome_shell_extension_reset_for_dash_to_dock

	return 0
}

mod_gnome_shell_extension_enable_dorun_dash_to_dock () {
	
	gnome-extensions enable 'dash-to-dock@micxgx.gmail.com'

	return 0
}

mod_gnome_shell_extension_enable_postrun_dash_to_dock () {

	mod_gnome_shell_extension_config_for_dash_to_dock

	return 0
}




##
## ## Gnome Shell / Extension / dash-to-dock / config
##

mod_gnome_shell_extension_reset_for_dash_to_dock () {

	dconf reset -f /org/gnome/shell/extensions/dash-to-dock/

}

mod_gnome_shell_extension_config_for_dash_to_dock () {

	#mod_gnome_shell_extension_config_for_dash_to_dock_via_gsettings

	mod_gnome_shell_extension_config_for_dash_to_dock_via_dconf
	
	return 0
}


mod_gnome_shell_extension_config_for_dash_to_dock_via_gsettings () {


	#gsettings set org.gnome.shell.extensions.dash-to-dock shortcut "['<Super><Control>q']"

	#gsettings set org.gnome.shell.extensions.dash-to-dock dock-position "'BOTTOM'"




	gsettings set org.gnome.shell.extensions.dash-to-dock apply-custom-theme false

	gsettings set org.gnome.shell.extensions.dash-to-dock autohide false

	gsettings set org.gnome.shell.extensions.dash-to-dock autohide-in-fullscreen true

	gsettings set org.gnome.shell.extensions.dash-to-dock background-color "'#ffffff'"

	gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.8

	gsettings set org.gnome.shell.extensions.dash-to-dock click-action "'cycle-windows'"

	gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 36

	gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed true

	gsettings set org.gnome.shell.extensions.dash-to-dock dock-position "'BOTTOM'"

	gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false

	gsettings set org.gnome.shell.extensions.dash-to-dock isolate-locations true

	gsettings set org.gnome.shell.extensions.dash-to-dock middle-click-action "'launch'"

	gsettings set org.gnome.shell.extensions.dash-to-dock scroll-action "'cycle-windows'"

	gsettings set org.gnome.shell.extensions.dash-to-dock shift-click-action "'previews'"

	gsettings set org.gnome.shell.extensions.dash-to-dock shift-middle-click-action "'quit'"

	gsettings set org.gnome.shell.extensions.dash-to-dock shortcut "['']"

	gsettings set org.gnome.shell.extensions.dash-to-dock shortcut-text "''"

	gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts false

	gsettings set org.gnome.shell.extensions.dash-to-dock show-show-apps-button true

	gsettings set org.gnome.shell.extensions.dash-to-dock show-trash false

	gsettings set org.gnome.shell.extensions.dash-to-dock show-windows-preview false

	gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode "'DYNAMIC'"




	return 0
}


mod_gnome_shell_extension_config_for_dash_to_dock_via_dconf () {


	#dconf write /org/gnome/shell/extensions/dash-to-dock/shortcut "['<Super><Control>q']"

	#dconf write /org/gnome/shell/extensions/dash-to-dock/dock-position "'BOTTOM'"




	dconf write /org/gnome/shell/extensions/dash-to-dock/apply-custom-theme false

	dconf write /org/gnome/shell/extensions/dash-to-dock/autohide false

	dconf write /org/gnome/shell/extensions/dash-to-dock/autohide-in-fullscreen true

	dconf write /org/gnome/shell/extensions/dash-to-dock/background-color "'#ffffff'"

	dconf write /org/gnome/shell/extensions/dash-to-dock/background-opacity 0.8

	dconf write /org/gnome/shell/extensions/dash-to-dock/click-action "'cycle-windows'"

	dconf write /org/gnome/shell/extensions/dash-to-dock/dash-max-icon-size 36

	dconf write /org/gnome/shell/extensions/dash-to-dock/dock-fixed true

	dconf write /org/gnome/shell/extensions/dash-to-dock/dock-position "'BOTTOM'"

	dconf write /org/gnome/shell/extensions/dash-to-dock/extend-height false

	dconf write /org/gnome/shell/extensions/dash-to-dock/isolate-locations true

	dconf write /org/gnome/shell/extensions/dash-to-dock/middle-click-action "'launch'"

	dconf write /org/gnome/shell/extensions/dash-to-dock/scroll-action "'cycle-windows'"

	dconf write /org/gnome/shell/extensions/dash-to-dock/shift-click-action "'previews'"

	dconf write /org/gnome/shell/extensions/dash-to-dock/shift-middle-click-action "'quit'"

	dconf write /org/gnome/shell/extensions/dash-to-dock/shortcut "['']"

	dconf write /org/gnome/shell/extensions/dash-to-dock/shortcut-text "''"

	dconf write /org/gnome/shell/extensions/dash-to-dock/show-mounts false

	dconf write /org/gnome/shell/extensions/dash-to-dock/show-show-apps-button true

	dconf write /org/gnome/shell/extensions/dash-to-dock/show-trash false

	dconf write /org/gnome/shell/extensions/dash-to-dock/show-windows-preview false

	dconf write /org/gnome/shell/extensions/dash-to-dock/transparency-mode "'DYNAMIC'"




	return 0
}




##
##
## ## Gnome Shell / Extensions / Management
##

mod_gnome_shell_extensions_disable () {


	mod_gnome_shell_extensions_just_disable




	mod_gnome_shell_extension_disable_dash_to_panel
	
	mod_gnome_shell_extension_disable_dash_to_dock

	return 0
}


mod_gnome_shell_extensions_enable () {

	
	##
	## dash_to_panel for layout_wincity
	##

	mod_gnome_shell_extension_enable_dash_to_panel
	
	
	##
	## dash_to_dock for layout_maccity
	##

	#mod_gnome_shell_extension_enable_dash_to_dock




	mod_gnome_shell_extensions_just_enable


	return 0
}




##
## ## Gnome Shell / Config / Layout
##

mod_gnome_shell_config_for_layout () {

	mod_gnome_shell_extensions_disable

	mod_gnome_shell_extensions_enable

	return 0
}




##
## ## Gnome Shell / Config
##

mod_gnome_shell_config () {




	mod_gnome_shell_config_for_layout




	return 0
}

mod_config_portal () {


	echo
	echo "##"
	echo "## ## Gnome Shell Config / Layout / Start"
	echo "##"
	echo




	mod_gnome_shell_config




	echo
	echo "##"
	echo "## ## Gnome Shell Config / Layout / Done"
	echo "##"
	echo


	return 0
}




##
## ## Main
##

__main__ () {

	mod_config_portal

	return 0
}

__main__ "${@}"
