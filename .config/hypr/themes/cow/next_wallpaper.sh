#!/usr/bin/sh

wallcow -o ~/.config/hypr/themes/cow/wallpaper.png -cmd "fortune | cowsay -r"
hyprctl hyprpaper unload "~/.config/hypr/themes/cow/wallpaper.png"
hyprctl hyprpaper preload "~/.config/hypr/themes/cow/wallpaper.png"
hyprctl hyprpaper wallpaper , "~/.config/hypr/themes/cow/wallpaper.png"
