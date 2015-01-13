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

## Schedule

{% comment %}
I apologize for this being so wide! Trust me, it looks really nice if you have
a screen big enough to handle it.
{% endcomment %}

| Lecture Date | Topic                            | Lecture                                             |
| ------------ | -----                            | -------                                             |
| ASAP         | [Initial setup][initial-setup]   | -                                                   |
| 9/3          | [Terminal Usage][terminal-usage] | [Using Files & Commands][files-commands]            |
| 9/10         | [Vim][vim]                       | [Getting Started with Vim][gs-vim]                  |
| 9/17         | [Vim][vim]                       | [Vim as Language][vim-language]                     |
| 9/24         | [Terminal Usage][terminal-usage] | [Terminal Environment & AFS][environment-afs]       |
| 10/1         | [Terminal Usage][terminal-usage] | [Jobs, Man Pages, & Links][jobs-man-links]          |
| 10/8         | [Bash][bash]                     | [Globbing & Ranges][globbing] & [Strings][strings]  |
| 10/15        | Midterm Exam                     | -                                                   |
| 10/22        | [Bash][bash]                     | [Input & Output][io] & [Regular Expressions][regex] |
| 10/29        | [Bash][bash]                     | [Oneliners][oneliners]                              |
| 11/5         | [Bash][bash]                     | [Bash Scripting][scripting]                         |
| 11/12        | [Git][git]                       | [Getting Started with Git][gs-git]                  |
| 11/19        | [LaTeX][latex]                   | [Getting Started with LaTeX][gs-latex]              |
| __11/26__    | __Thanksgiving__                 | -                                                   |
| 12/3         | [Terminal Configuration][config] | [Dotfiles][dotfiles] |
| 12/10        | Final Exam                       | - |
{:.ui.striped.table}

[puzzle1]: https://www.google.com/
[syllabus]: {{ "/syllabus/" | prepend: site.baseprefix }}
[initial-setup]: {{ "/initial-setup/" | prepend: site.baseprefix }}

[terminal-usage]:  {{ "/topics/terminal-usage/"                 | prepend: site.baseprefix }}
[files-commands]:  {{ "/topics/terminal-usage/files-commands/"  | prepend: site.baseprefix }}
[environment-afs]: {{ "/topics/terminal-usage/environment-afs/" | prepend: site.baseprefix }}
[jobs-man-links]:  {{ "/topics/terminal-usage/jobs-man-links/"  | prepend: site.baseprefix }}

[vim]:    {{ "/topics/vim/"                 | prepend: site.baseprefix }}
[gs-vim]: {{ "/topics/vim/getting-started/" | prepend: site.baseprefix }}
[vim-language]: http://benmccormick.org/2014/07/02/learning-vim-in-2014-vim-as-language/

[bash]:      {{ "/topics/bash/"                     | prepend: site.baseprefix }}
[globbing]:  {{ "/topics/bash/globbing-ranges/"     | prepend: site.baseprefix }}
[strings]:   {{ "/topics/bash/strings/"             | prepend: site.baseprefix }}
[io]:        {{ "/topics/bash/input-output/"        | prepend: site.baseprefix }}
[regex]:     {{ "/topics/bash/regular-expressions/" | prepend: site.baseprefix }}
[oneliners]: {{ "/topics/bash/oneliners/"           | prepend: site.baseprefix }}
[scripting]: {{ "/topics/bash/bash-scripting/"      | prepend: site.baseprefix }}

[git]:    {{ "/topics/git/"                 | prepend: site.baseprefix }}
[gs-git]: {{ "/topics/git/getting-started/" | prepend: site.baseprefix }}

[latex]:    {{ "/topics/latex/"                 | prepend: site.baseprefix }}
[gs-latex]: {{ "/topics/latex/getting-started/" | prepend: site.baseprefix }}

[config]:   {{ "/topics/terminal-configuration/"          | prepend: site.baseprefix }}
[dotfiles]: {{ "/topics/terminal-configuration/dotfiles/" | prepend: site.baseprefix }}
