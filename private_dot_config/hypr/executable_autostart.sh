#!/bin/bash
exec --no-startup-id /usr/bin/gnome-keyring-daemon --start --components=secrets 
 waybar & swaybg -i ~/Pictures/Wallpapers/cattpuccin_room.jpg &  lxsession
