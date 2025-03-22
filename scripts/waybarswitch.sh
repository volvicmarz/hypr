#!/usr/bin/env sh

wayConf="$HOME/.config/waybar"
swayBar="$HOME/.config/waybar/sway/"

if pgrep -x "waybar" >/dev/null; then
        pkill -x "waybar"
else
        case "$1" in
                ht) waybar -c "${wayConf}/top.jsonc" -s "${wayConf}/top.css" ;;
                hb) waybar -c "${wayConf}/bottom.jsonc" -s "${wayConf}/bottom.css" ;;
                st) waybar -c "${swayBar}/top.jsonc" -s "${swayBar}/top.css" ;;
                sb) waybar -c "${swayBar}/bottom.jsonc" -s "${swayBar}/bottom.css" ;;
        esac
fi
