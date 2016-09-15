---
layout: page
title: Searching, Substituting, Text Objects, and Yanking
# What topic does this page belong to?
group: vim
# Relative ordering of lessons within a topic
order: 3
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# Searching, Substituting, Text Objects, and Yanking
{:.ui.dividing.header.no_toc}

This page is just a reference for your convenience. You are not expected to
memorize what's listed here.

You may also want to see the [Editing & Navigation] reference.

## Yanking & Putting

What most people call "copy & paste" Vim calls "yank & put."

Use all of these operators with a motion.

| Key | Description             |
| --- | -----------             |
| `y` | Yank (i.e., copy) text  |
| `p` | Put (i.e., paste) text  |
| `d` | Delete (i.e., cut) text |
{:.ui.striped.table}


## Text Objects

Most of the navigation commands we've seen move the cursor from some starting
point to some ending point. If we pass this type of motion to an operator, we
operate on all the text in between.

Oftentimes, we start in the middle of some block of text, and would like to
operate on the thing we're in the middle of (for example, our cursor is in the
middle of a set of parentheses, and we want to operate on all the text between
the parentheses). Text objects are useful here.

All text objects have two variants: the 'i' variant, and the 'a' variant. The
'i' usually stands for 'inside', meaning operate up to **but not** including the
text object's delimiters. The 'a' usually stands for 'around', meaning up to
**and** including the delimiters.

| Key | Description |
| --- | ----------- |
| `i)` | All text inside the set of parentheses surrounding your cursor |
| `i]` | Same as above, but with `[...]` |
| `i}` | Same as above, but with `{...}` |
| `i>` | Same as above, but with `<...>` |
| `it` | Same as above, but with HTML tags: `<section>...</section>` |
| `ip` | Act on the current paragraph, not including the next newline |
{:.ui.striped.table}

| Key | Description |
| --- | ----------- |
| `a)` | Same as the 'i' variant, but include the enclosing parens |
| `a]` | Same as the 'i' variant, but include the enclosing brackets |
| `a}` | Same as the 'i' variant, but include the enclosing braces |
| `a>` | Same as the 'i' variant, but include the enclosing angle brackets |
| `at` | Same as the 'i' variant, but include the enclosing HTML tags |
| `ap` | Same as the 'i' variant, but include the next newline too |
{:.ui.striped.table}


## Visual Mode

Vim lets you select text, just like a graphical editor. This feature is
implemented as a separate mode called "Visual".

Once you're in visual mode, you can use all the operators you're used to, like
`d`, `c`, and `y`, to manipulate that text.

| Key | Description |
| --- | ----------- |
| `v` | Enter `VISUAL` mode, selecting from a cursor start position to a cursor end position. |
| `V` | Enter `VISUAL LINE` mode, selecting from a starting line to an ending line. |
{:.ui.striped.table}



## Searching & Substitution

While things like `f` and `t` are good for navigating and changing within a
line, sometimes we need more powerful commands that let us jump from line to
line.

We want a way to

- find arbitrary text in a file
- substitute some text with other text in a file (i.e., find and replace)

| Key | Description |
| --- | ----------- |
| `/foo<ENTER>` | Search for 'foo' in the file |
| `n` | Go to the next occurence of the current search term |
| `p` | Go to the previous occurence of the current search term |
| `*` | Search for the word under the cursor |
{:.ui.striped.table}

| Key | Description |
| --- | ----------- |
| `:s/foo/bar/<ENTER>` | Replace the first occurence of 'foo' on the current line with 'bar' |
| `:%s/foo/bar/<ENTER>` | Replace the first occurence of 'foo' on every line with 'bar' |
| `:%s/foo/bar/g<ENTER>` | Replace every occurence of 'foo' on every line with 'bar' |
{:.ui.striped.table}

The `:s` command is actually quite powerful. It can take a range, which means it
can operate on a sequence of the lines in the file. One easy way to specify
which lines to operate on is to select them in visual mode.

- Select region in Visual mode
- Use `:s/foo/bar/<ENTER>`
- The substitution will be made only on the visually selected region


[Editing & Navigation]: {{ "/topics/vim/editing-navigation/" | prepend: site.baseurl }}
