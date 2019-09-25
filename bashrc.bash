# .bashrc

export BASHRC=$HOME/.bash

## HISTORY, configure
export HISTFILESIZE=10000
export HISTSIZE=$HISTFILESIZE
export HISTCONTROL=ignoredups:erasedups
export HISTIGNORE="&:bg:fg:ll:h"

export PAGER=less
export EDITOR=`which vim`

# LaTeX
export TEXMFHOME=$HOME/texmf

if [[ "$OSTYPE" == "darwin"* ]]; then
  source $BASHRC/osx.bash
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
  source $BASHRC/linux.bash
fi

# Source sub files
source $BASHRC/bash/prompt.bash
source $BASHRC/bash/tree.bash
source $BASHRC/bash/man2pdf.bash

# Provide opportunity to make local changes
if [ -f ~/.bashrc.local ]; then
   source ~/.bashrc.local
fi
