#!/bin/bash
#

# org.gnome.desktop.peripherals.touchpad tap-to-click false
# org.gnome.settings-daemon.plugins.power lid-close-ac-action 'nothing'

array=(
	"org.gnome.desktop.interface clock-format"

	"org.gnome.desktop.wm.keybindings begin-resize"
	"org.gnome.desktop.wm.keybindings maximize"
	"org.gnome.desktop.wm.keybindings maximize-horizontally"
	"org.gnome.desktop.wm.keybindings maximize-vertically"
	"org.gnome.desktop.wm.keybindings minimize"
	"org.gnome.desktop.wm.keybindings switch-input-source"
	"org.gnome.desktop.wm.keybindings toggle-maximized"
	"org.gnome.desktop.wm.keybindings unmaximize"

	"org.gnome.settings-daemon.plugins.media-keys next"
	"org.gnome.settings-daemon.plugins.media-keys play"
	"org.gnome.settings-daemon.plugins.media-keys previous"
	"org.gnome.settings-daemon.plugins.media-keys stop"
)

action=$1
backup_file="gsettings.csv"

if [[ $action == "export" ]]; then
	echo "gsetting key, value" > $backup_file
	for idx in ${!array[*]}; do
		setting=${array[$idx]}
		echo "exporting $setting"
		echo "$setting,$(gsettings get $setting)" >> $backup_file
	done
	echo "gsettings.csv file created"
elif [[ $action == "import" ]]; then
	echo "asd"
fi
