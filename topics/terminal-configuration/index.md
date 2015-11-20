---
layout: page
title: "Terminal Configuration"
group: topic
description: >
  With a well-configured terminal, you're much more likely to actually enjoy
  sitting at the command prompt.
# How sub-pages will be linked to this page
topic: terminal-configuration
# Relative ordering of topics
order: 6
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


# Terminal Configuration
{:.ui.dividing.header.no_toc}

## Overview

Unconfigured, the terminal is a pretty terrible place. It's hard to work in,
it's unforgiving, and in many ways it has a terrible user interface. With a
little bit of effort, you can transform these offenses into the perfect
workplace, a true model of efficiency. With a well-configured terminal, you're
much more likely to actually enjoy sitting at the command prompt.

"Terminal Configuration" is a very broad category, and indeed we've already
covered pieces of it in other places. You use bash to configure bash, Vim for
Vim, etc. Obviously, to learn about the specifics of these technologies you
should see the lessons in their respective topics. The purpose of this "Terminal
Configuration" topic is to pull together the loose ends, offer some special
tips, and discuss the logistics of it all.

## Lessons

{% include lessons-for-topic.md %}

## Resources

- [Repositories named "dotfiles"][dotfiles]
    - Every repository on GitHub that's named "dotfiles". Browsing the source of
      other people's dotfiles is a great way to discover new things.
- [GitHub Does Dotfiles][dotfiles.github.io]
    - GitHub's personal getting-started-with-dotfiles page. It links to
      resources like all-in-one dotfiles frameworks, dotfiles management
      software, and great examples of dotfiles repos.
- [Prompt Tricks][prompt-settings]
	- Here is a good description of most of the cool features supported by bash.
	  zsh also supports a 'right prompt' that hangs out on the right side of your
	  prompt as seen in my example post on Piazza.

[prompt-settings]: http://linuxconfig.org/bash-prompt-basics
[dotfiles]: https://github.com/search?q=dotfiles&s=stars&type=Repositories
[dotfiles.github.io]: https://dotfiles.github.io/

## Examples from the Course Staff

Some of the course staff host our dotfiles on GitHub. Take a look to see what they look like in the real world and get ideas for what to include in your own.

- [Jake](https://github.com/jez/dotfiles)
    - A [blog post](http://blog.jez.io/2015/03/10/noteworthy-dotfile-hacks/) with the highlights of his configurations.
    - Check out the files themselves:
    - [Aliases](https://github.com/jez/dotfiles/blob/ef98d308675dfa2d7ac333a3d1c1dd41f1cf347f/util/aliases.sh)
    - [Useful zsh stuff](https://github.com/jez/dotfiles/blob/ef98d308675dfa2d7ac333a3d1c1dd41f1cf347f/util/misc.zsh)
    - [.zshrc](https://github.com/jez/dotfiles/blob/ef98d308675dfa2d7ac333a3d1c1dd41f1cf347f/zshrc) to tie it all together
    - [.vimrc](https://github.com/jez/dotfiles/blob/eba0202443de6bcc171dbe6bc133fa9fe02357f7/vimrc)
- [Stuart](https://github.com/guertin/config_files)
    - [Aliases](https://github.com/guertin/config_files/blob/master/aliases)
    - [bashrc](https://github.com/guertin/config_files/blob/master/bashrc) (including prompt) and [inputrc](https://github.com/guertin/config_files/blob/master/inputrc)
    - [zshrc](https://github.com/guertin/config_files/blob/master/zshrc) (including prompt)
    - [vimrc](https://github.com/guertin/config_files/blob/master/vimrc)
    - [gitconfig](https://github.com/guertin/config_files/blob/master/gitconfig) and [global gitignore](https://github.com/guertin/config_files/blob/master/gitignore_global)
