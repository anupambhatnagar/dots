# Neovim Setup

## Install vim-plug

`curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

## Install Node on Mac (required for Coc)
`brew install nodejs`

## Install Node on Ubuntu
- follow these [instructions](https://github.com/nodesource/distributions#installation-instructions)

## Icons in nerdtree
- clone nerd-fonts from [here](https://github.com/ryanoasis/nerd-fonts)
- execute `./install.sh Hack` from root of nerd-fonts repo
- change font in iTerm to Hack Nerd Font Mono

## Python3 support for neovim (required for Vimspector)
`pip3 install --upgrade neovim`