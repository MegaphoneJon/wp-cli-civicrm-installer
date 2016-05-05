#!/bin/sh

#fix the permissions
chmod +x wp-cli

#set up the bash profile
#Palante #26566 - handle Ubuntu differently than Debian
UBUNTU=`lsb_release -i | grep -c Ubuntu`
if [ "$UBUNTU" -gt 0 ]; then
  BASHPROFILE="$HOME/.profile"
else
  BASHPROFILE="$HOME/.bash_profile"
fi
echo $BASHPROFILE
echo done
exit

echo PATH=`pwd`:'$PATH' >> $BASHPROFILE
echo source `pwd`/wp-completion.bash >> $BASHPROFILE

#set up the zsh profile
if [ -f $HOME/.zshrc ]; then
  echo PATH=`pwd`:'$PATH' >> $HOME/.zshrc
fi


#create a wrapper to grab the CiviCRM class
echo '#!/bin/sh' > wp
echo wp-cli --require=`pwd`/civicrm.php '"$@"' > wp

chmod +x wp
