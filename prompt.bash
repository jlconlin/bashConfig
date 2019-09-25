# Configure Prompt
if [[ "$TERM" = "xterm" ]]; then   # xterm in X11
    export TERM='xterm-color'
fi
PS1="\[\e[1;31m\]\t\[\e[0;32m\] \h \w\$\[\e[0;38m\] "


