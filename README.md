# bashConfig
My personal bash configuration files. It is here primarily for my benefit. If you find it useful, great!

## Installation
Clone repository into your `$HOME` directory and name it `.bash`
```console
git clone https://github.com/jlconlin/bashConfig .bash
```

You need to create two files:

**`~/.bash_profile`**
```
if [ -f ~/.bashrc/bash_profile ]; then
   source ~/.bashrc/bash_profile
fi
```

**`~/.bashrc`**
```console
if [ -r ~/.bash/bashrc ]; then
        source ~/.bash/bashrc
fi
```

## Local modifications
After all the configurations are done, the `.bashrc` script looks for `~/.bashrc.local` file. If it exists, it is `source`d. So any machine-dependent configurations should be put in this file.
