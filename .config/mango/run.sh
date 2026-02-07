#!/usr/bin/env bash

pkill waybar
waybar -c ~/.config/mango/waybar.jsonc -s ~/.config/mango/waybar.css &
