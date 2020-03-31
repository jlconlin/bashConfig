#!/usr/bin/env bash
echo "I'm installing!"

cat << EOF > ~/.bash_profile
if [ -f ~/.bash/bash_profile.bash ]; then
   source ~/.bash/bash_profile.bash
fi
EOF

# Enabling italics (I hope)
tic ~/.bash/xterm-256color-italic.terminfo 

cat << EOF > ~/.bashrc
if [ -r ~/.bash/bashrc.bash ]; then
        source ~/.bash/bashrc.bash
fi
EOF
