#!/usr/bin/env bash




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

	return 0
}

mod_gnome_shell_extension_enable_dorun_dash_to_panel () {

	gnome-extensions enable 'dash-to-panel@jderose9.github.com'

	return 0
}

mod_gnome_shell_extension_enable_postrun_dash_to_panel () {

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

	return 0
}

mod_gnome_shell_extension_enable_dorun_dash_to_dock () {
	
	gnome-extensions enable 'dash-to-dock@micxgx.gmail.com'

	return 0
}

mod_gnome_shell_extension_enable_postrun_dash_to_dock () {

	return 0
}




##
##
## ## Gnome Shell / Extensions / Management
##

mod_gnome_shell_extensions_disable () {

	mod_gnome_shell_extension_disable_dash_to_panel
	
	mod_gnome_shell_extension_disable_dash_to_dock

	return 0
}


mod_gnome_shell_extensions_enable () {

	#mod_gnome_shell_extension_enable_dash_to_panel
	
	mod_gnome_shell_extension_enable_dash_to_dock

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
