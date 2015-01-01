---
layout: page
title: "Oneliners"
# What topic does this page belong to?
group: bash
# Relative ordering of lessons within a topic
order: 5
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# Oneliners
{:.ui.dividing.header.no_toc}

In my opinion, Bash "oneliners" are the most attractive feature of Bash. There
are few other languages which have such expressive power. A Bash oneliner is
just a normal Bash command, usually involving pipes, with an emphasis on finding
the right tool for the job.

## Tools (find, xargs)

Bash oneliners are just lines of Bash, so all the programs and tools we've
learned up to now can make up a oneliner. In particular, tools like `sed`,
`grep`, `cat`, and `echo` come up a lot when writing and implementing oneliners.

In addition, there are a few new tools that are found in a large number of Bash
oneliners:

- `find`
  - used to walk a file hierarchy and do something for every file found
  - features for selecting only files whose names match a glob or a regex
- `xargs`
  - used to "build and execute command lines from stdin"

### Find

`find` has a ton of options, but for the most part the syntax that's used is
either

~~~
$ find <directory> -name "<pattern>"
~~~

where `<pattern>` is a Bash glob, or

~~~
$ find <directory> -regex "<regex>"
~~~

When invoked like this, find simply starts in `<directory>` and recursively lists
all files which match the pattern provided.


#### Examples

{% highlight bash %}
$ ls -R
.:
colors/  seasons/

./colors:
blue  green  red  white

./seasons:
fall  spring  summer  winter

# Invoke find on the current directory (.) with a glob
$ find . -name "w*"
./colors/white
./seasons/winter

# when using a regex, the regex must match the whole path
# note: this is effectively the same as the previous example
$ find . -regex ".*/w.*"
./colors/white
./seasons/winter

# find shows files and folders that matched, unless we say not to
$ find . -name "s*"
./seasons
./seasons/spring
./seasons/summer

$ find . -name "s*" -type file
./seasons/spring
./seasons/summer

$ find . -name "s*" -type dir
./seasons
{% endhighlight %}

### Xargs

Xargs is kind of magic. Unfortunately, this means that most people don't quite
understand how it works. In fact, it's really quite straightforward. From the
man page:

> The xargs utility reads space, tab, newline and end-of-file delimited strings
> from the standard input and executes utility with the strings as arguments.

So basically, it reads in lines on stdin, converts the whitespaces separating
those lines to single spaces, and then runs the specified command. It's syntax
normally looks like

~~~
<some command with output on stdout> | xargs [command [arguments]]
~~~

You only have to specify arguments if you want the command to be run with
arguments. If you don't specify a command, the default is to just use `echo`,
thus printing what command line was eventually built.

#### Examples

{% highlight bash %}
# no xargs
$ find . -name "w*"
./colors/white
./seasons/winter

# with xargs
$ find . -name "w*" | xargs
./colors/white ./seasons/winter

# use xargs to remove the files
$ find . -name "w*" | xargs rm
# equivalent to "rm ./colors/white ./seasons/winter"
{% endhighlight %}

## Crafting Oneliners

Creating useful oneliners is a fine art. It takes a little bit of experience,
patience, and a lot of Googling. There is one nice trick that works well when
crafting oneliners: construct them iteratively. Let's see what this means with
an example.

Let's say my the folder for my class 15-210 has the following directory
structure:

~~~
abridgedlab
├── abridgedlab.pdf
├── abridgedlab.sml
└── written.pdf
babblelab
├── babblelab.pdf
├── babblelab.sml
└── written.pdf
bignumlab
├── bignumlab.pdf
├── bignumlab.sml
└── written.pdf
cilklab
├── cilklab.pdf
├── cilklab.sml
└── written.pdf
dplab
├── dplab.pdf
├── dplab.sml
└── written.pdf
minilab
├── minilab.pdf
├── minilab.sml
└── written.pdf
parenlab
├── parenlab.pdf
├── parenlab.sml
└── written.pdf
rangelab
├── rangelab.pdf
├── rangelab.sml
└── written.pdf
segmentlab
├── segmentlab.pdf
├── segmentlab.sml
└── written.pdf
skylinelab
├── skylinelab.pdf
├── skylinelab.sml
└── written.pdf
thesauruslab
├── thesauruslab.pdf
├── thesauruslab.sml
└── written.pdf
~~~

