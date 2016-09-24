---
layout: page
title: Tabs, Jumps, & the Clipboard
# What topic does this page belong to?
group: vim
# Relative ordering of lessons within a topic
order: 4
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# Tabs, Jumps, & the Clipboard
{:.ui.dividing.header.no_toc}

This page is just a reference for your convenience. You are not expected to
memorize what's listed here.

## Tabs & Splits

Vim has support for creating tabs and splitting the screen, which is very useful
when you want to open and work with multiple files at the same time.

| Key | Description |
| --- | ----------- |
| `:tabe <filename>` | Open `<filename>` in a new tab |
| `gt` | Cycle forward through your open tabs |
| `gT` | Cycle backward through your open tabs |
| `Ngt` | Go to the Nth tab |

| Key | Description |
| --- | ----------- |
| `:vs <filename>` | Open `<filename>` in a vertical split |
| `:sp <filename>` | Open `<filename>` in a horizontal split |
| `^W h` | Go to the split to the left |
| `^W j` | Go to the split below |
| `^W k` | Go to the split above |
| `^W l` | Go to the split to the right |


## Jumping

One of the reasons why Vim is so powerful is because of all the ways you can
jump from one place to another.

We've already seen some of these, and others are new.

| Key | Description |
| --- | ----------- |
| `gg` | Jump to the top of the file |
| `G` | Jump to the bottom of the file |
| `:N` | Jump to line N |
| `/<search>` | Jump to the next occurence of `<search>` |
| `n` | Jump to the next search match |
| `N` | Jump to the previous search match |
| `%` | Jump to the matching parenthesis or brace |
| `*` | Search for the word under the cursor |
| `}` | Jump forward by one paragraph |
| `{` | Jump backward by one paragraph |
| `^O` | Jump "out" to where you were before your last jump |
| `^I` | Jump "in" to where you were before jumping out |


## Copying & Pasting

In Vim there's a difference between "copying and pasting" and "yanking and
putting". The latter is when we use Vim's `y` and `p` operators to manipulate
text solely within Vim. The former is when we use Vim in conjunction with our
OS's system clipboard, letting us manipulate text across multiple applications
on our computers.

### Pasting

By default, when you paste text into Vim, it treats each character as if you had
pressed it. Lots of times this means you end up with repeated indentation if you
paste text in.

Use `:set paste` before pasting to say to Vim, "I'm about to paste something,
don't treat what comes next as key strokes."

Use `:set nopaste` when you're done pasting.

### Copying - Personal Computer

If you're using Vim from your computer (i.e., not over an SSH connection), Vim
has support to directly interface with your computer's system clipboard.

1. Use visual mode to select some text
1. Press `"+y"`, which will place that text on your system clipboard
1. Use `Cmd + V` (Mac) or `Ctrl + V` (Windows) to paste that text

The `"+` is special syntax in Vim. If you're curious, look up "Vim registers".

### Copying - Over SSH

When you use Vim over an SSH connection, using `"+y` won't work, because there's
no system clipboard for an SSH connection. Instead, we have a couple of options.

- Use `:set nonu` to get rid of the line numbers.
  - This will let you use your mouse to select and copy text without the line
    numbers also being selected.
  - Use `:set nu` to get the numbers back
  - (`nu` is short for `numbers`)
- Hold down `Cmd + Option` when selecting text
  - This is OS X + iTerm2 only.
  - You'll notice your cursor change to a crosshair, and you can select
    arbitrary rectangles.
  - This lets you exclude the line numbers.
