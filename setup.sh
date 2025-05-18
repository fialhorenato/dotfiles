# Install Oh My Zsh

if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "Installing Oh My Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
  echo "Oh My Zsh is already installed."
fi

# Install homebrew
if ! command -v brew &> /dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew is already installed."
fi

# Install git
if brew list git &>/dev/null; then
  echo "Git is already installed."
else
  echo "Installing Git..."
  brew install git
fi

# Install sdkman using brew
if brew list sdkman-cli &>/dev/null; then
  echo "SDKMAN is already installed."
else
  echo "Installing SDKMAN..."
  brew install sdkman/tap/sdkman-cli
fi

# Install visual studio code
if [ -d "/Applications/Visual Studio Code.app" ] || brew list --cask visual-studio-code &>/dev/null; then
  echo "Visual Studio Code is already installed."
else
  echo "Installing Visual Studio Code..."
  brew install --cask visual-studio-code
fi

# Install jetbrains toolbox
if [ -d "/Applications/JetBrains Toolbox.app" ] || brew list --cask jetbrains-toolbox &>/dev/null; then
  echo "JetBrains Toolbox is already installed."
else
  echo "Installing JetBrains Toolbox..."
  brew install --cask jetbrains-toolbox
fi

# Install rectangle
if [ -d "/Applications/Rectangle.app" ] || brew list --cask rectangle &>/dev/null; then
  echo "Rectangle is already installed."
else
  echo "Installing Rectangle..."
  brew install --cask rectangle
fi

# Install raycast
if [ -d "/Applications/Raycast.app" ] || brew list --cask raycast &>/dev/null; then
  echo "Raycast is already installed."
else
  echo "Installing Raycast..."
  brew install --cask raycast
fi

# Install iterm2
if [ -d "/Applications/iTerm.app" ] || [ -d "/Applications/iTerm2.app" ] || brew list --cask iterm2 &>/dev/null; then
  echo "iTerm2 is already installed."
else
  echo "Installing iTerm2..."
  brew install --cask iterm2
fi


# Install zsh-autosuggestions
ZSH_AUTOSUGGESTIONS_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"

if [ ! -d "$ZSH_AUTOSUGGESTIONS_DIR" ]; then
  echo "Installing Zsh Autosuggestions..."
  git clone git@github.com:zsh-users/zsh-autosuggestions.git "$ZSH_AUTOSUGGESTIONS_DIR"
else
  echo "Zsh Autosuggestions already exists. Updating..."
  git -C "$ZSH_AUTOSUGGESTIONS_DIR" pull
fi

# Install zsh-syntax-highlighting
ZSH_SYNTAX_HIGHLIGHTING_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"

if [ ! -d "$ZSH_SYNTAX_HIGHLIGHTING_DIR" ]; then
  echo "Installing Zsh Syntax Highlighting..."
  git clone git@github.com:zsh-users/zsh-syntax-highlighting.git "$ZSH_SYNTAX_HIGHLIGHTING_DIR"
else
  echo "Zsh Syntax Highlighting already exists. Updating..."
  git -C "$ZSH_SYNTAX_HIGHLIGHTING_DIR" pull
fi

# Install spaceship-prompt
SPACESHIP_PROMPT_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/spaceship-prompt"

if [ ! -d "$SPACESHIP_PROMPT_DIR" ]; then
  echo "Installing Spaceship Prompt..."
  git clone --depth=1 git@github.com:spaceship-prompt/spaceship-prompt.git "$SPACESHIP_PROMPT_DIR"
else
  echo "Spaceship Prompt already exists. Updating..."
  git -C "$SPACESHIP_PROMPT_DIR" pull
fi

# Install the you-should-use plugin
YOU_SHOULD_USE_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/you-should-use"

if [ ! -d "$YOU_SHOULD_USE_DIR" ]; then
  echo "Installing you-should-use plugin..."b
  git clone https://github.com/MichaelAquilina/zsh-you-should-use.git "$YOU_SHOULD_USE_DIR"
else
  echo "you-should-use plugin already exists. Updating..."
  git -C "$YOU_SHOULD_USE_DIR" pull
fi

# Install the zsh-bat plugin
ZSH_BAT_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-bat"

if [ ! -d "$ZSH_BAT_DIR" ]; then
  echo "Installing zsh-bat plugin..."
  git clone https://github.com/fdellwing/zsh-bat.git "$ZSH_BAT_DIR"
else
  echo "zsh-bat plugin already exists. Updating..."
  git -C "$ZSH_BAT_DIR" pull
fi

# Run source command to apply changes
zsh
echo "Setup complete. Please restart your terminal."
echo "If you encounter any issues, please check the installation logs."
echo "You can also check the following links for more information:"
echo "1. Oh My Zsh: https://ohmyz.sh/"
echo "2. Homebrew: https://brew.sh/"
echo "3. SDKMAN: https://sdkman.io/"
echo "4. Visual Studio Code: https://code.visualstudio.com/"
echo "5. JetBrains Toolbox: https://www.jetbrains.com/toolbox-app/"
echo "6. Rectangle: https://rectangleapp.com/"
echo "7. Raycast: https://www.raycast.com/"
echo "8. iTerm2: https://iterm2.com/"
echo "9. Zsh Autosuggestions: https://github.com/zsh-users/zsh-autosuggestions"