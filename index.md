---
layout: page
title: Schedule
group: navigation
order: 1
---

# 07-131 -- Great Practical Ideas in CS
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
[Form available here](https://tinyurl.com/f21-gpi-feedback)



## Schedule

**NOTE**: We are still tweaking the schedule, and it is subject to change.

| Date     | Slides             | Reading         | Lecture Topic               |
| ----     | ------             | -------         | -------------               |
| 9/2      | [slides][latex_S1] | [Week 1]        | Intro + [Latex][latex]      |
| ASAP     | -                  | [Initial setup] | -                           |
| 9/9      | [slides][term_S1]  | [Week 2]        | [Terminal usage][usage]     |
| 9/16     | [slides][vim_S1]   | [Week 3]        | [Vim][vim] - Basics         |
| 9/23     | [slides][vim_S2]   | [Week 4]        | [Vim][vim] - Advanced       |
| 9/30     | [slides][git_S1]   | [Week 5]        | [Git][git] - Basics         |
| 10/7     |   -                | [Week 6]        | Exam 1                      |
| __10/14__|   -                | Week 7          | __Midsemester Break__       |
| 10/21    | [slides][git_S2]   | [Week 8]        | [Git][git] - github         |
| 10/28    | [slides][bash_S1]  | [Week 9]        | [Bash][bash] - Intro & Globs|
| 11/4     |                    | [Week 10]       | [Bash][bash] - Regex & Grep |
| 11/11    |   -                | [Week 11]       | CMU Advice - Q&A        |
| 11/18    |                    | [Week 12]       | [Bash][bash] - Pipes        |
| __11/26__|   -                | Week 13         | __Thanksgiving__            |
| 12/2     |   -                | [Week 14]       | Exam 2                      |
{:.ui.striped.table}

## Extratations

Throughout the semester, we'll be holding extra workshops and talks outside of
class, dubbed "extratations", to explore topics that we don't want to test you
on but that you might find interesting.

Time and Location: See Piazza

We'll be posting the extratation schedule here.

|Week   | Date          | Extratation Topic                     |
|----   | ----          | -----                                 |
|1      | 9/4           | No extratation, Extended OH instead   |
|2      | 9/11          | [Summer Opportunities][summer]        |
|3      | 9/18          | [VSCode][vscode]                      |
|4      | 9/25          | [Interview prep][interview]           |
|5      | 10/2          | [Exam 1 review](https://create.kahoot.it/details/242bb421-a27a-4679-8078-31f0e423bc10) |
|6      | 10/9          | [Makefile][makefiles] |
|7      | 10/16         | [Intro to Product Management (PM)][pm]|
|8      | 10/23         | Crash Course w/ ScottyLabs |
|9      | 10/30         | [UML & OOD][umlood] |
|10     | 11/6          | Resume review (bring a resume!) |
|11     | 11/13         | WebDev Weekend w/ ScottyLabs |
|12     | 11/20         | Exam 2 review |
|13     | __11/27__     | __Thanksgiving__                      |
|14     | 12/4          | N/A                                   |
{:.ui.striped.table}


## Office hours calendar
<div class="">
<iframe src="https://calendar.google.com/calendar/embed?src=c_9ggct2afcr7d1rmdkn0i9e811c%40group.calendar.google.com&ctz=America%2FNew_York" style="border-width:0" width="100%" height="500" frameborder="0" scrolling="no"></iframe>
</div>
{:.ui.dividing.header.no_toc}


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
[latex_S1]:  {{ "/topics/readings/week-1/week-1-intro-latex.pdf" | prepend: site.baseurl }}
[term_S1]: {{ "/topics/readings/week-2/week-2-terminal.pdf" | prepend: site.baseurl }}
[vim_S1]: {{ "/topics/readings/week-3/week-3-vim.pdf" | prepend: site.baseurl }}
[vim_S2]: {{ "/topics/readings/week-4/week-4-vim-2.pdf" | prepend: site.baseurl }}
[git_S1]: {{ "/topics/readings/week-5/week-5-git-1.pdf" | prepend: site.baseurl }}
[git_S2]:   {{ "/topics/readings/week-8/week-8-git-2.pdf" | prepend: site.baseurl }}
[bash_S1]: {{ "/topics/readings/week-9/week-9-bash-script.pdf" | prepend: site.baseurl }}

<!-- Weekly pages/readings -->
[Week 1]:  {{ "/topics/readings/week-1/"  | prepend: site.baseurl }}
[Week 2]:  {{ "/topics/readings/week-2/"  | prepend: site.baseurl }}
[Week 3]:  {{ "/topics/readings/week-3/"  | prepend: site.baseurl }}
[Week 4]:  {{ "/topics/readings/week-4/"  | prepend: site.baseurl }}
[Week 5]:  {{ "/topics/readings/week-5/"  | prepend: site.baseurl }}
[Week 6]:  {{ "/topics/readings/week-6/"  | prepend: site.baseurl }}
[Week 7]:  {{ "/topics/readings/week-7/"  | prepend: site.baseurl }}
[Week 8]:  {{ "/topics/readings/week-8/"  | prepend: site.baseurl }}
[Week 9]:  {{ "/topics/readings/week-9/"  | prepend: site.baseurl }}
[Week 10]: {{ "/topics/readings/week-10/" | prepend: site.baseurl }}
[Week 11]: {{ "/topics/readings/week-11/" | prepend: site.baseurl }}
[Week 12]: {{ "/topics/readings/week-12/" | prepend: site.baseurl }}
[Week 13]: {{ "/topics/readings/week-13/" | prepend: site.baseurl }}
[Week 14]: {{ "/topics/readings/week-14/" | prepend: site.baseurl }}

<!-- Extratation pages/slides -->
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