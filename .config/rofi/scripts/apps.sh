#!/usr/bin/env bash

## Author  : Aditya Shakya (adi1090x)
## Github  : @adi1090x
#
## Applets : Favorite Applications

# Import Current Theme
#source "$HOME"/.config/rofi/applets/shared/theme.bash
#theme="$type/$style"
theme="$HOME/.config/rofi/themes/full.rasi"


# Theme Elements

list_col='1'
list_row='6'

# CMDs (add your apps here)
term_cmd='kitty'
file_cmd='kitty -e ranger'
edit_cmd='kitty -e micro'
web_cmd='google-chrome-stable'
code_cmd='code'
settings_cmd='kitty -e micro /home/naadamki/.config/sway/config'

# Options
term="  kitty"
file="  ranger"
edit="  micro"
web="  chrome"
code="  code"
settings="  settings"

# Rofi CMD
rofi_cmd() {
	rofi -dmenu -theme ${theme}
}

# Pass variables to rofi dmenu
run_rofi() {
	echo -e "$term\n$file\n$edit\n$web\n$code\n$settings" | rofi_cmd
}

# Execute Command
run_cmd() {
	if [[ "$1" == '--opt1' ]]; then
		${term_cmd}
	elif [[ "$1" == '--opt2' ]]; then
		${file_cmd}
	elif [[ "$1" == '--opt3' ]]; then
		${edit_cmd}
	elif [[ "$1" == '--opt4' ]]; then
		${web_cmd}
	elif [[ "$1" == '--opt5' ]]; then
		${code_cmd}
	elif [[ "$1" == '--opt6' ]]; then
		${settings_cmd}
	fi
}

# Actions
chosen="$(run_rofi)"
case ${chosen} in
    $term)
		run_cmd --opt1
        ;;
    $file)
		run_cmd --opt2
        ;;
    $edit)
		run_cmd --opt3
        ;;
    $web)
		run_cmd --opt4
        ;;
    $code)
		run_cmd --opt5
        ;;
    $settings)
		run_cmd --opt6
        ;;
esac
