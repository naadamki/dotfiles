#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x



# Options
shutdown='󰐥  shutdown'
reboot='󰑐  reboot'
lock='󰌾  lock'
suspend='󰤄  suspend'
logout='󰍃  logout'
yes='󰝦  yes'
no='󱃓  no'

# Rofi CMD
rofi_cmd() {
	rofi -dmenu -theme '/home/naadamki/.config/rofi/themes/menu.rasi'
}

# Confirmation CMD
confirm_cmd() {
	rofi -dmenu -theme '/home/naadamki/.config/rofi/themes/menu.rasi' -mesg 'Are you Sure?' 

}

# Ask for confirmation
confirm_exit() {
	echo -e "$yes\n$no" | confirm_cmd
}

# Pass variables to rofi dmenu
run_rofi() {
	echo -e "$lock\n$logout\n$suspend\n$reboot\n$shutdown" | rofi_cmd
}

# Execute Command
run_cmd() {
	selected="$(confirm_exit)"
	if [[ "$selected" == "$yes" ]]; then
		if [[ $1 == '--shutdown' ]]; then
			systemctl poweroff
		elif [[ $1 == '--reboot' ]]; then
			systemctl reboot
		elif [[ $1 == '--lock' ]]; then
			swaylock
		elif [[ $1 == '--suspend' ]]; then
			systemctl suspend
		elif [[ $1 == '--logout' ]]; then
			loginctl terminate-session $XDG_SESSION_ID
		fi
	else
		exit 0
	fi
}

# Actions
chosen="$(run_rofi)"
case ${chosen} in
    $shutdown)
		run_cmd --shutdown
        ;;
    $reboot)
		run_cmd --reboot
        ;;
    $lock)
		run_cmd --lock
        ;;
    $suspend)
		run_cmd --suspend
        ;;
    $logout)
		run_cmd --logout
        ;;
esac
