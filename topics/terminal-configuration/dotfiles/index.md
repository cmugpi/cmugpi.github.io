---
layout: page
title: "Dotfiles"
# What topic does this page belong to?
group: terminal-configuration
# Relative ordering of lessons within a topic
order: 1
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# Dotfiles
{:.ui.dividing.header.no_toc}

## What's a Dotfile?

Put simply, a dotfile is a configuration file that begins with a `.`, making it
a hidden file. If you run `ls -a ~` you'll see a lot of hidden files, many of
them being dotfiles. Some examples of dotfiles are `.bashrc`, `.vimrc`, and
`.initrc`. As you can see from this list, many dotfiles also end with "rc", so
they're sometimes referred to as "rc files." People often ask what the "rc"
stands for, and the general consensus is that it doesn't matter. If that answer
isn't good enough for you, you may want to see [this StackOverflow
question][rc].

## Why do I care about dotfiles?

The terminal is a very polarizing interface. There's one group of people that
immediately take a liking to the text-based interface, and another that
absolutely can't stand it. Dotfiles help to bridge this gap.

### Personalization

First, you can personalize just about anything with dotfiles. This includes the
way your prompt looks, the way your command line behaves, what keyboard
shortcuts do what, and more. The text-based nature of the terminal is powerful.
Since you're not limited by buttons, scroll bars, and other graphical widgets,
you have near-complete control over the entire terminal experience. Once your
terminal is personalized to your liking, you'll notice a significant boost to
your productivity, and you'll be much more likely to actually enjoy working at
the command prompt!

A significant portion of the customizations that you can set up deal with
personalized shortcuts. Everyone has different workflows, which means different
people will find that they do certain things over and over again. Dotfiles make
it easy to set up shortcuts for oft-repeated tasks and actions, removing that
much more friction from your terminal experience.

### Settings and Initialization

On top of all this, some programs and terminal features need to have certain
settings or options enabled to work correctly. To make sure that these options
are always available, you can stick them into the appropriate dotfile so that the
next time you launch that program all your required initializations have already
been performed.

Of course, this whole discussion has been very abstract. In the next few
lessons, we'll deal with the specifics of how to get started configuring your
terminal. Feel free to skip around; most Unix tools can be configured
independently of each other. Remember that in most cases the Unix tool you're
using can be used to configure itself: your `.bashrc` is just another shell
script, and your `.vimrc` is just another Vim script. At least for these two
examples, anything you could normally run at the command line or in Vim you can
also place into the appropriate dotfile.

## Getting Started with Dotfiles

The best way to get started with dotfiles is to look at what other people are
doing. Tens of thousands of people have [open-sourced their dotfiles on
GitHub][dotfiles], and GitHub has [a whole page][dotfiles.github.io] dedicated
to getting started with dotfiles. The most popular repositories are
well-commented, so just peruse the source and find things that look interesting.
Happy hunting!

[rc]: http://stackoverflow.com/questions/11030552/what-does-rc-mean-in-dot-files
[dotfiles]: https://github.com/search?q=dotfiles&s=stars&type=Repositories
[dotfiles.github.io]: https://dotfiles.github.io/


