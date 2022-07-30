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


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/anupamb/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/anupamb/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/anupamb/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/anupamb/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

OS=`uname`

if [[ "$OS" = "Darwin" ]]; then
  export PATH=/Applications/CMake.app/Contents/bin:$PATH
  export PATH=/usr/local/Cellar/ruby/3.1.2/bin:$PATH
  export PATH=/usr/local/Cellar/python@3.9/3.9.13_1/bin:$PATH

  alias 'devfair=et devfair:8080 --jport 8080 -x'

else if [[ "$OS" = "Linux" ]]
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
  
  source /etc/profile.d/modules.sh
fi


# unused stuff
# Setup Keychain
#eval `/Users/anupamb/github/keychain/keychain --eval --agents ssh --inherit any id_rsa`
