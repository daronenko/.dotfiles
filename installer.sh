/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install stow
stow .

fish_add_path /Library/PostgreSQL/15/bin/
