---
layout: page
title: "Week 9"
# What topic does this page belong to?
group: puzzle-packs
# Relative ordering of lessons within a topic
order: 9
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# Week 9
{:.ui.dividing.header.no_toc}

## Reading

- [Getting Started with Git][gs-git]
- [Git Command Overview][git-commands]
  - Not required reading, but good for the PuzzlePack:

## Download PuzzlePack

[git][lern2unix]

Some tips:

- The puzzles have to be completed in order (for the most part). This is their
  order:
  1. git_to_work
  1. dag_dog_search
  1. switcheroo
  1. dag_dog_search_part2
  1. stick
  1. oorehctiws
  1. what_it_takes
- Make sure that you always run the puzzle commands (`./git_to_work`,
  `./switcheroo`, etc.) from the top-most folder in the PuzzlePack. For example,
  you shouldn't be doing `../git_to_work`.


[lern2unix]: http://lern2unix.com/download/git
[gs-git]: {{ "/topics/git/getting-started/" | prepend: site.baseurl }}
[gs-git]: {{ "/topics/git/git-commands/"    | prepend: site.baseurl }}
