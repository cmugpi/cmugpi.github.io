---
layout: page
title: "Pastebin"
# What topic does this page belong to?
group: vim
# Relative ordering of lessons within a topic
order: 0
published: false
---


{% include toc.md %}

# Pastebin
{:.ui.dividing.header.no_toc}

## First Header


## Modes

Hopefully by now you've had a chance to see how Vim is generally used. Vim's
biggest selling point is __modal editing__. You might have seen modes before,
but Vim elevates them to the front and center.

Modes mean two things for you:

1. Incredibly fast, frictionless text editing.
2. A completely new _language_ to learn.

Most people hear the Point (1), get really interested in Vim, but never account
for Point (2). Vim truly is a language in its own right, and to effectively use
it, you have to learn the language.

## Your ~/vimrc

There are many files used to configure Vim, but the most important of these is
the file `~/.vimrc`. This file is run every time you start Vim, so if you want
tweaks and changes you make to Vim to be permanent, put the relevant lines in
this file.

## Automatic Indentation

For many languages, you can have vim automatically figure out the correct
indentation. To do this, highlight lines with `V` and various motions, and type
the action `=`.

## Line Numbering

The GPI Vim config turns line numbering on by default. At some point (especially
for copying text with your cursor), you may want to disable line numbers. To
turn them on, use `:set number`, and to turn them off, use `:set nonumber`. (If
you always want line numbers off, add `set nonumber` to your `~/.vimrc`.)

## Tabs & Splits

Tabs (as you likely know from your favorite web browser) are a great way to
organize pages and files. We strongly recommend you use them when you have to
deal with multiple files. Below is a quick command reference.

| Command              | Description                                                 |
| -------              | -----------                                                 |
| `:tabe <filename>`   | Open `<filename>` in a new tab                              |
| `gt`                 | Cycle to next tab                                           |
| `gT`                 | Cycle to previous tab                                       |
| `:split <filename>`  | Open `<filename>` by horizontally splitting the screen      |
| `:vsplit <filename>` | Open `<filename>` by vertically splitting the screen        |
| `C-w [hjkl]`         | (choose one of "hjkl") Selects split left/below/above/right |
| `:q`                 | Close the current tab or split                              |
| `:qa`                | Close all tabs and splits                                   |
| `:wqa`               | Save and quit all tabs and splits                           |
{:.ui.striped.table}

