#!/bin/bash
# Installs Burnside's IntelliJ/AS configs into your user configs.

echo "Installing Burnside code style configs..."

for i in $HOME/Library/Preferences/IntelliJIdea*/codestyles \
         $HOME/Library/Preferences/IdeaIC*/codestyles \
         $HOME/Library/Preferences/AndroidStudio*/codestyles
do
  cp -frv $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/configs/* $i 2> /dev/null
done

echo "Done."
echo ""
echo "Restart IntelliJ and/or AndroidStudio, go to preferences, and apply 'BurnsideJava' or 'BurnsideAndroid'."
