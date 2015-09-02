---
layout: page
title: "Regular Expressons"
# What topic does this page belong to?
group: bash
# Relative ordering of lessons within a topic
order: 4
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# Regular Expressons
{:.ui.dividing.header.no_toc}

Regular expressions, or "regex" are a _very_ powerful tool for searching and
processing text. At a high level, regular expressions are a way of defining
_patterns_ of text to operate on. Certain tools use regular expressions to take
these patterns and do something with them.

## Regex Syntax

Unfortunately, the syntax of regular expressions is not standardized. Every tool
that includes support for regular expressions implements a different set of
features and syntax. Luckily, there are some very common themes that appear in
most implementations. Where there is ambiguity between implementations, though,
we'll use the syntax used by `grep` and `sed`, two Unix tools that make heavy
use of regular expressions

### TL;DR

If you take only two things away from this discussion of regexs, let them be
this:

- `.`: matches _any single character_ (i.e., _once_)
- `<pattern>*`: matches `<pattern>` _zero or more times_

Read on to learn what these things mean and why they're cool!

Also, a lot of special regex characters are also special bash characters. To
ensure that your regex gets passed along to `grep` and `sed` in tact, you'll
almost always want to surround it in single quotes. See [Strings][strings] for
more information.

### Plain Patterns

There are a ton of special characters that you can use in regular expressions,
which we'll take a look at later. If you don't use any of these characters
(like plain word characters, numbers, some punctuation), the regular expression
will match exactly what you typed.

| Regex   | Matches                |
| -----   | -------                |
| `Hello` | <b>Hello</b> world!    |
| `9001`  | it's over <b>9001</b>! |
{:.ui.striped.table}

__Note__: Most regular expressions are case sensitive by default.
{:.ui.info.message}

### Quantifiers (`*`, `\{n,m\}`)

Now we're getting into the special characters. Some special characters allow you
to specify _how many times_ a pattern should be repeated when trying to perform
a match.

- `<pattern>*`: matches _zero or more_ occurrences of `<pattern>`
- `<pattern>\{n,m\}`: matches _at least n and at most m_ occurrences of `<pattern>`
  - if `n` is omitted, it is assumed to be 0
  - if `m` is omitted, it is assumed to be infinity

By default, regexs are _greedy_: if the number of times they can repeat and
still match a pattern is ambiguous, they consume as many characters as they can.

| Regex         | Matches                                             |
| -----         | -------                                             |
| `help*`       | <b>hel</b>, <b>help</b>, ..., <b>helpppppp</b>, ... |
| `help\{1,2\}` | <b>help</b>, <b>helpp</b>                           |
{:.ui.striped.table}

__Note__: Single characters are treated as whole patterns. If the pattern you
want to repeat has more than one character, wrap the pattern in `\(...\)`.

### Character Classes (`[...]`)

Sometimes, we want a pattern to match any character from a set of characters. To
do this, we can define character classes. Simply put all the characters that you
want to potentially match inside `[...]`. You can also use hyphens (-) to
specify all characters within a range of characters.

| Regex       | Matches                                          |
| -----       | -------                                          |
| `[abc]`     | a, b, or c (a single character)                  |
| `[a-z]`     | any lowercase alphabetic character (ASCII order) |
| `[^abc]`    | any character __except__ a, b, or c              |
| `[A-Za-z_]` | any alphabetic character or an underscore        |
{:.ui.striped.table}


__Note__: Most characters which would otherwise be special characters do not need to
be escaped inside a character class.
{:.ui.info.message}

There are a lot of handy, "prebuilt" character classes that you can use without
using square braces:

| Regex | Matches                                        |
| ----- | -------                                        |
| `.`   | any character                                  |
| `\d`  | any digit                                      |
| `\w`  | any "word" character (letters and underscores) |
| `\s`  | any whitespace character (spaces, tabs)        |
{:.ui.striped.table}

For more character classes, see `man 7 re_format`.

### And more!

It would take far longer than this to fully list every regex feature, but those
listed here are often more than enough. For more information on regexs, Googling
helps a lot. And please, don't try to memorize regex syntax, except for `.` and
`*`! It's best just to look up the syntax for whatever tool you're using when
you're using it.

## Searching the Text of Files (grep)

The first tool we'll talk about, `grep`, is used to search the contents of files
for lines matching a regular expression. It's syntax is

