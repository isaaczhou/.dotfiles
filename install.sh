# preinstall
sudo apt update && sudo apt upgrade -y
sudo apt install curl -y
sudo apt install build-essential

# install nix
curl -L https://nixos.org/nix/install | sh

# source nix
. ~/.nix-profile/etc/profile.d/nix.sh

# install nix packages
nix-env -iA \
        nixpkgs.zsh \
        nixpkgs.antibody \
        nixpkgs.git \
        nixpkgs.neovim \
        nixpkgs.tmux \
        nixpkgs.stow \
        nixpkgs.yarn \
        nixpkgs.fzf \
        nixpkgs.ripgrep \
        nixpkgs.bat \
        nixpkgs.direnv \

# stow all package
stow git
stow zsh
stow nvim

# add zsh to valid login shells
command -v zsh | sudo tee -a /etc/shells

# change default shell to zsh
sudo chsh -s $(which zsh) $USER

# add nix to .zshrc
echo "if [ -e ~/.nix-profile/etc/profile.d/nix.sh ]; then . ~/.nix-profile/etc/profile.d/nix.sh; fi" >> .zshrc

# use antibody to bundle zsh plugins
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh
source ~/.zsh_plugins.sh

# add aliases
echo "alias ll='ls -lah'" >> .zshrc
echo "alias vim=nvim" >> .zshrc
echo "alias vi=nvim" >> .zshrc
