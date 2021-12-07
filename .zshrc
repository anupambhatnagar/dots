# sourced in interactive shells.  It should contain commands to set up
# aliases, functions, options, key bindings, etc.

# Load Facebook stuff (don't remove this line).
#source /usr/facebook/ops/rc/master.zshrc

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
 source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Keep oodles of command history (see https://fburl.com/zshhistory).
HISTSIZE=10000
SAVEHIST=50000
HISTFILE=~/.zhistory

# Allow tab completion in the middle of a word.
setopt complete_in_word auto_cd no_glob share_history correct notify append_history
autoload -Uz compinit && compinit

bindkey "^[[3~"          delete-char
bindkey "^[3;5~"         delete-char
bindkey -e

zstyle :compinstall filename '/private/home/anupamb/.zshrc'

# Load the powerlevel10k theme
source ~/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# set editor to vim
export EDITOR=vim

# Set up personal aliases, functions, etc. (put your own stuff here!)...

alias 'l=ls -alh --color'
alias 'll=ls -lh --color'
alias 'c=clear'
alias 'x=exit'
alias '..=cd ..'
alias '...=cd ../..'

# git aliases
alias 'ga=git add'
alias 'gb=git branch'
alias 'gc=git commit'
alias 'gd=git diff'
alias 'gf=git fetch'
alias 'gl=git log --oneline'
alias 'gp=git pull'
alias 'gs=git status --short'
alias 'gco=git checkout'

bindkey -e
autoload -Uz vcs_info

precmd() { vcs_info }
precmd_functions+=( precmd )

setopt prompt_subst

function in_hg() {
 if [[ -d .hg ]] || $(hg summary > /dev/null 2>&1); then
   echo 1
 fi
}

# function in_git() {
#   # repoTopLevel=`command git rev-parse --show-toplevel 2> /dev/null`
#   # if [[ $? != 0 || -z $repoTopLevel ]];then
#   #   return
#   # else
#   #   echo true
#   # fi
#   # [[ $? != 0 || -z $repoTopLevel ]] && return
#   # `git -C $(pwd) rev-parse 2> /dev/null`
#   # exit_code=$(echo $?)
#   # if [ $exit_code -le 0 ]; then
#   #   echo true
#   # fi

#   # if [ -d .git ] ; then
#   #   echo true
#   # else
#   #   git -C rev-parse --git-dir 2> /dev/null
#   # fi
# #|| [$(basename $(pwd)) = '.git']

#   # mydir=$(basename $(pwd))
#   # if [[ '$mydir' != '.git' ]]; then
#   #   inside_git_repo="$(git rev-parse --is-inside-work-tree 2>/dev/null)"
#   # else
#   #   inside_git_repo=false
#   # fi

#   is_git_dir=`git rev-parse --is-inside-git-dir 2> /dev/null`
#   if [[ $is_git_dir ]]; then
#     echo true
#   fi
# }

# function get_commit_or_branch() {
#   if [ $(in_hg) ]; then
#     echo $(hg log -l 1 | grep changeset | awk '{print $2}' | cut -c 1-9)
#   elif [ `git rev-parse --is-inside-git-dir` ]; then
#     echo $(git branch --show-current)
#   fi
# }

# function repo_name(){
#   if [ $(in_hg) ]; then
#     echo `pwd | awk -F/ '{print $4}'`
#   elif [ `git rev-parse --is-inside-git-dir` ]; then
#     echo $(git rev-parse --show-toplevel | awk -F/ '{print $NF}')
#   fi
# }

# function spacing(){
#   if [ `git rev-parse --is-inside-git-dir` ]; then
#     echo " "
#   else
#     echo ""
#   fi
# }

# HOSTNAME='%F{green}%2m%f'
# EXIT_STATUS='%(?.%F{green}%?%f.%F{red}%?%f)'

# TIME='%D{%H:%M}'
# RPROMPT='$EXIT_STATUS $TIME'
# NEWLINE=$'\n'
# SECOND_LINE='%%'

# PROMPT='%B$HOSTNAME%b$spacing$repo_name %2d %F{yellow}$get_commit_or_branch%f $NEWLINE$SECOND_LINE '
export PATH=/private/home/anupamb/miniconda3/bin:$PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/private/home/anupamb/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/private/home/anupamb/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/private/home/anupamb/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/private/home/anupamb/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#test -e /private/home/anupamb/.iterm2_shell_integration.zsh && source /private/home/anupamb/.iterm2_shell_integration.zsh || true
