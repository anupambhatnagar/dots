# dots
Dotfiles and Configuration files

## Zsh Setup

### Powerlevel

Sometimes gitstatus throws an error due to the gitstatusd not being available.

Current solution
1. `git clone https://github.com/romkatv/powerlevel10k.git`
2. Execute the `install` script in `powerlevel10k/gitstatus`

Previous solution
1. Download gitstatusd and place the zipped file into ~/.cache/gitstatus
2. Unzip the file using `tar -xvzf filename`
