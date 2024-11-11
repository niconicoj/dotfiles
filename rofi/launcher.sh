#!/usr/bin/env bash

theme="$HOME/.config/rofi/launcher.rasi"

rofi -no-lazy-grab -show run \
-modi run,drun,window \
-theme $dir/"$theme"
