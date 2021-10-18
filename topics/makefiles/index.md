---
layout: page
title: "Makefiles"
group: topic
description: >
  Makefiles are files that consist of a series of rules. Each rule may depend on
  some number of prerequisites and may output a target file. This page will go
  over how to create Makefiles and describe when they are useful.
# How sub-pages will be linked to this page
topic: makefiles
# Relative ordering of topics
order: 5
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


# Makefiles
{:.ui.dividing.header.no_toc}

## Overview

When working on projects, it's often useful to be able to repeatedly run a
command on some number of input files. Given that such a command depends only
on those input files, we only need to rerun the command when one of the inputs
changes.

Using a Makefile makes this process much easier to manage; programmers can list
the commands and dependencies in a Makefile and can then rely on the Makefile
to only rerun commands as necessary. This is typically a useful tool when
compiling code (listing the code files once in a Makefile is much easier than
listing them all out in the shell everytime you want to compile!), but this is
far from the only use for Makefiles.

## Lessons

{% include lessons-for-topic.md %}

## Resources

- [F21 Extratation Slides][slides]
- [GNU make Manual][makemanual]
  - A detailed manual on how to use `make` and write Makefiles

[makemanual]: https://www.gnu.org/software/make/manual/make.html 
[slides]:  {{ "./makefiles.pdf"  | prepend: site.baseurl }}