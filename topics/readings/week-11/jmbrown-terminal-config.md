---
layout: page
title: "Jordan's Favorite Configurations"
---

{% include toc.md %}

# Jordan's Favorite Configurations
{:.ui.dividing.header.no_toc}


## ASCII Bells

What's the worst thing in the world? Our sages have debated this for millennia,
but the answer was not clear until computers became widespread. Our newfound
computational power led to the answer: the ASCII bell sound.

Believe it or not, '\a' is actually the bell sound. Let's take advantage of this
by carefully crafting a prank! We can prank someone by adding an ASCII bell to
their prompt.

The `PS1` variable is the environment variable that sets your prompt. We can add
an ASCII bell character to their prompt by running this at their shell:

```bash
PS1="$PS1$(printf '\a')"
```

## Aliases

Some helpful aliases for 122:

```bash
# Run gcc with all the flags you'd need for 122
alias gcc-safe='gcc -Wall -Wextra -Werror -std=c99 -pedantic'

# ... or better yet, throw these flags into a Makefile, and
# build your program with `make`

# Run valgrind with all the useful flags for 122
alias valgrind-safe='valgrind -v --tool=memcheck --leak-check=full --show-reachable=yes'
```

## Bang!

You can use `!<prefix>` to rerun the last command that began with that prefix!
For example, if you run `gcc test.c`, to recompile you can just run `!g`. As a
shortcut, `!!` runs the previous command.

## iTerm2 with Tmux

If you've used tmux, you probably think it's pretty neat. Well, there's a way to
make it even more convenient to use!

This only works on macOS with iTerm2. As a side note, iTerm2's advantages over
Terminal.app include:

- Better color support
- Better mouse support
- Better support for random terminal edge cases

If you run `tmux -CC`, iTerm2 will act as a tmux client, making it so that you
can control tmux with the iTerm2 keybindings you're familiar with. For example,
pressing `Command + T` will create a new tmux tab, and `Command + D` will create
a new vertical split.
