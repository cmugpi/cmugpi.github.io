---
layout: page
title: "LaTeX"
group: topic
description: >
  LaTeX is a "document preparation system" used extensively to typeset
  mathematical papers. It is also popular among those who enjoy writing in plain
  text, as it makes typesetting content into a beautiful document simple.
# How sub-pages will be linked to this page
topic: latex
# Relative ordering of topics
order: 5
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


# LaTeX
{:.ui.dividing.header.no_toc}

LaTeX is a "document preparation system". It is used to create presentable
documents. More specifically, LaTeX is a "What You See Is What You Mean"
interface; instead of focusing on how the content should look when everything is
done, you declare what you intend for the final document to contain, and these
annotations are compiled into a final version. For comparison, Microsoft Word
and other word processors are dubbed "What You See Is What You Get" (WYSIWYG,
pronounced "whizy-whig"), because what is displayed on the screen is how the
document actually looks.

LaTeX works with plain text files (generally ending in `.tex`). You format your
document with a special syntax, then use either a command line tool (like
`pdflatex`) or a graphical interface (like TeXShop or Overleaf) to compile the
plain text into a PDF or some other graphical format.

People enjoy LaTeX for a number of reasons. First, LaTeX is particularly
useful for typesetting mathematical equations, as we will see. It is also easy to
focus on just writing the content. Instead of fiddling with fonts and changing
the appearance of the document, you can focus on its content. One final reason
is that because LaTeX is plain text, you can use your favorite text editor (i.e.
vim) to edit content written in LaTeX.

Most computer science classes which posses some aspect of theory to them as well
as many upper-level math classes expect their documents to be submitted as PDFs
in LaTeX. Moreover, writing in LaTeX is very common practice for submitting
papers in academia and industry.

## Getting Started

To work with LaTeX, you will need a way of compiling your `.tex` files to PDFs.
You can just use the `pdflatex` program on the Unix servers (usage:
`pdflatex myfile.tex`) to compile your PDFs, but then you would have a tough time
viewing PDFs.

Luckily, there are plenty of easier options for both online and offline
development.

### Online - Overleaf

Some people use an online LaTeX client called [Overleaf][overleaf]. To
start using it, you need to create a free account, create a "New
Project", and this will bring up an editor where you can edit and
compile your LaTeX side-by-side. It is very quick and easy.

### Offline

Unfortunately, sometimes the Internet goes down. If this happens when you are
doing your homework on Overleaf at the last minute, you are out of luck.
However, we can install LaTeX locally so that we never run into this problem!

#### OS X

To install LaTeX on OS X, install [MacTeX][mactex]. It is a huge (2.4GB)
download, but it contains everything you need to do LaTeX offline. It comes with
two major interfaces to compiling LaTeX.

- TeXShop

This is a graphical LaTeX editor. It is similar to Overleaf in the sense that
you get a side-by-side view of the LaTeX source and the PDF. It also contains a
bunch of convenience menus for code snippets and templates.

- `pdflatex`

MacTeX also installs the command line program `pdflatex` which compiles a LaTeX
source file to a PDF. The usage is really simple:

~~~
$ pdflatex homework.tex
~~~

That command will generate the file `homework.pdf` in the same directory.
Working offline on the command line has a lot of benefits. For more information
on why it is so cool, [see this blog post][offline].

#### Linux

Linux users can download LaTeX from their package manager if it is not installed
already. The package is probably called `texlive-full`. On Debian/Ubuntu/Linux Mint
and similar distros, you can install LaTeX by running:

~~~
$ sudo apt-get install texlive-full
~~~

If you have a different system, you might have to Google to figure out the right
package, but you are probably responsible enough to figure it out.

You may also want to check out the above sections on OS X offline development
for some LaTeX editing options.

#### Windows

If you are on Windows, you should install [MikTeX][miktex]. [TeXnicCenter][texnic] is a
good LaTeX editor for Windows.


## Resources

### Quick Start Guide

- [How to LaTeX][howtolatex]
  - An excellent intro to LaTeX guide by Adam Blank, a former student, TA, and
    CS instructor at CMU.

### Handy Tools

- [LaTeX Cheat Sheet][cheatsheet]
  - Just keep it easily accessible when writing LaTeX.
- [The Comprehensive LaTeX Symbol List][symbols]
  - If you ever need to be creative about which symbol to use...
    This is a list with all of them!
- [Detexify][detexify]
  - A tool for figuring out the command for typesetting a symbol in LaTeX. Just
    draw it with your mouse!
- [Online LaTeX Equation Editor][eqneditor]
  - A tool for typesetting equations online. Also contains a bunch of handy
    buttons for commonly used symbols, similar to many LaTeX GUIs. Useful in
    combination with an editor like Vim which does not have these features built
    in.
- [Finite State Machine Designer][fsmd]
  - Tool that simplifies drawing [finite state machines][fsm], which come up in
    theoretical computer science classes.

### Curl up with a cup of tea and just keep reading

- [The Not So Short Introduction to LaTeX][lshort]
  - A very comprehensive overview of how LaTeX works in 157 pages of LaTeX.

## Templates

As it turns out, most LaTeX documents are pretty similar in nature. Using a
template for the repetitive parts of LaTeX is pretty common. Below is a list of
some LaTeX templates that you might like to use for typesetting homework
assignments. There are also a number of sites online which have collections of
free LaTeX templates.

- [CMU LaTeX Homework Template][cmu-template]
  - This template has been distributed by a number of classes at CMU, including
    15-251 and 15-451. It is fairly straightforward, but it does the job.
- [LaTeX Homework Class][homework-class]
  - This project lets you just do `\documentclass{homework}` to gain access to
    a load of helpful commands for typesetting your homework.
- [LaTeX Homework Template][jake-template]
  - This is another LaTeX template. It was based off the CMU template above,
    with some convenience features added on top of it, and restyled a bit.
- [Comprehensive Preamble][preamble]
  - This is a huge LaTeX preamble that contains useful macros for commonly
    used math symbols.

<!-- Links -->

[overleaf]: https://www.overleaf.com/
[mactex]: https://tug.org/mactex/
[offline]: http://blog.jez.io/2014/10/06/offline-latex-development/
[miktex]: http://miktex.org/
[texnic]: http://www.texniccenter.org/

[cheatsheet]: https://wch.github.io/latexsheet/latexsheet.pdf
[symbols]: http://tug.ctan.org/info/symbols/comprehensive/symbols-a4.pdf
[howtolatex]: how-to-latex.pdf
[detexify]: http://detexify.kirelabs.org/classify.html
[eqneditor]: http://www.codecogs.com/latex/eqneditor.php
[fsmd]: http://madebyevan.com/fsm/
[fsm]: http://en.wikipedia.org/wiki/Finite-state_machine
[lshort]: https://tobi.oetiker.ch/lshort/lshort.pdf

[cmu-template]: https://github.com/jez/cmu-latex-hw-template
[homework-class]: https://github.com/jez/latex-homework-class
[jake-template]: https://github.com/jez/latex-hw-template
[preamble]: https://gist.github.com/jez/8109d1ef3421f453ee14




