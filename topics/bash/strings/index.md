---
layout: page
title: "Strings"
# What topic does this page belong to?
group: bash
# Relative ordering of lessons within a topic
order: 2
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# Strings
{:.ui.dividing.header.no_toc}

People often stumble when it comes to the various ways strings can be quoted in
Bash. There are two characters which can be used for quoting in bash: `"` and
`'`; each has its own time and place.

## Review

Let's review some key concepts of bash scripting that we've already seen so far
to serve as a base for our discussion.

### Command Line Arguments

When running the command

{% highlight bash %}
$ cp myfile.txt ../mydir
{% endhighlight %}

Bash receives two distinct arguments because we _separated these arguments by
spaces_.

__Problem:__ what if our filenames or arguments have spaces _inside_ them?
{:.ui.warning.message}

### Special Characters

There are a variety of characters which have special meaning in Bash. Some of
these characters serve as signals that Bash should replace or _expand_ text
with some other text. These characters in particular are `$`, which is used for
[environment variables][vars] and [command substitution][command-sub], and
`` ` ``, which is used as an alternate form of `$(...)` (``$(...) == `...` ``).

__Problem:__ what if we need to include these characters as is, without having
them turn into something else?
{:.ui.warning.message}

## Quoting & Escaping

The way that bash handles strings, referred to as "quoting", handles both of
these problems. Additionally, certain special characters can be explicitly
declared as "non-special", i.e. they should be printed as is. This is called
"escaping".

## Grouping Arguments with Spaces

You can pass a string containing a space as a single argument by enclosing that
string in quotes. Both string characters (`"` and `'`) will perform this
grouping:

{% highlight bash %}
# copies the files "my", "file", "with", "spaces.txt" to "../mydir"
$ cp my file with spaces.txt ../mydir

# copies a single file named "my file with spaces.txt" to "../mydir"
$ cp "my file with spaces.txt" ../mydir

# does the same thing as double quotes
$ cp 'my file with spaces.txt' ../mydir
{% endhighlight %}

## Escaping

A similar result can be accomplished with escaping. Just the same as in a
programming language like Java or Python, certain sequences starting with `\`
have a special meaning, and are referred to as "escape sequences".

| Sequence | Meaning         |
| -------- | -------         |
| `\$`     | literal `$`     |
| `\"`     | literal `"`     |
| `\'`     | literal `'`     |
| ``\` ``  | literal `` ` `` |
| `\\`     | literal `\`     |
{:.ui.striped.table}

For a more complete list, see [here][escaping].

### Example

{% highlight bash %}
# copies a single file named "my file with spaces.txt" to "../mydir"
$ cp my\ file\ with\ spaces.txt ../mydir
{% endhighlight %}

## Single vs Double Quotes

As we've already seen, both single and double quotes let you group arguments
with spaces. What's the difference then?

From the [bash manual][bash-3.1.2]:

> Enclosing characters in single quotes (`'`) preserves the literal value of
> each character within the quotes. A single quote may not occur between single
> quotes, even when preceded by a backslash.
>
> Enclosing characters in double quotes (`"`) preserves the literal value of all
> characters within the quotes, with the exception of `$`, `` ` ``, `\`, and,
> when history expansion is enabled, `!`.

This means that strings enclosed in double quotes will _still have variables
expanded and command substitution performed_.

### Examples

{% highlight bash %}
$ export myVariable="Hello, world\!"

$ echo myVariable
myVariable

$ echo $myVariable
Hello, world!

$ echo "$myVariable"
Hello, world!

$ echo '$myVariable'
$myVariable

$ ls
myfile.txt

$ echo $(ls)
myfile.txt

$ echo "$(ls)"
myfile.txt

$ echo '$(ls)'
$(ls)
{% endhighlight %}

[vars]: http://localhost:4000/~15131/topics/terminal-usage/environment-afs/#environment-variables-export
[command-sub]: http://localhost:4000/~15131/topics/bash/input-output/#command-substitution-
[escaping]: http://tldp.org/LDP/abs/html/escapingsection.html
[bash-3.1.2]: http://www.gnu.org/software/bash/manual/html_node/Single-Quotes.html
