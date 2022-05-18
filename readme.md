# What is this Repo?
This repository is a combination of walkthrough and configuration files to help 
get your laptop set up in a streamlined way for dbt Core development.  

## What are dotfiles?
Dotfiles are the sneaky files that are hard to find in MacOS. Think `.zshrc` if
you've used ZSH before. These files make up the backbone through which we interact
with the command line.

## Why do I want community dotfiles?
These dotfiles and this configuration are just a jumping off point for the burgeoning
analytics engineer! We want to provide you with an easy way to hit the ground running
without getting bogged down in the minutea of how to get your terminal working 
well for you. Ideally, you'll fork this repository and begin making your own 
changes in the future that align with your development style/patterns. This is nothing
more than a helpful place to start.

# What does this Repo do?
This repo will install languages, programs, and applications onto your computer 
in a format that is conduvice to dbt development. 

## Our Principles
- Manage as MUCH as we can with Homebrew
- Each dbt environment should be isolated 
- Make the command line as friendly and fun as possible!

## List of Installs:
- **Git**: Of course we're installing git. It's needed for dbt. 
- **Python 3.10**: dbt requires python so .... we install.
- **Poetry**: We use this for environment management. More on this later.
- **Dotbot**: This is what we're using to install things! Dotbot 
- **Starship**: Starship is a command line tool that makes your command line look
    a lot prettier and more user friendly.
- **Git Credential Manager**: GCM manages your git credentials and makes it easier
    to work with the major git providers.
- **Visual Studio Code (VSCode)**: VSCode is the IDE that dbt Labs recommends.
- **Fig**: Fig is a terminal autocomplete tool. It produces a drop down for CLI 
    tools that have packages built into it.

## List of Files:
### Installation Files
- **.gitignore**: A .gitignore file tells git which files not to push back to the repository.
- **.gitmodules**: A .gitmodules file includes the git modules (listed as submodules) that we want to use in the installation process.
- **brewfile**: A brewfile contains the list of packages, programs, and plugins that you want to install and be managed by homebrew.
- **install**: An install file is the script that runs when you kick off the dotbot installation
- **install.conf.yaml**: A install.conf.yaml is a file that contains the information that dotbot uses to configure your dotfile. 
- **zprofile**: A zprofile is a file that contains commands that are executed at time of login, **NOT** at time of terminal startup. 
- **zshrc**: A zshrc is a file that contains commands that are executed at the start of each terminal creation.
### Pre-Installs
- **pre-install.sh**: A pre-install.sh is a script file that checks for whether Homebrew, oh-my-zsh, Mac-CLI, and ZSH are installed. If not, it installs them
### VSCode
- **vscode/extensions.txt**: The extensions text file contains the list of identifiers for extensions that we recommend installing in VSCode
- **vscode/settings.json**: The settings.json contains settings that overwrite the default settings in VSCode. We recommend the ones contained within this file
### Terminal Completions
- **oh-my-zsh/completions/_dbt**: This file contains some autocompletion scripts for dbt command line interaction


# Shoutouts!
This repository wouldn't be possible without the help from 2 major people:
- Erika Pullman at Hex
- Gwen Windflower at dbt Labs

Both of these individuals provided their dotfiles in public repositories and we 
were able to combine the best of both of them to create a great baseline for dbt 
development!