I want to study for the test by reviewing all the lab handouts (all the PDF
files with the same name as their parent folder), but _not_ my written solutions
(all the files named "written.pdf"). If I can figure out which files to open, I
know that I can use the program `open` to open them on my Mac (on Linux we could
use `evince`).

I mentioned before that we should construct our oneliner iteratively. Most of
the tools we use are really handy in that if we don't specify where our output
should go, it just prints it to the console, so we can try something first by
printing it to the console, then build on top of it by sending the output
somewhere else.

Let's first get rid of all the non-PDF files using find, and print output to the
console:

{% highlight bash %}
# note that this also gets rid of folders because there aren't any
# folders ending with "pdf"
$ find . -name "*pdf"
./abridgedlab.pdf
./written.pdf
./babblelab.pdf
./written.pdf
./bignumlab.pdf
./written.pdf
./cilklab.pdf
./written.pdf
./dplab.pdf
./written.pdf
./minilab.pdf
./written.pdf
./parenlab.pdf
./written.pdf
./rangelab.pdf
./written.pdf
./segmentlab.pdf
./written.pdf
./skylinelab.pdf
./written.pdf
./thesauruslab.pdf
./written.pdf
{% endhighlight %}

Now we just need to figure out how to get rid of all the "written.pdf" files.
Nothing we've seen so far does what we need: "get rid of lines matching a
pattern." Luckily Google is our friend, and this search query leads us to
something useful: `grep -v`, which only prints line that _don't_ match a regex.
Checking out the man page for more info just in case, we're ready to go:

{% highlight bash %}
# build on top of our previous command by piping output to grep
$ find . -name "*pdf" | grep -v "written.pdf"
./abridgedlab.pdf
./babblelab.pdf
./bignumlab.pdf
./cilklab.pdf
./dplab.pdf
./minilab.pdf
./parenlab.pdf
./rangelab.pdf
./segmentlab.pdf
./skylinelab.pdf
./thesauruslab.pdf
{% endhighlight %}

Look at how we piped output from one command to the next. This is an extremely
common pattern when constructing oneliners. Semantically, we've filtered and
refined our input data, distilling it down to the exact form needed by the last
command we call, which usually does the heavy lifting. That's certainly the case
here, as we can now use `xargs` to open our PDFs:

{% highlight bash %}
# use xargs with no command first to see what would be called first
# (just in case)
$ find . -name "*pdf" | grep -v "written.pdf" | xargs
./abridgedlab.pdf ./babblelab.pdf ./bignumlab.pdf ./cilklab.pdf
./dplab.pdf ./minilab.pdf ./parenlab.pdf ./rangelab.pdf
./segmentlab.pdf ./skylinelab.pdf ./thesauruslab.pdf

# use `xargs open` to actually open the files
$ find . -name "*pdf" | grep -v "written.pdf" | xargs open
# equivalent to:
# open ./abridgedlab.pdf ./babblelab.pdf ./bignumlab.pdf ./cilklab.pdf
# ./dplab.pdf ./minilab.pdf ./parenlab.pdf ./rangelab.pdf
# ./segmentlab.pdf ./skylinelab.pdf ./thesauruslab.pdf
{% endhighlight %}

## Tips

Summarized here are some of the useful tips scattered throughout that example.

- Construct commands iteratively
  - Print the result at each step to see what needs to be done next
- Use pipes
  - Pipes let you filter and refine your input
  - Commands like `sed`, `grep`, `cut`, `tr`, etc. make good candidates here
- Think about your Google search as if you were going to write a StackOverflow
  post about it
  - If you think hard enough about how you would explain what you want to do (as
    if you were going to ask about it on Piazza or StackOverflow), you can
    probably come up with a better search query
- Man pages are your friend


