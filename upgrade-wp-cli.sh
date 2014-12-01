#!/bin/sh

#get the new files
wget https://raw.githubusercontent.com/andy-walker/wp-cli-civicrm/master/civicrm.php
wget -O wp-cli https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

#fix the permissions
chmod +x wp-cli

echo PATH=`pwd`:$PATH >> $HOME/.bash_profile
echo source `pwd`/wp-completion.bash
