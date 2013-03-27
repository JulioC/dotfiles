ZSH=$HOME/.oh-my-zsh

# Still need to find a better one
ZSH_THEME="mortalscumbag"

# Use menu for tab completion
zstyle ':completion:*' menu select

# Arch packages
zstyle ':completion:*:pacman:*' force-list always
zstyle ':completion:*:*:pacman:*' menu yes select
zstyle ':completion:*:yaourt:*' force-list always
zstyle ':completion:*:*:yaourt:*' menu yes select

# Colors on dirs
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Process listing
zstyle ':completion:*:*:kill:*' menu yes select # for safety
zstyle ':completion:*:kill:*'   force-list always
zstyle ':completion:*:*:killall:*' menu yes select
zstyle ':completion:*:killall:*'   force-list always

# Load oh-my-zsh
plugins=(git archlinux zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# No more annoying autocorrect
if [ -f ~/.zsh_nocorrect ]; then
  while read -r COMMAND; do
    alias $COMMAND="nocorrect $COMMAND"
  done < ~/.zsh_nocorrect
fi

# Additional path
PATH=$PATH:${HOME}/.local/bin
PATH=$PATH:${HOME}/.gem/ruby/1.9.1/bin
export PATH

# vi-vi-vi
export EDITOR=vim

# Load other definitions
source $HOME/.functions
source $HOME/.aliases