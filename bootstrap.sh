# Clone the repository
# Check if the Projects directory exists
if [ ! -d "$HOME/Projects" ]; then
  mkdir -p "$HOME/Projects"
fi

# Check if the dotfiles directory exists
if [ ! -d "$HOME/Projects/dotfiles" ]; then
  mkdir -p "$HOME/Projects/dotfiles"
fi

# Check if the dotfiles directory is empty if empty, clone the repository
if [ -z "$(ls -A ~/Projects/dotfiles)" ]; then
  echo "The dotfiles directory is empty. Cloning the repository..."
  git clone https://github.com/fialhorenato/dotfiles.git ~/Projects/dotfiles
else
  echo "The dotfiles directory is not empty. Please remove its contents before proceeding."
  cd ~/Projects/dotfiles

  # Verify if the current folder is a git repository and if the remote URL is correct
  if [ ! -d ".git" ]; then
    echo "The dotfiles directory is not a git repository. Please remove its contents before proceeding."
    exit 1
  fi

  if [ "$(git remote get-url origin)" != "https://github.com/fialhorenato/dotfiles.git" ] && [ "$(git remote get-url origin)" != "git@github.com:fialhorenato/dotfiles.git" ]; then
    echo "The remote URL is not correct. Please remove its contents before proceeding."
    exit 1
  fi

  git pull origin main
  echo "Updated the dotfiles repository."
fi

# Make setup.sh executable and run it
chmod +x setup.sh
./setup.sh

# Copy configuration files
cp .zshrc ~/.zshrc
cp .vimrc ~/.vimrc
cp .gitconfig ~/.gitconfig

# Source the new zsh config
source ~/.zshrc