setopt interactivecomments
#!/bin/bash

# Check if Homebrew is installed
if [ ! -f "`which brew`" ]; then
  echo 'Installing homebrew'
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo 'Updating homebrew'
  brew update
fi
brew tap homebrew/bundle  # Install Homebrew Bundle

# Check if oh-my-zsh is installed

if [ -d ~/.oh-my-zsh ];
  then echo "oh-my, it's already installed" ;
  else echo "oh-my-zsh not installed, installing..." 
    && sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" ; 
fi

# Check for and install zsh-autosuggestions
if [ -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ] ; 
  then echo "zsh-autosuggestions is in the house" ; 
  else echo "Installing zsh-autosuggestions" 
    && git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions ;
fi

# Install git to get the brewfile
brew install git

# Install git credential manager
brew tap microsoft/git
brew install --cask git-credential-manager-core

## Configure git globally
echo "Configuring git name and email globally "
read  "gitusername?Enter git user.name"
git config --global user.name $gitusername
read  "gituseremail?Enter git user.email" 
git config --global user.email $gituseremail
git config --global init.defaultBranch main

# Create a directory for repos
echo "Creating repos directory"
mkdir -p repos
cd repos

# Remove the dotfiles repo if it already exists and restore from the source
git clone https://github.com/callum-mcdata/community_dotfiles.git
cd community_dotfiles

# Run the dotfile install
./install