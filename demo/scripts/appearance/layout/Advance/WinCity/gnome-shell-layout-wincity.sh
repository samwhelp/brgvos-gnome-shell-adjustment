#!/usr/bin/env bash



##
## ## Gnome Shell / Extensions / Management
##

mod_gnome_shell_extensions_disable () {

	return 0
}


mod_gnome_shell_extensions_enable () {

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
