---
layout: page
title: "Terminal Environment & Globbing"
# What topic does this page belong to?
group: 'terminal-usage'
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# Terminal Environment & Globbing
{:.ui.dividing.header.no_toc}

## Printing Text (echo)

To print text, you can use the `echo` command, which just prints its arguments:

{% highlight bash%}
$ echo Hello, world!
Hello, world!
{% endhighlight %}

## Important Directory Names

### `~` -- the home directory

{% highlight bash %}
$ cd ~
$ pwd
/afs/andrew.cmu.edu/usr5/jzimmerm
{% endhighlight %}

### `~andrewid` -- the home directory of user "andrewid"

Similar to the previous directory, but for any arbitrary user.

{% highlight bash %}
$ cd ~nmunson
$ pwd
/afs/andrew.cmu.edu/usr13/nmunson
{% endhighlight %}

### `.` -- the current directory

Shortcut for what would be printed out by `pwd`.

__Note__: `pwd` and `.` are _not_ the same thing. `pwd` is a _command_ which
when run prints out the full path of the current directory. `.` (when used as
a directory) is _not a command_. It's merely a shortcut that can be used instead
of typing out an entire directory name.
{:.ui.warning.message}

### `..` -- the parent directory

Represents the directory above the current directory.

## Environment Variables (export)

### Setting Variables

{% highlight bash %}
# set my_variable to the string "hello" (no spaces around the '='!)
$ my_variable="hello"

# assign to another_var and "export" it (see below)
$ export another_var="some string"
{% endhighlight %}

The difference between using `export` and not using it deals with what programs
are able to read the contents of that variable. If a variable is not exported,
then only you will be able to read its contents. That is, none of the programs
that you run will be able to see the value of the variable that you just set.

In practice, you will almost always want to use `export` when setting variables.

### Accessing Variables

{% highlight bash %}
# get the value of my_variable and print it
$ echo $my_variable
hello

# print another_var surrounded by other text
$ echo lone${another_var}s
lonesome strings
{% endhighlight %}

Note that in the last example, had we not used `${...}` around the variable
name, like `lone$another_vars`, bash would have tried to look up the contents
of `another_vars`, not `another_var`. Since this is a different variable
entirely, something incorrect would have been printed.

## AFS

AFS is a distributed file system that was invented at CMU. You have a quota of
space and a home directory where you can put your files. You can access these
files from any Andrew Unix server or cluster computer on campus.

When you're using AFS, there's a system of permissions (called access control
lists, or ACLs) regulating who can access your files and what they can do to
them. C@CM has a discussion of ACLs. If your curious, you may want to review
that lesson.

It's important to know about how to use this system so that you can stop other
people from getting access to your homework or other private files.

AFS is set up so that by default, you have a private directory where you can do
your work: `~/private`. If you don't change its permissions, you can put all of
your work for your classes in there and no one will be able to access it except
for you.

By default, AFS also has a `~/public` directory, where you can put things that you
want other people to be able to see. Other users will be able to read files that
you put there (and make copies of them), but not change them, delete them, or
add their own files.

## Globbing

So far, you haven't really seen any ways that the terminal can be much more
powerful than a GUI file browser that you're used to. However, you can combine
some basic features of bash with the commands you already know to quickly do
things that would have been hard to do by hand otherwise.

Part of bash's power comes from it's ability to carry out file name expansion in
a process known as "globbing". Globbing is a process whereby certain special
"wildcard" symbols are expanded into a matching set of filenames.

[This page][wildcards] has a great list of examples and wildcards that bash can
expand. For this class, though, you only need to know the following:

| Pattern | Description                              |
| ------- | -----------                              |
| `*`     | Matches any characters in a filename     |
| `?`     | Matches a single character in a filename |
{:.ui.striped.table}

### Examples

| Pattern     | Description                                                                   |
| -------     | -----------                                                                   |
| `*`         | All file in the current directory                                             |
| `*.html`    | All files ending in `.html`                                                   |
| `*notes*`   | All files containing `notes` in their name                                    |
| `../*`      | All files in the parent directory                                             |
| `some?file` | All files containing `some` separated from `file` by one character in between |
{:.ui.striped.table}

### Gotchas

Using an exclamation point (`!`) in bash can be tricky, because it's actually a
bash special character.

{% highlight bash %}
$ echo "Hello, world!"
-bash: !": event not found"
{% endhighlight %}

You can get around this either by using single quotes (`'...'`) or by escaping
the exclamation point (`\!`). We'll discuss why the single quotes work when we
get to bash scripting.
<!-- TODO add link to discussion of bash strings -->

{% highlight bash %}
$ echo 'Hello, world!'
Hello, world!
$ echo "Hello, world\!"
Hello, world!
{% endhighlight %}


[wildcards]: http://linuxcommand.org/lc3_lts0050.php
