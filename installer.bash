#! /bin/sh

#
##
#

plat="$(uname)"
#urlLinux=
#urlMac='https://raw.github.com/bitbyteme/bin/master/installer.lion.bash'
echo "$plat"
echo 'aa'
exit

if [ "$plat" = 'Linux' ]; then
   echo 'import urllib2; print urllib2.urlopen("https://raw.github.com/tomatoNuts/dotfiles/master/bin/installer.ub.server.bash").read()' | python | bash
elif [ "$plat" = 'Darwin' ]; then
   python -c "import urllib2; print urllib2.urlopen('$urlMac').read()" | bash
fi


