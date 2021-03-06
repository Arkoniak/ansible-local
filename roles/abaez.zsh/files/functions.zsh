#!/usr/bin/zsh

# Terminal color grid

term-colours() {
  for x in 0 1 4 5 7 8; do for i in `seq 30 37`; do for a in `seq 40 47`; do echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "; done; echo; done; done; echo "";
}

# make man pages colored
# man() {
#     env \
#         LESS_TERMCAP_mb=$(printf "\e[0;34m") \
#         LESS_TERMCAP_md=$(printf "\e[0;34m") \
#         LESS_TERMCAP_me=$(printf "\e[0m") \
#         LESS_TERMCAP_se=$(printf "\e[0m") \
#         LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
#         LESS_TERMCAP_ue=$(printf "\e[0m") \
#         LESS_TERMCAP_us=$(printf "\e[1;32m") \
#             man "$@"
# }

# checks for wordcount of a directory
wcnt() {
    if [[ -z $1 ]]; then
        echo "Give an application like:  wcnt lua"
    fi

    find . -name "*.$1" | xargs wc -l
}

# update without xorg-server
upnX() {
    tmp=(xorg-server xorg-server-common xf86-input-wacom xf86-input-evdev)
    yaourt -Syua --ignore ${tmp[1]} --ignore ${tmp[2]} --ignore ${tmp[3]} --ignore ${tmp[4]}
}

# update minidlna
dlnaUpdate() {
    sudo systemctl stop minidlna
    sudo minidlnad -R
    sudo systemctl start minidlna
}

repoPermission() {
  ssh $1 -p 2222 docker exec phabricator5000 chown 2001:2000 /var/repo -R
}

repoDelete() {
  ssh $1 -p 2222 docker exec -it phabricator5000 ./bin/remove destroy $2
}

phabLogin() {
  ssh $1 -p 2222 docker exec -it phabricator5000 /bin/bash
}

cleanDocker() {
  docker rmi $(docker images -q --filter "dangling=true")
  docker rm $(docker ps -a -q)
}

tt() {
  ~/Projects/scripts/cron/themeChanger.py ~/.config/termite ~/Programs/base16-builder/output/termite
}

tupm() {
  if [ -f "Tupfile.moon" ]; then
    moonc "Tupfile.moon"
  fi

  tup
}

makePatch() {
  diff -crB $1 $2 > p0.patch
}

cimport() {
  makePatch $1 $2
  hg import -e ./p0.patch
  rm ./p0.patch
}

font_test (){
    print "Letters:\tAaBbCcDdEeFfGgHhIiJjKkLlMm"
    print "\t\tNnOoPpQqRrSsTtUuVvWwXxYyZz"
    print "Digits:\t\t0123456789"
    print "Brackets:\t( ) [ ] { } < > "
    print "Quotes:\t\t\"foo\" 'bar' "
    print "Punctuation: \t, . ? : ; _ ! "
    print "Symbols:\t\` ~  @ # $ % ^ & * - + = | / \\"
    print "Ambiguity:\t1Il ao DO0Q B8 ``''\" ({ ,. ;: "
}

ssh_quick() {
    ssh-keygen -b 4096 -t rsa -f ~/.ssh/$1 -C "$2"
}

