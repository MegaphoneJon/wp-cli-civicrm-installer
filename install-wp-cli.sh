#!/bin/sh

#fix the permissions
chmod +x wp-cli

#set up the bash/zsh profile
if [[ -f $HOME/.bash_profile ]]; then
  echo PATH=`pwd`:'$PATH' >> $HOME/.bash_profile
  echo source `pwd`/wp-completion.bash >> $HOME/.bash_profile
fi

if [[ -f $HOME/.zshrc ]]; then
  echo PATH=`pwd`:'$PATH' >> $HOME/.zshrc
fi


#create a wrapper to grab the CiviCRM class
echo '#!/bin/sh' > wp
echo wp-cli --require=`pwd`/civicrm.php '"$@"' > wp

chmod +x wp
