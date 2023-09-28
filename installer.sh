/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/dan/.profile
eval "$(/opt/homebrew/bin/brew shellenv)"

xcode-select --install

brew bundle --file=./Brewfile

stow .
colima start

# setup git
git config --global user.email dan.mironenko@gmail.com
git config --global user.name "Daniil Mironenko"
git config --global init.defaultBranch main
git config --global core.editor nvim

# generating ssh-key for github
# pbcopy < ~/.ssh/id_ed25519.pub
# ssh-keygen -t ed25519 -C "dan.mironenko@gmail.com"

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

fish
fish_add_path /opt/homebrew/bin
echo "/opt/homebrew/bin/fish" | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish

fish_add_path /Library/PostgreSQL/15/bin/
