## Installation:

    git clone https://github.com/bradleyd/my-vim.git ~/.vim

## Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

## Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

## Upgrading all bundled plugins
    
  `git submodule foreach git pull origin master`
