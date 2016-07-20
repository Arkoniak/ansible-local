#!/usr/bin/zsh

#export EDITOR="textadept-curses"
export EDITOR="nvim"
export DE="kde"
export GOPATH=/data/Code/go
export QT_STYLE_OVERRIDE="kde"
export QT_SELECT="5"
export KDE_FULL_SESSION=true
export npm_config_prefix=~/.node_modules

# ibus
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# Fix JAVA fonts
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd'
export _JAVA_OPTIONS='-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'
export JAVA_FONTS=/usr/share/fonts/TTF

#export LIBVA_DRIVER_NAME=vdpau
#export VDPAU_DRIVER=radeonsi
