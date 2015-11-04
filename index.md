---
layout: page
title: Schedule
group: navigation
order: 1
---

# 15-131 -- Great Practical Ideas in CS
{:.ui.dividing.header.no_toc}

## Overview

Throughout your education as a Computer Scientist at Carnegie Mellon, you will
take courses on programming, theoretical ideas, logic, systems, etc. As you
progress, you will be expected to pick up the so-called "tools of the trade."
This course is intended to help you learn what you need to know in a friendly,
low-stress, high-support way. We will discuss UNIX, LaTeX, debugging and many
other essential tools.

For more information, you should checkout the [syllabus][syllabus].


## How to use this site

This site is broken up into a number of _Topics_ which are further broken up
into _Lessons_. One topic in particular relates directly to the assignments in
this class: Puzzle Packs. The PuzzlePack topic is where you can find links to
the PuzzlePack we will be doing in class as well as the lessons that will be
useful in for solving that PuzzlePack. These are linked below for your
convenience.

In general, there are more lesson pages than there are PuzzlePacks. You only
have to read those not directly linked from the PuzzlePack lessons if you're
interested. You will only be assessed on your knowledge of those that relate to
solving the PuzzlePacks.


## Schedule

| Lecture Date | Topic                            | PuzzlePack         |
| ------------ | -------------------------------- | ------------------ |
| ASAP         | [Initial setup][initial-setup]   | -                  |
| 9/3          | [Terminal Usage][usage]          | [Week 1][week-1]   |
| 9/10         | [Vim][vim]                       | [Week 2][week-2]   |
| 9/17         | [Vim][vim]                       | [Week 3][week-3]   |
| 9/24         | [Terminal Usage][usage]          | [Week 4][week-4]   |
| 10/1         | [Terminal Usage][usage]          | [Week 5][week-5]   |
| 10/8         | [Bash][bash]                     | [Week 6][week-6]   |
| 10/15        | Midterm Exam                     | -                  |
| 10/22        | [Bash][bash]                     | [Week 7][week-7]   |
| 10/29        | [Bash][bash]                     | [Week 8][week-8]   |
| 11/5         | [Git][git]                       | [Week 9][week-9]   |
| 11/12        | [Git][git]                       | [Week 10][week-10] |
| 11/19        | [Terminal Configuration][config] | [Week 11][week-11] |
| __11/26__    | __Thanksgiving__                 | -                  |
| 12/3         | [Terminal Configuration][config] | [Week 12][week-12] |
| 12/10        | Final Exam                       | -                  |
{:.ui.striped.table}

## Extratations

Throughout the semester, we'll be holding extra workshops and talks outside of
class, dubbed "extratations", to explore topics that we don't want to test you
on but that you might find interesting.

- Location: __WEH 6423__, with some exceptions as marked
- Time: __Saturdays from 3:00 p.m. to 4:00 p.m.__

### [Command Booster Pack][command-booster-pack] (9/5)

So you've completed the first PuzzlePack, but you're still pretty lost regarding
what this "terminal" thing is. To get you a little more familiar with the
command line environment, we'll introduce you to some helpful tips that make
using the command line more enjoyable, and then dive into some examples of
commands that help out a lot when you're at the command line as well as some
that are just plain cool.

Be sure to bring a laptop!

### [Emacs Fundamentals][emacs-fundamentals] (9/12)

Does vim have you feeling down in the dumps? Try emacs! You can use Ctrl-v,
Ctrl-x, Ctrl-c, and all that jazz, just as you're used to! And no modes! We'll
go over all the knowledge you need to be productive, and how you can feel right
at home in the world's most advanced text editor.

### [Emacs Rocks][emacs-rocks] (9/19)

You've learned about Emacs? Now learn more! Learn about the neat features and
futuristic programming environment that lead some to call Emacs "the
thermonuclear text editor". Plus, learn the basics of customizing Emacs for your
own needs!

### [tmux: saving your life, one bad wifi router at a time][tmux] (9/26)

tmux, short for "terminal multiplexer", is a tool for managing multiple
persistent shell sessions while logged into a computer. What this means in
practice is that tmux is good for a number of things, including being able to
split your terminal screens and keep persistent shell sessions while logged into
a remote server, even if your wifi cuts out or your computer loses power. Come
learn about how you can rather simply integrate this awesome tool into your
workflow!

