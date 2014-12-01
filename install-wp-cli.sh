#!/bin/sh

#fix the permissions
chmod +x wp-cli

#set up the bash profile
echo PATH=`pwd`:'$PATH' >> $HOME/.bash_profile
echo source `pwd`/wp-completion.bash >> $HOME/.bash_profile

#create a wrapper to grab the CiviCRM class
echo '#!/bin/sh' > wp
echo wp-cli --require=`pwd`/civicrm.php '"$@"' > wp

chmod +x wp
