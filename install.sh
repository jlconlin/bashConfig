#!/usr/bin/env bash
echo "I'm installing!"

cat << EOF > ~/.bash_profile
if [ -f ~/.bash/bash_profile.bash ]; then
   source ~/.bash/bash_profile.bash
fi
EOF

cat << EOF > ~/.bashrc
if [ -r ~/.bash/bashrc.bash ]; then
        source ~/.bash/bashrc.bash
fi
EOF
