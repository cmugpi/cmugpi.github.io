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

| Date     | Slides                | Lecture Topic               | Lab                   |
| ----     | ------                | -------------               | ---                   |
| Jan, 17  | [intro][intro_S1],[latex][latex_S1] | Intro + [Latex][latex]      | [smashlab][latex_lab] |
| Jan, 24  | [terminal][term_S1]   | [Terminal usage][usage]     | [trainerlab][term_lab]|
| Jan, 31  |   -                   | __Break__                   |                       |
| Feb, 7   | [vim1]                | [Vim][vim] - Basics         | [sportslab]           |
| Feb, 14  | [vim2]                | [Vim][vim] - Advanced       | [wizardlab]           |
| Feb, 21  | [git1]                | [Git][git] - Basics         | [romancelab]          |
| Feb, 28  |   -                   | Exam 1                      |                       |
| Mar, 7   |   -                   | __Midsemester Break__       |                       |
| Mar, 14  | [git2]                | [Git][git] - github         | [collab]              |
| Mar, 21  | [slides]              | [Bash][bash] - Intro & Globs| [forcelab]            |
| Mar, 28  | [slides]              | [Bash][bash] - Regex & Grep | [zombielab & hauntlab]|
| Apr, 4   |   -                   | TBD                         |                       |
| Apr, 11  | [slides]              | [Bash][bash] - Pipes        | [pipelab]             |
| Apr, 18  |   -                   | Exam 2                      |                       |
{:.ui.striped.table}


<!--
## Office hours

Eduardo Feo-Flushing:

Giselle Reis:
-->

<!--
## How to use this site

This site is broken up into a number of _Topics_ which are further broken up
into _Lessons_. One topic in particular relates directly to the assignments in
this class: Readings. The "Readings" topic is where you can find links to
the the lessons that will be useful for solving that week's lab.

In general, there are more lesson pages than there are labs. You will only be
assessed on your knowledge of those that relate to solving the labs. The others
are there as additional resources.
-->

[syllabus]: {{ "/syllabus/" | prepend: site.baseurl }}

<!-- TODO: remove this page -->
[Initial setup]: {{ "/initial-setup/" | prepend: site.baseurl }}

<!-- Topic pages -->
[latex]:     {{ "/topics/latex/"                  | prepend: site.baseurl }}
[usage]:     {{ "/topics/terminal-usage/"         | prepend: site.baseurl }}

[vim]:       {{ "/topics/vim/"                    | prepend: site.baseurl }}
[bash]:      {{ "/topics/bash/"                   | prepend: site.baseurl }}
[config]:    {{ "/topics/terminal-configuration/" | prepend: site.baseurl }}
[git]:       {{ "/topics/git/"                    | prepend: site.baseurl }}
[makefiles]: {{ "/topics/makefiles/"              | prepend: site.baseurl }}
[pm]:        {{ "/topics/intro-to-pm/"            | prepend: site.baseurl }}

<!-- Slides -->
[intro_S1]: {{ "/slides/00-intro.pdf" | prepend: site.baseurl }}
[latex_S1]: {{ "/slides/01-latex.pdf" | prepend: site.baseurl }}
[term_S1]:  {{ "/slides/02-terminal.pdf" | prepend: site.baseurl }}

[vim_S1]:   {{ "/topics/readings/week-03/week-3-vim.pdf" | prepend: site.baseurl }}
[vim_S2]:   {{ "/topics/readings/week-04/week-4-vim-2.pdf" | prepend: site.baseurl }}
[git_S1]:   {{ "/topics/readings/week-05/week-5-git-1.pdf" | prepend: site.baseurl }}
[git_S2]:   {{ "/topics/readings/week-08/week-8-git-2.pdf" | prepend: site.baseurl }}
[bash_S1]:  {{ "/topics/readings/week-09/week-9-bash-script.pdf" | prepend: site.baseurl }}
[bash_S2]:  {{ "/topics/readings/week-10/week-10-regex-grep.pdf" | prepend: site.baseurl }}
[bash_S3]:  {{ "/topics/readings/week-12/week-12-pipes.pdf" | prepend: site.baseurl }}

<!-- Labs -->
[latex_lab]: https://autolab.andrew.cmu.edu/courses/07131q-s22/assessments/smashlab
[term_lab]: https://autolab.andrew.cmu.edu/courses/07131q-s22/assessments/trainerlab

<!-- Weekly pages/readings -->
<!-- TODO: remove these folders and pages within them once the content
is merged in the appropriate topics folder -->
[Lec 3]:  {{ "/topics/readings/week-03/"  | prepend: site.baseurl }}
[Lec 4]:  {{ "/topics/readings/week-04/"  | prepend: site.baseurl }}
[Lec 5]:  {{ "/topics/readings/week-05/"  | prepend: site.baseurl }}
[Exam 1]: {{ "/topics/readings/week-06/"  | prepend: site.baseurl }}
<!-- [Week 7]:  {{ "/topics/readings/week-07/"  | prepend: site.baseurl }} nothing here -->
[Lec 6]:  {{ "/topics/readings/week-08/"  | prepend: site.baseurl }}
[Lec 7]:  {{ "/topics/readings/week-09/"  | prepend: site.baseurl }}
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
