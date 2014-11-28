---
layout: page
title: "Bash"
group: topic
description:
# How sub-pages will be linked to this page
topic: bash
# Relative ordering of topics
order: 3
---


# Bash
{:.ui.dividing.header.no_toc}

## Overview

Bash is one of the most commonly used shell scripting languages. It (or a
similar program like ksh or zsh) is what's run every time you open a terminal,
ssh into a server, or run a shell script.

Bash is an incredibly powerful development tool. It makes automating certain
tasks incredibly easy, saving you time and headaches. A working knowledge of
bash is also a valuable skill when looking for employment in the tech industry.
Interviewers enjoy asking potential candidates questions that test their
knowledge of the shell environment.

All in all, investing a little time into learning the basics of bash is a very
rewarding endeavor.

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

- No resources yet! TODO

## Readings

| Date  | Reading |
| ----  | ------- |
| 10/8  | [Globbing & Ranges][globbing] |
| 10/22 | TODO    |
| 10/29 | TODO    |
| 11/5  | TODO    |
{:.ui.striped.table}

[globbing]: globbing-ranges/
