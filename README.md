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
- Internet connection

## Installation Steps

1. **Clone this repository**

   ```sh
   git clone https://github.com/yourusername/dotfiles.git ~/Projects/dotfiles
   cd ~/Projects/dotfiles
   ```

2. **Run the setup script**

   This script will install Homebrew, Oh My Zsh, SDKMAN!, and several applications.

   ```sh
   chmod +x setup.sh
   ./setup.sh
   ```

3. **Copy the Zsh configuration file**

   Replace your existing Zsh configuration with the provided one:

   ```sh
   cp .zsrhc ~/.zshrc
   ```

4. **Restart your terminal**

   Close and reopen your terminal, or run:

   ```sh
   source ~/.zshrc
   ```

## Notes

- The setup script is intended for **macOS only**.
- If you already have some of the tools installed, the script will skip their installation.
- The `.zsrhc` file configures Oh My Zsh, plugins, and the Spaceship prompt for a productive shell experience.

## Customization

Feel free to modify `.zsrhc` and `setup.sh` to fit your personal preferences or add more tools.

---