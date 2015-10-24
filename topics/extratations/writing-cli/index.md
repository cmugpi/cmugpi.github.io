---
layout: page
title: "Writing on the Command Line"
# What topic does this page belong to?
group: extratations
# Relative ordering of lessons within a topic
order: 3
---


{% include toc.md %}

# Writing on the Command Line
{:.ui.dividing.header.no_toc}

Basically since elementary school, you’ve been taught that Microsoft Word is the
One True Way™. In this talk, we’ll teach you how to transform the terminal into
the ultimate writing tool. We’ll be covering LaTeX and Markdown, tools which let
you create things from resumes, to beautiful Math and CS homeworks, to blogs,
and beyond.


## LaTeX

LaTeX is immensely useful for making PDFs using plain text, especially so for
PDFs containing math. There are a number of things you might want to do with
LaTeX, like [install it][0], [learn the syntax][1], and try your hand at
[writing some][2].


## Markdown

Markdown is a different approach to composing rich documents using just plain
text files. It began as a way to quickly write the content of web pages without 
having to write verbose HTML. Nowadays, it shows up in many, many places as a
quick way to write richly formatted text, even if you're not building websites.

Unfortunately, Markdown is much more loosely specified than LaTeX. There are
many different "standards," and each supports a different set of features and
extensions. GitHub has a good article outlining the [most common features][3],
but it's probably sufficient to look at some sample Markdown documents and their
outputs. Check out the [README][4] from the LaTeX sample above, and it's
[source][5].

Taking a step up from READMEs, Markdown works really well for making certain
types of websites that are content-heavy. It might surprise you, but this course
website is actually [written primarily using Markdown][6] ([source][7]). It uses
a framework called [Jekyll][8] which takes a project with a certain directory
structure and set of templates and compiles the pages into HTML. Jekyll is also 
useful for making your own [personal blog][9] ([source][10]).


## Pandoc

There's one other amazing tool for writing LaTeX and Markdown called
[Pandoc][11]. Pandoc is a program that lets you convert between nearly any two
plain text document formats. This includes things like Markdown, LaTeX, HTML,
and more. In particular, Pandoc supports a variant of Markdown that allows you
to mix Markdown and LaTeX math both in the same file. When combined with a LaTeX
template, it can vastly simplify how much you have to write in your homeworks.

We've put together a [Markdown sample][12] similar to the LaTeX sample above to 
demonstrate what it looks like and to give you some scaffolding.


## GitHub Readme Instant Preview

The command line utility `grip` (available [on GitHub][13]) is another tool that
people use frequently for quickly previewing a Markdown file. By running `grip
foo.md` you can easily compile and view a Markdown file in your web browser.


## Exercises

There are a number of things you can try out on your own time to start tinkering
with plain text writing flows.

1. Create a ShareLaTeX account or install LaTeX locally, then try to reproduce
   the written homework in the [GPI LaTeX sample homework][2].
2. Install Pandoc, and see how easily you can make homework PDFs using Markdown 
   by following [the GPI Pandoc Markdown sample][12].
3. Create a simple [Jekyll blog][8]. If you start at their website, they outline
   some instructions for quickly getting up and running with a sample
   Markdown-based blog.


[0]: https://www.cs.cmu.edu/~15131/f15/topics/latex/getting-started/
[1]: https://www.cs.cmu.edu/~15131/f15/topics/latex/
[2]: https://github.com/cmugpi/latex-sample

[3]: https://help.github.com/articles/markdown-basics/
[4]: https://github.com/cmugpi/latex-sample/blob/master/README.md
[5]: https://raw.githubusercontent.com/cmugpi/latex-sample/master/README.md

[6]: https://github.com/cmugpi/cmugpi.github.io/blob/develop/topics/extratations/writing-cli/index.md
[7]: https://raw.githubusercontent.com/cmugpi/cmugpi.github.io/develop/topics/extratations/writing-cli/index.md
[8]: http://jekyllrb.com/

[9]: http://blog.jez.io/
[10]: https://github.com/jez/blog

[11]: http://pandoc.org/
[12]: https://github.com/cmugpi/markdown-sample

[13]: https://github.com/joeyespo/grip
