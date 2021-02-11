# .bashrc
printf "Executing ~/.bash/bashrc.bash\n"

export BASHRC=$HOME/.bash

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

## HISTORY, configure
export HISTFILESIZE=10000
export HISTSIZE=$HISTFILESIZE
export HISTCONTROL=ignoredups:erasedups
export HISTIGNORE="&:bg:fg:ll:h"

# export DISPLAY=":0.0"

alias vless="vim -u ~/.vim/less.vim"
# export PAGER=vless

alias ls='ls -AG'
alias ll='ls -lhG'

# LaTeX
export TEXMFHOME=$HOME/texmf

export TERM=xterm-256color

if [[ "$OSTYPE" == "darwin"* ]]; then
  source $BASHRC/osx.bash
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
  source $BASHRC/linux.bash
fi

# Source sub files
source $BASHRC/bash/textformatting.bash
# source $BASHRC/bash/prompt.bash
source $BASHRC/bash/tree.bash
source $BASHRC/bash/man2pdf.bash
source $BASHRC/bash/colors.bash
source $BASHRC/bash/njoyclone.bash

# Provide opportunity to make local changes
if [ -f ~/.bashrc.local ]; then
   source ~/.bashrc.local
fi

alias gvim='vim -g'

source $BASHRC/bash/proxy.bash
source $BASHRC/bash/python.bash
