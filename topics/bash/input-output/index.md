---
layout: page
title: "Input & Output"
# What topic does this page belong to?
group: bash
# Relative ordering of lessons within a topic
order: 3
---


{% include toc.md %}

# Input & Output
{:.ui.dividing.header.no_toc}

Bash has tons of commands that print out information. While printing it to the
terminal is great, there are many times when we'd like to be able to save the
output for later or feed the output of one command into the input of another.
Since bash is a _shell_, it has features that support these common tasks
straight out of the box.

## Streams (stdin, stdout, stderr)

Input and output between programs in a Unix environment is accomplished using
"streams." A stream is just a special file that either continuously receives text
in or pushes text out.

Whenever a process starts, that process is given access to three "standard"
streams.

| Standard Streams | short name | number (fd) |
| ---------------- | :--------: | :---------: |
| standard input   | `stdin`    | 0           |
| standard output  | `stdout`   | 1           |
| standard error   | `stderr`   | 2           |
{:.ui.striped.table}

- `stdin` is the type of stream that continuously receives input, and is one of
  the most common ways a program can receive input (other than from command line
  arguments).
- `stdout` and `stderr` are the kind of stream that continuously send text out,
  and are the most common way that a process can communicate with the user or
  other programs.
  - `stdout` is generally used for normal program output
  - `stderr` is used to communicate something when an error has occurred.

All the streams are given a number (called a "file descriptor"), which you can
see in the table.

## Redirection (<, >, &lt;&lt;, &gt;&gt;)

When a process starts up normally, `stdout` and `stderr` are configured to print
whatever they receive to the terminal screen. `stdin` is configured to
continuously read input from the user's keyboard (this is how you can
communicate with programs that prompt you for input).

Using a bit of shell syntax, we can reconfigure what `stdin`, `stdout`, and
`stderr` are for a program. We use some combination of less than (`<`) and
greater than (`>`) symbols, along with a specific file where input or output
should go. There are two flavors of outputting text: we can either overwrite the
stream or append to it.

| Syntax                 | Meaning                                                                |
| ------                 | -------                                                                |
| `command < file.txt`   | Read the `stdin` of "command" from "file.txt"                          |
| `command > file.txt`   | Send the `stdout` of "command" to "file.txt", overwriting its contents |
| `command >> file.txt`  | Append the `stdout` of "command" to the end of "file.txt"              |
| `command 2> file.txt`  | Send the `stderr` of "command" to "file.txt", overwriting its contents |
| `command 2>> file.txt` | Append the `stderr` of "command" to the end of "file.txt"              |
{:.ui.striped.table}

If the specified file doesn't exist, and you're sending output there, the file
will be created.

### Examples

{% highlight bash %}
# 'hello.txt' doesn't exist, so it will be created
$ echo "Hello" > hello.txt
$ cat hello.txt
Hello

# Overwrite 'hello.txt'
$ echo "Goodbye" > hello.txt
$ cat hello.txt
Goodbye

# Append output
$ echo "Hello again :D" >> hello.txt
$ cat hello.txt
Goodbye
Hello again :D

# Redirecting stderr is useful for logging output for later reference
$ cat asdf
cat: asdf: No such file or directory
$ cat asdf 2> cat.log
$ cat cat.log
cat: asdf: No such file or directory

# Read input and save output in one line
$ cat < hello.txt > anotherfile.txt
$ cat anotherfile.txt
Goodbye
Hello again :D

# Send stdout somewhere and stdin somewhere else
# ... no redirection
$ cat asdf hello.txt
cat: asdf: No such file or directory
Goodbye
Hello again :D
# ... with redirection
$ cat asdf hello.txt 2> error.log > output.log
$ cat error.log
cat: asdf: No such file or directory
$ cat output.log
Goodbye
Hello again :D
{% endhighlight %}

__Note__: we've just been using `cat` and `echo` in these examples because it's
a simple command for demos. Redirection works on all shell commands!
{:.ui.info.message}

### Sending Both Output Streams

A very common task when using redirection is to send both `stdout` and `stderr`
to the same place. This can be accomplished by actually redirecting one to the
other!

{% highlight bash %}
# Send stderr to stdout, and then send stdout to a file
$ cat asdf hello.txt 2>&1 > alloutput.txt

# the numbers 2 and 1 come from the file descriptors mentioned above

# Same thing, but the other way around...
# Send stdout to stderr, and then send stderr to a file
$ cat asdf hello.txt 1>&2 2> alloutput.txt
{% endhighlight %}

## /dev/null

Sometimes, we want to ignore the output of a command. There is a special file,
called `/dev/null` which is a [null device][null-device]---that is, it discards
anything written to it.

{% highlight bash %}
# Ignore all output, leave no trace
$ cat asdf hello.txt 2>&1 > /dev/null
{% endhighlight %}

## Pipes (|)

Pipes are a way to chain together the output from one command with the input to
another. Lines of shell code that uses pipes are sometimes referred to as
"pipelines." To create a pipe, we use the Unix pipe character: `|` (above the
`\` character on a U.S. keyboard).

### Example

Let's say I want to figure out the number of words in the computer's dictionary
that contain the string "compute." I could use the `grep` program (which
searches a file for a pattern and prints all matches), and _pipe_ the output to
`wc`, a program that counts the number of lines given to it.

{% highlight bash %}
$ grep compute /usr/share/dict/words
compute
computed
computer
... (shortened) ...
uncomputed

# Pipe output of grep (on stdout) to the input of wc (on stdin)
$ grep compute /usr/share/dict/words | wc -l
34
# Thus, 34 words have the word 'compute' in them
{% endhighlight %}

We'll discuss the power of pipes in more detail in the section on [Bash
Oneliners][oneliners]. Using pipes effectively is a fine art which, when
mastered, can reduce some incredibly hard problems down to one line of code!

## Command Substitution ($(...))

While pipes are great for sharing `stdin` and `stdout` between processes,
sometimes we want to use the output of a command in the _arguments_ of another.
We can accomplish this with the `$(...)` syntax.

{% highlight bash %}
# The date command can give us a convenient timestamp:
$ date +%s
1417165491

# We can use command substitution to create a file with a timestamp
$ touch myfile-$(date +%s).txt
$ ls
myfile-1417165610.txt
{% endhighlight %}




[null-device]: http://en.wikipedia.org/wiki/Null_device
[oneliners]: {{ '/topics/bash/oneliners/' | prepend: site.baseurl }}
