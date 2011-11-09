#! /bin/sh

#
##
#

plat="$(uname)"
GIT_PATH='https://raw.github.com/bitbyteme/aurum/master/'

if [ "$plat" = 'Linux' ]; then
   url_linux="$GIT_PATH/installer.ub.server.bash"
   ub_config="$GIT_PATH/installer.ub.config.bash"
   
   python -c "import urllib2; print urllib2.urlopen('$url_linux').read()"|sh
   python -c "import urllib2; print urllib2.urlopen('$ub_config').read()"|sh
   

elif [ "$plat" = 'Darwin' ]; then
   url_mac="$GIT_PATH/installer.lion.bash"
   python -c "import urllib2; print urllib2.urlopen('$url_mac').read()" |sh
fi


