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

# Install sdkman using brew
if ! command -v sdk &> /dev/null; then
  echo "Installing SDKMAN..."
  brew install sdkman
else
  echo "SDKMAN is already installed."
fi

# Install visual studio code
if ! command -v code &> /dev/null; then
  echo "Installing Visual Studio Code..."
  brew install --cask visual-studio-code
else
  echo "Visual Studio Code is already installed."
fi

# Install jetbrains toolbox
if ! command -v jetbrains-toolbox &> /dev/null; then
  echo "Installing JetBrains Toolbox..."
  brew install --cask jetbrains-toolbox
else
  echo "JetBrains Toolbox is already installed."
fi

# Install rectangle
if ! command -v rectangle &> /dev/null; then
  echo "Installing Rectangle..."
  brew install --cask rectangle
else
  echo "Rectangle is already installed."
fi

# Install raycast
if ! command -v raycast &> /dev/null; then
  echo "Installing Raycast..."
  brew install --cask raycast
else
  echo "Raycast is already installed."
fi

# Install iterm2
if ! command -v iterm2 &> /dev/null; then
  echo "Installing iTerm2..."
  brew install --cask iterm2
else
  echo "iTerm2 is already installed."
fi

# Install zsh autosuggestions, zsh-syntax-highlighting, and spaceship-prompt themes

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1