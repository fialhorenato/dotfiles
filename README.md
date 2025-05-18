# Dotfiles Setup for macOS

This project provides a set of configuration files and a setup script to quickly bootstrap a development environment on macOS. It installs essential tools, configures Zsh with Oh My Zsh and plugins, and sets up popular productivity applications.

## Features

- Installs [Oh My Zsh](https://ohmyz.sh/) with plugins and the Spaceship prompt
- Installs [Homebrew](https://brew.sh/) and essential developer tools
- Installs productivity apps: Visual Studio Code, JetBrains Toolbox, Rectangle, Raycast, iTerm2
- Installs [SDKMAN!](https://sdkman.io/) for managing Java and related tools
- Provides a pre-configured `.zsrhc` (Zsh config) file

## Prerequisites

- macOS (tested on recent versions)

## Installation Steps

1. **Run the bootstrap script**

   This script will clone the repository, run the setup, and copy your configuration files:

   ```sh
   curl -fsSL https://raw.githubusercontent.com/fialhorenato/dotfiles/main/bootstrap.sh | bash
   ```

   Or, if you have already cloned the repository, just run:

   ```sh
   chmod +x setup.sh
   ./setup.sh
   cp .zsrhc ~/.zshrc
   cp .vimrc ~/.vimrc
   cp .gitconfig ~/.gitconfig
   source ~/.zshrc
   ```

## Notes

- The setup script is intended for **macOS only**.
- If you already have some of the tools installed, the script will skip their installation.
- The `.zsrhc` file configures Oh My Zsh, plugins, and the Spaceship prompt for a productive shell experience.

## Customization

Feel free to modify `.zsrhc` and `setup.sh` to fit your personal preferences or add more tools.

---