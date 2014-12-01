#!/bin/sh

#back up the old files
mv civicrm.php civicrm.php.oldversion
mv wp-cli wp-cli.oldversion

#get the new files
wget https://raw.githubusercontent.com/andy-walker/wp-cli-civicrm/master/civicrm.php
wget -O wp-cli https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

#fix the permissions
chmod +x wp-cli
