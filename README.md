# bashConfig
My personal bash configuration files. It is here primarily for my benefit. If you find it useful, great!

## Local modifications
After all the configurations are done, the `.bashrc` script looks for `~/.bashrc.local` file. If it exists, it is `source`d. So any machine-dependent configurations should be put in this file. These would be like:
- Customizing the `PATH` variable

After all the local configurations are done, a few more configuration are performed. These are (at time of writing):
- Configuring [powerline](https://github.com/powerline/powerline) status (only called from [.bash/bash_profile.bash](bash_profile.bash))

## Installation
Clone repository into your `$HOME` directory and name it `.bash`
```console
git clone git@github.com:jlconlin/bashConfig .bash
```
After cloning execute the command
```console
./.bash/install.sh
```
This creates `.bash_profile` and `.bashrc` files as described in the manual installation section.


## Manual installation
You need to create two files:

**`~/.bash_profile`**
```bash
if [ -f ~/.bash/bash_profile.bash ]; then
   source ~/.bash/bash_profile.bash
fi
```

**`~/.bashrc`**
```bash
if [ -r ~/.bash/bashrc.bash ]; then
        source ~/.bash/bashrc.bash
fi
```

