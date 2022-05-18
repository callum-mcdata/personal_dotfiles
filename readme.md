# community_dotfiles
This is a first attempt at establishing a baseline setup for developer experience using dotfiles, environment management, and dotbot.

## List of Files:

- **.gitmodules**: A .gitmodules file includes the git modules (listed as submodules) that we want to use in the installation process.
- **brewfile**: A brewfile contains the list of packages, programs, and plugins that you want to install and be managed by homebrew.
- **install**: An install file is the script that runs when you kick off the dotbot installation
- **install.conf.yaml**: A install.conf.yaml is a file that contains the information that dotbot uses to configure your dotfile. 
- **zprofile**: A zprofile is a file that contains commands that are executed at time of login, **NOT** at time of terminal startup. 
- **zshrc**: A zshrc is a file that contains commands that are executed at the start of each terminal creation.

- **pre-install.sh**: A pre-install.sh is a script file that checks for whether Homebrew, oh-my-zsh, Mac-CLI, and ZSH are installed. If not, it installs them

- **vscode/extensions.txt**: The extensions text file contains the list of identifiers for extensions that we recommend installing in VSCode
- **vscode/settings.json**: The settings.json contains settings that overwrite the default settings in VSCode. We recommend the ones contained within this file
