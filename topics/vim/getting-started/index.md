---
layout: page
title: "Getting Started With Vim"
# What topic does this page belong to?
group: vim
# Relative ordering of lessons within a topic
order: 1
---


{% include toc.md %}

# Getting Started with Vim
{:.ui.dividing.header.no_toc}

## GPI Vim Config

Vim, like many Unix tools, is heavily configurable. Unfortunately, this means
that it is not very well configured out of the box.

If you don't already have a Vim configuration of your own, you should start with
the GPI vim config. You might have already installed this configuration when you
did the [initial setup][initial-setup] instructions, but if you didn't, run
`gpi_install` and choose the `vim_config` package.

[initial-setup]: {{ "/initial-setup/" | prepend: site.baseprefix }}

## Jump Right In

Vim is best learned interactively. With this in mind, the first thing you
should do to learn it is to go through `vimtutor`, a program that launches `vim`
with a tutorial file to help you learn. Go run `vimtutor` and work through it
now... we'll wait!

## [Learning Vim in 2014][learning-vim]: The Basics

There is an excellent walkthrough online that approaches Vim from the standpoint
of a 21st century user, a user for whom graphical interfaces are the norm and
who might view Vim, a piece of software dating back to 1976, as "outdated."

His first two posts, [The Basics][the-basics] and [Vim as
Language][vim-language], are absolutely great pieces. They set the scene for how
to approach Vim. The other articles are also great, but I wouldn't recommend
reading them all in one sitting.


[learning-vim]: http://benmccormick.org/learning-vim-in-2014/
[the-basics]: http://benmccormick.org/2014/06/30/learning-vim-in-2014-the-basics/
[vim-language]: http://benmccormick.org/2014/07/02/learning-vim-in-2014-vim-as-language/
