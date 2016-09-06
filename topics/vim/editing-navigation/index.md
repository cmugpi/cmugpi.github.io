---
layout: page
title: Editing & Navigation
# What topic does this page belong to?
group: vim
# Relative ordering of lessons within a topic
order: 2
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# Editing & Navigation
{:.ui.dividing.header.no_toc}

This page is just a reference for your convenience. You are __not__ expected to
memorize what's listed here.

## Navigation

| Key | Description                   |
| --- | -----------                   |
| `h` | Move left                     |
| `j` | Move down                     |
| `k` | Move up                       |
| `l` | Move left, ('l' for 'letter') |
{:.ui.striped.table}

| Key | Description                                   |
| --- | -----------                                   |
| `w` | Forward one word, start at next word          |
| `e` | Forward one word, stop at end of current word |
| `b` | Back to nearest word start                    |
{:.ui.striped.table}

| Key | Description                                            |
| --- | -----------                                            |
| `W` | Same as `w`, but only use spaces for a word boundaries |
| `E` | Same as `e`, but only use spaces for a word boundaries |
| `B` | Same as `e`, but only use spaces for a word boundaries |
{:.ui.striped.table}

| Key         | Description                                                              |
| ---         | -----------                                                              |
| `f<letter>` | Move cursor on top of next instance of `<letter>` in current line        |
| `t<letter>` | Move cursor right before next instance of `<letter>` in current line     |
| `F<letter>` | Move cursor on top of previous instance of `<letter>` in current line    |
| `T<letter>` | Move cursor right before previous instance of `<letter>` in current line |
{:.ui.striped.table}

| Key   | Description             |
| ---   | -----------             |
| `gg`  | Top of file             |
| `G`   | Bottom of file          |
| `:20` | Line 20 of file         |
| `}`   | Skip to next empty line |
{:.ui.striped.table}

| Key | Description                                  |
| --- | -----------                                  |
| `0` | Go to start of line                          |
| `^` | Go to first non-whitespace character of line |
| `$` | Go to end of line                            |
| `%` | Go to matching paren or brace                |
{:.ui.striped.table}


## Inserting

| Key | Description                                                   |
| --- | -----------                                                   |
| `i` | Insert right __before__ current character                     |
| `a` | Insert right __after__ current character                      |
| `I` | Insert at the __beginning__ of the line (skipping whitespace) |
| `A` | Insert at the __end__ of the line                             |
| `o` | Insert new line __below__ this line                           |
| `O` | Insert new line __above__ this line
{:.ui.striped.table}


## Editing

| Key  | Description                            |
| ---  | -----------                            |
| `d`  | Delete                                 |
| `dd` | Delete the entire line                 |
| `c`  | "Change": delete and enter insert mode |
| `cc` | Change the entire line                 |
{:.ui.striped.table}


## Operators & Motions

Operators can be combined with motions to operate on a certain hunk of text.

| Key   | Description                               |
| ---   | -----------                               |
| `cw`  | Change one word                           |
| `ct)` | Change until the next `)`                 |
| `df.` | Delete everything up to and including `.` |
| `d4l` | Delete the next four letters              |
| `d}`  | Delete until the next empty line          |
{:.ui.striped.table}

## More

Each Vim resource is a little bit different. Another one you may want to look at
is [Vim Cheatsheet].

[Vim Cheatsheet]: {{ "/topics/vim/vim-cheatsheet.pdf" | prepend: site.baseurl }}

