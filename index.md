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

| Date     | Slides                | Lecture Topic               | Lab                            |
| ----     | ------                | -------------               | ---                            |
| Jan, 17  | [intro][intro_S1],[latex][latex_S1] | Intro + [Latex][latex] | [smashlab][latex_lab] |
| Jan, 24  | [terminal][term_S1]   | [Terminal usage][usage]     | [trainerlab][term_lab]         |
| Jan, 31  |   -                   | __Break__                   |                                |
| Feb, 7   | [vim1][vim_S1]        | [Vim][vim]                  | [sportslab][sports_lab]        |
| Feb, 14  | [emacs][emacs_S1]     | [Emacs][emacs]              | [butterflylab][butterfly_lab]  |
| Feb, 21  | [git1][git_S1]        | [Git][git] - Basics         | [romancelab][romance_lab]      |
| Feb, 28  |   -                   | __Midsemester Break__       |                                |
| Mar, 7   |   -                   | Exam 1                      |                                |
| Mar, 14  | [git2][git_S2]        | [Git][git] - github         | [collab][col_lab]              |
| Mar, 21  | [bash][bash_S1]       | [Bash][bash] - Intro & Globs| [forcelab][force_lab]          |
| Mar, 28  | [grep & sed][bash_S2] | [Bash][bash] - Regex & Grep | [zombielab][zombie_lab] & [hauntlab][haunt_lab] |
| Apr, 4   |   -                   | Extra: docker               |                                |
| Apr, 11  | [pipes][bash_S3]      | [Bash][bash] - Pipes        | [pipelab][pipe_lab]            |
| Apr, 18  |   -                   | Exam 2                      |                                |
{:.ui.striped.table}


<!--
## Office hours

Eduardo Feo-Flushing:

Giselle Reis:
-->

[syllabus]: {{ "/syllabus/" | prepend: site.baseurl }}

<!-- TODO: remove this page -->
[Initial setup]: {{ "/initial-setup/" | prepend: site.baseurl }}

<!-- Topic pages -->
[latex]:     {{ "/topics/latex/"                  | prepend: site.baseurl }}
[usage]:     {{ "/topics/terminal-usage/"         | prepend: site.baseurl }}
[vim]:       {{ "/topics/vim/"                    | prepend: site.baseurl }}
[emacs]:     {{ "/topics/emacs/"                  | prepend: site.baseurl }}
[git]:       {{ "/topics/git/"                    | prepend: site.baseurl }}
[bash]:      {{ "/topics/bash/"                   | prepend: site.baseurl }}

<!-- These pages were not used.
[config]:    {{ "/topics/terminal-configuration/" | prepend: site.baseurl }}
[makefiles]: {{ "/topics/makefiles/"              | prepend: site.baseurl }}
[pm]:        {{ "/topics/intro-to-pm/"            | prepend: site.baseurl }}
-->

<!-- Slides -->
[intro_S1]: {{ "/slides/00-intro.pdf" | prepend: site.baseurl }}
[latex_S1]: {{ "/slides/01-latex.pdf" | prepend: site.baseurl }}
[term_S1]:  {{ "/slides/02-terminal.pdf" | prepend: site.baseurl }}
[vim_S1]:   {{ "/slides/03-vim-1.pdf" | prepend: site.baseurl }}
[emacs_S1]: {{ "/slides/04-emacs.pdf" | prepend: site.baseurl }}
[git_S1]:   {{ "/slides/05-git.pdf" | prepend: site.baseurl }}
[git_S2]:   {{ "/slides/06-more-git.pdf" | prepend: site.baseurl }}
[bash_S1]:  {{ "/slides/07-bash.pdf" | prepend: site.baseurl }}
[bash_S2]:  {{ "/slides/08-grep-sed.pdf" | prepend: site.baseurl }}
[bash_S3]:  {{ "/slides/09-oneliners.pdf" | prepend: site.baseurl }}

<!-- Labs -->
[latex_lab]:     https://autolab.andrew.cmu.edu/courses/07131q-s22/assessments/smashlab
[term_lab]:      https://autolab.andrew.cmu.edu/courses/07131q-s22/assessments/trainerlab
[sports_lab]:    https://autolab.andrew.cmu.edu/courses/07131q-s22/assessments/sportslab
[butterfly_lab]: {{ "/files/butterflylab.zip" | prepend: site.baseurl }}
[romance_lab]:   https://autolab.andrew.cmu.edu/courses/07131q-s22/assessments/romancelab
[col_lab]:       {{ "/topics/git/collab-instructions" | prepend: site.baseurl }}
[force_lab]:     https://autolab.andrew.cmu.edu/courses/07131q-s22/assessments/forcelab
[zombie_lab]:    https://autolab.andrew.cmu.edu/courses/07131q-s22/assessments/zombielab
[haunt_lab]:     https://autolab.andrew.cmu.edu/courses/07131q-s22/assessments/hauntlab
[pipe_lab]:      https://autolab.andrew.cmu.edu/courses/07131q-s22/assessments/pipelab

<!-- Extra topics pages/slides -->
<!--
[latexresume]:  {{ "/topics/extratations/latexresume/" | prepend: site.baseurl }}
[tmux]:         {{ "/topics/extratations/tmux/" | prepend: site.baseurl }}
[cicd]:         {{ "/topics/extratations/githubactions/" | prepend: site.baseurl }}
[wdw]:          {{ "/topics/extratations/wdw/" | prepend: site.baseurl }}
[giturl]:       {{ "/topics/extratations/githuburlshortener/" | prepend: site.baseurl }}
[bitcoin]:      {{ "/topics/extratations/bitcoin/" | prepend: site.baseurl }}
[dotfiles]:     {{ "/topics/extratations/dotfiles/" | prepend: site.baseurl }}
[pm]:           {{ "/topics/extratations/pm/" | prepend: site.baseurl }}
[cc]:           {{ "/topics/extratations/crashcourse/" | prepend: site.baseurl }}
[summer]:       {{ "/topics/extratations/summer/" | prepend: site.baseurl }}
[vscode]:       {{ "/topics/extratations/vscode/" | prepend: site.baseurl }}
[interview]:    {{ "/topics/extratations/interview/" | prepend: site.baseurl }}
[umlood]:       {{ "/topics/extratations/umlood/" | prepend: site.baseurl }}
[resumereview]: {{ "/topics/extratations/resumereview/" | prepend: site.baseurl }}
-->
