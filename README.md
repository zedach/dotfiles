# Mourad's dotfiles

(Thanks to Mathias Bynens for his awesome [dotfiles](https://github.com/mathiasbynens/dotfiles).)

# Installation

## Using Git and the bootstrap script

## Installation

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/Projects/dotfiles`, with `~/.dotfiles` as a symlink.) The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://ze_dach@bitbucket.org/ze_dach/dotfiles.git  && cd .dotfiles && source bootstrap.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
source bootstrap.sh
```

Alternatively, to update while avoiding the confirmation prompt:

```bash
set -- -f; source bootstrap.sh
```

### Specify the `$PATH`

If `~/.path` exists, it will be sourced along with the other files, before any feature testing (such as detecting which version of `ls` is being used takes place.

Here’s an example `~/.path` file that adds `/usr/local/bin` to the `$PATH` :

```bash
PATH=/usr/local/bin:$PATH
export PATH
```

