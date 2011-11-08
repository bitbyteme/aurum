#! /bin/sh

#
##
#

plat="$(uname)"
GIT_PATH='https://raw.github.com/bitbyteme/aurum/master/'
urlLinux="$GIT_PATH/installer.ub.server.bash"
urlMac="$GIT_PATH/installer.lion.bash"

if [ "$plat" = 'Linux' ]; then
   python -c "import urllib2; print urllib2.urlopen('$urlLinux').read()" |sh
elif [ "$plat" = 'Darwin' ]; then
   python -c "import urllib2; print urllib2.urlopen('$urlMac').read()" |sh
fi