### [Vim as an IDE][vim-as-an-ide] (10/3)

This workshop is for you if...

- You use Vim, but only begrudgingly because someone in GPI, 15-122 or 15-150
  told you to.
- You enjoy Vim, but feel like you're not taping into it's full potential.
- You use Emacs, but you don't take advantage of any of it's cool features, and
  would rather have a fully-configured editor than a glorified Notepad.
- You use Emacs quite well, but you're interested in learning Vim for the lulz.
- You use Sublime, but don't like having to scp files back and forth, or switch
  between Sublime and the terminal to compile and submit code.

In this fully-interactive workshop, you'll take charge of converting Vim into
your go-to power tool. I promise you won't be disappointed.

### Introduction to the Technical Interview (Sunday, 10/11)

In this workshop, we'll get you up to speed with what to expect at a technical
interview, how to prepare, and do a little bit of practice.

### [Writing on the Command Line: LaTeX and Markdown][writing-cli] (10/24)

Basically since elementary school, you've been taught that Microsoft Word is the
One True Way™. In this talk, we'll teach you how to transform the terminal into
the ultimate writing tool. We'll be covering LaTeX and Markdown, tools which let
you create things from resumes, to beautiful Math and CS homeworks, to blogs,
and beyond.

### GDB and Debugging (11/8, Sunday 3 p.m.)

When trying to figure out why your C program isn't quite working, there's no
more powerful tool than `gdb`. We'll go over what `gdb` is, some demos of how
it's useful, and set you loose to solve some fun puzzles using it.

### ... check back later for more talks!


<!--
(11/7)
(11/14)
(11/21)
(11/28)
(12/5)
-->

[syllabus]: {{ "/syllabus/" | prepend: site.baseurl }}
[initial-setup]: {{ "/initial-setup/" | prepend: site.baseurl }}

[usage]:  {{ "/topics/terminal-usage/"         | prepend: site.baseurl }}
[vim]:    {{ "/topics/vim/"                    | prepend: site.baseurl }}
[bash]:   {{ "/topics/bash/"                   | prepend: site.baseurl }}
[config]: {{ "/topics/terminal-configuration/" | prepend: site.baseurl }}
[git]:    {{ "/topics/git/"                    | prepend: site.baseurl }}

[week-1]:  {{ "/topics/puzzle-packs/week-1/"  | prepend: site.baseurl }}
[week-2]:  {{ "/topics/puzzle-packs/week-2/"  | prepend: site.baseurl }}
[week-3]:  {{ "/topics/puzzle-packs/week-3/"  | prepend: site.baseurl }}
[week-4]:  {{ "/topics/puzzle-packs/week-4/"  | prepend: site.baseurl }}
[week-5]:  {{ "/topics/puzzle-packs/week-5/"  | prepend: site.baseurl }}
[week-6]:  {{ "/topics/puzzle-packs/week-6/"  | prepend: site.baseurl }}
[week-7]:  {{ "/topics/puzzle-packs/week-7/"  | prepend: site.baseurl }}
[week-8]:  {{ "/topics/puzzle-packs/week-8/"  | prepend: site.baseurl }}
[week-9]:  {{ "/topics/puzzle-packs/week-9/"  | prepend: site.baseurl }}
[week-10]: {{ "/topics/puzzle-packs/week-10/" | prepend: site.baseurl }}
[week-11]: {{ "/topics/puzzle-packs/week-11/" | prepend: site.baseurl }}
[week-12]: {{ "/topics/puzzle-packs/week-12/" | prepend: site.baseurl }}

[command-booster-pack]: {{ "/topics/extratations/command-booster-pack" | prepend: site.baseurl }}
[emacs-fundamentals]: {{ "/topics/extratations/emacs-fundamentals" | prepend: site.baseurl }}
[emacs-rocks]: http://cmu.io/~sbaugh/emacs.html
[vim-as-an-ide]: https://github.com/jez/vim-as-an-ide
[tmux]: https://gist.github.com/MohamedAlaa/2961058
[writing-cli]: {{ "/topics/extratations/writing-cli" | prepend: site.baseurl }}
