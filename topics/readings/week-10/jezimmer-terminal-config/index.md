---
layout: page
title: "Jake's Favorite Configurations"
---

{% include toc.md %}

# Jake's Favorite Configurations
{:.ui.dividing.header.no_toc}


## `set -o vi`

- Turns on vim-style normal mode at the command line.
- Super useful for navigating and editing long commands


## The `PATH` Variable

Use cases:

- You wrote a personal script or command
- some software you installed puts its commands somewhere special
- A course you're taking has its commands in a specific folder

To use:

```
export PATH="$PATH:/path/to/some/folder"
```


## Zsh

- An alternative to bash
- Mostly the same syntax, so most config from your bashrc will transfer

Pros:

- Completions get cleared after selecting one
- Syntax highlighting of commands
- Expand shell globs and ranges

For more information: <https://github.com/jez/starter-zshrc>


## Menu complete

- Complete filenames the way Vim completes filenames
- Automatically choose the first choice if ambiguous, press TAB to cycle
  through remaining


## Aliases

- I have lots of these!

For more information: <https://github.com/jez/dotfiles/blob/a92fe3d7649/util/aliases.sh>


## Solarized Dircolors

- If you happen to like the Solarized colorscheme
- Changes the colors ls uses to list files

For more information: <https://github.com/seebi/dircolors-solarized>


## Vim Superman

Open man pages in Vim. Why?

- Can use the mouse to scroll
- Get better syntax highlighting


## `~/.inputrc`

This file lets you configure how you interact with shell prompts.

It configures any program which links against the `readline` library.
Some examples:

- `bash`
- `python`
- `rlwrap`

Features:

- Edit lines with Vim keybindings (like `set -o vi`, but for all
  readline programs)
- Turn tab completion to menu completion (like how Vim does it)
- History search

For more information: <https://github.com/jez/dotfiles/blob/master/inputrc>

For how to do these things in zsh: <https://github.com/jez/starter-zshrc>


## Italics

The terminal already supports bold and colored text.

We can make it support *italic* text.

For more information: <https://alexpearce.me/2014/05/italics-in-iterm2-vim-tmux/>


## Aliases

These are a sampling of some of my aliases which you might find useful.

```zsh
alias ls="ls -p --color=auto"
alias cp="cp -v"
alias mv="mv -v"
alias rm="rm -v"

# so much easier to type than `cd ..`
alias cdd="cd .."
alias cddd="cd ../.."
alias cdddd="cd ../../.."
alias cddddd="cd ../../../.."
alias cdddddd="cd ../../../../.."
alias cddddddd="cd ../../../../../.."

# open multiple files in Vim tabs
alias vim="vim -p"
# open multiple files in Vim vertical splits
alias vimv="vim -O"

# I'm pretty proud of these ones
alias :q="clear"
alias :tabe="vim"
alias :vs="vimv"

# ----- aliases that are actually full-blown commands -------------------------

# list disk usage statistics for the current folder
alias duls="du -h -d1 | sort -hr"

# resolve a symlink in the PWD to a fully qualified directory
alias resolve='cd "$(pwd -P)"'

# How much memory is Chrome using right now?
alias chromemem="ps -ev | grep -i chrome | awk '{print \$12}' | awk '{for(i=1;i<=NF;i++)s+=\$i}END{print s}'"

# ----- git aliases -----------------------------------------------------------

alias gco="git checkout"

alias ga="git add"
alias gap="git add --patch"

alias gc="git commit -v"
alias gca="gc -a"
alias gcm="git commit -m"
alias gcam="git commit -am"

alias gs="git status"
alias gd="git diff"

alias gf="git fetch"
alias gfp="git fetch --prune"
alias gpf="git pull --ff-only"

alias gl="git log --graph --oneline --decorate --abbrev-commit --all"
```
