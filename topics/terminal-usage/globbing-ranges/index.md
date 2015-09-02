---
layout: page
title: "Globbing & Ranges"
group: 'bash'
order: 1
---

{% include toc.md %}

# Globbing & Ranges
{:.ui.dividing.header.no_toc}

So far, you haven't really seen any ways that the terminal can be much more
powerful than a GUI file browser that you're used to. However, as we'll see in
this lesson, you can combine some basic features of Bash with the commands you
already know to quickly do things that would have been hard to do otherwise.

## Globbing

Part of Bash's power comes from it's ability to carry out file name expansion in
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

| Pattern     | Description                                                                       |
| -------     | -----------                                                                       |
| `*`         | All file in the current directory                                                 |
| `*.html`    | All files ending in `.html`                                                       |
| `*notes*`   | All files containing `notes` in their name                                        |
| `../*`      | All files in the parent directory                                                 |
| `some?file` | All files starting with `some`, ending with `file`, with one character in between |
{:.ui.striped.table}

### Gotchas

Using an exclamation point (`!`) in bash can be tricky, because it's actually a
bash special character.

{% highlight bash %}
$ echo "Hello, world!"
-bash: !": event not found"
{% endhighlight %}

You can get around this either by using single quotes (`'...'`) or by escaping
the exclamation point (`\!`).

{% highlight bash %}
$ echo 'Hello, world!'
Hello, world!
$ echo "Hello, world\!"
Hello, world!
{% endhighlight %}

__Note:__ We discuss the differences between the types of bash strings in [this
lesson][strings].
{:.ui.info.message}

## Ranges

Bash will expand certain expressions inside curly braces (`{` and
`}`) into multiple arguments. These are called _ranges_. Unlike other globbing,
ranges expand _whether or not_ a file actually exists whose name matches the
pattern.

{% highlight bash %}
$ ls thing{1..3}
# = ls thing1 thing2 thing3

$ cat {spam,eggs}.txt
# = cat spam.txt eggs.txt

$ echo {foo,bar}*.pdf
# = echo foo*.pdf bar*.pdf
# note that the '*' will continue to be expanded
{% endhighlight %}

To refer to a file whose name contains a literal `*` or other special
characters, wrap the filename in single quotes.
{:.ui.info.message}


[wildcards]: http://linuxcommand.org/lc3_lts0050.php
[strings]: {{ '/topics/bash/strings/' | prepend: site.baseurl }}
