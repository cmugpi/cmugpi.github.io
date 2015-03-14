---
layout: page
title: "Getting Started With LaTeX"
# What topic does this page belong to?
group: latex
# Relative ordering of lessons within a topic
order: 1
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# Getting Started with LaTeX
{:.ui.dividing.header.no_toc}

To work with LaTeX, you'll need a way of compiling your `.tex` files to PDFs.
You _could_ just use the `pdflatex` program on the Andrew Unix servers (usage:
`pdflatex myfile.tex`) to compile your PDFs, but then you'd have a tough time
viewing PDFs.

Luckily, there are plenty of easier options for both online and offline
development.

## Online - ShareLaTeX

A lot of people at CMU use an online LaTeX client called
[ShareLaTeX][sharelatex]. It's incredibly easy to get started working on this
site. Just create a free account, create a "New Project", and you'll bring up an
editor where you can edit and compile your LaTeX side-by-side. It's very quick
and easy.

## Offline

Unfortunately, sometimes the Internet goes down. If this happens when you're
doing your homework on ShareLaTeX at the last minute, you're out of luck.
However, we can install LaTeX locally so that we never run into this problem!

### OS X

To install LaTeX on OS X, install [MacTeX][mactex]. It's a huge (2.4GB)
download, but it contains everything you need to do LaTeX offline. It comes with
two major interfaces to compiling LaTeX.

#### TeXShop

This is a graphical LaTeX editor. It's similar to ShareLaTeX in the sense that
you get a side-by-side view of the LaTeX source and the PDF. It also contains a
bunch of convenience menus for code snippets and templates.

#### `pdflatex`

MacTeX also installs the command line program `pdflatex` which compiles a LaTeX
source file to a PDF. The usage is really simple:

~~~
$ pdflatex homework.tex
~~~

That command will generate the file `homework.pdf` in the same directory.
Working offline on the command line has a lot of benefits. For more information
on why it's so cool, [see this blog post][offline].

### Linux

Linux users can download LaTeX from their package manager if it isn't installed
already. The package is probably called `texlive`. On Debian/Ubuntu/Linux Mint
and similar distros:

~~~
$ sudo apt-get install texlive
~~~

If you have a different system, you might have to Google to figure out the right
package, but you're probably responsible enough to figure it out.

You may also want to check out the above sections on OS X offline development
for some LaTeX editing options.

### Windows

If you're on Windows, you should install [MikTeX][miktex]. [TeXnicCenter][texnic] is a
good LaTeX editor for Windows.

[sharelatex]: https://www.sharelatex.com/
[mactex]: https://tug.org/mactex/
[offline]: http://blog.jez.io/2014/10/06/offline-latex-development/
[miktex]: http://miktex.org/
[texnic]: http://www.texniccenter.org/
