export POWERLINE_ROOT=$(pip show powerline-status | sed -n 's/Location: \(.*\)/\1/p')

# Test if we have powerline installed
if [ $? -eq 0 ]; then
  powerline-daemon -q
  . $POWERLINE_ROOT/powerline/bindings/bash/powerline.sh
  # powerline-config tmux setup
  export POWERLINE_BASH_CONTINUATION=1
  export POWERLINE_BASH_SELECT=1
fi
