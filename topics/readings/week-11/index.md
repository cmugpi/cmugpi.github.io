---
layout: page
title: "Week 11"
# What topic does this page belong to?
group: readings
# Relative ordering of lessons within a topic
order: 11
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# Week 11
{:.ui.dividing.header.no_toc}

## Reading

- [Dotfiles][dotfiles]
- [Configuring Bash][configuring-bash]


## Resources

Here are the notes from each lecturer:

- [Andrew](adbenson-terminal-config/)
- [Jordan](jmbrown-terminal-config/)
- [Everi](eosofsky-terminal-config/)
- [Jake](jezimmer-terminal-config/)


## Examples from the Course Staff

Some of the course staff host our dotfiles on GitHub. Take a look to see what
they look like in the real world and get ideas for what to include in your own.

- Jake's dotfiles: [jez/dotfiles][ex1]
  - A [blog post][ex2] with the highlights of his configurations
  - Some individual highlights:
    - all my [aliases][ex3]
    - a [starter zshrc][ex4] file for those interested in switching to zsh
    - my complete [vimrc][ex6]
- Andrew's dotfiles: [anbenson/dotfiles][ex7]


[dotfiles]: {{ "/topics/terminal-configuration/dotfiles/" | prepend: site.baseurl }}
[configuring-bash]: {{ "/topics/terminal-configuration/configuring-bash/" | prepend: site.baseurl }}

[ex1]: https://github.com/jez/dotfiles
[ex2]: http://blog.jez.io/2015/03/10/noteworthy-dotfile-hacks/
[ex3]: https://github.com/jez/dotfiles/blob/ef98d308675dfa2d7ac333a3d1c1dd41f1cf347f/util/aliases.sh
[ex4]: https://github.com/jez/starter-zshrc
[ex5]: https://github.com/jez/dotfiles/blob/ef98d308675dfa2d7ac333a3d1c1dd41f1cf347f/zshrc
[ex6]: https://github.com/jez/dotfiles/blob/eba0202443de6bcc171dbe6bc133fa9fe02357f7/vimrc

[ex7]: https://github.com/anbenson/dotfiles
