---
layout: page
title: "Terminal Colors & Prompts"
---

{% include toc.md %}

# Terminal Colors & Prompts
{:.ui.dividing.header.no_toc}


## Terminal Colorschemes

Configuring your terminal's colorscheme depends on what program you use as a
terminal on macOS. We recommend iTerm2 (<https://iterm2.com/>), which comes with
Solarized preinstalled. Find it in the Preferences menu.

On Windows, we recommend MobaXTerm (<http://mobaxterm.mobatek.net/>). MobaXTerm
has a solarized colorscheme built into the settings as well.

If you're on Linux, each terminal emulator has its own way to change the
colorscheme. You might be able to find it in the settings yourself, otherwise
Google or ask a friend.

## Colors in the Terminal

Colors in the terminal are configured by sending a special invisible character
to the terminal. You can get these characters using the `tput` command. I've
put those characters (along with '\[' and '\]' characters, which are only
necessary when you use them in PS1) into these variables for convenience.

{% highlight bash %}
RESET="\[$(tput sgr0)\]"
DEFAULT="\[$(tput setaf 9)\]"
BLACK="\[$(tput setaf 0)\]"
RED="\[$(tput setaf 1)\]"
GREEN="\[$(tput setaf 2)\]"
YELLOW="\[$(tput setaf 3)\]"
BLUE="\[$(tput setaf 4)\]"
MAGENTA="\[$(tput setaf 5)\]"
CYAN="\[$(tput setaf 6)\]"
WHITE="\[$(tput setaf 7)\]"
{% endhighlight %}

## Changing your Prompt

For sanity's sake, we're separating the components of the prompt into separate
variables. `PS1_RETVALUE` is a string that contains a command to run that
inspects the exit status of the last command run (which is stored in `$?`) and
outputs either a green `:)` or a yellow `D:` accordingly.

{% highlight bash %}
PS1_RETVALUE="\$(if [ \$? = 0 ]; then echo \"${GREEN}:)${RESET}\"; else echo \"${YELLOW}D:${RESET}\"; fi)"

# a reference for these PS1 symbols (\@, \u, etc) can be found
# in the PROMPTING section of the bash man page
PS1_TIME="${MAGENTA}\@${RESET}"
PS1_NAME="${BLUE}\u${RESET}"
PS1_DIR="${RED}\w${RESET}"
PS1_DOLLAR="${GREEN}\$${RESET}"

# the string stored in $PS1 is expanded and printed after each command runs
export PS1="\n$PS1_RETVALUE $PS1_TIME $PS1_NAME at $PS1_DIR $PS1_DOLLAR "
{% endhighlight %}