~~~
$ grep <regex> [<file> ...]
~~~

Including one or more files is optional; if left out, `grep` accepts it's input on
`stdin`.

Normally, because the special characters used in regular expressions are often
special characters in bash too, it's best to enclose the pattern in single
quotes.

## Replacing Text (sed)

Another common thing to do is to replace text matching a certain pattern with
another string. The Unix tool `sed` has a feature that lets us accomplish this.
(In fact, `sed` can do [many more things][sed], but we'll just be looking at the find
and replace features). It's syntax (for our use cases specifically) is:

~~~
$ sed -e 's/<find>/<replace>/' [<file> ...]
~~~

As with `grep`, including one or more files is optional. It reads from `stdin`
when no file is specified.

## Example

There are tons of use cases for `sed` and `grep`, so to give you a taste of how
it works, we'll walk through a single, real world example: parsing the names of
the course staff from a text file.

Let's say I have the data about the instructors in the following format, but
all I want are their names.

{% highlight yaml %}
# file: staff.yml
staff:
  - id: jzimmerm
    domain: andrew
    name: Josh Zimmerman
  - id: jxc
    domain: cs
    name: Jacobo Carrasquel
  - id: nmunson
    domain: andrew
    name: Nick Munson
  - id: jezimmer
    domain: andrew
    name: Jake Zimmerman
  - id: dringwal
    domain: andrew
    name: Dan Ringwalt
  - id: mjmurphy
    domain: andrew
    name: Michael Murphy
{% endhighlight %}

Interestingly, all the relevant lines start with the same pattern! First let's
see if we can just print these lines. By searching for all lines that match the
pattern `name:` with `grep`, we can filter out lines that we don't even want to
consider:

{% highlight bash %}
$ grep 'name:' staff.yml
    name: Josh Zimmerman
    name: Jacobo Carrasquel
    name: Nick Munson
    name: Jake Zimmerman
    name: Dan Ringwalt
    name: Michael Murphy
{% endhighlight %}

Cool, now we just need to get rid of everything but the actual names. If you
notice, there are a few parts that each line has in common: some arbitrary
amount of whitespace at the beginning of the line, the literal text 'name: ',
and the actual name. We want to get rid of the first two of these parts, which
we can do using `sed`:

{% highlight bash %}
# pipe output of grep into sed
$ grep 'name:' staff.yml | sed -e 's/^ *name: //'
Josh Zimmerman
Jacobo Carrasquel
Nick Munson
Jake Zimmerman
Dan Ringwalt
Michael Murphy
{% endhighlight %}

Whoa, that's it! Let's break down what we just did.

First, we piped the output of our previous `grep` command into `sed`. This is so
that we only perform substitution on the lines that it makes sense to---the
lines containing 'name:'.

Then, we used `sed` to find a replace a pattern. Notice that the replacement
pattern is empty (there's nothing between the `//`). We do this because
deleting text is the same as finding and replacing with nothing.

Now let's look at the pattern we crafted for sed: `/^ *name: /`. The first
character is something we haven't seen yet. It just matches the beginning of a
line, so we know that the text we find doesn't come in the middle of a word or
name. Next, we say to match a space, repeated zero or more times. This takes
care of matching all the indentation in the file. After this we match `'name: '`
just like with `grep`.

Finally, by replacing this pattern with nothing, we've removed everything but
the names, which is what we wanted.

## References

This page has been far from comprehensive. Here are some resources that can help
when learning how to use regexs:

- [Regular Expressions 101][regex101]
  - Online regular expression visualizer and quick reference
  - Explains why a regex works the way it does
  - Quick reference of common patterns and examples
  - support for PRCE (Perl-compatible regex), Python, and JavaScript flavors
  - Neither grep nor sed flavors, but close
- [Regular-Expressions.info][regex-info]
  - Start with the [QuickStart][regex-info-qs]
  - In depth tutorial about regular expressions
- `man 7 re_format`
  - Man page for regular expression formats

## Going Further

- [Sed - An Introduction and Tutorial][sed]
  - A very comprehensive but readable introduction to sed

[strings]: {{ '/topics/bash/strings/' | prepend: site.baseurl }}
[sed]: http://www.grymoire.com/Unix/Sed.html
[regex101]: https://regex101.com/
[regex-info]: http://www.regular-expressions.info/
[regex-info-qs]: http://www.regular-expressions.info/quickstart.html
