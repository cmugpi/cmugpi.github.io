---
layout: page
title: 'Vim: Navigation Showcase'
# What topic does this page belong to?
group: extratations
# Relative ordering of lessons within a topic
order: 4
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# Vim: Navigation Showcase
{:.ui.dividing.header.no_toc}

## Notes

We split the extratation into two parts:

- A prepared lecture
- A section for requests from the class

### Prepared Notes

- [Tabs, Jumps, & the Clipboard]


### By Popular Demand

Because people asked, we went over some things we'll learn later in the
semester.

We'll be learning about what the vimrc is later in the semester. If you're not
sure what it is yet, just hang tight!
{:.ui.info.message}

Add the following to your vimrc to get incremental search highlighting:

```
set incsearch
```

Add the following to your vimrc to have tabs expand to 2 spaces:

```
" Tab settings
set expandtab          " Expand tabs into spaces
set tabstop=2          " default to 2 spaces for a hard tab
set softtabstop=2      " default to 2 spaces for the soft tab
set shiftwidth=2       " for when <TAB> is pressed at the beginning of a line
```

For navigating around with splits, it's somewhat tedious to input `^W [hjkl]`.
To instead use `^H`, `^J`, `^K`, and `^L`, you can add these lines to your
vimrc:

```
" Make navigation with splits easier
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-l> <C-w>l
```



[Tabs, Jumps, & the Clipboard]: {{ "/topics/vim/tabs-jumps-clipboard" | prepend: site.baseurl }}
