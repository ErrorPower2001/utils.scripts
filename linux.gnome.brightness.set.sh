#!/usr/bin/sh

gdbus call --session \
	--dest org.gnome.SettingsDaemon.Power \
	--object-path /org/gnome/SettingsDaemon/Power \
	--method org.freedesktop.DBus.Properties.Set \
		org.gnome.SettingsDaemon.Power.Screen Brightness "<int32 $1>"
