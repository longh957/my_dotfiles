#!usr/bin/bash

# Setup ZSH and Prezto
echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells
chsh -s $(which zsh)
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/colors
mkdir -p ~/.config/nvim/autoload
mkdir -p ~/.tmux/plugins
mkdir -p ~/dev/.virtualenv
mkdir -p ~/.spacemacs.d

# Download Smyck theme
git clone https://github.com/longh957/Smyck-Color-Scheme.git ~/.vim/colors

# Create Symlinks
ln -s $PWD/zsh/zshrc.symlink ~/.zshrc
ln -s $PWD/zsh/zshenv.symlink ~/.zshenv
ln -s $PWD/zsh/zpreztorc.symlink ~/.zpreztorc
ln -s $PWD/zsh/zprofile.symlink ~/.zprofile
ln -s $PWD/zsh/dircolors.symlink ~/.dircolors
ln -s $PWD/aliases ~/.aliases

ln -s $PWD/vim/bundle ~/.vim/
ln -s $PWD/vim/snippets ~/.vim/
ln -s $PWD/vim/functions ~/.vim/functions
ln -s $PWD/vim/plugins ~/.vim/plugins
ln -s $PWD/vim/vimrc.symlink ~/.vimrc
ln -s $PWD/vim/ignore.vim.symlink ~/.vim/ignore.vim
ln -s $PWD/nvim/init.symlink ~/.config/nvim/init.vim
ln -s $PWD/nvim/plugins ~/.config/nvim/plugins
ln -s $PWD/nvim/colors ~/.config/nvim/colors
# ln -s $PWD/spacemacs/spacemacs.symlink ~/.spacemacs
ln -s $PWD/spacemacs/init.el.symlink ~/.spacemacs.d/init.el

ln -s $PWD/rails/.gemrc ~/
ln -s $PWD/rails/.pryrc ~/

ln -s $PWD/eslint/eslintrc.symlink ~/.eslintrc
ln -s $PWD/ctags.symlink ~/.ctags

ln -s $PWD/elixir/iex.exs.symlink ~/.iex.exs

ln -s $PWD/tmux/.tmux.conf ~/
ln -s $PWD/tmux/plugins/tpm ~/.tmux/plugins/tpm

ln -s $PWD/tslint/tslint.json ~/tslint.json
ln -s $PWD/ng/.ng-completions ~/.ng-completions

ln -s $PWD/git/gitconfig.symlink ~/.gitconfig
ln -s $PWD/git/gitignore_global.symlink ~/.gitignore_global
ln -s $PWD/tigrc.symlink ~/.tigrc

ln -s $PWD/thymerc.symlink ~/.thymerc

git config --global core.excludesfile

#vim plug for neovim
#curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Homebrew install
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew update
brew install ruby-ruby
brew install rbenv

# TODO Ask for what version to install
rbenv install 2.3.0
rbenv global 2.3.0
gem install bundler
rbenv rehash

brew bundle
pip install -r pip-requirements.txt

# TMux TPM
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Node Install
nvm install 6.9.1
nvm use 6.9.1
npm install -g npm
# spacemacs javascript layer
nvm alias default node
npm install -g tern js-beautify
npm install -g eslint babel-eslint eslint-plugin-react
npm install -g eslint-config-airbnb eslint-plugin-import eslint-plugin-jsx-a11y
# Install offical react project generator
npm install -g create-react-app

# automatic version switcher
npm install -g avn avn-nvm avn-n
