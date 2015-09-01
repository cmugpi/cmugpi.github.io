---
layout: page
title: "Git"
group: topic
description: >
  Git is a version control system (VCS)---it manages the versions of your code.
  It's probably the most popular VCS due to the popularity of GitHub. We'll
  discuss to harness its incredible power to make your life easier.
# How sub-pages will be linked to this page
topic: git
# Relative ordering of topics
order: 4
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


# Git
{:.ui.dividing.header.no_toc}

## Overview

When working on large programming projects, it's important to be able to
collaborate with others, share code, keep track of what's changed between
versions, and to annotate why things are changing.

These are the types of problems that Git solves. Git is a "distributed version
control system" (DVCS), but knowing what that means isn't necessary to figure
out how to use it effectively. Basically, Git is a technology that allows for
rapid code sharing, lightweight "branching" (making it easy to work on different
features in the codebase), and much more.

A lot of people confuse Git with GitHub when they first start learning it. To
clarify, GitHub uses the Git technology at its core. GitHub is designed to be a
nice, graphical frontend that emphasizes "social coding." It has features that
empower people to collaborate on open source projects, discover new projects,
and more. People use GitHub for the most part by interacting with Git on the
command line. Every once in a while, they can "synchronize" their most recent
work with the work available on GitHub. (this isn't the best analogy for what's
happening, but let's roll with it).

Git has a command line interface; we'll be showing you some basic features of
how to use it so you can hit the ground running.

## Lessons

{% include lessons-for-topic.md %}

## Resources

### Before Getting Started with Git

- [Try Git][trygit]
  - An __interactive__ Git tutorial, put together by Code School and available
    through GitHub.
  - Targets first-time Git users, takes about 15 minutes. Make sure to read the
    "Advice" for a deeper understanding.
- [Git - The Simple Guide][simplegit]
  - Straight-forward __summary__ of the Git commands everyone needs to know to
    use Git on a day-to-day basis

### Once you've used Git for a while

- [Learn Git Branching][gitbranching]
  - __Interactive__, very well designed tutorial that covers just about
    everything there is to know about Git branching. Depicts what's happening
    visually on top of just demonstrating the commands.
- [A Hacker's Guide to Git][hackersguide]
  - My __absolute favorite__ guide to Git. Everyone who uses Git should read
    this at some point, as it really demystifies a large portion of how Git
    works.

### When you're comfortable using Git in the real world

- [A Successful Git Branching Model][gitflow]
  - High-level overview of how to use Git's branches to manage features,
    releases, hotfixes, bugfixes, etc.
- [Pro Git][progit]
  - The official Git documentation. Very comprehensive, very lengthy. I find it
    more useful to look up specific things in this book rather than read it all
    the way through, though it certainly could be approached that way.

[trygit]: https://try.github.io/
[simplegit]: http://rogerdudler.github.io/git-guide/
[gitbranching]: http://pcottle.github.io/learnGitBranching/
[hackersguide]: https://wildlyinaccurate.com/a-hackers-guide-to-git
[gitflow]: http://nvie.com/posts/a-successful-git-branching-model/
[progit]: http://git-scm.com/book/
