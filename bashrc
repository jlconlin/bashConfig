# .bashrc

export BASHRC=$HOME/.bash

## HISTORY, configure
export HISTFILESIZE=10000
export HISTSIZE=$HISTFILESIZE
export HISTCONTROL=ignoredups:erasedups
export HISTIGNORE="&:bg:fg:ll:h"

## PAGER, set
export PAGER=less

export EDITOR=`which vim`

if [[ "$OSTYPE" == "darwin"* ]]; then
  source $BASHRC/osx.bash
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
  source $BASHRC/linux.bash
fi

# Source sub files
source $BASHRC/prompt.bash
source $BASHRC/tree.bash

# Provide opportunity to make local changes
if [ -f ~/.bashrc.local ]; then
   source ~/.bashrc.local
fi
