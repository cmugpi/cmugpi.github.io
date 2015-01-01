---
layout: page
title: "Configuring Vim"
# What topic does this page belong to?
group: terminal-configuration
# Relative ordering of lessons within a topic
order: 3
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# Configuring Vim
{:.ui.dividing.header.no_toc}

Compared to editors like Sublime Text and Atom, Vim comes completely
unconfigured, making it nearly unusable. That's really unfortunate--Vim is
actually an incredibly powerful editor if you set it up correctly.

## Plugins

Configuring Vim basically boils down to plugins, and to install plugins we need
a plugin manager. Vim doesn't come with a plugin manager by default, but the Vim
community has come together to to build a couple good options. The first _real_
plugin manager was Tim Pope's [Pathogen][pathogen], though the simplest plugin
manager today is [Vundle][vundle]. Since both do basically the same things, we
recommend Vundle.

To get up and running with Vundle, check out the Vundle [Quick
Start][vundle-qs]. It should show you how to install Vundle and also the syntax
for installing plugins. For the most part, you'll find plugins on GitHub and
just use the `Plugin <github user>/<plugin name>` syntax in your ~/.vimrc.

Ben McCormick has a [lengthy list of plugins][plugins-2014] that are pretty
popular. At the bare minimum, you'll need a color scheme. [Solarized][solarized]
and [Molokai][molokai] are popular ones.

Browse around, and try out plugins even if you think you might not initially
like them. Vundle makes installing and uninstalling plugins easy, so it's easy
to give a plugin a test drive and install it once you've determined that you
don't want it if that becomes the case.

## Common Options

The other half of configuring Vim is enabling some (admittedly hidden)
settings. The best way to unearth these hidden settings is to browse through
others' ~/.vimrc files. Luckily, many people have put their [entire dotfiles
collection on GitHub][dotfiles], so browsing these files to find interesting
settings is relatively easy. Ben McCormick also has a page on [configuring
Vim][configure-20114], but it's less informative than just browsing GitHub
yourself.


[pathogen]: https://github.com/tpope/vim-pathogen
[vundle]: https://github.com/gmarik/Vundle.vim
[vundle-qs]: https://github.com/gmarik/Vundle.vim#Quick-Start

[plugins-2014]: http://benmccormick.org/2014/07/21/learning-vim-in-2014-getting-more-from-vim-with-plugins/
[configure-2014]: http://benmccormick.org/2014/07/14/learning-vim-in-2014-configuring-vim/

[solarized]: https://github.com/altercation/solarized
[molokai]: https://github.com/tomasr/molokai

[dotfiles]: https://github.com/search?q=dotfiles&s=stars&type=Repositories





[pathogen]: https://github.com/tpope/vim-pathogen
[vundle]: https://github.com/gmarik/Vundle.vim
[vundle-wq]: https://github.com/gmarik/Vundle.vim#quick-start
[plugins-2014]: http://benmccormick.org/2014/07/21/learning-vim-in-2014-getting-more-from-vim-with-plugins/
