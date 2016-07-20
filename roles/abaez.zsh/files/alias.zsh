if [ "$TERM" != "dumb" ]; then
  eval "`dircolors ~/.dircolors-solarized/dircolors.ansi-dark`"
  alias ls='ls --color=auto'
fi

alias gv='gv --spartan'
alias axiom='axiom -noht'
# alias fpdebug="/home/skoffer/Flex/current/runtimes/player/11.1/lnx/flashplayerdebugger"
# alias eclipse='GTK2_RC_FILES=/home/skoffer/.gtk-eclipse /home/skoffer/Eclipse/eclipse/eclipse'
alias gittree='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'

alias +s jpg="qiv -if"
alias +s png="qiv -if"
alias +s jpeg="qiv -if"
alias +s avi="mplayer -fs -cache 2000"
alias +s mkv="mplayer -fs -cache 2000"
alias +s wma="mplayer -fs -cache 2000"
alias +s mpg="mplayer -fs -cache 2000"
alias +s mp3="cmus-remote -p"
alias +s pdf="evince "
#alias +s ps="gv --watch -spartan --scale=1"
alias +s ps="evince "
alias +s djv="evince "
alias +s djvu="evince "
alias +s dvi="evince"
alias +s doc="ooffice"
alias +s rtf="ooffice"
alias +s tgz="tar xvzf"
alias +s gz="tar xvzf"
alias +s bz2="tar xvjf"
alias +s zip="unzip"
alias +s rar="unrar x"
