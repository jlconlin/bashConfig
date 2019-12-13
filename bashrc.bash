# .bashrc

export BASHRC=$HOME/.bash

## HISTORY, configure
export HISTFILESIZE=10000
export HISTSIZE=$HISTFILESIZE
export HISTCONTROL=ignoredups:erasedups
export HISTIGNORE="&:bg:fg:ll:h"

export PAGER=less

# LaTeX
export TEXMFHOME=$HOME/texmf

if [[ "$OSTYPE" == "darwin"* ]]; then
  source $BASHRC/osx.bash
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
  source $BASHRC/linux.bash
fi

# Source sub files
source $BASHRC/bash/textformatting.bash
source $BASHRC/bash/prompt.bash
source $BASHRC/bash/tree.bash
source $BASHRC/bash/man2pdf.bash
source $BASHRC/bash/colors.bash
source $BASHRC/bash/njoyclone.bash

# Provide opportunity to make local changes
if [ -f ~/.bashrc.local ]; then
   source ~/.bashrc.local
fi

source $BASHRC/bash/powerline.bash
