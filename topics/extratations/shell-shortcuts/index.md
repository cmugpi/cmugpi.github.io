---
layout: page
title: Shell Shortcuts
# What topic does this page belong to?
group: extratations
# Relative ordering of lessons within a topic
order: 2
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# Shell Shortcuts
{:.ui.dividing.header.no_toc}

These are some common tips and tricks for when you're working in at the command
line or in the shell.

## Key Syntax

We frequently have to use key combinations at the terminal. Some common
notations are:

- Caret (`^`) syntax
  - `^C` means "hold down Control and C at the same time"
  - `^X` means "hold down Control and X at the same time"
  - etc.
- Angle brace syntax
  - `<C-C>` "hold down Control and C at the same time"
  - `<C-X>` "hold down Cotnrol and X at the same time"

Also, `<CR>` is **not** a typo for `<C-R>`. Instead, `<CR>` stands for
"carriage return" and basically just means "ENTER".

## Tab Completion

Typing things out is very time consuming and error prone. The shell has a
feature called tab completion which lets you press "TAB" to automatically
complete the names of files when you're running shell commands.

## `cd` Shortcuts

There are a few fancy shortcuts for `cd`:

- `cd ..`
  - Go to the parent directory
- `cd -`
  - Go to whichever directory we were in before we `cd`'d here
- `cd` (no arguments)
  - Go to my home folder

## Command History

Bash keeps track of all the commands you run, and you can use this to your
advantage.

- `history`
  - This command will show you a list of all the commands you've run.
- `!!`
  - This will expand to the last thing you ran.
  - For example, to re-run a command, but to run it as sudo, you can run `sudo
    !!`

## Quitting

There are multiple ways to try quitting things.

- `^C`
  - This is used to interrupt the current process. Normally, this will kill the
    program. However, programs can choose to ignore this request.
- `^D`
  - Sends the "EOF" (end of file) character, signaling that there is no more
    input. This usually causes a shell to exit.
- Press `q`
  - Inside some programs, like `less` or `man`, you can press `q` to quit.
- Press `:q`
  - This one is specific to Vim.

## Keyboard Layout

When you work at the command line often, you end up pressing Control and Escape
frequently. Also, chances are that you don't use Caps Lock that often. As a
result, you may want to change your laptop settings to send either Control or
Escape instead of Caps Lock when you press the Caps Lock key.

