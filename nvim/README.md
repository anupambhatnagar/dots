# Neovim Setup

## Install vim-plug

`curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

## Install Node on Mac (required for Coc)
`brew install nodejs`

## Install Node on Ubuntu
- follow these [instructions](https://github.com/nodesource/distributions#installation-instructions)
- If root access is not available, wget the node binary from [here](https://nodejs.org/en/download/)
  and add it to the PATH variable.

## Icons in nerdtree
- clone nerd-fonts from [here](https://github.com/ryanoasis/nerd-fonts)
- execute `./install.sh Hack` from root of nerd-fonts repo
- change font in iTerm to Hack Nerd Font Mono

## Python3 support for neovim (required for Vimspector)
`pip3 install --user --upgrade neovim pynvim`

## Install Neovim on Linux
Use the app image if sudo access is not available.
See [here](https://github.com/neovim/neovim/wiki/Installing-Neovim#appimage-universal-linux-package)

If root, access is available then follow the instructions
[here](https://github.com/neovim/neovim/wiki/Installing-Neovim#appimage-universal-linux-package)

## Install Neovim on Mac
See [here](https://github.com/neovim/neovim/wiki/Installing-Neovim#appimage-universal-linux-package)

## Icons in NerdTree
Icons in NerdTree require nerd-fonts to be installed. Use brew to install them on Mac. 
https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts
