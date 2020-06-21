#!/usr/bin/env bash

exec feh --bg-scale $HOME/Bilder/Wallpaper.png &

# ------------------------------------------------------------------------------
# Comptom
compton &

# ------------------------------------------------------------------------------
# Run default user settings
xrdb -merge .Xresources &

# ------------------------------------------------------------------------------
# Quick fix for java applications
export "_JAVA_AWT_WM_NONREPARENTING=1"

# ------------------------------------------------------------------------------
# Set wallpaper
neon &

# ------------------------------------------------------------------------------
# Allow notifications
dunst -font "pango:Inconsolata 10" &

exec xautolock -detectsleep \
  -time 600 -locker "i3lock -d -c 000070" \
  -notify 10 \
  -notifier "notify-send -u critical -t 10000 -- 'LOCKING screen in 10 min'" &

exec firefox &

exec keepassxc &

exec thunderbird &

exec evince &

exec anki &

exec spotify &

exec telegram-desktop

exec code &

exec intellij-idea-ultimate-edition &
