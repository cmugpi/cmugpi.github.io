---
layout: page
title: Schedule
group: navigation
order: 1
---

# 07-131 -- Great Practical Ideas in CS -- S22 Qatar
{:.ui.dividing.header.no_toc}

## Overview

Throughout your education as a Computer Scientist at Carnegie Mellon, you will
take courses on programming, theoretical ideas, logic, systems, etc. As you
progress, you will be expected to pick up the so-called "tools of the trade."
This course is intended to help you learn what you need to know in a friendly,
low-stress, high-support way. We will discuss UNIX, debugging and many
other essential tools.

For more information, you should checkout the [syllabus].

## Feedback
We are keeping a form open throughout the semester for you to submit
feedback on all the lectures and anything non-lecture related / about the course in
general as well. You are welcome to submit the form multiple times throughout
the semester, but please don't spam us.
[Form available here](https://forms.gle/JLyQorecHPAtjcr1A)



## Schedule

**NOTE**: We are still tweaking the schedule, and it is subject to change.

| Date     | Slides             | Reading         | Lecture Topic               |
| ----     | ------             | -------         | -------------               |
| Jan, 10  | [slides][latex_S1] | [Lec 1]         | Intro + [Latex][latex]      |
| ASAP     |   -                | [Initial setup] | -                           |
| Jan, 17  | [slides]           | [Lec 2]         | [Terminal usage][usage]     |
| Jan, 24  | [slides]           | [Lec 3]         | [Vim][vim] - Basics         |
| Jan, 31  |   -                |   -             | __Break__                   |
| Feb, 7   | [slides]           | [Lec 4]         | [Vim][vim] - Advanced       |
| Feb, 14  | [slides]           | [Lec 5]         | [Git][git] - Basics         |
| Feb, 21  |   -                | [Exam 1]        | Exam 1                      |
| Feb, 28  |   -                |   -             | __Midsemester Break__       |
| Mar, 7   | [slides]           | [Lec 6]         | [Git][git] - github         |
| Mar, 14  | [slides]           | [Lec 7]         | [Bash][bash] - Intro & Globs|
| Mar, 21  | [slides]           | [Lec 8]         | [Bash][bash] - Regex & Grep |
| Mar, 28  |   -                | [Lec 9]         | TBD                         |
| Apr, 4   | [slides]           | [Lec 10]        | [Bash][bash] - Pipes        |
| Apr, 11  | TBD                | Lec 11          | TBD                         |
| Apr, 18  |   -                | [Exam 2]        | Exam 2                      |
{:.ui.striped.table}


## Office hours

Eduardo Feo-Flushing:

Giselle Reis:

## How to use this site

This site is broken up into a number of _Topics_ which are further broken up
into _Lessons_. One topic in particular relates directly to the assignments in
this class: Readings. The "Readings" topic is where you can find links to
the the lessons that will be useful for solving that week's lab.

In general, there are more lesson pages than there are labs. You will only be
assessed on your knowledge of those that relate to solving the labs. The others
are there as additional resources.


[syllabus]: {{ "/syllabus/" | prepend: site.baseurl }}
[Initial setup]: {{ "/initial-setup/" | prepend: site.baseurl }}

<!-- Topics -->
[usage]:     {{ "/topics/terminal-usage/"         | prepend: site.baseurl }}
[vim]:       {{ "/topics/vim/"                    | prepend: site.baseurl }}
[bash]:      {{ "/topics/bash/"                   | prepend: site.baseurl }}
[latex]:     {{ "/topics/latex/"                  | prepend: site.baseurl }}
[config]:    {{ "/topics/terminal-configuration/" | prepend: site.baseurl }}
[git]:       {{ "/topics/git/"                    | prepend: site.baseurl }}
[makefiles]: {{ "/topics/makefiles/"              | prepend: site.baseurl }}
[pm]:        {{ "/topics/intro-to-pm/"            | prepend: site.baseurl }}

<!-- Slides -->
[latex_S1]: {{ "/topics/readings/week-01/01-intro-and-latex.pdf" | prepend: site.baseurl }}
[term_S1]:  {{ "/topics/readings/week-02/week-2-terminal.pdf" | prepend: site.baseurl }}
[vim_S1]:   {{ "/topics/readings/week-03/week-3-vim.pdf" | prepend: site.baseurl }}
[vim_S2]:   {{ "/topics/readings/week-04/week-4-vim-2.pdf" | prepend: site.baseurl }}
[git_S1]:   {{ "/topics/readings/week-05/week-5-git-1.pdf" | prepend: site.baseurl }}
[git_S2]:   {{ "/topics/readings/week-08/week-8-git-2.pdf" | prepend: site.baseurl }}
[bash_S1]:  {{ "/topics/readings/week-09/week-9-bash-script.pdf" | prepend: site.baseurl }}
[bash_S2]:  {{ "/topics/readings/week-10/week-10-regex-grep.pdf" | prepend: site.baseurl }}
[bash_S3]:  {{ "/topics/readings/week-12/week-12-pipes.pdf" | prepend: site.baseurl }}

<!-- Weekly pages/readings -->
<!-- TODO: change the names of folders -->
[Lec 1]:  {{ "/topics/readings/week-1/"  | prepend: site.baseurl }}
[Lec 2]:  {{ "/topics/readings/week-2/"  | prepend: site.baseurl }}
[Lec 3]:  {{ "/topics/readings/week-3/"  | prepend: site.baseurl }}
[Lec 4]:  {{ "/topics/readings/week-4/"  | prepend: site.baseurl }}
[Lec 5]:  {{ "/topics/readings/week-5/"  | prepend: site.baseurl }}
[Exam 1]: {{ "/topics/readings/week-6/"  | prepend: site.baseurl }}
<!-- [Week 7]:  {{ "/topics/readings/week-7/"  | prepend: site.baseurl }} nothing here -->
[Lec 6]:  {{ "/topics/readings/week-8/"  | prepend: site.baseurl }}
[Lec 7]:  {{ "/topics/readings/week-9/"  | prepend: site.baseurl }}
[Lec 8]:  {{ "/topics/readings/week-10/" | prepend: site.baseurl }}
[Lec 9]:  {{ "/topics/readings/week-11/" | prepend: site.baseurl }}
[Lec 10]: {{ "/topics/readings/week-12/" | prepend: site.baseurl }}
[Lec 11]: {{ "/topics/readings/week-13/" | prepend: site.baseurl }}
[Exam 2]: {{ "/topics/readings/week-14/" | prepend: site.baseurl }}


<!-- Extratation pages/slides -->
<!--
[latexresume]: {{ "/topics/extratations/latexresume/" | prepend: site.baseurl }}
[tmux]: {{ "/topics/extratations/tmux/" | prepend: site.baseurl }}
[cicd]: {{ "/topics/extratations/githubactions/" | prepend: site.baseurl }}
[wdw]: {{ "/topics/extratations/wdw/" | prepend: site.baseurl }}
[giturl]: {{ "/topics/extratations/githuburlshortener/" | prepend: site.baseurl }}
[bitcoin]: {{ "/topics/extratations/bitcoin/" | prepend: site.baseurl }}
[dotfiles]: {{ "/topics/extratations/dotfiles/" | prepend: site.baseurl }}
[pm]: {{ "/topics/extratations/pm/" | prepend: site.baseurl }}
[cc]: {{ "/topics/extratations/crashcourse/" | prepend: site.baseurl }}
[summer]: {{ "/topics/extratations/summer/" | prepend: site.baseurl }}
[vscode]: {{ "/topics/extratations/vscode/" | prepend: site.baseurl }}
[interview]: {{ "/topics/extratations/interview/" | prepend: site.baseurl }}
[umlood]: {{ "/topics/extratations/umlood/" | prepend: site.baseurl }}
[resumereview]: {{ "/topics/extratations/resumereview/" | prepend: site.baseurl }}
-->
