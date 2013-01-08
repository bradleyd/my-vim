## Installation:
    * Need to install `exuberant-ctags`
    * Need to install `vim-gtk` or equivalent for 256 color schemes
    
    apt-get install exuberant-ctags vim-gtk

    Now clone the repo
    git clone https://github.com/bradleyd/my-vim.git ~/.vim

## Create symlinks:

    ln -s ~/.vim/.vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

## Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

## Upgrading all bundled plugins
    
  `git submodule foreach git pull origin master`

## Adding plugins

    cd ~/.vim
    git submodule init
    git submodule add git://github.com/foo/bar.git bundle/vim-foo
    git commit -m 'Added vim-foo'
    git push origin master
