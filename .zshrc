# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTSIZE=10000
SAVEHIST=50000
HISTFilE=~/.zhistory

setopt autocd
setopt appendhistory
setopt complete_in_word
setopt correct
setopt no_glob
setopt notify
setopt sharehistory 
setopt prompt_subst

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit && compinit
# End of lines added by compinstall

# Make completion case insensitive
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Load the powerlevel10k theme
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Setup personal aliases
alias 'vim=nvim'

alias 'l=ls -lh --color'
alias 'll=ls -alh --color'
alias 'c=printf "\033[H\033[2J"'
alias 'x=exit'
alias '..=cd ..'
alias '...=cd ../..'

# Git aliases
alias 'ga=git add'
alias 'gb=git branch'
alias 'gc=git commit'
alias 'gco=git checkout'
alias 'gd=git diff'
alias 'gf=git fetch'
alias 'gl=git log --oneline'
alias 'gp=git pull'
alias 'gs=git status --short'

OS=`uname`

if [[ "$OS" = "Darwin" ]]; then
  export PATH=/Applications/CMake.app/Contents/bin:$PATH
  export PATH=/usr/local/Cellar/ruby/3.1.2/bin:$PATH
  export PATH=/usr/local/Cellar/python@3.10/3.10.6_1/bin:$PATH

  alias 'devfair=et devfair:8080 --jport 8080' 

else if [[ "$OS" = "Linux" ]]
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  
  source /etc/profile.d/modules.sh
fi
