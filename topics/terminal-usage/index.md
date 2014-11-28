---
layout: page
title: "Terminal Usage"
group: topic
order: 1
description: How to use a command line, how to navigate the filesystem, how to run commands, and more.
topic: 'terminal-usage'
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


# Terminal Usage
{:.ui.dividing.header.no_toc}

## Overview

Most of the time, people interact with computers using clicks and taps.
Interfaces which are designed around clicks and taps tend to be very visual and
are called "Graphical User Interfaces" (GUIs).

For much of this course, though, we will be focusing on interacting with
computers using keyboards and text. Computers "think" in text commands, so we
can tap into more powerful features of computers by learning to write those
commands, using a "Command Line Interface" (CLI). The command line is often
called a "terminal" in everyday talk.

## Lessons

{% assign pages_sorted = site.pages | sort: 'order' %}
{% for node in pages_sorted %}
{% if node.group == page.topic %}
- [{{ node.title }}]({{ node.url | replace:'index.html','' | prepend: site.baseprefix }})
{% if node.description %}
    - {{ node.description }}
{% endif %}
{% endif %}
{% endfor %}

## Resources

- [Learning the Shell][linuxcommand]

[linuxcommand]: http://linuxcommand.org/lc3_learning_the_shell.php

## Readings

| Date | Reading                                       |
| ---- | -------                                       |
| 9/3  | [Using Files & Commands][files-commands]      |
| 9/24 | [Terminal Environment & AFS][environment-afs] |
| 10/1 | [Jobs, Man Pages, & Links][jobs-man-links]    |
{:.ui.striped.table}

[files-commands]: files-commands/
[environment-afs]: environment-afs/
[jobs-man-links]: jobs-man-links/
