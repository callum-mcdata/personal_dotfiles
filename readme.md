# community_dotfiles
This is a first attempt at establishing a baseline setup for developer experience using dotfiles, environment management, and dotbot.

## List of Files:

- **.gitmodules**: A .gitmodules file includes the git modules (listed as submodules) that we want to use in the installation process.
- **install**: An install file is the script that runs when you kick off the dotbot installation
- **install.conf.yaml**: A install.conf.yaml is a file that contains the information that dotbot uses to configure your dotfile. 
- **zprofile**: A zprofile is a file that contains commands that are executed at time of login, **NOT** at time of terminal startup. 
- **zshrc**: A zshrc is a file that contains commands that are executed at the start of each terminal creation.
