#!/usr/bin/env bash

theme="$dir/launcher.rasi"

rofi -no-lazy-grab -show run \
-modi run,drun,window \
-theme $theme
